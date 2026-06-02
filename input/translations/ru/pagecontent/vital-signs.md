Жизненные показатели отражают основные функции организма. На данной странице представлены рекомендации по работе с жизненными показателями в UZ Core.

### Обзор

В UZ Core жизненные показатели используются совместно с [профилями FHIR Vital Signs](https://hl7.org/fhir/observation-vitalsigns.html). Для единообразного представления измерений в экосистеме здравоохранения Узбекистана используется ресурс Observation.

### Представление в FHIR

Жизненные показатели в UZ Core **объединяют** три профиля:
* [UZ Core Observation profile](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) - требования, специфичные для Узбекистана
* [FHIR Vital Signs profile](http://hl7.org/fhir/StructureDefinition/vitalsigns)  - международные стандарты жизненно важных показателей
* **Профиль конкретного жизненного показателя** (например, [частоты сердечных сокращений](http://hl7.org/fhir/r5/heartrate.html), [артериального давления](http://hl7.org/fhir/r5/bp.html)) - правила для данного типа показателя

Все три профиля должны быть указаны в `meta.profile`. Большинство правил соответствия определяются в последнем, наиболее специфичном профиле, тогда как базовые профили задают основные требования.

### Основные жизненные показатели

| Жизненные показатели | Код LOINC | Описание | Ед. измерения | Пример |
|------------|------------|-------------|------|---------|
| [Частота дыхания](http://hl7.org/fhir/r5/resprate.html) | 9279-1 | Частота дыхания | /min | [JSON](Observation-respiratory-rate-example.json) |
| [Частота сердечных сокращений](http://hl7.org/fhir/r5/heartrate.html) | 8867-4 | Измерение частоты сердечных сокращений | /min | [JSON](Observation-heart-rate-example.json) |
| [Насыщение крови кислородом](http://hl7.org/fhir/r5/oxygensat.html) | 2708-6 | Насыщение артериальной крови кислородом | % | [JSON](Observation-oxygen-saturation-example.json) |
| [Температура тела](http://hl7.org/fhir/r5/bodytemp.html) | 8310-5 | Измерение температуры тела | Cel, [degF] | [JSON](Observation-body-temperature-example.json) |
| [Рост](http://hl7.org/fhir/r5/bodyheight.html) | 8302-2 | Измерение роста | cm, [in_i] | [JSON](Observation-body-height-example.json) |
| [Окружность головы](http://hl7.org/fhir/r5/headcircum.html) | 9843-4 | Лобно-затылочная окружность головы | cm, [in_i] | [JSON](Observation-head-circumference-example.json) |
| [Масса тела](http://hl7.org/fhir/r5/bodyweight.html) | 29463-7 | Измерение массы тела | g, kg, [lb_av] | [JSON](Observation-body-weight-example.json) |
| [Индекс массы тела](http://hl7.org/fhir/r5/bmi.html) | 39156-5 | Индекс массы тела (BMI) [Ratio] | kg/m2 | [JSON](Observation-bmi-example.json) |
| [Артериальное давление](http://hl7.org/fhir/r5/bp.html) | 85354-9 | Панель артериального давления | — | [JSON](Observation-blood-pressure-example.json) |

### Понимание ресурсов Observation

Ресурсы Observation работают как пары «ключ-значение»:
- Ключ: `Observation.code` (что было измерено)
- Значение: `Observation.value[x]` (результат измерения)

При этом сложные ресурсы Observation, содержащие несколько неразделимых значений, используют `Observation.component.value[x]`. Например, артериальное давление включает систолический и диастолический компоненты, измеряемые совместно, а не как два отдельных ресурса Observation.

Основные элементы:

* стандартный код LOINC, идентифицирующий тип жизненного показателя
* значение с соответствующими единицами измерения (например, mmHg для артериального давления или bpm для частоты сердечных сокращений)
* ссылка на пациента
* дата и время проведения измерения
* необязательная ссылка на лицо, выполнившее измерение

### Пример: масса тела

```json
{
  "resourceType": "Observation",
  "id": "body-weight-example",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation",
      "http://hl7.org/fhir/StructureDefinition/vitalsigns",
      "http://hl7.org/fhir/StructureDefinition/bodyweight"
    ]
  },
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Body weight: 185 lbs</p></div>"
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
      "code": "vital-signs",
      "display": "Vital Signs"
    }]
  }],
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "29463-7",
      "display": "Body Weight"
    }]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2016-03-28",
  "valueQuantity": {
    "value": 185,
    "unit": "lbs",
    "system": "http://unitsofmeasure.org",
    "code": "[lb_av]"
  }
}
```

Все остальные примеры доступны по ссылкам в таблице выше.

### Ссылки

Для получения дополнительной информации о жизненных показателях в FHIR:

* [FHIR Vital Signs Profile](http://hl7.org/fhir/r5/vitalsigns.html)
* [Observation Resource](http://hl7.org/fhir/r5/observation.html)
