> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core DiagnosticReport - это отчёт, который лаборатория или другая диагностическая служба выпускает для пациента: общий анализ крови, коагулограмма, анализ мочи. Он завершает цепочку [от лабораторного назначения до результата](workflow-lab.html). Отчёт ссылается на [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), на который он отвечает (`basedOn`), перечисляет результаты [Observation](StructureDefinition-uz-core-observation.html), которые он обобщает (`result`), и [Specimen](StructureDefinition-uz-core-specimen.html), на котором они измерены, и может содержать выпущенный отчёт в виде PDF. Сами значения хранятся в Observation; отчёт объединяет их и фиксирует, кто и когда их выпустил. [Encounter](StructureDefinition-uz-core-encounter.html) и [DeviceUsage](StructureDefinition-uz-core-deviceusage.html) могут ссылаться на отчёт как на свою причину.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core DiagnosticReport должен содержать

Профиль не добавляет обязательных элементов. Базовый ресурс требует `status` и `code`, указывающий вид отчёта.

#### Каждый UZ Core DiagnosticReport должен поддерживать

- идентификатор отчёта, присвоенный выпускающей системой;
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), на который отвечает отчёт (`basedOn`);
- `status` отчёта (registered / partial / preliminary / final / amended / corrected / cancelled / entered-in-error);
- `category` службы (гематология / биохимия / микробиология ...);
- вид отчёта (`code`);
- кого или что касается отчёт (`subject`), обычно [пациента](StructureDefinition-uz-core-patient.html);
- [обращение](StructureDefinition-uz-core-encounter.html), в рамках которого назначено исследование;
- клинически значимое время (`effective[x]`), обычно время взятия образца;
- исполнителя (`performer`): специалиста, должность или организацию, ответственных за отчёт;
- [образцы](StructureDefinition-uz-core-specimen.html), на которых основан отчёт;
- результаты [Observation](StructureDefinition-uz-core-observation.html) (`result`);
- изображения или другие данные, связанные с отчётом (`media`), каждое со ссылкой `link` и необязательным комментарием `comment`;
- весь отчёт в выпущенном виде (`presentedForm`), например PDF.

### Сборка JSON, шаг за шагом

Примеры ниже ведут от наименьшего валидного отчёта к полному лабораторному отчёту с назначением, образцом и результатами. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры: [отчёт об общем анализе крови](DiagnosticReport-uz-core-diagnostic-report-example.html), [внешний отчёт со своим кодом](DiagnosticReport-example-external-lab-report-coded.html) и [внешний отчёт только с текстом](DiagnosticReport-example-external-lab-report-text-only.html).

#### Наименьший DiagnosticReport, который вам следует отправлять

Отчёту нужны `status` и `code`. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, а отчёт полезен только вместе с пациентом, которого он касается:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` берётся из национального справочника [видов лабораторных отчётов](CodeSystem-lab-report-types-cs.html), здесь `lab-rep-01` (общий анализ крови). `status` использует коды HL7, узбекские и русские отображения которых берутся из дополнений DHP, поэтому `display` можно не указывать.

#### Лабораторный отчёт по назначению

Обычный отчёт отвечает на назначение и обобщает его результаты. `basedOn` ссылается на [ServiceRequest](ServiceRequest-example-cbc-order.html), `specimen` - на образец, а `result` - на Observation. Здесь `result` - это одно Observation панели общего анализа крови, аналиты которого являются его компонентами:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "language": "uz",
  "identifier": [
    { "system": "https://terminology.dhp.uz/fhir/core/NamingSystem/diagnostic-report-id", "value": "DR-2026-0001" }
  ],
  "basedOn": [ { "reference": "ServiceRequest/example-cbc-order" } ],
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "HM" } ] }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs",
        "code": "lab-rep-01",
        "display": "Umumiy qon tahlili"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "issued": "2026-02-06T11:00:00+05:00",
  "performer": [ { "reference": "Organization/tashkent-hospital" } ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "result": [ { "reference": "Observation/cbc-panel-example" } ]
}
```

Справочник видов лабораторных отчётов ведётся на узбекском языке, поэтому отправляемый `display` должен быть узбекским, а ресурс должен указывать `"language": "uz"`. `category` принимает код из национального набора значений категорий служб (таблица HL7 v2 0074); рядом с ним допускаются коды из других систем. `effective[x]` - время, к которому результат клинически относится, обычно время взятия образца; `issued` - время выпуска отчёта. Для номера отчёта используйте систему [идентификатора диагностического отчёта](NamingSystem-diagnostic-report-id.html).

#### Прикрепление выпущенного отчёта и изображений

`presentedForm` содержит отчёт в том виде, в котором его видят пациент или врач, обычно PDF. Укажите его `contentType` и либо само содержимое в `data` (base64), либо `url` на Binary. `media` связывает с отчётом изображения или другие документы, каждый через `link` на DocumentReference с необязательным `comment`:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs", "code": "lab-rep-01" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "result": [ { "reference": "Observation/cbc-panel-example" } ],
  "media": [
    {
      "comment": "Blood smear, x1000",
      "link": { "reference": "DocumentReference/example-blood-smear-image" }
    }
  ],
  "presentedForm": [
    {
      "contentType": "application/pdf",
      "title": "Complete Blood Count report",
      "url": "Binary/example-cbc-report-pdf"
    }
  ]
}
```

PDF не заменяет кодированные результаты: отправляйте также Observation в `result`, чтобы другие системы могли прочитать значения.

#### Вид отчёта, которого нет в национальном списке

Связка `code` расширяемая (extensible). Когда лаборатория выпускает отчёт, для которого нет национального кода, отправьте собственный код лабораторной информационной системы с её собственным `system`, а название отчёта - в `text`:

```json
{
  "resourceType": "DiagnosticReport",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-diagnostic-report"] },
  "status": "final",
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "LAB" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://lis.aurora-lab.uz/fhir/CodeSystem/report-type", "code": "AUR-0142" } ],
    "text": "Special immunology assay reported by Aurora LIS"
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-02-06T10:30:00+05:00",
  "performer": [ { "reference": "Practitioner/example-practitioner" } ]
}
```

URL системы кодирования выше приведён только как пример; используйте тот, который публикует ваша лабораторная система. Если в исходной системе кода нет совсем, отправьте `code` только с `text`, как в [примере только с текстом](DiagnosticReport-example-external-lab-report-text-only.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
