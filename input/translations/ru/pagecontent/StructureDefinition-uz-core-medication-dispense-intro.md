> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core MedicationDispense фиксирует отпуск лекарственного средства: аптека выдаёт назначенное лекарство пациенту или человеку, который его получает, или больничная аптека выдаёт лекарство для пациента в отделении. Ресурс указывает, какое [Medication](StructureDefinition-uz-core-medication.html) отпущено и в каком количестве, для какого [Patient](StructureDefinition-uz-core-patient.html), кто подготовил и выдал его, кто получил и когда. Отпуск ссылается на рецепт, который он выполняет, - [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) - в `authorizingPrescription`. Эта связь позволяет Государственному фонду медицинского страхования сверить назначенное с отпущенным, как описано в процессе [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html). Используйте этот профиль для отпуска лекарства; когда доза вводится пациенту, создайте [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core MedicationDispense должен содержать

Этот профиль не добавляет обязательных элементов, но базовый ресурс MedicationDispense требует три: `status`, `medication` и `subject`. Каждый `performer` должен указывать своего `actor`.

#### Каждый UZ Core MedicationDispense должен поддерживать

- номер отпуска (`identifier`);
- статус отпуска `status` (preparation / in-progress / cancelled / on-hold / completed / entered-in-error / stopped / declined / unknown), причину невыполнения (`notPerformedReason`) и время последнего изменения статуса (`statusChanged`);
- категорию `category`: где будет использоваться лекарство (inpatient / outpatient / community);
- лекарственное средство `medication` - ссылку на [UZ Core Medication](StructureDefinition-uz-core-medication.html) или код ATC или INN;
- пациента (`subject`);
- кто отпустил лекарство (`performer.actor`), например фармацевт и аптека;
- рецепт, который выполняет отпуск (`authorizingPrescription`);
- отпущенное количество `quantity`, с его `value`, `unit`, `system` и `code`;
- когда отпуск был зарегистрирован (`recorded`), подготовлен (`whenPrepared`) и выдан (`whenHandedOver`);
- кто или куда получил лекарство (`receiver`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного отпуска до отклонённого. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [амбулаторный отпуск парацетамола](MedicationDispense-example-medication-dispense-outpatient.html) и [отпуск амоксициллина](MedicationDispense-example-medication-dispense.html).

#### Наименьший MedicationDispense, который вам следует отправлять

Каждый ресурс UZ Core указывает свой профиль в `meta.profile` - так сервер узнаёт, по каким правилам выполнять валидацию. Кроме того, базовый ресурс требует `status`, `medication` и `subject`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "completed",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` - это `CodeableReference`: ссылка на [UZ Core Medication](StructureDefinition-uz-core-medication.html) находится в `reference` (на уровень глубже, чем обычный `Reference`), а код - в `concept`. См. [Ссылки и CodeableReference](how-to-read.html#references-and-codeablereferences). `status` использует коды HL7. Их английские отображаемые названия берутся из базовой системы кодирования, а узбекские и русские - из дополнения DHP, поэтому `display` можно не указывать.

#### Отпуск по рецепту в аптеке

Фармацевт сканирует QR-код на рецепте, получает [MedicationRequest](MedicationRequest-example-medication-request.html) и выдаёт пациенту десять таблеток парацетамола, которые в нём назначены. `authorizingPrescription` ссылается на рецепт, `performer` называет фармацевта и аптеку, а три отметки времени фиксируют, когда лекарство было подготовлено, выдано и зарегистрировано:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "identifier": [ { "value": "MD-2026-00002" } ],
  "status": "completed",
  "category": [
    { "coding": [ { "system": "http://hl7.org/fhir/medicationdispense-admin-location", "code": "outpatient" } ] }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [
    { "actor": { "reference": "Practitioner/example-practitioner" } },
    { "actor": { "reference": "Organization/tashkent-diseases-hospital" } }
  ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "recorded": "2026-03-02T11:05:00+05:00",
  "whenPrepared": "2026-03-02T10:50:00+05:00",
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "Patient/example-salim" } ]
}
```

`quantity.code` имеет обязательную (required) связку с [единицами общего объёма](ValueSet-medication-total-volume-units-vs.html): UCUM для массы и объёма, локальная система единиц для штучных единиц, таких как `piece`. Всегда передавайте `system` и `code`, а не только понятную человеку `unit` (см. [Единицы и количества](general-guidance.html#units-and-quantities)). Аптека может отпускать лекарство по рецепту частями: каждая часть - отдельный отпуск со статусом `completed` на выданное количество, а рецепт остаётся `active`, пока не будет отпущено всё количество.

#### Лекарство, которое получает родственник

Когда лекарство получает родственник, указанный в рецепте как trustee, `receiver` ссылается на этого [RelatedPerson](StructureDefinition-uz-core-relatedperson.html). Здесь лекарство указано кодом, а не ссылкой на каталог:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "language": "en",
  "status": "completed",
  "medication": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
          "code": "005325",
          "display": "paracetamol"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "performer": [ { "actor": { "reference": "Organization/tashkent-diseases-hospital" } } ],
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ],
  "quantity": {
    "value": 10,
    "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "whenHandedOver": "2026-03-02T11:00:00+05:00",
  "receiver": [ { "reference": "RelatedPerson/example-related-person" } ]
}
```

`medication.concept` имеет обязательную (required) связку с набором значений [классификации лекарственных средств](ValueSet-medication-classification-vs.html): код INN называет действующее вещество, код ATC (`http://www.whocc.no/atc`) относит его к классификации ВОЗ. `display` должен соответствовать `language` ресурса. `receiver` может также быть Practitioner, PractitionerRole, например патронажной медсестрой, доставляющей лекарство на дом, или Location, куда было доставлено лекарство.

#### Отпуск, который не состоялся

Когда аптека не может отпустить назначенное лекарство, зарегистрируйте отпуск со `status` = `declined`, причиной в `notPerformedReason` и временем в `statusChanged`:

```json
{
  "resourceType": "MedicationDispense",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication-dispense"] },
  "status": "declined",
  "statusChanged": "2026-03-02T11:00:00+05:00",
  "notPerformedReason": {
    "concept": {
      "coding": [
        { "system": "http://hl7.org/fhir/CodeSystem/medicationdispense-status-reason", "code": "outofstock" }
      ]
    }
  },
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authorizingPrescription": [ { "reference": "MedicationRequest/example-medication-request" } ]
}
```

`notPerformedReason` - это `CodeableReference`: кодированная причина указывается в `concept`, а ссылка на DetectedIssue, например на лекарственное взаимодействие, выявленное проверкой безопасности, - в `reference`. Рецепт остаётся `active`, поэтому пациент может получить лекарство в другом месте.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
