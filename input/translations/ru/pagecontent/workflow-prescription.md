Этот процесс показывает, как лекарственное средство назначается в электронном виде, отпускается в аптеке и сведения о нём передаются в Государственный фонд медицинского страхования (SHIF) для возмещения стоимости. Процесс представлен двумя ресурсами: `MedicationRequest` - это рецепт, то есть сведения о том, *что* было назначено; `MedicationDispense` - это факт отпуска, то есть сведения о том, *что* было фактически выдано и *в каком количестве*.

> Статус профилей: профили MedicationRequest и MedicationDispense находятся в разработке. На этой странице описана предполагаемая модель, чтобы системы могли реализовывать её уже сейчас; до публикации профилей используйте базовые ресурсы FHIR R5, не указывая `meta.profile`. Ресурсы [Condition](StructureDefinition-uz-core-condition.html) (показание) и [Patient](StructureDefinition-uz-core-patient.html) профилированы.

Участники: клиницист, выписывающий рецепт; фармацевт; DHP (Digital Health Platform - Цифровая платформа здравоохранения); Государственный фонд медицинского страхования (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Выписка рецепта

Клиницист выписывает электронный рецепт в виде `MedicationRequest` (`intent = order`): лекарственное средство указывается в `medication`, пациент - в `subject`, клиницист, выписавший рецепт, - в `requester`, схема дозирования - в `dosageInstruction`, а клиническое показание - в `reason` (ресурс [Condition](StructureDefinition-uz-core-condition.html), по поводу которого назначено лечение). Рецепт распечатывается с QR-кодом, который его идентифицирует.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }] }
```

### 2. Отпуск лекарственного средства

В аптеке фармацевт сканирует QR-код, чтобы получить `MedicationRequest`, а затем фиксирует фактически отпущенное лекарственное средство в `MedicationDispense`. Через `authorizingPrescription` `MedicationDispense` содержит reference на рецепт, что обеспечивает прослеживаемость всей цепочки:

```
POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "quantity": { "value": 1 },
  "whenHandedOver": "2026-05-30" }
```

Аптека может отпустить весь объём по рецепту сразу или по частям. Частичный отпуск оформляется как `MedicationDispense` со `status = completed` для фактически отпущенного количества; `MedicationRequest` остаётся активным для неотпущенного остатка.

| Ресурс | Изменение статуса |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (полностью отпущено) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; `declined`, если лекарственное средство не отпущено |

### 3. Передача данных в SHIF

Для лекарственного средства, стоимость которого подлежит возмещению, платформа передаёт рецепт и сведения об отпуске в SHIF для учёта возмещения. Передача выполняется асинхронно: DHP публикует ресурсы, а SHIF получает и обрабатывает их; DHP не рассматривает требование о возмещении и не принимает решение по нему. Связь `MedicationDispense.authorizingPrescription` позволяет SHIF сопоставить *назначенное лекарственное средство* с *фактически отпущенным*.

> DHP передаёт медицинские данные, необходимые SHIF; решение о возмещении и выплата выполняются в собственной системе SHIF. Передаются только валидированные записи.

### 4. Получение данных

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
```

Связь `authorizingPrescription` позволяет всегда получить сведения об отпуске вместе с рецептом, на основании которого он был выполнен, благодаря чему SHIF и пациент видят полную историю отпуска по каждому назначению.

### Связанные материалы

- Профили: [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
