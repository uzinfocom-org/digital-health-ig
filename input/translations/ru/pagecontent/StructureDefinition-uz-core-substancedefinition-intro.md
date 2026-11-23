> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core SubstanceDefinition представляет запись справочника веществ и объектов отбора, из которых берутся образцы для санитарно-эпидемиологического исследования, - пищевой продукт, источник воды, помещение или поверхность. Ресурс содержит код вещества, его узбекское и русское наименования, общую категорию и производителя - [UZ Core Organization](StructureDefinition-uz-core-organization.html). Каждый образец - это [UZ Core Substance](StructureDefinition-uz-core-substance.html), который ссылается на запись в `code`, поэтому запись не относится к одному образцу: все системы пользуются одной и той же записью, поэтому прежде чем создавать новую, [найдите её по идентификатору или коду](#finding).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core SubstanceDefinition должно содержать

У базового ресурса SubstanceDefinition нет обязательных элементов верхнего уровня, и этот профиль их не добавляет. Каждый передаваемый `name` должен содержать само наименование `name`. Если передаётся номер в справочнике, обязательны и его `system`, и его `value`; если передаётся код вещества, обязателен его `code`.

#### Каждое UZ Core SubstanceDefinition должно поддерживать

- номер записи в справочнике (см. [таблицу ниже](#identifier-slices));
- `status` записи (active / retired);
- `classification` - вид образца - вода, воздух, почва или пищевые продукты - из набора значений [категорий образцов веществ](ValueSet-substance-sample-category-vs.html);
- `code` вещества: SNOMED CT или национальный код, если концепта SNOMED CT нет;
- каждое `name` - само наименование, является ли оно предпочтительным и его язык, с переводами, например русским наименованием;
- производителя `manufacturer` вещества или продукции.

### Поиск существующего SubstanceDefinition {#finding}

Найдите запись, прежде чем создавать новую:

```
# by reference list number - the reliable match
GET [base]/SubstanceDefinition?identifier=https://dhp.uz/fhir/core/sid/doc/uz/substance-definition|1368

# by SNOMED CT or national code
GET [base]/SubstanceDefinition?code=http://snomed.info/sct|3718001

# by name or category
GET [base]/SubstanceDefinition?name=Pasterlangan
GET [base]/SubstanceDefinition?classification=http://snomed.info/sct|255620007
```

### Построение JSON шаг за шагом

Примеры ниже идут от минимальной записи к полной. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены внизу страницы ([пастеризованное молоко](SubstanceDefinition-example-substance-definition-pasteurized-milk.html), [сырое коровье молоко](SubstanceDefinition-example-substance-definition-raw-milk.html)).

#### Минимальное SubstanceDefinition, которое следует отправлять

Каждый ресурс UZ Core должен указывать профиль, которому он заявляет соответствие, в `meta.profile`. Передайте код вещества и узбекское наименование, чтобы получатели могли отображать запись и искать её:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [ { "name": "Sigir xom suti", "preferred": true } ]
}
```

Код берётся из набора значений [наименований веществ](ValueSet-substance-names-vs.html): это концепт SNOMED CT с узбекским и русским наименованиями в [дополнении SNOMED CT](CodeSystem-substance-names-snomed-cs.html), а если концепта SNOMED CT нет - национальный код из системы кодов [наименований веществ](CodeSystem-substance-names-cs.html). Многие наименования ЛИС СЭС имеют один общий, более широкий концепт SNOMED CT: например, сырое коровье и пастеризованное молоко - оба `3718001` Cow's milk. Точное наименование ЛИС СЭС передаётся в `name`.

#### Полная запись

На практике запись содержит также номер в справочнике, свой статус и категорию, русское наименование как перевод узбекского и производителя:

```json
{
  "resourceType": "SubstanceDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-substancedefinition"] },
  "language": "uz",
  "identifier": [ { "system": "https://dhp.uz/fhir/core/sid/doc/uz/substance-definition", "value": "1368" } ],
  "version": "1",
  "status": { "coding": [ { "system": "http://hl7.org/fhir/publication-status", "code": "active" } ] },
  "classification": [
    { "coding": [ { "system": "http://snomed.info/sct", "code": "255620007", "display": "Food" } ] }
  ],
  "description": "Pasterlangan ichimlik suti",
  "manufacturer": [ { "reference": "Organization/example-organization-dairy-manufacturer" } ],
  "note": [ { "text": "Namuna sovutilgan holda tashiladi" } ],
  "code": [
    {
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "3718001",
            "display": "Cow's milk"
          }
        ]
      }
    }
  ],
  "name": [
    {
      "name": "Pasterlangan ichimlik suti",
      "preferred": true,
      "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "uz" } ] } ],
      "translation": [
        {
          "name": "Молоко питьевое пастеризованное",
          "language": [ { "coding": [ { "system": "urn:ietf:bcp:47", "code": "ru" } ] } ]
        }
      ]
    }
  ]
}
```

`status` имеет тип `CodeableConcept`, а не простой код; его узбекское и русское отображения берутся из [дополнения статусов публикации](CodeSystem-publication-status-cs.html). Для `language` наименования используются коды BCP 47 `uz`, `ru` и `en`. Если запись удалена из справочника, установите `status` в `retired`, а не удаляйте её: существующие образцы по-прежнему на неё ссылаются.

#### Срез идентификатора {#identifier-slices}

Запись может содержать идентификатор ниже. Он выбирается по URI в `system`, поэтому URI должен совпадать точно:

| Идентификатор | `system` | Кем выдаётся |
|---|---|---|
| [Идентификатор определения вещества](NamingSystem-uzb-substance-definition-number.html) | `https://dhp.uz/fhir/core/sid/doc/uz/substance-definition` | Справочник наименований образцов ЛИС СЭС |

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
