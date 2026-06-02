### Quick Start

A Questionnaire is a template, not patient data, so searches are by form metadata rather than by patient. `[base]` is the FHIR server base URL; `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Questionnaire/[id]
```

**Find questionnaires**

```
GET [base]/Questionnaire?status=active
GET [base]/Questionnaire?name=PatientHealthDeclaration
GET [base]/Questionnaire?title=Health
GET [base]/Questionnaire?url=https://dhp.uz/fhir/core/Questionnaire/health-declaration
GET [base]/Questionnaire?version=1.0.0
GET [base]/Questionnaire?date=ge2025-01-01
GET [base]/Questionnaire?context=...
```

**Create**

```
POST [base]/Questionnaire
{ "resourceType": "Questionnaire", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire" ] }, "status": "draft", "title": "...", "item": [ ... ], ... }
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)
