> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Laboratory ObservationDefinition описывает лабораторное исследование как запись справочника, а не как результат: как называется и кодируется исследование или панель, какие аналиты оно определяет, в каких единицах, каким методом и каковы нормальные диапазоны. Портал пациента использует эти определения, чтобы показывать пациентам, что измеряет исследование и как читать свои значения. Одно определение служит всей стране: каждая организация, выполняющая исследование, публикует [HealthcareService](StructureDefinition-uz-core-healthcareservice.html), который ссылается на канонический `url` определения через расширение [service definition](StructureDefinition-service-definition.html). Сами результаты - это [Observation](StructureDefinition-uz-core-observation.html) с тем же `code`. Прежде чем создавать новое определение, найдите существующее по коду или идентификатору.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Laboratory ObservationDefinition должно содержать

- `status` (draft / active / retired / unknown);
- `code` лабораторного исследования или панели;
- `useContext` с лабораторным фокусом, который помечает ресурс как лабораторное определение (см. [лабораторный фокус](#laboratory-focus)).

Если указан `component`, у него должен быть собственный `code`.

#### Каждое UZ Core Laboratory ObservationDefinition должно поддерживать

- канонический `url`, на который ссылаются записи HealthcareService, и бизнес-идентификатор `identifier`;
- машиночитаемое имя `name` и заголовок `title` на узбекском языке с переводами на русский и каракалпакский;
- дату последнего изменения `date` и описание простым языком `description`;
- тип субъекта `subject`, к которому применяется исследование (обычно пациент);
- категорию `category` (laboratory) и `code` исследования или панели;
- допустимые типы результата (`permittedDataType`, например Quantity, CodeableConcept или string) и единицы (`permittedUnit`, UCUM);
- лабораторный метод `method`;
- референсные диапазоны (`qualifiedValue`): контекст, пол, категорию диапазона, сам диапазон `range` или набор значений нормальных кодированных результатов;
- связанные определения, входящие в эту панель (`hasMember`);
- аналиты панели (`component`), каждый со своим кодом, типами результата и единицами.

### Поиск существующего определения {#finding}

Определения общие, поэтому сначала проверьте справочник. Ищите по коду исследования, по бизнес-идентификатору или по каноническому URL:

```
GET [base]/ObservationDefinition?code=https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs%7Clab-pan-74
GET [base]/ObservationDefinition?identifier=[system]%7C[value]
GET [base]/ObservationDefinition?url=[canonical-url]
```

Добавьте `&status=active`, чтобы исключить черновики и выведенные из употребления определения.

### Сборка JSON, шаг за шагом

Примеры ниже ведут от наименьшего валидного определения к панели с её аналитами. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [определение гемоглобина](ObservationDefinition-example-laboratory-hemoglobin.html).

#### Наименьшее определение и лабораторный фокус {#laboratory-focus}

Определению нужны `status`, `code` и лабораторный фокус в `useContext`. Фокус фиксирован: `code` - это `focus` из типов контекста использования HL7, а значение - концепт SNOMED CT 108252007 "Laboratory procedure". Именно он позволяет клиентам отличать лабораторные определения от других ObservationDefinition на сервере:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  }
}
```

`code` здесь - `lab-pan-74` (гемоглобин) из национальных [кодов лабораторных панелей](CodeSystem-lab-pan-cs.html); допускаются также коды LOINC и SNOMED CT. Копируйте кодирование фокуса точно как показано, вместе с `display`, поскольку профиль фиксирует всё значение.

#### Запись справочника для одного исследования

Полная запись справочника содержит канонический `url`, названия, дату и описание, а также способ представления результатов: `permittedDataType`, единицу UCUM и метод `method`:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "url": "https://dhp.uz/fhir/core/ObservationDefinition/laboratory-hemoglobin",
  "name": "HemoglobinMassPerVolumeInBlood",
  "title": "Gemoglobin (HB)",
  "_title": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/translation",
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Гемоглобин (HB)" }
        ]
      }
    ]
  },
  "status": "active",
  "date": "2026-01-16",
  "description": "Mass concentration of hemoglobin in whole blood, shown to Patient Portal users in g/L.",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "subject": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" } ] } ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "method": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-methods-cs", "code": "lab-method-6" } ]
  }
}
```

`url` выше приведён для иллюстрации. `title` указывается на узбекском языке; русская и каракалпакская формы передаются в расширениях `translation` в сопутствующем элементе `_title`, по одному на язык. `permittedUnit` должен содержать код UCUM; национальное дополнение даёт каждой единице узбекское и русское название. `method` здесь - спектрофотометрия из национального справочника [лабораторных методов](CodeSystem-lab-methods-cs.html).

#### Добавление референсных диапазонов

`qualifiedValue` содержит нормальные диапазоны, которые Портал пациента показывает рядом с результатом. Повторяйте его для каждой группы со своим диапазоном; здесь мужчины и женщины:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
  },
  "permittedDataType": [ "Quantity" ],
  "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ],
  "qualifiedValue": [
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "male",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 130, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 170, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    },
    {
      "context": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning", "code": "normal" } ]
      },
      "gender": "female",
      "rangeCategory": "reference",
      "range": {
        "low": { "value": 120, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" },
        "high": { "value": 150, "unit": "g/L", "system": "http://unitsofmeasure.org", "code": "g/L" }
      }
    }
  ]
}
```

`rangeCategory` указывает вид диапазона (reference / critical / absolute), `context` - что означает диапазон (normal, recommended, therapeutic ...), а `gender` - к кому он относится. Точно так же используйте `age` или `gestationalAge` для возрастных диапазонов. Для исследований с кодированными результатами, например "отрицательно" / "положительно", вместо `range` укажите в `normalCodedValueSet` набор значений нормальных кодов.

#### Панель с её аналитами

Панель, например общий анализ крови, перечисляет свои аналиты в `component`. У каждого компонента свои `code`, типы результата и единицы, а `code` панели остаётся на уровне ресурса:

```json
{
  "resourceType": "ObservationDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-laboratory-observation-definition"] },
  "status": "active",
  "useContext": [
    {
      "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "108252007", "display": "Laboratory procedure" } ]
      }
    }
  ],
  "category": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory" } ] }
  ],
  "code": {
    "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-E" } ]
  },
  "component": [
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-74" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "g/L" } ]
    },
    {
      "code": {
        "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-pan-cs", "code": "lab-pan-75" } ]
      },
      "permittedDataType": [ "Quantity" ],
      "permittedUnit": [ { "system": "http://unitsofmeasure.org", "code": "10*12/L" } ]
    }
  ]
}
```

Панели справочника используют для своих аналитов национальные коды лабораторных панелей. Когда пользователь создаёт собственное лабораторное определение в Портале пациента, каждый `component.code` должен быть кодом LOINC (например, 718-7 для гемоглобина); национальные коды зарезервированы за предопределённым справочником. Используйте `component`, когда у аналитов нет собственных определений; когда каждый аналит определён отдельно, как гемоглобин выше, перечислите эти определения в `hasMember`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
