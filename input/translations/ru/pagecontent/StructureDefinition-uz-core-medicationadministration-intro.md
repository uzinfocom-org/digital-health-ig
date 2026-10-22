UZ Core MedicationAdministration регистрирует событие введения лекарства: введённую дозу или факт, что лекарство не было введено. Ресурс связывает лекарство и получателя с Encounter, исполнителем, временем, дозировкой и, если применимо, выполненным назначением. Для назначения используйте [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), для отпуска лекарства - [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), а данный профиль - для события введения.

### Обязательные элементы и Must Support

Элементы ниже должны присутствовать всегда (mandatory) или поддерживаться, когда данные доступны ([Must Support](must-support.html)). Системы должны заполнять Must Support элементы при наличии данных и обрабатывать их при получении. Точные типы, кардинальности и связки приведены в [формальном представлении профиля](#profile).

#### Обязательные элементы UZ Core MedicationAdministration

Профиль не добавляет новых обязательных кардинальностей. Соблюдайте требования базового FHIR, включая обязательные `status` и `subject`.

#### Must Support для UZ Core MedicationAdministration

- идентификатор события введения;
- `status` и `statusReason`, если лекарство не введено;
- `category` - место или условия введения;
- `medication` - ссылка на UZ Core Medication или кодированное лекарство;
- `subject` (UZ Core Patient или Group) и `encounter`;
- `occurence[x]` (время или период введения) и `recorded` (время первой регистрации записи);
- `performer.function` и `performer.actor`;
- `reason`, `request` и `device`, когда применимо;
- сведения о дозировке, включая дозу, путь, место и скорость введения, когда применимо;
- расширение места введения; также поддерживается источник финансирования.

### Безопасность при аллергии: показание и реакция - разные вещи

Используйте `MedicationAdministration.reason`, если лекарство введено для лечения аллергии или аллергического состояния. Это поле указывает, почему лекарство было введено; оно не означает, что лекарство вызвало аллергическую реакцию.

Если введение вызвало аллергическую реакцию, зарегистрируйте её в `reaction` ресурса [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) пациента и свяжите эту реакцию с данным введением стандартным расширением `openEHR-administration`. Расширение находится в элементе reaction, а его `valueReference` указывает на данный `MedicationAdministration`. Не используйте `reason` для этой причинной связи. Если верны оба обстоятельства, зарегистрируйте обе связи.

### Пример записи о введении

Ниже приведён пример завершённого введения 500 мг парацетамола перорально. Кодированное лекарство передаётся в `medication.concept`, пациент и исполнитель - как ссылки, доза использует UCUM. В FHIR элемент написан как `occurence[x]` (с одним «r» после «u»).

```json
{
  "resourceType": "MedicationAdministration",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationadministration"] },
  "status": "completed",
  "category": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/medication-admin-location", "code": "inpatient" }] }],
  "medication": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "387517004", "display": "Paracetamol" }] } },
  "subject": { "reference": "Patient/example-salim" },
  "request": { "reference": "MedicationRequest/example-medication-request" },
  "occurenceDateTime": "2026-08-28",
  "recorded": "2026-08-28",
  "performer": [{ "function": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/med-admin-perform-function", "code": "performer" }] }, "actor": { "reference": { "reference": "Practitioner/example-practitioner" } } }],
  "reason": [{ "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "25064002", "display": "Headache" }] } }],
  "dosage": { "dose": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" }, "route": { "coding": [{ "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" }] } }
}
```

`status` и классификация лекарства связаны с ValueSet как required; category, status reason, performer function, reason и site - как preferred; route - как extensible. `reason` имеет тип `CodeableReference`: кодированное показание указывается в `concept`, ссылка на клинический ресурс - в `reference`.
