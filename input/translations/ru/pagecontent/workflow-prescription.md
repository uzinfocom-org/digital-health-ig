> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Этот процесс показывает, как лекарство выписывается электронно, отпускается в аптеке и передаётся в Государственный фонд медицинского страхования (SHIF) для возмещения. Его несут два ресурса: `MedicationRequest` - это рецепт, то есть *что* было назначено; `MedicationDispense` - это акт выдачи, то есть *что* было фактически выдано и *в каком количестве*.

> Статус профилей: профили MedicationRequest и MedicationDispense находятся в разработке. На этой странице описывается планируемая модель данных, чтобы системы уже сейчас могли разрабатываться с её учётом; до публикации профилей используйте базовые ресурсы FHIR R5 с опущенным `meta.profile`. [Condition](StructureDefinition-uz-core-condition.html) (показание) и [Patient](StructureDefinition-uz-core-patient.html) профилированы.

Действующие лица: назначающий врач; фармацевт; платформа (DHP); Государственный фонд медицинского страхования (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Назначение

Клиницист выписывает электронный рецепт в виде `MedicationRequest` (`intent = order`): лекарство в `medication`, пациент в `subject`, назначающий врач в `requester`, дозировка в `dosageInstruction`, а клиническое показание в `reason` (состояние [Condition](StructureDefinition-uz-core-condition.html), которое лечат). Рецепт печатается с QR-кодом, который его идентифицирует.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }] }
```

### 2. Отпуск

В аптеке фармацевт сканирует QR-код, чтобы получить `MedicationRequest`, а затем фиксирует выданное как `MedicationDispense`. Отпуск ссылается обратно на рецепт через `authorizingPrescription`, что и обеспечивает прослеживаемость всей цепочки:

```
POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "concept": { "coding": [{ "system": "...", "code": "..." }] } },
  "quantity": { "value": 1 },
  "whenHandedOver": "2026-05-30" }
```

Аптека может отпустить весь рецепт сразу или по частям. Частичный отпуск - это `MedicationDispense` со `status = completed` на выданное количество; рецепт остаётся открытым на остаток.

| Ресурс | Поток статусов |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (полностью отпущен) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; `declined`, если не выдан |

### 3. Передача в SHIF

Для возмещаемого лекарства платформа пересылает рецепт и его отпуск в SHIF для учёта возмещения. Это происходит асинхронно - DHP публикует ресурсы, а SHIF их получает; сама DHP не выносит решения по требованию. Связь `MedicationDispense.authorizingPrescription` позволяет SHIF сопоставить *что было назначено* с *тем, что было отпущено*.

> DHP передаёт медицинские данные, необходимые SHIF; решение о возмещении и оплата находятся в собственной системе SHIF. Пересылаются только проверенные записи.

### 4. Чтение обратно

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
```

Связь `authorizingPrescription` означает, что отпуск всегда считывается обратно относительно рецепта, который его авторизовал, поэтому SHIF и пациент видят полную историю выдачи по каждому назначению.

### Связанное

- Профили: [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
