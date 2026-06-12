> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core AuditEvent - это неизменяемый журнал аудита, фиксирующий, кто и к чему обращался или что изменял на Цифровой платформе здравоохранения. Он следует модели аудита IHE ATNA / DICOM: платформа регистрирует операции чтения, создания, обновления, удаления, поиска, входы в систему и события экстренного доступа (break-glass), записывая запрос, лежащий в основе поиска, и помечая неуспешные или отклонённые попытки доступа (HTTP 401 / 403). AuditEvents записываются платформой и доступны клиентам только для чтения; они связаны с [Пациентом](StructureDefinition-uz-core-patient.html), данные которого были затронуты.

### Обязательные и поддерживаемые (Must Support) элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый Must Support элемент, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это сводка в человекочитаемом виде; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core AuditEvent должен иметь

Этот профиль не добавляет собственных обязательных кардинальностей верхнего уровня. Обязательные элементы - это те, что унаследованы от базового ресурса: code (что произошло), временная метка recorded, как минимум один agent с who и source с observer. Внутри слайса категории dhpCategory, при его наличии, system (DICOM dcm) и code каждый имеют кардинальность 1..1.

#### Каждый UZ Core AuditEvent должен поддерживать



- category - группировку события, со слайсом кодирования dhpCategory из DICOM (required-связка на его code);
- code - конкретный подтип события (required-связка);
- action - create, read, update, delete или execute (required-связка);
- occurredDateTime и временную метку recorded;
- outcome, чей code использует required-связку outcome (success или failure при отклонённом доступе 401 / 403);
- пациента, данные которого были затронуты;
- agent с его type, role, who и authorization (цель использования, purpose-of-use, required-связка) - `who` может быть PractitionerRole, Practitioner, Patient или RelatedPerson;
- entity с его role, what, securityLabel и query (поисковый запрос в кодировке base64, где это применимо).

> Экстренный доступ (break-glass) фиксируется здесь как AuditEvent, чей `agent.authorization` содержит цель использования экстренного характера (emergency purpose-of-use).

### Построение JSON, шаг за шагом

AuditEvents записываются платформой, а не клиентами, поэтому вы в основном читаете их - но понимание их структуры будет полезным. Приведённые ниже примеры показывают самодостаточное событие, а затем событие, затрагивающее данные пациента. Каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([вход в систему](AuditEvent-example-auditevent-login.html), [поиск состояния](AuditEvent-example-auditevent-condition-lookup.html)).

#### Типичное событие (вход в систему)

Самодостаточное событие указывает, что произошло (`code`), его группировку (`category`), `action` (E = execute), когда оно произошло (`occurredDateTime`) и было зафиксировано (`recorded`), `outcome.code`, `agent`, который его выполнил, и `source`, который его зарегистрировал. `agent.who` - это обычный `Reference` и может указывать на PractitionerRole, Practitioner, Patient или RelatedPerson:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110114",
          "display": "User Authentication"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://dicom.nema.org/resources/ontology/DCM",
        "code": "110122",
        "display": "Login"
      }
    ]
  },
  "action": "E",
  "occurredDateTime": "2023-11-09T15:23:47.123Z",
  "recorded": "2023-11-09T15:23:47.123Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

`category`, `code`, `action`, `outcome.code` и кодирования `agent` (type, role, authorization) каждое использует required-связку - значение должно браться из связанного набора значений (представление Snapshot ниже перечисляет каждое из них). `agent.authorization` - это цель использования (purpose-of-use, здесь `TREAT`); экстренный доступ (break-glass) вместо этого содержит цель использования экстренного характера.

#### Событие, затронувшее данные пациента

Когда событие прочитало или изменило запись конкретного пациента, добавьте `patient`, которого оно касалось, и `entity`, описывающий затронутый ресурс. Здесь медицинский работник выполнил поиск [Состояния](StructureDefinition-uz-core-condition.html): `action` - это `R` (read), `code` - это FHIR-взаимодействие `search`, а `entity.what` ссылается на возвращённый ресурс. И `patient`, и `entity.what` являются обычными типами `Reference`:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110112",
          "display": "Query"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://hl7.org/fhir/restful-interaction", "code": "search" } ]
  },
  "action": "R",
  "occurredDateTime": "2025-02-15T14:02:52Z",
  "recorded": "2025-02-15T14:02:52Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "entity": [
    {
      "role": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/object-role",
            "code": "4",
            "display": "Domain Resource"
          }
        ]
      },
      "securityLabel": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "NOAUTH" }
          ]
        }
      ],
      "what": { "reference": "Condition/example-headache" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

Для поиска платформа также записывает сам запрос (в кодировке base64) в `entity.query`. Неуспешный или отклонённый доступ (HTTP 401 / 403) регистрируется таким же образом, но с failure `outcome.code`.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
