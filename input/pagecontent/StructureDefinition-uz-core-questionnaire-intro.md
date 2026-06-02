UZ Core Questionnaire is a centrally-approved (Ministry of Health) form template on the Digital Health Platform - the set of questions, not the answers. A completed form is captured separately as a [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html). A Questionnaire has a lifecycle of draft -> active -> retired; only `active` templates should be used to capture new responses. Items, titles, and answer-option displays support multilingual content (Uzbek, with Russian and Karakalpak translations).

### Each UZ Core Questionnaire **Must Have**

- a **title** in Uzbek (1..1), which may carry `translation` extensions for Russian and Karakalpak;
- a **status** (draft, active, retired, unknown), inherited as mandatory from the base resource.

### Each UZ Core Questionnaire **Must Support**

- the canonical **url**, an **identifier**, a **version**, a **name**, and the **status**;
- the **title** (and its translations);
- a **description** (with translations), **publisher**, **useContext**, **jurisdiction**, **purpose**, and **effectivePeriod**;
- the **subjectType** (resource types this questionnaire applies to);
- the **item** structure - **linkId**, **definition**, **code**, **prefix** and **text** (both with translations), **type**, **enableWhen**, **required**, **repeats**, **readOnly**, **maxLength**, **answerConstraint**, **answerValueSet**, **answerOption** (with `valueCoding` display translations), **initial** value, and nested **item**s.

> Only `active` templates should be used to capture new responses. A template in `draft` is not yet ready; a `retired` template should no longer be issued.
