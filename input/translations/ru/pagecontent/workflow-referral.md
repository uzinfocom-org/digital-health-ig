> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Этот рабочий процесс показывает, как создаётся и выполняется направление. Направления - это то место, где разработчики чаще всего теряются, потому что задействованы два ресурса, и их взаимосвязь не очевидна из таблиц профилей. Правило в одну строку:

> `ServiceRequest` - это само направление, то есть *что* должно быть сделано. `Task` - это работа по его выполнению, то есть *кто* это сделал, *когда* и *насколько* далеко продвинулось дело.

> Статус профилей: профили ServiceRequest и Task находятся в разработке. На этой странице описана предполагаемая модель, чтобы системы могли уже сейчас на неё ориентироваться; пока профили не опубликованы, используйте базовые ресурсы FHIR R5 и правила, приведённые ниже. Профилированы [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html), [Encounter](StructureDefinition-uz-core-encounter.html) и [Condition](StructureDefinition-uz-core-condition.html), используемые при выполнении.

Участники: направляющий клиницист; комиссии по согласованию (для направлений по государственному страхованию); выполняющее учреждение.

<div>{% include referral-sequence.svg %}</div><br clear="all"/>

### 1. Создание направления

Клиницист создаёт `ServiceRequest` (`intent = order`), несущий классификацию направления: запрашиваемая услуга в `code`, срочность в `priority` (`routine` \| `urgent` \| `stat`), целевая услуга через `HealthcareService`, клиническое обоснование в `reason` и тип финансирования в расширении `coverageKind` (`state-insurance` \| `insurance` \| `self-payment` \| `other`).

```
POST [base]/ServiceRequest
{ "resourceType": "ServiceRequest", "status": "active", "intent": "order",
  "priority": "routine",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "..." }] },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }] }
```

### 2. Цепочка согласований (только для государственного страхования)

Это центральное правило принятия решения:

> Если `ServiceRequest.coverageKind = state-insurance`, платформа создаёт цепочку согласующих `Task`; в противном случае Task не создаётся, и направление выполняется напрямую.

Каждый этап согласования - это `Task`, ссылающийся на ServiceRequest (`Task.focus`/`basedOn`), с `Task.code` из набора категорий согласования:

`approve-family-doctor` &rarr; `approve-specialist` &rarr; `approve-regional-commission` &rarr; `approve-national-commission` &rarr; `approve-insurance-fund` &rarr; `approve-hospitalization`

Task несёт две оси статуса: FHIR-статус `Task.status` (жизненный цикл: `requested`, `accepted`, `in-progress`, `completed`, `rejected`, `on-hold`, `failed`, …) и `Task.businessStatus` (доменное состояние, отображаемое пользователям: `in-review`, `confirmed`, `overdue`, …).

> У задач нет пользовательского интерфейса. Менеджеры действуют по событиям процесса; они никогда не закрывают Task напрямую. Это предотвращает пометку этапа как завершённого без выполнения соответствующей работы.

### 3. Правила синхронизации

ServiceRequest и его Task сохраняют согласованность по следующим правилам:

| Событие | Эффект |
|-------|--------|
| ServiceRequest становится `active` (государственное страхование) | создаётся первый согласующий Task со `status=requested` |
| ServiceRequest установлен в `revoked` | все открытые Task устанавливаются в `revoked` |
| ServiceRequest установлен в `entered-in-error` | все Task устанавливаются в `entered-in-error` |
| Финальный согласующий Task `completed` | ServiceRequest устанавливается в `completed` |
| Task комиссии `failed`/отклонён | ServiceRequest устанавливается в `revoked` |
| Возвращён на доработку | Task &rarr; `on-hold` / `in-review`; ServiceRequest &rarr; `on-hold`, затем обратно в `active` с новым согласующим Task |
| Нарушение SLA | только `Task.businessStatus = overdue` - статус ServiceRequest не меняется |

<div>{% include referral-states.svg %}</div><br clear="all"/>

Отображаемая пользователю метка выводится из состояния Task - например, `businessStatus=overdue` &rarr; «Просрочено», `status=requested` &rarr; «Ожидает принятия», `status=rejected` &rarr; «Отклонено».

### 4. Выполнение

Когда услуга оказана, выполняющее учреждение фиксирует результат относительно направления: [Procedure](StructureDefinition-uz-core-procedure.html) и/или [Observation](StructureDefinition-uz-core-observation.html) (и [Encounter](StructureDefinition-uz-core-encounter.html) для визита), каждый из которых ссылается обратно на ServiceRequest через `basedOn`. Результаты визуализации используют `ImagingStudy`/`DocumentReference`; текстовое заключение использует `DiagnosticReport`. По завершении финальный Task переводится в `completed`, а ServiceRequest - в `completed`.

```
GET [base]/Task?based-on=ServiceRequest/[id]&_sort=-modified
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/Procedure?based-on=ServiceRequest/[id]
```

Отменённое направление не может быть выполнено, Procedure не может начаться без активного ServiceRequest, а завершённая Procedure не может быть изменена.

### Связанные материалы

- Профили, используемые при выполнении: [Procedure](StructureDefinition-uz-core-procedure.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [HealthcareService](StructureDefinition-uz-core-healthcareservice.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общее руководство](general-guidance.html)
