UZ Core AdverseEvent регистрирует на Цифровой платформе здравоохранения (DHP) нежелательное явление, например поствакцинальную реакцию. Он содержит reference на предполагаемый источник, который мог вызвать это явление; для реакции на вакцину таким ресурсом является [Immunization](StructureDefinition-uz-core-immunization.html). Вместе с ним могут использоваться [Observation](StructureDefinition-uz-core-observation.html) или [Condition](StructureDefinition-uz-core-condition.html), описывающие саму реакцию. Ресурс определяет затронутого [Patient](StructureDefinition-uz-core-patient.html) и [Practitioner](StructureDefinition-uz-core-practitioner.html), зарегистрировавшего событие. Событие может представлять собой фактически причинённый вред или предотвращённое потенциально опасное событие.

### Обязательные элементы данных и элементы Must Support

Указанные ниже элементы должны либо всегда присутствовать (обязательные элементы), либо поддерживаться при наличии соответствующих данных ([Must Support](must-support.html)). Не все они обязательны, однако система должна заполнять каждый элемент Must Support при наличии данных и обрабатывать его при получении. Ниже приведено человекочитаемое резюме; [формальные представления](#profile) содержат точные кардинальности, типы и терминологические привязки.

#### Элементы Must Have в каждом UZ Core AdverseEvent

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы наследуются от базового ресурса: статус записи (1..1), actuality - фактически причинённый вред или потенциальное предотвращённое событие (1..1), а также субъект, с которым произошло событие (1..1). На практике также всегда следует заполнять предполагаемый источник события (см. раздел Must Support ниже).

#### Элементы Must Support в каждом UZ Core AdverseEvent



- идентификатор, статус записи и actuality (фактически причинённый вред или потенциальное предотвращённое событие);
- субъект, с которым произошло событие, связанный Encounter и время возникновения события (дата и время, период или расписание);
- время выявления события и дата его регистрации;
- наступившее последствие - [Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html), вызванные событием, - и место события;
- степень серьёзности и исход;
- лицо, зарегистрировавшее событие, и участник события (его функция и actor);
- предполагаемый источник - конкретный объект, который мог вызвать событие; для поствакцинальной реакции это [Immunization](StructureDefinition-uz-core-immunization.html);
- примечания.

> Для поствакцинальной реакции в предполагаемом источнике укажите reference на [Immunization](StructureDefinition-uz-core-immunization.html), а в `resultingEffect` - reference на Condition или Observation, описывающий реакцию.

### Пошаговое формирование JSON

Приведённые ниже примеры начинаются с минимального экземпляра, принимаемого сервером, и заканчиваются полной записью о нежелательном явлении. Скопируйте подходящий пример и адаптируйте его: каждое указанное значение проходит валидацию по этому профилю. Ссылки на полные эталонные экземпляры приведены в нижней части страницы ([анафилаксия с летальным исходом](AdverseEvent-example-fatal-anaphylaxis.html), [предотвращённая ошибка при применении лекарственного средства](AdverseEvent-example-averted-medication-error.html)).

#### Минимальный AdverseEvent, который следует отправлять

Базовый ресурс требует указания `status` записи, `actuality` (произошёл ли фактический вред или имело место потенциальное предотвращённое событие) и `subject`, с которым произошло событие. Нежелательное явление имеет практический смысл только при добавлении `suspectEntity` - предполагаемого источника события. Обратите внимание: `status` и `actuality` являются простыми кодами, а не `CodeableConcept`; передавайте строковое значение без дополнительной структуры. Каждый ресурс UZ Core также должен указывать в `meta.profile` профиль, соответствие которому он заявляет:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event"] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "suspectEntity": [
    { "instanceReference": { "reference": "Medication/example-prednisone" } }
  ]
}
```

Для `status` (registered, in-progress, completed ...) и `actuality` (`actual` / `potential`) используется обязательная привязка: значение должно выбираться из соответствующего ValueSet. `suspectEntity.instance[x]` содержит экземпляр, предположительно связанный с возникновением события. В данном примере это Medication; для поствакцинальной реакции используется [Immunization](StructureDefinition-uz-core-immunization.html). Также могут использоваться Procedure, Substance, Device или MedicationAdministration. Это обычный `Reference`, поэтому `instanceReference` непосредственно содержит `{ "reference": "Type/id" }`.

#### Реалистичный пример фактически произошедшего нежелательного явления

Для фактического события, затронувшего пациента, укажите время его возникновения (`occurrenceDateTime`), время выявления в `detected`, `recordedDate`, связанные `encounter` и `location`, `resultingEffect` - [Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html), возникшие вследствие события, - `seriousness`, `outcome`, `recorder` и `participant`, сообщившего о событии:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "completed",
  "actuality": "actual",
  "subject": { "reference": "Patient/example-david" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:45:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "resultingEffect": [ { "reference": "Condition/example-anaphylaxis" } ],
  "location": { "reference": "Location/example-location" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "outcome": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "405535005",
          "display": "Adverse incident resulting in death"
        }
      ]
    }
  ],
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "participant": [
    {
      "function": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code": "AUT",
            "display": "author (originator)"
          }
        ]
      },
      "actor": { "reference": "Practitioner/example-practitioner" }
    }
  ],
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-amoxicillin" } } ],
  "note": [
    {
      "text": "Patient developed anaphylaxis shortly after amoxicillin administration and died despite resuscitation efforts."
    }
  ]
}
```

В отличие от `seriousness` и `outcome`, имеющих тип `CodeableConcept` (в данном примере `outcome` использует SNOMED CT, а `seriousness` - систему кодов серьёзности HL7), элементы `resultingEffect`, `subject`, `encounter`, `location`, `recorder` и `participant.actor` являются обычными `Reference` в формате `{ "reference": "Type/id" }` без дополнительной вложенности. `participant.function` указывает причину участия данного лица (здесь `AUT` - автор, зарегистрировавший событие).

#### Когда это предотвращённое потенциально опасное событие, а не фактический вред

Предотвращённое событие, которое не затронуло пациента, регистрируется аналогичным образом, но для `actuality` указывается `potential`. `resultingEffect` отсутствует, поскольку с пациентом ничего не произошло, а `outcome` не указывается. В `note` следует описать, как событие было предотвращено. `suspectEntity` по-прежнему содержит reference на объект, который мог бы причинить вред:

```json
{
  "resourceType": "AdverseEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-adverse-event" ] },
  "status": "in-progress",
  "actuality": "potential",
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "occurrenceDateTime": "2026-04-30T10:30:00+05:00",
  "detected": "2026-04-30T10:35:00+05:00",
  "recordedDate": "2026-04-30T11:15:00+05:00",
  "location": { "reference": "Location/example-location-1" },
  "seriousness": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
        "code": "serious",
        "display": "Serious"
      }
    ]
  },
  "recorder": { "reference": "Practitioner/example-practitioner" },
  "suspectEntity": [ { "instanceReference": { "reference": "Medication/example-prednisone" } } ],
  "note": [
    {
      "text": "Prednisone ordered despite a documented contraindication; pharmacy intercepted it before it reached the patient."
    }
  ]
}
```

Предотвращённое потенциально опасное событие также следует регистрировать: `seriousness` отражает возможную тяжесть последствий, а `detected` фиксирует момент, когда защитный механизм позволил выявить событие. Правила выбора между отсутствием элемента и явным указанием отсутствующих данных приведены в разделе [Отсутствующие и скрытые данные](general-guidance.html#missing-data).

Примеры вызовов API и образец payload приведены в разделе [Быстрый старт](#quick-start) в нижней части страницы.
