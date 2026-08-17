UZ Core AuditEvent представляет собой неизменяемый журнал аудита, фиксирующий, кто и к каким данным обращался или что изменял на Цифровой платформе здравоохранения (DHP, Digital Health Platform). Профиль следует модели аудита IHE ATNA / DICOM: платформа регистрирует чтение, создание, обновление, удаление и поиск данных, входы в систему и события экстренного доступа break-glass, сохраняет запрос, на основании которого выполнялся поиск, и отмечает неуспешный или запрещённый доступ (HTTP 401 / 403). Ресурсы AuditEvent создаются платформой и доступны клиентам только для чтения; они содержат reference на [Patient](StructureDefinition-uz-core-patient.html), данные которого были затронуты.

### Обязательные элементы данных и элементы Must Support

Приведённые ниже элементы должны либо всегда присутствовать (mandatory), либо поддерживаться при наличии данных ([Must Support](must-support.html)). Не все из них являются обязательными, однако система должна заполнять каждый элемент Must Support, если соответствующие данные имеются, и обрабатывать его при получении. Это человекочитаемое резюме; точные кардинальности, типы и терминологические привязки приведены ниже в [формальных представлениях](#profile).

#### Что должен содержать каждый UZ Core AuditEvent (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей верхнего уровня. Обязательные элементы унаследованы от базового ресурса: `code` (что произошло), временная метка `recorded`, как минимум один `agent` с элементом `who`, а также `source` с элементом `observer`. Если используется slice категории `dhpCategory`, элементы `system` (DICOM `dcm`) и `code` в нём имеют кардинальность 1..1.

#### Что должен поддерживать каждый UZ Core AuditEvent (Must Support)



- категорию - группу события с кодировкой slice `dhpCategory` из DICOM (обязательная привязка для её `code`);
- `code` - конкретный подтип события (обязательная привязка);
- `action` - создание, чтение, обновление, удаление или выполнение операции (обязательная привязка);
- `occurredDateTime` и временную метку `recorded`;
- `outcome`, для `code` которого используется обязательная привязка исхода (успешное выполнение либо ошибка при отказе в доступе с HTTP 401 / 403);
- `patient`, данные которого были затронуты;
- `agent` с элементами `type`, `role`, `who` и `authorization` (цель использования данных, обязательная привязка); `who` может указывать на PractitionerRole, Practitioner, Patient или RelatedPerson;
- `entity` с элементами `role`, `what`, `securityLabel` и `query` (поисковый запрос в кодировке base64, если применимо).

> Экстренный доступ break-glass регистрируется как AuditEvent, в котором `agent.authorization` содержит экстренную цель использования данных.

### Пошаговое формирование JSON

Ресурсы AuditEvent создаются платформой, а не клиентами, поэтому в основном их требуется читать; однако важно понимать их структуру. В примерах ниже показаны автономное событие и событие, затронувшее данные пациента. Все приведённые значения проходят валидацию по этому профилю. Полные эталонные экземпляры доступны по ссылкам в нижней части страницы ([вход в систему](AuditEvent-example-auditevent-login.html), [поиск Condition](AuditEvent-example-auditevent-condition-lookup.html)).

#### Типовой пример события (вход в систему)

Автономное событие указывает, что произошло (`code`), его группу (`category`), действие (`action`, `E` = execute), время выполнения (`occurredDateTime`) и регистрации (`recorded`), `outcome.code`, выполнившего действие `agent` и зарегистрировавший его `source`. `agent.who` - обычный `Reference`, который может указывать на PractitionerRole, Practitioner, Patient или RelatedPerson:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-audit-event" ] },
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

`category`, `code`, `action`, `outcome.code` и кодировки `agent` (type, role, authorization) используют обязательные привязки: значение должно быть выбрано из соответствующего ValueSet (каждая привязка перечислена ниже в представлении Snapshot). `agent.authorization` указывает цель использования данных (здесь `TREAT`); для экстренного доступа break-glass вместо этого указывается экстренная цель использования.

#### Событие, затронувшее данные пациента

Если событие связано с чтением или изменением записи конкретного пациента, добавьте соответствующий `patient` и `entity`, описывающий затронутый ресурс. В данном примере Practitioner выполнял поиск [Condition](StructureDefinition-uz-core-condition.html): `action` имеет значение `R` (read), `code` соответствует взаимодействию FHIR `search`, а `entity.what` содержит reference на возвращённый ресурс. `patient` и `entity.what` имеют тип обычного `Reference`:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-audit-event" ] },
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

При поиске платформа также сохраняет сам запрос в `entity.query` в кодировке base64. Неуспешный или запрещённый доступ (HTTP 401 / 403) регистрируется аналогично, но с кодом ошибки в `outcome.code`.

Примеры вызовов API и образец полезной нагрузки приведены в разделе [Быстрый старт](#quick-start) в нижней части этой страницы.
