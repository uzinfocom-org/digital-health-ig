> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Immunization фиксирует одну дозу вакцины - была ли она введена или намеренно не введена - для пациента на Цифровой платформе здравоохранения. Он отражает, какая вакцина была введена, продукт, серию и дозу, когда и где это произошло, кто её ввёл, какой протокол был соблюдён, и любую реакцию. Он ссылается на [Patient](StructureDefinition-uz-core-patient.html), которому проведена вакцинация, и на вводившего вакцину [Practitioner](StructureDefinition-uz-core-practitioner.html) или [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), а также может быть связан с [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), которая послужила её основанием. Доза однозначно идентифицируется по сочетанию пациент + код вакцины + момент введения + номер серии, поэтому одна и та же доза не записывается дважды.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемое для человека резюме; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Immunization обязан иметь

Каждый Immunization должен содержать статус - completed (доза введена), not-done (медицинский отвод или отказ, и в этом случае указывается причина статуса) или entered-in-error - код вакцины, указывающий, какая вакцина была введена (или была бы введена), пациента, к которому относится запись, и момент введения (дату введения в формате date/time, либо строку, когда известна только приблизительная дата). Если зафиксирован исполнитель, лицо, которое ввело дозу, является обязательным, а если зафиксирован протокол, обязательным является и номер дозы в серии.

#### Каждый UZ Core Immunization должен поддерживать (Must Support)



- бизнес-идентификатор и basedOn - назначение или [рекомендацию](StructureDefinition-uz-core-immunization-recommendation.html), на основании которой введена доза;
- причину статуса (для записи `not-done`), введённый продукт, номер серии производителя и срок годности, а также количество дозы;
- случай обслуживания (encounter), место (location), участок введения и путь введения, а также вспомогательную информацию;
- флаг первичного источника и источник информации (кто сообщил данные);
- исполнителя (и его функцию/роль), примечания и причину вакцинации;
- флаг сниженной активности (subpotent) с его причиной, право на участие в программе (программа и статус участия) и источник финансирования;
- реакцию (дату, проявление и было ли это сообщено самим пациентом);
- применённый протокол - название серии, организацию-источник, целевое заболевание, номер дозы и общее количество доз в серии.

> Используйте `status = not-done` с причиной статуса, чтобы зафиксировать отвод или отказ - не опускайте запись. Зарезервируйте `entered-in-error` для записей, созданных по ошибке.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полной записи о вакцинации с протоколом и реакцией. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены в виде ссылок внизу страницы ([доза BCG](Immunization-immunization-example-001.html), [доза против кори](Immunization-example-measles-immunization.html)).

#### Наименьший Immunization, который вам следует отправлять

Четыре элемента являются обязательными: `status`, `vaccineCode`, `patient` и `occurrence`. Код вакцины может быть кодом CVX или кодом Австралийского реестра иммунизации (AIR); момент введения обычно представлен как `occurrenceDateTime`. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет соответствие, в `meta.profile`. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization" ] },
  "status": "completed",
  "vaccineCode": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/cvx",
        "code": "03",
        "display": "measles, mumps and rubella virus vaccine"
      }
    ]
  },
  "patient": { "reference": "Patient/example-emma" },
  "occurrenceDateTime": "2024-01-10"
}
```

`status` имеет связку `required` со значениями `completed` / `not-done` / `entered-in-error`. `vaccineCode` использует связку `extensible` с [набором значений кодов вакцин](ValueSet-vaccine-code-vs.html) - используемыми системами являются CVX (`http://hl7.org/fhir/sid/cvx`) и Австралийский реестр иммунизации (AIR). Когда известна только приблизительная дата, отправляйте `occurrenceString` вместо `occurrenceDateTime`.

#### Реалистичная введённая доза

На практике вы фиксируете сведения о продукте и о введении: код вакцины `vaccineCode` из CVX, `lotNumber` и `expirationDate`, `encounter` и `location`, `site` и `route`, `doseQuantity`, а также `performer`, который ввёл дозу. `vaccineCode` - это обычный `CodeableConcept`, тогда как `performer.actor` - это обычный `Reference`:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "primarySource": true,
  "lotNumber": "LOT-BCG-2026-01",
  "expirationDate": "2027-01-31",
  "location": { "reference": "Location/example-location-1" },
  "site": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActSite", "code": "LA", "display": "Left arm" }]
  },
  "route": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "36673005", "display": "Intradermal injection" }]
  },
  "doseQuantity": { "value": 0.05, "unit": "mL", "system": "http://unitsofmeasure.org", "code": "mL" },
  "performer": [
    {
      "function": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0443", "code": "AP", "display": "Administering Provider" }]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ]
}
```

`patient`, `encounter`, `location`, `basedOn`, `supportingInformation`, `performer.actor` и `protocolApplied.authority` - всё это обычные References (`{ "reference": "Type/id" }`). `administeredProduct`, `informationSource`, `reason` и `reaction.manifestation` имеют тип `CodeableReference` - их ссылка располагается на один уровень глубже (`{ "reference": { "reference": "Type/id" } }`). О различии см. [References and CodeableReferences](how-to-read.html#references-and-codeablereferences).

#### Добавление протокола, причины и реакции

Для полной записи добавьте `protocolApplied` (название серии, целевое заболевание, номер дозы и общее количество доз), `reason` для вакцинации и любую наблюдавшуюся `reaction`. Обратите внимание, где применяется форма CodeableReference - `reason` и `reaction.manifestation` вкладывают ссылку, тогда как `protocolApplied.authority` - это обычный Reference:

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "completed",
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00",
  "administeredProduct": {
    "reference": { "reference": "Medication/medication-imm-001" }
  },
  "reason": [
    { "reference": { "reference": "Condition/condition-tuberculosis-risk-example" } }
  ],
  "reaction": [
    {
      "date": "2026-04-28T12:00:00+05:00",
      "manifestation": {
        "concept": {
          "coding": [{ "system": "http://snomed.info/sct", "code": "260389003", "display": "No reaction" }]
        }
      },
      "reported": false
    }
  ],
  "protocolApplied": [
    {
      "series": "BCG vaccination",
      "authority": { "reference": "Organization/example-immunization-organization" },
      "targetDisease": [
        { "coding": [{ "system": "http://snomed.info/sct", "code": "56717001", "display": "Tuberculosis" }] }
      ],
      "doseNumber": "1",
      "seriesDoses": "1"
    }
  ]
}
```

`reaction.manifestation` несёт своё кодированное заключение в `concept`; вместо этого оно может указывать на [Observation](StructureDefinition-uz-core-observation.html) через свою вложенную `reference`. `protocolApplied.targetDisease` имеет связку `extensible` с SNOMED CT. Когда доза была обусловлена [рекомендацией](StructureDefinition-uz-core-immunization-recommendation.html) или назначением, добавьте ссылку `basedOn` на неё.

#### Когда доза не была введена

Не опускайте запись, когда от вакцины отказались, она противопоказана или иным образом не введена - установите `status` в `not-done` и укажите `statusReason`. `occurrence` по-прежнему фиксирует, когда введение должно было состояться (или было запланировано):

```json
{
  "resourceType": "Immunization",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization"] },
  "status": "not-done",
  "statusReason": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "IMMUNE", "display": "immunity" }]
  },
  "vaccineCode": {
    "coding": [{ "system": "http://hl7.org/fhir/sid/cvx", "code": "19", "display": "Bacillus Calmette-Guerin vaccine" }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-04-28T10:30:00+05:00"
}
```

`statusReason` использует связку `required`. О различии между событием not-done и отсутствующим элементом см. [Missing & suppressed data](general-guidance.html#missing-data).

Примеры вызовов API и образец полезной нагрузки см. в разделе [Quick Start](#quick-start) внизу этой страницы.
