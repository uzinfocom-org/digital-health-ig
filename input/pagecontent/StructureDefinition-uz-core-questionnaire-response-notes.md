### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/QuestionnaireResponse/[id]
```

**Find responses**

```
GET [base]/QuestionnaireResponse?patient=Patient/[id]
GET [base]/QuestionnaireResponse?patient=Patient/[id]&status=completed
GET [base]/QuestionnaireResponse?questionnaire=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/QuestionnaireResponse?patient=Patient/[id]&authored=ge2025-01-01
GET [base]/QuestionnaireResponse?author=Practitioner/[id]
GET [base]/QuestionnaireResponse?encounter=Encounter/[id]
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[id]
```

**Create**

```
POST [base]/QuestionnaireResponse
{ "resourceType": "QuestionnaireResponse", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response" ] }, "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/health-declaration", "status": "completed", "subject": { "reference": "Patient/[id]" }, "item": [ ... ], ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
