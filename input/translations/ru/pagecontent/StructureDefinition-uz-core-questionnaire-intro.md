> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Questionnaire - это шаблон формы на Цифровой платформе здравоохранения - набор вопросов, а не ответов. Некоторые из них стандартизированы на национальном уровне (например, утверждены Министерством здравоохранения); системы и организации также могут определять собственные локальные шаблоны. Заполненная форма фиксируется отдельно как [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html). Questionnaire имеет жизненный цикл draft -> active -> retired; для фиксации новых ответов следует использовать только шаблоны со статусом `active`. Элементы (items), заголовки и отображения вариантов ответов поддерживают многоязычное содержимое (узбекский, с переводами на русский и каракалпакский).

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны либо всегда присутствовать (обязательные), либо поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это краткое изложение в удобочитаемой форме; приведённые ниже [формальные представления](#profile) дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Questionnaire должен иметь (Must Have)

Каждый Questionnaire должен содержать title на узбекском языке (1..1), который может нести расширения переводов для русского и каракалпакского, а также status (draft, active, retired, unknown), унаследованный как обязательный от базового ресурса.

#### Каждый UZ Core Questionnaire должен поддерживать (Must Support)



- канонический url, идентификатор (identifier), версию (version), имя (name) и статус (status);
- title (и его переводы);
- description (с переводами), publisher, useContext, jurisdiction, purpose и effectivePeriod;
- subjectType (типы ресурсов, к которым применяется этот опросник);
- структуру item - linkId, definition, code, prefix и text (оба с переводами), type, enableWhen, required, repeats, readOnly, maxLength, answerConstraint, answerValueSet, answerOption (с переводами отображения `valueCoding`), начальное значение initial и вложенные элементы items.

> Для фиксации новых ответов следует использовать только шаблоны со статусом `active`. Шаблон в статусе `draft` ещё не готов; шаблон в статусе `retired` больше не должен выдаваться.

### Построение JSON, шаг за шагом

Questionnaire является определением формы, а не клинической записью, поэтому он в основном создаётся один раз и повторно используется. Приведённые ниже примеры идут от наименьшего шаблона, который примет сервер, до реалистичного многоязычного элемента. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - это [опросник удовлетворённости пациента](Questionnaire-PatientSatisfactionQuestionnaire.html).

#### Наименьший Questionnaire, который следует отправлять

`status` - единственный строго обязательный элемент (унаследованный от базового ресурса), а этот профиль также делает обязательным `title`. На практике вы также отправляете `name` (удобный для компьютера токен) и объявляете, к какому ресурсу относится форма, с помощью `subjectType`. Каждый ресурс UZ Core также должен указывать профиль, которому он заявляет о соответствии, в `meta.profile`:

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire"]
  },
  "status": "active",
  "name": "PatientSatisfactionQuestionnaire",
  "title": "Bemor so'rovnomasi",
  "subjectType": ["Patient"]
}
```

`status` использует required-связку - используйте `draft`, пока форма ещё создаётся, `active`, когда она может фиксировать ответы, и `retired`, когда её больше не следует выдавать. Для новых ответов следует использовать только шаблоны со статусом `active`.

#### Реалистичная многоязычная форма

Реальный шаблон несёт стабильный `url`, `description` и список `item`. Заголовок, `text` элемента и `display` варианта ответа записываются на одном языке и несут остальные как расширения `translation` на соответствующем дочернем элементе с префиксом `_` (`_text`, `_display`). Приведённый ниже пример показывает один кодированный вопрос с двумя вариантами ответа - `valueCoding` каждого варианта берёт свой `code` и `system` из CodeSystem UZ, а уточняющий вопрос со свободным текстом - это вложенный элемент `string`:

```json
{
  "resourceType": "Questionnaire",
  "language": "uz",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire"]
  },
  "url": "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire",
  "status": "active",
  "name": "PatientSatisfactionQuestionnaire",
  "title": "Bemor so'rovnomasi",
  "_title": {
    "extension": [
      {
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Опросник удовлетворённости пациента" }
        ],
        "url": "http://hl7.org/fhir/StructureDefinition/translation"
      }
    ]
  },
  "description": "Bemor so'rovnomasi uchun savollar (Patient Portal uchun)",
  "_description": {
    "extension": [
      {
        "extension": [
          { "url": "lang", "valueCode": "ru" },
          { "url": "content", "valueString": "Вопросы для опросника пациента (для Patient Portal)" }
        ],
        "url": "http://hl7.org/fhir/StructureDefinition/translation"
      }
    ]
  },
  "subjectType": ["Patient"],
  "item": [
    {
      "linkId": "appointment-method",
      "text": "Qabulga qanday yozildingiz?",
      "_text": {
        "extension": [
          {
            "extension": [
              { "url": "lang", "valueCode": "ru" },
              { "url": "content", "valueString": "Как вы записались на приём?" }
            ],
            "url": "http://hl7.org/fhir/StructureDefinition/translation"
          }
        ]
      },
      "type": "coding",
      "required": true,
      "answerOption": [
        {
          "valueCoding": {
            "code": "phone",
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "display": "Telefon orqali yozildim",
            "_display": {
              "extension": [
                {
                  "extension": [
                    { "url": "lang", "valueCode": "ru" },
                    { "url": "content", "valueString": "По телефону" }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        },
        {
          "valueCoding": {
            "code": "other",
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "display": "Boshqa",
            "_display": {
              "extension": [
                {
                  "extension": [
                    { "url": "lang", "valueCode": "ru" },
                    { "url": "content", "valueString": "Другое" }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        }
      ],
      "item": [
        {
          "linkId": "appointment-method-other",
          "text": "Boshqa (ko'rsating)",
          "_text": {
            "extension": [
              {
                "extension": [
                  { "url": "lang", "valueCode": "ru" },
                  { "url": "content", "valueString": "Другое (укажите)" }
                ],
                "url": "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "type": "string"
        }
      ]
    }
  ]
}
```

Каждому элементу нужны `linkId` (уникальный в пределах формы) и `type` (`coding`, `string`, `text`, ...). Для элемента `coding` выбираемые ответы помещаются в `answerOption` как `valueCoding`. Расширение `translation` всегда содержит вложенными два дочерних расширения - `lang` (код языка) и `content` (переведённая строка) - под URL `http://hl7.org/fhir/StructureDefinition/translation`. Используйте вложенный `item` для уточняющих вопросов, таких как поле «другое» со свободным текстом.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
