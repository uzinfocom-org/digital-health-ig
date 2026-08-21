UZ Core AllergyIntolerance регистрирует на Цифровой платформе здравоохранения (DHP) аллергию или непереносимость пациента, а также вызванные ими реакции. Ресурс связан с [Patient](StructureDefinition-uz-core-patient.html), к которому относится запись, и с [Encounter](StructureDefinition-uz-core-encounter.html), в рамках которого она была зарегистрирована. Сведения об аллергии отображаются в сводной информации о пациенте и входят в минимальный набор данных для экстренной помощи. Они остаются доступными даже в случаях, когда Consent ограничивает доступ к другим клиническим данным, поэтому своевременное обновление этих сведений важно для безопасности пациента.

### Обязательные элементы данных и элементы Must Support

Указанные ниже элементы должны либо всегда присутствовать (обязательные элементы), либо поддерживаться при наличии соответствующих данных ([Must Support](must-support.html)). Не все они обязательны, однако система должна заполнять каждый элемент Must Support при наличии данных и обрабатывать его при получении. Ниже приведено человекочитаемое резюме; [формальные представления](#profile) содержат точные кардинальности, типы и терминологические привязки.

#### Элементы Must Have в каждом UZ Core AllergyIntolerance

Этот профиль не добавляет собственных обязательных кардинальностей. Единственный обязательный элемент наследуется от базового ресурса: `patient` - лицо, к которому относится аллергия или непереносимость.

#### Элементы Must Support в каждом UZ Core AllergyIntolerance



- идентификатор;
- код, идентифицирующий сам аллерген (расширяемая привязка к ValueSet аллергенов DHP);
- тип - аллергия или непереносимость (обязательная привязка);
- клинический статус - active \| inactive \| resolved (обязательная привязка);
- статус подтверждения - степень подтверждения аллергии (обязательная привязка);
- категория - food, medication, environment, biologic (обязательная привязка);
- patient и Encounter, в рамках которого была зарегистрирована запись;
- время начала в `onset[x]` и extension abatement (0..1);
- одна или несколько реакций, каждая из которых содержит severity (обязательная привязка), manifestation (расширяемая привязка) и вещество, вызвавшее реакцию (расширяемая привязка).

> Аллерген в элементе `code` - это вещество, на которое реагирует пациент; элемент `substance` внутри отдельной reaction содержит конкретный агент, вызвавший данный эпизод реакции. Это разные элементы.

### Пошаговое формирование JSON

Начните с приведённой ниже записи: каждое её значение проходит валидацию по данному профилю, поэтому пример можно скопировать и адаптировать. Следующие два фрагмента показывают небольшие дополнения для регистрации реакции и для указания, что аллергия разрешилась. Полный эталонный экземпляр - [аллергия на пыльцу трав](AllergyIntolerance-example-grass-pollen-allergy.html).

#### Реалистичная запись об аллергии

Единственным строго обязательным элементом является `patient`, однако на практике также передаются аллерген в `code`, `clinicalStatus` (active / inactive / resolved), `verificationStatus` (степень подтверждения), `type` (allergy или intolerance), `category` (food / medication / environment / biologic), Encounter, в рамках которого была зарегистрирована запись, и время начала состояния в `onset[x]`. Каждый ресурс UZ Core также указывает заявленный профиль в `meta.profile`. `clinicalStatus`, `verificationStatus` и `type` имеют тип `CodeableConcept` и используют собственные системы HL7; `category` представляет собой простой список кодов, поэтому передавайте непосредственно кодовое значение:

```json
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"]
  },
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "active"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed"
    }]
  },
  "type": {
    "coding": [{ "system": "http://hl7.org/fhir/allergy-intolerance-type", "code": "allergy" }]
  },
  "category": ["environment"],
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergen-codes-cs",
      "code": "aller-0010-00001",
      "display": "Grass pollen"
    }]
  },
  "patient": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "onsetDateTime": "2025-07-10"
}
```

Для `type`, `category`, `clinicalStatus` и `verificationStatus` используется обязательная привязка: значение должно выбираться из соответствующего ValueSet. Для аллергена в `code` используется расширяемая привязка к ValueSet аллергенов DHP. `patient` и `encounter` являются обычными Reference на [Patient](StructureDefinition-uz-core-patient.html) и [Encounter](StructureDefinition-uz-core-encounter.html).

#### Регистрация реакции

Если аллергия вызвала реакцию, добавьте запись `reaction`: `severity` (mild / moderate / severe - обязательная привязка), одну или несколько `manifestation`, описывающих наблюдавшиеся проявления, и при необходимости `substance`, вызвавшее данный эпизод. Обратите внимание на структуру: `manifestation` имеет тип `CodeableReference`, поэтому кодированное значение помещается в `concept`, тогда как `substance` представляет собой обычный `CodeableConcept`. Этот массив добавляется в приведённый выше ресурс:

```json
{
  "reaction": [{
    "severity": "severe",
    "manifestation": [{
      "concept": {
        "coding": [{
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-manifestation-cs",
          "code": "aller-0006-00004",
          "display": "Shortness of breath"
        }]
      }
    }],
    "substance": {
      "coding": [{
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/allergy-reaction-substance-cs",
        "code": "aller-0010-00031",
        "display": "Walnut, pollen (Jug r_pollen)"
      }]
    }
  }]
}
```

Элемент `substance` внутри отдельной reaction содержит конкретный агент, вызвавший данный эпизод. Это отдельный элемент, отличный от аллергена верхнего уровня в `code`.

#### Когда аллергия больше не активна

Чтобы отметить, что аллергия разрешилась, укажите для `clinicalStatus` значение `resolved` и добавьте extension `allergyintolerance-abatement` (0..1), в данном примере - как свободный текст в `valueString`. Передайте эти элементы вместо `active` `clinicalStatus` в приведённой выше записи:

```json
{
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "resolved"
    }]
  },
  "extension": [{
    "url": "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
    "valueString": "Symptoms resolved after antihistamine course"
  }]
}
```

Правила выбора подходящих кодированных значений приведены в разделах [Отсутствующие и скрытые данные](general-guidance.html#missing-data) и [руководство по терминологии](general-guidance.html#terminology).

Примеры вызовов API и образец payload приведены в разделе [Быстрый старт](#quick-start) в нижней части страницы.
