> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Socioeconomic Observation фиксирует льготную/преференциальную категорию пациента и его социально-экономический статус - факты, влияющие на право на возмещение расходов, такие как инвалидность или группа социальных льгот, а также образование, профессию и социальный статус. Он смоделирован как [Observation](StructureDefinition-uz-core-observation.html), поэтому находится рядом с клиническими наблюдениями, но классифицируется отдельно. Для чтения и поиска этих записей используйте конечную точку Observation.

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Socioeconomic Observation должно иметь

Каждое Socioeconomic Observation должно содержать subject - [Patient](StructureDefinition-uz-core-patient.html), к которому относится запись (1..1), code, несущий тип социально-экономического наблюдения через обязательный coding-слайс socioeconomicType (1..1) - одно из значений *Eligible for benefit*, *Educational achievement*, *Occupation* или *Social status* (SNOMED CT, привязанный к набору значений DHP socioeconomic-observation-codes) - effectiveDateTime (когда данные были записаны или к какому моменту они относятся, 1..1) и status, унаследованный от базового ресурса.

#### Каждое UZ Core Socioeconomic Observation должно поддерживать



- subject, code (с его слайсом `socioeconomicType`) и effectiveDateTime, перечисленные выше.

> `value[x]` представляет собой CodeableConcept, набор значений которого зависит от `code`: льготы используют BenefitsVS, образование использует EducationVS, профессия использует PositionAndProfessionVS, а социальный статус использует SocialStatusVS. Выберите набор значений, соответствующий выбранному коду типа.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, к полностью заполненной социально-экономической записи. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы (например, [образование](Observation-example-salim-education.html), [социальный статус](Observation-example-salim-social-status.html), [профессия](Observation-example-salim-profession.html), [льготы](Observation-example-salim-benefits.html)).

#### Наименьшее социально-экономическое наблюдение, которое вам следует отправить

Всю запись несут четыре элемента: `status` и `subject` ([Patient](StructureDefinition-uz-core-patient.html), к которому она относится), `code`, указывающий, какой вид социально-экономического факта это представляет (через обязательный coding-слайс `socioeconomicType`, всегда код SNOMED CT из `http://snomed.info/sct`), и `effectiveDateTime`, когда запись была сделана. Сам результат помещается в `valueCodeableConcept`. Эта запись об уровне образования уже проходит валидацию:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105421008",
        "display": "Educational achievement"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs",
        "code": "regis0005.00004",
        "display": "O'rtacha"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

Именно `code` выбирает вид факта; здесь `105421008` (Educational achievement) означает, что `valueCodeableConcept` берётся из EducationVS. `subject` - это обычный `Reference`, поэтому цель находится непосредственно под `reference` (`"subject": { "reference": "Patient/example-salim" }`).

#### Запись о социальном статусе

Меняйте код типа и набор значений результата вместе - они всегда перемещаются парой. Для социального статуса пациента `code` равен `82996008` (Social status), а `valueCodeableConcept` берётся из SocialStatusVS:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "82996008", "display": "Social status" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs",
        "code": "regis0010.00003",
        "display": "Ishlaydi"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

#### Выбор кода типа и его набора значений

Единственное, что меняется между записью о льготах, образовании, профессии или социальном статусе, - это SNOMED-`code` и соответствующая система `valueCodeableConcept`. Держите их в согласии - система кодов результата ниже должна соответствовать коду типа в той же строке. Каждая система ссылается на набор значений кодов, которые вы можете использовать:

| Социально-экономический факт | `code` (SNOMED CT) | система `valueCodeableConcept` |
|---|---|---|
| Eligible for benefit | `1303306008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs`](ValueSet-benefits-vs.html) |
| Educational achievement | `105421008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs`](ValueSet-education-vs.html) |
| Occupation | `14679004` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs`](ValueSet-position-and-profession-vs.html) |
| Social status | `82996008` | [`https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs`](ValueSet-social-status-vs.html) |

Для записи о профессии `code` равен `14679004` (Occupation), а результат берётся из системы кодов профессий:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "14679004", "display": "Occupation" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
        "code": "1321.20",
        "display": "Bosh mexanik"
      }
    ]
  },
  "effectiveDateTime": "2025-06-11"
}
```

См. [Терминология](general-guidance.html#terminology), чтобы узнать, как публикуются связанные наборы значений.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
