UZ Core Encounter представляет отдельное взаимодействие пациента с системой здравоохранения - визит - на Цифровой платформе здравоохранения. Encounter является центральным ресурсом маршрута пациента: ресурсы [Observation](StructureDefinition-uz-core-observation.html), [Procedure](StructureDefinition-uz-core-procedure.html), [Condition](StructureDefinition-uz-core-condition.html), MedicationRequest и клинические документы содержат reference на Encounter, к которому они относятся. Он фиксирует место проведения визита, участников оказания помощи и диагнозы, установленные в его рамках (каждый из которых указывает на [Condition](StructureDefinition-uz-core-condition.html)), а также может быть сгруппирован в рамках [EpisodeOfCare](StructureDefinition-uz-core-episode-of-care.html).

### Обязательные элементы и элементы Must Support

Перечисленные ниже элементы должны либо всегда присутствовать (обязательные элементы), либо поддерживаться при наличии соответствующих данных ([Must Support](must-support.html)). Не все они обязательны, однако система должна заполнять каждый элемент Must Support при наличии данных и обрабатывать его при получении. Ниже приведено человекочитаемое описание; точные кардинальности, типы и терминологические привязки указаны в [формальных представлениях](#profile).

#### Что обязательно должно присутствовать в каждом UZ Core Encounter

Единственным безусловно обязательным элементом этого профиля является `status` (planned \| in-progress \| completed \| cancelled ...), унаследованный как обязательный от базового ресурса и имеющий обязательную терминологическую привязку. Кроме того, если добавлена запись `location`, в ней обязательно должен быть указан reference на место (`location.location` с кардинальностью 1..1), поскольку запись местоположения не может существовать без указания конкретного места.

#### Что должен поддерживать каждый UZ Core Encounter



- элемент `identifier` (0..1);
- элементы `status`, `class`, `priority` и `type` (каждый с обязательной терминологической привязкой);
- элемент `serviceType`, содержащий reference на HealthcareService;
- элементы `subject` (Patient) и `subjectStatus` (обязательная терминологическая привязка);
- references в элементах `episodeOfCare`, `basedOn`, `careTeam` и `partOf`;
- Organization в элементе `serviceProvider`;
- записи `participant` с элементами `actor`, `type` (расширяемая привязка) и `period`;
- Appointment, в рамках которого был запланирован Encounter;
- элемент `reason` с `use` (предпочтительная привязка) и `value`, содержащим reference на [Condition](StructureDefinition-uz-core-condition.html), DiagnosticReport, Procedure или Observation;
- сведения о `virtualService` (телемедицине);
- элементы `actualPeriod`, `plannedStartDate`, `plannedEndDate` и `length`;
- список `diagnosis`, где каждая запись содержит `condition` (reference на [Condition](StructureDefinition-uz-core-condition.html)) и `use`;
- элемент `account` для выставления счетов;
- сведения `admission`: `origin`, `admitSource`, `reAdmission`, `destination` и `dischargeDisposition` (каждое кодированное значение имеет обязательную привязку);
- место, где проводится Encounter.

> Encounter нельзя перевести в статус `completed`, если окончание периода раньше его начала. Перед закрытием визита проверьте `actualPeriod`.

### Пошаговое формирование JSON

Примеры ниже последовательно дополняют один визит - экстренную госпитализацию - от минимально допустимой записи до полной записи о поступлении. Полный экземпляр приведён в [примере Encounter](Encounter-example-encounter.html). Скопируйте подходящий этап и адаптируйте его: все показанные значения проходят валидацию по этому профилю.

#### Минимальный Encounter для отправки

`status` - единственный строго обязательный элемент, однако Encounter практически полезен только при наличии `class` (как проходил контакт: стационарно, амбулаторно или экстренно) и `subject`, к которому он относится. Обратите внимание: `class` представляет собой список `CodeableConcept`:

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "class": [
    { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "IMP", "display": "Inpatient encounter" }] }
  ],
  "subject": { "reference": "Patient/example-patient" }
}
```

`status`, `class`, `priority`, `type` и `subjectStatus` имеют обязательную терминологическую привязку: значение должно быть выбрано из связанного ValueSet (каждая привязка приведена ниже в представлении Snapshot).

#### Реалистичный пример визита

Укажите, когда состоялся визит (`actualPeriod`), тип услуги (`type`), состояние пациента во время визита (`subjectStatus`), участников (`participant`, где `actor` содержит reference на [Practitioner](StructureDefinition-uz-core-practitioner.html) или [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)) и причину обращения (`reason`, указывающий на Condition, DiagnosticReport, Procedure или Observation):

```json
{
  "resourceType": "Encounter",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter" ] },
  "status": "completed",
  "class": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "IMP",
          "display": "Inpatient encounter"
        }
      ]
    }
  ],
  "priority": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code": "EM",
        "display": "Emergency"
      }
    ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs",
          "code": "mserv-0001-00004",
          "display": "Treatment services"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-patient" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00001",
        "display": "Awake"
      }
    ]
  },
  "actualPeriod": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" },
  "participant": [
    {
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "ATND",
              "display": "attender"
            }
          ]
        }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" },
      "period": { "start": "2024-01-01T10:00:00Z", "end": "2024-01-01T11:00:00Z" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs",
              "code": "mserv-0002-00001",
              "display": "Disease"
            }
          ]
        }
      ],
      "value": [ { "reference": { "reference": "Condition/example-headache" } } ]
    }
  ]
}
```

#### Диагноз, поступление и место оказания помощи

Для госпитализации добавьте список `diagnosis` (каждый `condition` представляет собой `CodeableReference` на [Condition](StructureDefinition-uz-core-condition.html)), сведения `admission` (источник поступления, признак повторной госпитализации и способ выбытия - все значения имеют обязательные привязки) и место оказания помощи. Если добавлена запись `location`, необходимо указать конкретное место: `location.location` является обязательным:

```json
{
  "diagnosis": [
    { "condition": [ { "reference": { "reference": "Condition/example-headache" } } ] }
  ],
  "admission": {
    "admitSource": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/admit-source",
          "code": "psych",
          "display": "From psychiatric hospital"
        }
      ]
    },
    "reAdmission": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0092",
          "code": "R",
          "display": "Re-admission"
        }
      ]
    },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
          "code": "home",
          "display": "Home"
        }
      ]
    }
  },
  "location": [
    { "location": { "reference": "Location/example-location" }, "status": "completed" }
  ]
}
```

Эти ключи добавляются в тот же ресурс, что и в приведённом выше реалистичном примере визита. Чтобы связать визит с более продолжительным курсом лечения, укажите reference на [EpisodeOfCare](StructureDefinition-uz-core-episode-of-care.html) в элементе `episodeOfCare`.

Примеры API-запросов и образец полезной нагрузки приведены в разделе [Быстрый старт](#quick-start) внизу страницы.
