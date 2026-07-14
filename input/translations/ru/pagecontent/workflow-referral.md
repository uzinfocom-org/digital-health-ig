Этот процесс показывает, как создаётся и выполняется направление. Именно при работе с направлениями разработчики чаще всего сталкиваются с трудностями, поскольку используются два ресурса, а их взаимосвязь неочевидна из таблиц профилей. Главное правило можно сформулировать одной строкой:

> `ServiceRequest` - это само направление, то есть *что* необходимо выполнить. `Task` - это работа по его выполнению: *кто* её выполнил, *когда* и *на каком этапе* она находится.

> Статус профилей: профили ServiceRequest и Task находятся в разработке. На этой странице описана предполагаемая модель, чтобы системы могли уже сейчас реализовывать интеграцию на её основе. До публикации профилей используйте базовые ресурсы FHIR R5 и приведённые ниже правила. Ресурсы [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html), [Encounter](StructureDefinition-uz-core-encounter.html) и [Condition](StructureDefinition-uz-core-condition.html), используемые при выполнении направления, уже профилированы.

Участники: направляющий клиницист; комиссии по согласованию (для направлений, финансируемых государством); медицинская организация, оказывающая услугу.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Создание направления

Клиницист создаёт `ServiceRequest` (`intent = order`), содержащий классификационные данные направления: запрашиваемую услугу в `code`, срочность в `priority` (`routine` \| `urgent` \| `stat`), целевую услугу через `HealthcareService`, клиническое обоснование в `reason` и тип финансирования в расширении [PaymentType](StructureDefinition-payment-type.html) (`Free` \| `Paid` \| `Insurance` \| `State-funded`).

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "priority": "routine",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "..." }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

### 2. Цепочка согласования (только для финансируемых государством)

Это основное правило принятия решения:

> Если PaymentType у ServiceRequest равен `State-funded`, платформа создаёт цепочку `Task` для согласования; в противном случае Task не создаётся, и направление обрабатывается напрямую.

Каждый этап согласования представлен отдельным `Task`, содержащим reference на ServiceRequest (`Task.focus`/`basedOn`), а в `Task.code` указывается код из набора категорий согласования:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task содержит две независимые оси статусов: FHIR-статус `Task.status` (жизненный цикл: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) и `Task.businessStatus` (бизнес-состояние, отображаемое пользователям: `in-review`, `confirmed`, `overdue`, …).

> Для Task не предусмотрен отдельный пользовательский интерфейс. Менеджеры реагируют на события процесса и не завершают Task напрямую. Это предотвращает завершение этапа без выполнения лежащей в его основе работы.

### 3. Правила синхронизации

ServiceRequest и связанные с ним Task синхронизируются в соответствии со следующими правилами:

| Событие | Результат |
|-------|--------|
| ServiceRequest переводится в `active` (state-funded) | создаётся первый Task согласования со `status=requested` |
| ServiceRequest переводится в `revoked` | всем открытым Task присваивается `revoked` |
| ServiceRequest переводится в `entered-in-error` | всем Task присваивается `entered-in-error` |
| Последний Task согласования переводится в `completed` | ServiceRequest переводится в `completed` |
| Task комиссии переводится в `failed`/rejected | ServiceRequest переводится в `revoked` |
| Возврат на доработку | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, затем обратно в `active` с созданием нового Task согласования |
| Нарушение SLA | только `Task.businessStatus = overdue` - статус ServiceRequest не изменяется |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Отображаемая пользователю метка формируется на основе состояния Task - например, `businessStatus=overdue` &rarr; «Просрочено», `status=requested` &rarr; «Ожидает принятия», `status=rejected` &rarr; «Отклонено».

### 4. Выполнение направления

При оказании услуги медицинская организация, оказывающая услугу, фиксирует результат в привязке к направлению: создаёт [Procedure](StructureDefinition-uz-core-procedure.html) и/или [Observation](StructureDefinition-uz-core-observation.html) (а для визита - [Encounter](StructureDefinition-uz-core-encounter.html)), каждый из которых содержит reference на ServiceRequest через `basedOn`. Для результатов визуализирующих исследований используются `ImagingStudy`/`DocumentReference`; для текстового заключения - `DiagnosticReport`. После завершения последнему Task присваивается `completed`, а ServiceRequest - `completed`.

```
GET [base]/Task?based-on=ServiceRequest/[id]&_sort=-modified
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Отменённое направление не может быть выполнено; Procedure нельзя начать без активного ServiceRequest; завершённый Procedure нельзя изменять.

### Связанные материалы

- Профили, используемые при выполнении направления: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
