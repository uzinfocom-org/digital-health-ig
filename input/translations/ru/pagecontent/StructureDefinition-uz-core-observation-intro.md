> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Observation представляет измерение или результат, относящийся к пациенту, на Платформе цифрового здравоохранения - лабораторные результаты, показатели жизнедеятельности и другие клинические наблюдения - кодируемые с помощью LOINC (также допускается SNOMED CT). Лабораторное наблюдение (Observation) связано с заказом, в результате которого оно получено (ServiceRequest, CarePlan или MedicationRequest), и с образцом [Specimen](StructureDefinition-uz-core-specimen.html), на котором оно было измерено. См. также [Показатели жизнедеятельности](vital-signs.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемое резюме; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Observation должно содержать (Must Have)

Этот профиль не добавляет собственной обязательной кардинальности. Требуемые элементы наследуются от базового ресурса: статус (registered \| preliminary \| final \| amended ...) и код, идентифицирующий то, что было наблюдаемо.

#### Каждое UZ Core Observation должно поддерживать (Must Support)



- идентификатор, instantiates[x] (использованное определение) и basedOn (0..1 - исходный ServiceRequest, CarePlan или MedicationRequest);
- triggeredBy (наблюдение, инициировавшее данное, с указанием причины) и partOf (процедура, иммунизация, инструментальное исследование или эпизод приёма лекарств);
- статус (связка required) и категорию (vital-signs, laboratory ...);
- код (предпочтительная связка LOINC / SNOMED) и субъект (обычно пациент);
- focus и приём (encounter), к которому относится наблюдение;
- время effective[x] и момент issued;
- исполнителя (performer - медицинский работник, роль или организация);
- результирующее значение value[x] либо dataAbsentReason, если значение отсутствует;
- произвольную текстовую заметку (note);
- измеренный образец (specimen) и использованное устройство (device);
- referenceRange (low, high, normalValue, age, text);
- ссылки hasMember и derivedFrom на связанные наблюдения или ответы;
- компоненты (component), каждый со своим собственным кодом и значением value[x].

> Используйте `component` для панелей, части которых имеют общее время effective и субъект (например, систолическое + диастолическое давление в одном наблюдении артериального давления); используйте `hasMember` для группировки отдельно полученных наблюдений (Observations) под одной панелью.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от единичного числового результата к многокомпонентной панели. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены в виде ссылок внизу страницы (например, [сатурация кислорода](Observation-oxygen-saturation-example.html), [артериальное давление](Observation-blood-pressure-example.html), [панель общего анализа крови](Observation-cbc-panel-example.html)).

#### Единичный количественный результат

Наблюдению всегда нужны `status` и `code`, указывающий, что именно было измерено. На практике вы передаёте больше: `category`, группирующую его, `subject`, к которому оно относится, время выполнения (`effective[x]`) и результат в `value[x]`. Числовой результат - это `valueQuantity`, несущий единицу измерения UCUM - всегда включайте машиночитаемые `system` и `code`, а не только удобочитаемый `unit`:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://loinc.org", "code": "8310-5", "display": "Body temperature" } ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": {
    "value": 36.5,
    "unit": "C",
    "system": "http://unitsofmeasure.org",
    "code": "Cel"
  }
}
```

`code` привязан к LOINC/SNOMED (preferred) и указывает, *что* было наблюдаемо; `category` (`vital-signs`, `laboratory`, ...) разделяет наблюдения по виду. См. [Показатели жизнедеятельности](vital-signs.html) для стандартных кодов показателей жизнедеятельности и [Единицы и величины](general-guidance.html#units-and-quantities) для правил UCUM.

#### Добавление интерпретации и референсного диапазона

Для результата, имеющего нормальный диапазон, передавайте `referenceRange` и помечайте значение с помощью `interpretation` (normal / high / low / critical):

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "valueQuantity": { "value": 95, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
  "interpretation": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code": "N",
          "display": "Normal"
        }
      ]
    }
  ],
  "referenceRange": [
    {
      "low": { "value": 90, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" },
      "high": { "value": 99, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
    }
  ]
}
```

#### Панель с компонентами (например, артериальное давление)

Когда несколько измерений имеют общее время и субъект - систолическое и диастолическое или аналиты одной лабораторной панели - помещайте каждую часть в `component`, а родительский `value[x]` оставляйте пустым. Родительский `code` именует панель:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://loinc.org", "code": "85354-9", "display": "Blood pressure panel" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "component": [
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8480-6", "display": "Systolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 120,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    },
    {
      "code": {
        "coding": [
          { "system": "http://loinc.org", "code": "8462-4", "display": "Diastolic blood pressure" }
        ]
      },
      "valueQuantity": {
        "value": 80,
        "unit": "mmHg",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    }
  ]
}
```

Используйте `component` только тогда, когда части имеют общее время effective и субъект. Чтобы сгруппировать под одной панелью отдельно полученные наблюдения (Observations) (каждое - свой собственный ресурс), используйте вместо этого `hasMember`.

#### Когда результат отсутствует

Если исследование было выполнено, но не дало значения (образец непригоден, пациент отказался), не опускайте `value[x]` молча - передавайте на его месте `dataAbsentReason`. В Observation это кодированный `CodeableConcept`, а не расширение `_value`, используемое в идентификаторах Patient:

```json
{
  "resourceType": "Observation",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation" ] },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs",
          "display": "Vital Signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6",
        "display": "Oxygen saturation in Arterial blood"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "dataAbsentReason": {
    "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason", "code": "unknown" }
    ]
  }
}
```

Сатурация кислорода является показателем жизнедеятельности, поэтому `category` `vital-signs` по-прежнему обязательна, даже когда само значение отсутствует - отсутствие результата не отменяет категорию. См. [Отсутствующие и скрытые данные](general-guidance.html#missing-data) для выбора подходящего механизма отсутствия данных.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
