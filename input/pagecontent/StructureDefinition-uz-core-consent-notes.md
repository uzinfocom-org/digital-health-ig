### Quick Start

Common API interactions for this profile. `[base]` is the FHIR server base URL; `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Consent/[id]
```

**Find a patient's consent decisions**

```
GET [base]/Consent?patient=Patient/[id]
GET [base]/Consent?patient=Patient/[id]&status=active
GET [base]/Consent?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/consentcategorycodes%7Cinfa
GET [base]/Consent?patient=Patient/[id]&period=ge2025-01-01
GET [base]/Consent?patient=Patient/[id]&date=ge2025-01-01
```

**Create**

```
POST [base]/Consent
{ "resourceType": "Consent", "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent" ] }, "status": "active", "subject": { "reference": "Patient/[id]" }, "decision": "permit", ... }
```

Consent is normally set by the patient in the portal. A denied consent causes data requests to be refused with **HTTP 403**; clients should handle that outcome.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
