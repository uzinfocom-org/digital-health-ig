UZ Core QuestionnaireResponse is a completed instance of a [Questionnaire](StructureDefinition-uz-core-questionnaire.html) on the Digital Health Platform - for example a patient health-status declaration or feedback captured in the patient portal. It carries the answers given against the questions of the referenced template.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core QuestionnaireResponse Must Have

Every QuestionnaireResponse must carry a questionnaire reference to the [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) being answered (1..1) and a status (in-progress, completed, amended, entered-in-error, stopped) inherited as mandatory from the base resource.

#### Each UZ Core QuestionnaireResponse Must Support



- an identifier, basedOn, and partOf;
- the questionnaire reference and the status;
- the subject and the encounter (an [Encounter](StructureDefinition-uz-core-encounter.html)) the response belongs to;
- the authored date/time, the author (a [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), RelatedPerson, Device, or [Organization](StructureDefinition-uz-core-organization.html)), and the source (a [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), or RelatedPerson);
- the item structure - linkId, definition, text, answer (with `value[x]` and nested `item`), and nested items.

> Patient-entered QuestionnaireResponse data is informational. It is not automatically converted into a [Condition](StructureDefinition-uz-core-condition.html) or [Observation](StructureDefinition-uz-core-observation.html); that happens only through a clinician's action within an [Encounter](StructureDefinition-uz-core-encounter.html), recorded via Provenance. On submission a response is validated for structure and terminology only, not for clinical correctness.

### Building the JSON, step by step

These resources are mostly system-generated as a form is filled in, so the example below is just one representative completed response. Copy it and adapt it - every value shown validates against this profile. The full reference instance is the [patient satisfaction response](QuestionnaireResponse-example-patient-satisfaction-response.html).

#### A completed response

A response must name the `questionnaire` it answers (a canonical URL, 1..1) and carry a `status` (in-progress / completed / amended / entered-in-error / stopped). In practice you also send the `subject` it is about and the `authored` time, then one `item` per question. Each `item` has the `linkId` of the question it answers and an `answer` whose `value[x]` holds the response - a coded choice is a `valueCoding`, free text is a `valueString`:

```json
{
  "resourceType": "QuestionnaireResponse",
  "language": "uz",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire",
  "status": "completed",
  "subject": { "reference": "Patient/example-salim" },
  "authored": "2025-01-15T14:30:00+05:00",
  "item": [
    {
      "linkId": "appointment-method",
      "text": "Как вы записались на приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "remote",
            "display": "Masofadan yozildim («Портал Пациента» orqali)"
          }
        }
      ]
    },
    {
      "linkId": "wait-time",
      "text": "Сколько времени вы ожидали приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "10-15min",
            "display": "10-15 daqiqa"
          }
        }
      ]
    },
    {
      "linkId": "doctor-competence-satisfaction",
      "text": "Насколько Вы удовлетворены компетентностью врача?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "fully-satisfied",
            "display": "To'liq mamnunman"
          }
        }
      ]
    },
    {
      "linkId": "health-info-completeness",
      "text": "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "questions-answered",
      "text": "Получили ли вы ответы на все интересующие вас вопросы?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "improvement-suggestions",
      "text": "Есть ли у Вас предложения по улучшению качества обслуживания?",
      "answer": [
        { "valueString": "Было бы удобно иметь возможность получать напоминания о приёме через SMS." }
      ]
    }
  ]
}
```

`questionnaire` is a plain canonical string (not a Reference), and `subject` is a plain `Reference` (`{ "reference": "Patient/example-salim" }`). Pick the `value[x]` type that matches the question: `valueCoding` for a coded choice, `valueString` for free text, and likewise `valueBoolean`, `valueInteger`, `valueDate`, and so on for other question types. Every item the referenced [Questionnaire](StructureDefinition-uz-core-questionnaire.html) marks as required must be answered - this response answers all five required questions; omitting one is a validation error.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
