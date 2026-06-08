UZ Core Questionnaire is a form template on the Digital Health Platform - the set of questions, not the answers. Some are nationally standardized (for example, approved by the Ministry of Health); systems and organizations may also define their own local templates. A completed form is captured separately as a [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html). A Questionnaire has a lifecycle of draft -> active -> retired; only `active` templates should be used to capture new responses. Items, titles, and answer-option displays support multilingual content (Uzbek, with Russian and Karakalpak translations).

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Questionnaire Must Have

Every Questionnaire must carry a title in Uzbek (1..1), which may bear translation extensions for Russian and Karakalpak, and a status (draft, active, retired, unknown) inherited as mandatory from the base resource.

#### Each UZ Core Questionnaire Must Support



- the canonical url, an identifier, a version, a name, and the status;
- the title (and its translations);
- a description (with translations), publisher, useContext, jurisdiction, purpose, and effectivePeriod;
- the subjectType (resource types this questionnaire applies to);
- the item structure - linkId, definition, code, prefix and text (both with translations), type, enableWhen, required, repeats, readOnly, maxLength, answerConstraint, answerValueSet, answerOption (with `valueCoding` display translations), initial value, and nested items.

> Only `active` templates should be used to capture new responses. A template in `draft` is not yet ready; a `retired` template should no longer be issued.

### Building the JSON, step by step

A Questionnaire is a form definition rather than a clinical record, so it is mostly authored once and reused. The examples below go from the smallest template the server will accept to a realistic multilingual item. Copy one and adapt it - every value shown validates against this profile. The full reference instance is the [patient satisfaction survey](Questionnaire-PatientSatisfactionQuestionnaire.html).

#### The smallest Questionnaire you should send

A `status` is the only strictly mandatory element (inherited from the base resource), and this profile makes `title` mandatory too. In practice you also send the `name` (a computer-friendly token) and declare which resource the form is about with `subjectType`. Every UZ Core resource must also name the profile it claims to conform to in `meta.profile`:

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

`status` uses a required binding - use `draft` while the form is still being authored, `active` once it may capture responses, and `retired` when it should no longer be issued. Only `active` templates should be used for new responses.

#### A realistic multilingual form

A real template carries a stable `url`, a `description`, and an `item` list. The title, item `text`, and answer-option `display` are written in one language and carry the others as `translation` extensions on the matching `_`-prefixed sibling (`_text`, `_display`). The example below shows a single coded question with two answer options - each option's `valueCoding` draws its `code` and `system` from a UZ CodeSystem, and the free-text follow-up is a nested `string` item:

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

Each item needs a `linkId` (unique within the form) and a `type` (`coding`, `string`, `text`, ...). For a `coding` item the selectable answers go in `answerOption` as `valueCoding`. The `translation` extension always nests two child extensions - `lang` (the language code) and `content` (the translated string) - under the `http://hl7.org/fhir/StructureDefinition/translation` URL. Use a nested `item` for follow-up questions such as a free-text "other" field.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
