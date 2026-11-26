Этот процесс показывает, как создаётся и выполняется направление. Именно при работе с направлениями разработчики чаще всего сталкиваются с трудностями, поскольку используются два ресурса, а их взаимосвязь неочевидна из таблиц профилей. Главное правило можно сформулировать одной строкой:

> [`ServiceRequest`](StructureDefinition-uz-core-servicerequest.html) - это само направление, то есть *что* необходимо выполнить. [`Task`](StructureDefinition-uz-core-referral-approval-task.html) - это работа по его выполнению: *кто* её выполнил, *когда* и *на каком этапе* она находится.

Участники: направляющий клиницист; комиссии по согласованию (для направлений, финансируемых государством); медицинская организация, оказывающая услугу.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Создание направления

Клиницист создаёт `ServiceRequest` (`intent = order`), содержащий классификационные данные направления: запрашиваемую услугу в `code`, срочность в `priority` (`routine` \| `urgent` \| `asap` \| `stat`), целевую услугу [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) в `performer`, клиническое обоснование в `reason` и тип финансирования в расширении [PaymentType](StructureDefinition-payment-type.html), закодированный по [видам оплаты](CodeSystem-payment-type-cs.html) (`paytype-0001-0001` Бесплатно \| `paytype-0001-0002` Платно \| `paytype-0001-0003` Страхование \| `paytype-0001-0004` Государственный тариф \| `paytype-0001-0005` Другие).

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
    "valueCodeableConcept": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
      "code": "paytype-0001-0004", "display": "Davlat tarifi" }] } }],
  "status": "active", "intent": "order", "priority": "routine",
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "306206005", "display": "Referral to service" }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "performer": [{ "reference": "HealthcareService/[id]" }],
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

`code` имеет тип `CodeableReference`, поэтому кодировка находится внутри `concept`. Услуга берётся из набора [процедур и исследований ServiceRequest](ValueSet-service-request-code-vs.html). Услуги лучевой диагностики и ядерной медицины кодируются национальным [классификатором TXMK](CodeSystem-txmk-cs.html), например `5204488` Компьютерная томография головного мозга:

```
"code": { "concept": { "coding": [{ "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/txmk-cs",
  "code": "5204488", "display": "Bosh miyaning kompyuter tomografiyasi" }] } }
```

### 2. Цепочка согласования (только для финансируемых государством)

Это основное правило принятия решения:

> Если PaymentType у ServiceRequest равен `paytype-0001-0004` Государственный тариф, платформа создаёт цепочку `Task` для согласования; в противном случае Task не создаётся, и направление обрабатывается напрямую.

Каждый этап согласования представлен отдельным `Task`, содержащим reference на ServiceRequest (`Task.focus`/`basedOn`), а в `Task.code` указывается код из набора категорий согласования:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task содержит две независимые оси статусов: FHIR-статус `Task.status` (жизненный цикл: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) и `Task.businessStatus` (бизнес-состояние, отображаемое пользователям: `in-review`, `confirmed`, `overdue`, …).

> Для Task не предусмотрен отдельный пользовательский интерфейс. Менеджеры реагируют на события процесса и не завершают Task напрямую. Это предотвращает завершение этапа без выполнения лежащей в его основе работы.

Направления, передаваемые через интеграцию Orders, используют её собственные профили ServiceRequest и Task согласования, которые добавляют цель направления, специальность, основание лечения и дополнительные бизнес-статусы: см. [Заказы](https://dhp.uz/fhir/integrations/ru/orders.html) в DHP Integrations IG.

### 3. Правила синхронизации

ServiceRequest и связанные с ним Task синхронизируются в соответствии со следующими правилами:

| Событие | Результат |
|-------|--------|
| ServiceRequest переводится в `active` (state-funded) | создаётся первый Task согласования со `status=requested` |
| ServiceRequest переводится в `revoked` | всем открытым Task присваивается `cancelled` |
| ServiceRequest переводится в `entered-in-error` | всем Task присваивается `entered-in-error` |
| Последний Task согласования переводится в `completed` | ServiceRequest переводится в `completed` |
| Task комиссии переводится в `failed`/`rejected` | ServiceRequest переводится в `revoked` |
| Возврат на доработку | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, затем обратно в `active` с созданием нового Task согласования |
| Нарушение SLA | только `Task.businessStatus = overdue` - статус ServiceRequest не изменяется |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Отображаемая пользователю метка формируется на основе состояния Task - например, `businessStatus=overdue` &rarr; «Просрочено», `status=requested` &rarr; «Ожидает принятия», `status=rejected` &rarr; «Отклонено».

### 4. Выполнение направления

При оказании услуги медицинская организация, оказывающая услугу, фиксирует результат в привязке к направлению: создаёт [Procedure](StructureDefinition-uz-core-procedure.html) и/или [Observation](StructureDefinition-uz-core-observation.html) (а для визита - [Encounter](StructureDefinition-uz-core-encounter.html)), каждый из которых содержит reference на ServiceRequest через `basedOn`. Для результатов визуализирующих исследований используется `ImagingStudy`; для текстового заключения - [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). После завершения последнему Task присваивается `completed`, а ServiceRequest - `completed`.

```
GET [base]/Task?based-on=ServiceRequest/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Отменённое направление не может быть выполнено; Procedure нельзя начать без активного ServiceRequest; завершённый Procedure нельзя изменять.

### Связанные материалы

- Профили, используемые при выполнении направления: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- Компонент: [Направления](components.html#referrals)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
