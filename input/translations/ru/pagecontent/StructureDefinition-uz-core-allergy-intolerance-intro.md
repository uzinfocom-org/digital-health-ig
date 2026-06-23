> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core AllergyIntolerance фиксирует аллергию или непереносимость пациента на Цифровой платформе здравоохранения, а также любые вызванные ею реакции. Запись привязана к [Patient](StructureDefinition-uz-core-patient.html), которому она принадлежит, и к [Encounter](StructureDefinition-uz-core-encounter.html), в рамках которого она была зафиксирована. Записи об аллергиях отображаются в сводке о пациенте и в минимальном наборе данных для неотложной помощи - они остаются видимыми даже тогда, когда согласие ограничивает доступ к другим клиническим данным, - поэтому поддержание их в актуальном состоянии важно для безопасности пациента.

### Обязательные элементы данных и элементы Must Support

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это сводка для чтения человеком; приведённые ниже [формальные представления](#profile) дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core AllergyIntolerance Must Have

Данный профиль не добавляет собственной обязательной кардинальности. Единственный обязательный элемент - это унаследованный от базового ресурса: пациент (лицо, которому принадлежит аллергия).

#### Каждый UZ Core AllergyIntolerance Must Support



- идентификатор;
- код, определяющий сам аллерген (extensible-связка с набором значений аллергенов DHP);
- тип - аллергия или непереносимость (required-связка);
- клинический статус - активный \| неактивный \| разрешившийся (required-связка);
- статус верификации - насколько точно подтверждена аллергия (required-связка);
- категория - пища, лекарство, окружающая среда, биологический агент (required-связка);
- пациент и контакт, в рамках которого она была зафиксирована;
- сроки onset[x] и расширение abatement (0..1);
- одну или несколько реакций, каждая с указанием тяжести (required-связка), проявления (extensible) и вещества, вызвавшего реакцию (extensible).

> Аллергенный `code` - это вещество, на которое реагирует пациент; `substance` на уровне реакции фиксирует конкретный агент, спровоцировавший определённое событие реакции, - это не одно и то же поле.

### Построение JSON, шаг за шагом

Начните с приведённой ниже записи - каждое значение проходит валидацию по этому профилю, поэтому скопируйте её и адаптируйте. Два следующих за ней фрагмента показывают небольшие дополнения для реакции и для пометки аллергии как разрешившейся. Полный эталонный экземпляр - [аллергия на пыльцу трав](AllergyIntolerance-example-grass-pollen-allergy.html).

#### Реалистичная запись об аллергии

Единственный строго обязательный элемент - это `patient`, но на практике вы также отправляете аллергенный `code`, `clinicalStatus` (активный / неактивный / разрешившийся), `verificationStatus` (насколько он подтверждён), `type` (аллергия или непереносимость), `category` (пища / лекарство / окружающая среда / биологический агент), `encounter`, в рамках которого она была зафиксирована, и время начала (`onset[x]`). Каждый ресурс UZ Core также указывает профиль, которому он соответствует, в `meta.profile`. `clinicalStatus`, `verificationStatus` и `type` - это `CodeableConcept`, каждый со своей собственной HL7-`system`; `category` - это простой список `code`, поэтому отправляйте только код:

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

Каждый из элементов `type`, `category`, `clinicalStatus` и `verificationStatus` использует required-связку - значение должно браться из связанного набора значений. Аллергенный `code` имеет extensible-связку с набором значений аллергенов DHP. `patient` и `encounter` - это простые `Reference` на [Patient](StructureDefinition-uz-core-patient.html) и [Encounter](StructureDefinition-uz-core-encounter.html).

#### Регистрация реакции

Когда аллергия вызвала реакцию, добавьте запись `reaction`: `severity` (лёгкая / умеренная / тяжёлая - required-связка), одну или несколько записей `manifestation` (что наблюдалось) и опционально `substance`, спровоцировавшее это событие. Следите за структурами - `manifestation` - это `CodeableReference`, поэтому его кодированное значение находится под `concept`, тогда как `substance` - это простой `CodeableConcept`. Этот массив встраивается в приведённый выше ресурс:

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

`substance` на уровне реакции - это конкретный агент, спровоцировавший это событие, - отдельное поле от аллергенного `code` верхнего уровня.

#### Когда аллергия больше не активна

Чтобы пометить аллергию как разрешившуюся, установите `clinicalStatus` в значение `resolved` и добавьте расширение `allergyintolerance-abatement` (0..1) - здесь в виде свободного текста `valueString`. Отправьте их вместо активного `clinicalStatus` в приведённой выше записи:

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

См. [Отсутствующие и скрытые данные](general-guidance.html#missing-data) и [руководство по терминологии](general-guidance.html#terminology) для выбора правильных кодированных значений.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
