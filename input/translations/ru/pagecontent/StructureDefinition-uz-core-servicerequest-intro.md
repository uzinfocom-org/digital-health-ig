> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ServiceRequest - это запрос на оказание услуги пациенту: лабораторного исследования или панели, визуализирующего исследования, направления к специалисту или на плановую госпитализацию, сестринского визита на дом или переливания крови. Ресурс указывает, что запрошено, для кого, кем, насколько срочно, по какой причине и как это оплачивается. ServiceRequest фиксирует только сам запрос, а не то, что было сделано. События, которые его выполняют, ссылаются на него: [Specimen](StructureDefinition-uz-core-specimen.html) из `request`, [Observation](StructureDefinition-uz-core-observation.html), [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) или [Procedure](StructureDefinition-uz-core-procedure.html) из `basedOn`. [CarePlan](StructureDefinition-uz-core-careplan.html) включает его как запланированное мероприятие, [SupplyRequest](StructureDefinition-uz-core-supply-request.html) на компоненты крови основывается на назначении переливания, а [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) или [Claim](StructureDefinition-uz-core-claim.html) ссылаются на направление, на котором они основаны. Для направления за счёт государства платформа отслеживает каждый шаг согласования как [Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html), который указывает на ServiceRequest в `focus`. Полная последовательность описана в рабочих процессах [лабораторного исследования](workflow-lab.html) и [направления](workflow-referral.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core ServiceRequest должен содержать

Профиль не добавляет обязательных элементов. Базовый ресурс требует `status`, `intent` и `subject`.

#### Каждый UZ Core ServiceRequest должен поддерживать

- бизнес-идентификатор назначения или направления (`identifier`) и общий идентификатор, объединяющий запросы, созданные вместе, например все исследования одного образца (`requisition`);
- статус запроса (draft / active / on-hold / revoked / completed / entered-in-error / unknown) и его намерение (proposal / plan / order и его подвиды);
- вид услуги (`category`), не более чем с одной национальной категорией, например лабораторным разделом или госпитализацией;
- срочность (`priority`: routine / urgent / asap / stat) и признак того, что услугу выполнять нельзя (`doNotPerform`);
- запрошенную услугу (`code`);
- [пациента](StructureDefinition-uz-core-patient.html) или [место](StructureDefinition-uz-core-location.html), для которого создан запрос (`subject`), и [Encounter](StructureDefinition-uz-core-encounter.html), в ходе которого он создан;
- когда услуга должна быть оказана (`occurrence[x]`) и когда запрос был выписан (`authoredOn`);
- кто его выписал (`requester`: медицинский работник, должность медицинского работника, организация, пациент или родственник);
- зачем нужна услуга (`reason`): код ICD-10 или SNOMED CT либо ссылка на [Condition](StructureDefinition-uz-core-condition.html);
- как оплачивается услуга (расширение [вида оплаты](StructureDefinition-payment-type.html): бесплатно / платно / страхование / государственный тариф / прочее) и страховое покрытие (`insurance`);
- прочие сведения в обоснование запроса (`supportingInfo`) и [образец](StructureDefinition-uz-core-specimen.html) для исследования (`specimen`);
- указания для пациента, например как подготовиться (`patientInstruction`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего полезного экземпляра к направлению за счёт государства. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [лабораторное назначение](ServiceRequest-UZCoreServiceRequest-Example01.html), [назначение переливания](ServiceRequest-transfusion-order-01.html) и [сестринский визит на дом](ServiceRequest-example-nursing-newborn-home-visit-request.html).

#### Наименьший ServiceRequest, который вам следует отправлять

Базовый ресурс требует `status`, `intent` и `subject`, а каждый ресурс UZ Core указывает свой профиль в `meta.profile`. Запрос полезен только с услугой в `code`, поэтому отправляйте и её. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

`code` имеет тип `CodeableReference`, поэтому кодировка находится внутри `concept`. Используйте `intent` `order` для запроса, который разрешает оказание услуги. У национальных кодов лабораторных панелей узбекские отображаемые названия, поэтому ресурс задаёт `language` равным `uz`; у кодов HL7, таких как `status` и `intent`, `display` не указывайте.

#### Лабораторное назначение

Семейный врач во время приёма назначает срочный общий анализ крови. Номер назначения из системы поликлиники указывается в `identifier`, а `requisition` содержит номер, общий для всех исследований одного образца крови. Национальная категория берётся из лабораторных разделов, причина - код ICD-10, а `specimen` ссылается на образец после его взятия:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0001",
            "display": "Bepul"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "LAB-2026-004512" } ],
  "requisition": { "system": "https://mis.dmed.uz", "value": "REQ-2026-001877" },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-02",
          "display": "Gematologiya"
        }
      ]
    }
  ],
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs",
          "code": "lab-pan-E",
          "display": "Umumiy qon tahlili"
        }
      ]
    }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-01-16T09:30:00+05:00",
  "authoredOn": "2026-01-16T09:10:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D50.9" } ]
      }
    }
  ],
  "specimen": [ { "reference": "Specimen/example-specimen-blood-cbc" } ],
  "patientInstruction": [ { "instructionMarkdown": "Tahlilni och qoringa topshiring." } ]
}
```

`category` и `reason` нарезаны по значению. `category` содержит не более одного кода из [национальных категорий ServiceRequest](ValueSet-service-request-categories-vs.html) (лабораторные разделы и виды услуг SNOMED CT), рядом с ним допускаются другие категории. `reason` принимает коды ICD-10 или SNOMED CT из национальных кодов состояний; чтобы сослаться на записанный диагноз, используйте `"reference": { "reference": "Condition/[id]" }` вместо `concept`. `patientInstruction` повторяется, каждая запись - текст в формате markdown или ссылка на документ.

#### Направление на госпитализацию за счёт государства

Семейный врач направляет пациента на плановую госпитализацию по государственному тарифу. Услуга - SNOMED CT `306206005` Referral to service, категория - `32485007` Admission to hospital, а `performer` указывает [HealthcareService](StructureDefinition-uz-core-healthcareservice.html), куда направлен пациент:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "language": "uz",
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0004",
            "display": "Davlat tarifi"
          }
        ]
      }
    }
  ],
  "identifier": [ { "system": "https://mis.dmed.uz", "value": "REF-2026-000318" } ],
  "status": "active",
  "intent": "order",
  "category": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "32485007" } ] }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "306206005" } ] }
  },
  "subject": { "reference": "Patient/example-nodira" },
  "occurrencePeriod": { "start": "2026-03-10", "end": "2026-03-31" },
  "authoredOn": "2026-03-05T13:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "performer": [ { "reference": "HealthcareService/example-healthcareservice" } ],
  "reason": [
    {
      "concept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "K80.2" } ]
      }
    }
  ]
}
```

Дальнейший ход определяет вид оплаты. При государственном тарифе платформа запускает цепочку [Task согласования](StructureDefinition-uz-core-referral-approval-task.html) и согласует с ними `status` ServiceRequest; при любом другом виде оплаты направление сразу переходит к исполнителю. `occurrencePeriod` - окно, в течение которого услуга должна быть оказана; для фиксированного времени используйте `occurrenceDateTime`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
