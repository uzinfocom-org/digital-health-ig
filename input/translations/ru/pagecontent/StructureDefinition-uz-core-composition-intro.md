> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Composition - это заголовок медицинского документа или цифровой формы: медицинской карты пациента, журнала, справки, подписанного заключения. Он указывает вид документа (`type`, из национального перечня форм медицинской документации), кого он касается, кто его составил, кто его заверил и какая организация его хранит, и делит содержимое на озаглавленные разделы `section`. У каждого раздела есть человекочитаемый текст `text` и ссылки на ресурсы с данными, например [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) или [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html); Composition ссылается на них, а не копирует их. Окончательный документ передаётся как Bundle типа document, в котором Composition - первая запись, и подписывается через [Provenance](StructureDefinition-uz-core-provenance.html); порядок сборки и подписания документов описан в [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/). Текущие клинические факты храните как отдельные ресурсы, а Composition используйте только тогда, когда нужен окончательный документ.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Composition должен содержать

- `status` (preliminary / final / amended / entered-in-error ...);
- вид документа `type`;
- дату последнего редактирования документа `date`;
- хотя бы одного автора `author`;
- заголовок `title`.

Все они происходят из базового ресурса. У каждого `attester` должен быть `mode`, а у каждого `text` раздела, если он указан, - `status` и `div`.

#### Каждый UZ Core Composition должен поддерживать

- `status` и вид документа `type` (форму из национального перечня медицинских документов);
- категорию документа `category` (медицинская карта / журнал / бланк);
- кого касается документ (`subject`), обычно [пациента](StructureDefinition-uz-core-patient.html);
- `date`, авторов `author` (специалист, должность, организация, родственник, пациент или устройство) и заголовок `title`;
- заверителей `attester`: как они заверили (personal / professional / legal / official) и кто они (`party`);
- [организацию](StructureDefinition-uz-core-organization.html), которая хранит документ (`custodian`);
- разделы `section`, каждый со своими `title`, `code`, `author`, текстом `text`, порядком записей (`orderedBy`), ссылками `entry` и причиной отсутствия записей (`emptyReason`).

### Сборка JSON, шаг за шагом

Примеры ниже ведут от наименьшего валидного Composition к документу с разделами. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [медицинская карта](Composition-example-medical-composition.html).

#### Наименьший Composition, который вам следует отправлять

Composition нужны `status`, `type`, `date`, `author` и `title`:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi"
}
```

`type` должен браться из национального справочника [видов медицинских документов](CodeSystem-composition-type-cs.html), здесь `emdoc-0010-0003` (медицинская карта пациента). Этот справочник ведётся на узбекском языке, поэтому отправляемый `display` должен быть узбекским, а ресурс должен указывать `"language": "uz"`; либо не указывайте `display`. `date` меняется при каждом редактировании документа; `author` повторяется, если документ составили несколько человек или систем.

#### Субъект, заверитель и хранитель

Медицинская карта касается пациента, заверяется ответственным за неё врачом и хранится в медицинском учреждении:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs",
        "code": "emdoc-0010-0003",
        "display": "BEMORNING TIBBIY KARTASI №"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-category-cs",
          "code": "Comp-001-0001",
          "display": "Tibbiy karta"
        }
      ]
    }
  ],
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "attester": [
    {
      "mode": { "coding": [ { "system": "http://hl7.org/fhir/composition-attestation-mode", "code": "legal" } ] },
      "time": "2026-03-05T10:15:00+05:00",
      "party": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "custodian": { "reference": "Organization/tashkent-hospital" }
}
```

`category` принимает код из национального справочника [категорий документов](CodeSystem-composition-category-cs.html) (медицинская карта / журнал / бланк); рядом с ним допускаются коды из других систем. `attester.mode` обязателен, если указан заверитель. Заверение - это утверждение внутри документа; цифровая подпись, придающая ему юридическую силу, - отдельный [Provenance](StructureDefinition-uz-core-provenance.html).

#### Добавление разделов

У каждого раздела `section` есть `title`, `code`, указывающий его содержимое, текст `text` и ссылки `entry` на ресурсы, стоящие за ним. Раздел, в котором нечего сообщить, сохраняет свой `text` и вместо записей указывает `emptyReason`:

```json
{
  "resourceType": "Composition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-composition"] },
  "language": "uz",
  "status": "final",
  "type": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs", "code": "emdoc-0010-0003" }
    ]
  },
  "subject": [ { "reference": "Patient/example-salim" } ],
  "date": "2026-03-05T10:00:00+05:00",
  "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "title": "Bemorning elektron tibbiy kartasi",
  "section": [
    {
      "title": "Anamnez",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "10164-2" } ] },
      "author": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bosh og'rig'i, 3 kundan beri.</div>"
      },
      "orderedBy": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-order", "code": "event-date" } ] },
      "entry": [ { "reference": "Condition/example-headache" } ]
    },
    {
      "title": "Allergiyalar",
      "code": { "coding": [ { "system": "http://loinc.org", "code": "48765-2" } ] },
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ma'lum allergiyalar yo'q.</div>"
      },
      "emptyReason": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/list-empty-reason", "code": "nilknown" } ]
      }
    }
  ]
}
```

Раздел должен содержать хотя бы одно из `text`, `entry` или вложенного `section`, а `emptyReason` допускается только в разделе без записей. `code` разделов обычно берутся из кодов разделов документов LOINC, здесь 10164-2 (история настоящего заболевания) и 48765-2 (аллергии). `text.status` - `generated`, когда текст сформирован из записей, и `additional`, когда он сообщает больше, чем они. `orderedBy` сообщает читателю, как отсортированы записи, здесь по дате события. `author` раздела нужен, только если он отличается от автора документа.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
