> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core DeviceUsage фиксирует, что пациент использует, использовал или будет использовать изделие - инсулиновую помпу, слуховой аппарат, кресло-коляску, внутриматочную спираль. Это утверждение: кто сообщил об использовании, когда, насколько регулярно изделие используется на самом деле и зачем оно используется. Само изделие этот ресурс не описывает; изделие указывается как концепт SNOMED CT или как ссылка на [UZ Core Device](StructureDefinition-uz-core-device.html) или DeviceDefinition. DeviceUsage может исполнять [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), которым изделие было назначено, а его причина может ссылаться на [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) или [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Об использовании сообщает [пациент](StructureDefinition-uz-core-patient.html), [медицинский работник](StructureDefinition-uz-core-practitioner.html) или его [роль](StructureDefinition-uz-core-practitioner-role.html), [связанное лицо](StructureDefinition-uz-core-relatedperson.html) или [организация](StructureDefinition-uz-core-organization.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core DeviceUsage должно содержать

Этот профиль не добавляет собственных обязательных элементов. Базовый ресурс DeviceUsage требует три:

1. `status` утверждения из [набора значений статусов использования изделия](ValueSet-deviceusage-status-vs.html) (связка required);
2. `patient` - ссылку на [UZ Core Patient](StructureDefinition-uz-core-patient.html);
3. `device` - закодированный концепт изделия или ссылку на [UZ Core Device](StructureDefinition-uz-core-device.html) или DeviceDefinition.

#### Каждое UZ Core DeviceUsage должно поддерживать

- идентификатор утверждения, всегда передаваемый вместе с его `system`;
- `basedOn` - [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), которым изделие было назначено;
- `category` - условия использования из [набора значений категорий использования изделия](ValueSet-deviceusage-category-vs.html) (связка preferred);
- `timing[x]` - когда изделие используется: `dateTime`, `Period` или `Timing`;
- `dateAsserted` - когда было сделано утверждение;
- `usageStatus` и `usageReason` - статус самого использования, в отличие от статуса утверждения, и причина этого статуса;
- `adherence` - насколько регулярно используется изделие ([коды приверженности](ValueSet-deviceusage-adherence-code-vs.html)), с причиной ([причины приверженности](ValueSet-deviceusage-adherence-reason-vs.html)) (связки preferred);
- `informationSource` - кто сообщил об использовании: Patient, Practitioner, PractitionerRole, RelatedPerson или Organization, все - профили UZ Core;
- `reason` - зачем используется изделие, как концепт или ссылка на UZ Core Condition, Observation или DiagnosticReport;
- `bodySite` - в каком месте тела используется изделие, из [набора значений анатомических локализаций](ValueSet-body-site-vs.html) (связка preferred);
- `note`.

### Сборка JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до утверждения с данными о приверженности. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([текущее использование](DeviceUsage-example-deviceusage-active.html), [период использования](DeviceUsage-example-deviceusage-period.html), [ссылка на UZ Core Device](DeviceUsage-example-deviceusage-iud.html)).

#### Наименьший DeviceUsage, который вам следует отправлять

`status`, `patient` и `device` - единственные обязательные элементы. Каждый ресурс UZ Core должен также указывать профиль, на соответствие которому он претендует, в `meta.profile` - так сервер понимает, по каким правилам выполнять валидацию:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  }
}
```

`status` описывает утверждение, а не изделие: `active` означает, что пациент всё ещё использует изделие, `completed` - что использование завершено, `intended` - что оно запланировано, а `entered-in-error` отзывает ошибочное утверждение. `device` - это `CodeableReference`: концепт изделия SNOMED CT находится в `concept`, а ссылка на [UZ Core Device](StructureDefinition-uz-core-device.html) или DeviceDefinition располагается на уровень глубже (`{ "reference": { "reference": "Device/id" } }`). О различии см. [Ссылки и CodeableReference](how-to-read.html#references-and-codeablereferences).

#### Зарегистрированное использование изделия

На практике врач записывает, когда началось использование, зачем используется изделие и где на теле оно находится. `timingPeriod` только со `start` означает, что использование продолжается; когда оно прекращается, добавьте `end` и установите `status` в `completed`. `dateAsserted` - момент, когда было сделано утверждение, а `informationSource` - кто его сделал:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "timingPeriod": { "start": "2025-03-10" },
  "dateAsserted": "2026-09-15T10:30:00+05:00",
  "informationSource": { "reference": "Practitioner/example-practitioner" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "reason": [{
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "46635009", "display": "Type 1 diabetes mellitus" }]
    }
  }],
  "bodySite": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "75093004", "display": "Skin structure of abdomen" }]
    }
  },
  "note": [{ "text": "Infusion set changed every 3 days; site rotated around the abdomen." }]
}
```

`reason` и `bodySite` - тоже `CodeableReference`. Здесь показание - закодированный концепт; если диагноз уже записан, сошлитесь на него: `{ "reference": { "reference": "Condition/id" } }`. Если изделие было назначено, добавьте `basedOn` со ссылкой на [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), а для условий использования - `category`.

#### Запись приверженности

Когда пациент сообщает, насколько регулярно он на самом деле использует изделие, добавьте `adherence`. Его `code` (always, sometimes, never) и хотя бы одна `reason` (forgot, lost, broken, stolen ...) обязательны, если `adherence` присутствует. `usageStatus` фиксирует статус самого использования теми же кодами статусов, что и `status`:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "dateAsserted": "2026-10-20T09:00:00+05:00",
  "informationSource": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "usageStatus": {
    "coding": [{ "system": "http://hl7.org/fhir/deviceusage-status", "code": "active" }]
  },
  "adherence": {
    "code": {
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-code", "code": "sometimes" }]
    },
    "reason": [{
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-reason", "code": "forgot" }]
    }]
  }
}
```

Здесь пациент сообщил об использовании сам, поэтому `informationSource` ссылается на пациента. Кодировки `usageStatus`, кода и причины приверженности не содержат `display`: сервер заполняет его сам, а узбекские и русские отображаемые названия берутся из дополнений (supplement) к системам кодов.

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
