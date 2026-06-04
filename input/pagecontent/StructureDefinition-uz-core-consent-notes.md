### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

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

**Create** (opt a patient out - absent a Consent, sharing is permitted by default)

```
POST [base]/Consent
{
  "resourceType": "Consent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent" ] },
  "status": "active",
  "subject": { "reference": "Patient/[id]" },
  "decision": "deny",
  ...
}
```

**Update** (e.g. the patient opts out, or re-grants) - PUT the full resource back with the new `decision`:

```
PUT [base]/Consent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Consent is normally set by the patient in the portal. A denied consent causes data requests to be refused with HTTP 403; clients should handle that outcome.

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for the full list of supported search parameters.

### Related

- [Workflows](workflows.html)
- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
