> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ImmunizationRecommendation - это вычисляемый прогноз того, какие вакцины пациенту положены, просрочены или запланированы на Цифровой платформе здравоохранения. Он формируется автоматически на основе действующего национального календаря профилактических прививок (см. [PlanDefinition](StructureDefinition-uz-core-plan-definition.html)), истории прививок пациента ([Immunization](StructureDefinition-uz-core-immunization.html)) и его демографических данных - он не вводится вручную. Каждая запись рекомендации указывает вакцину и/или целевое заболевание, статус прогноза (положена, просрочена и так далее), номер дозы в серии и даты, на которых основана рекомендация. Она ссылается на пациента ([Patient](StructureDefinition-uz-core-patient.html)), для которого составлен прогноз.

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны присутствовать всегда (обязательные) либо должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый Must Support элемент, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это сводка в удобочитаемом виде; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core ImmunizationRecommendation должен иметь

Каждый ImmunizationRecommendation должен указывать пациента, для которого составлен прогноз, дату создания рекомендации и хотя бы одну запись рекомендации. Каждая запись должна нести статус прогноза (положена, просрочена, запланирована и т.д.) и либо код вакцины, либо целевое заболевание - правило uzcore-imrec-1 требует наличия хотя бы одного из двух - а если указан критерий даты, то обязательны и его код (какого рода дата), и его значение (сама дата).

#### Каждый UZ Core ImmunizationRecommendation должен поддерживать



- бизнес-идентификатор и ответственную организацию-полномочие;
- внутри каждой записи рекомендации: код вакцины, целевое заболевание, любой код противопоказанной вакцины, причину прогноза и критерий даты (например, самая ранняя дата введения, дата, когда положено, дата просрочки);
- описание, название серии, номер дозы и общее число доз в серии;
- подтверждающие записи о прививках и подтверждающую информацию о пациенте, на которых был основан прогноз.

> Этот ресурс создаётся механизмом формирования рекомендаций. Клиенты читают его, чтобы узнать, что положено; они не должны создавать его напрямую.

### Построение JSON, шаг за шагом

Этот ресурс создаётся механизмом формирования рекомендаций, но при чтении полезно понимать его структуру. Приведённые ниже примеры идут от наименьшего допустимого экземпляра до полностью заполненного прогноза - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр приведён по ссылке внизу страницы ([пример рекомендации](ImmunizationRecommendation-example-uz-core-immunization-recommendation.html)).

#### Наименьшая допустимая рекомендация

Рекомендации нужны `patient`, для которого она составлена, `date` её создания и хотя бы одна запись `recommendation`. Каждая запись должна нести `forecastStatus` и либо `vaccineCode`, либо `targetDisease` (правило `uzcore-imrec-1` требует наличия хотя бы одного из двух). Каждый ресурс UZ Core также указывает профиль, которому он заявляет о соответствии, в `meta.profile`. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      }
    }
  ]
}
```

`patient` - это обычная `Reference` на пациента ([Patient](StructureDefinition-uz-core-patient.html)). `vaccineCode` связан с национальным набором значений вакцин (CVX выше), а `forecastStatus` (положена, просрочена, запланирована, ...) показывает, на какой стадии календаря находится пациент.

#### Полностью заполненный прогноз

На практике механизм выдаёт гораздо больше: ответственную организацию-полномочие `authority`, целевое заболевание `targetDisease`, от которого защищает вакцина, причину статуса `forecastReason`, критерий даты `dateCriterion` (когда доза самая ранняя, положена или просрочена), `series`/`doseNumber`/`seriesDoses`, а также `supportingImmunization` и `supportingPatientInformation`, на которых был основан прогноз:

```json
{
  "resourceType": "ImmunizationRecommendation",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-recommendation"]
  },
  "patient": { "reference": "Patient/example-emma" },
  "date": "2025-08-01T10:00:00+05:00",
  "authority": { "reference": "Organization/example-organization" },
  "recommendation": [
    {
      "vaccineCode": [
        { "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "03", "display": "measles, mumps and rubella virus vaccine" }] }
      ],
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "14189004", "display": "Measles" }] }
      ],
      "forecastStatus": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status", "code": "due", "display": "Due" }]
      },
      "forecastReason": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "77386006", "display": "Pregnancy" }] }
      ],
      "dateCriterion": [
        {
          "code": { "coding": [{ "system": "http://loinc.org", "code": "30981-5", "display": "Earliest date to give" }] },
          "value": "2025-08-10T09:00:00+05:00"
        }
      ],
      "description": "Patient is recommended to receive measles vaccination according to the national immunization schedule.",
      "series": "Routine measles immunization series",
      "doseNumber": "1",
      "seriesDoses": "2",
      "supportingImmunization": [ { "reference": "Immunization/example-measles-immunization" } ],
      "supportingPatientInformation": [ { "reference": "Condition/example-pregnancy" } ]
    }
  ]
}
```

`authority`, `supportingImmunization` (на [Immunization](StructureDefinition-uz-core-immunization.html)) и `supportingPatientInformation` - все они являются обычными типами `Reference`. `dateCriterion.code` выбирает, какую дату представляет `value` (самая ранняя для введения, когда положено, просрочено); см. [Терминология](general-guidance.html#terminology) для связанных наборов значений.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
