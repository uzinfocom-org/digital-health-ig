### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates system from value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/AllergyIntolerance/[id]
```

**Find allergies and intolerances**

```
GET [base]/AllergyIntolerance?patient=Patient/[id]
GET [base]/AllergyIntolerance?patient=Patient/[id]&clinical-status=active
GET [base]/AllergyIntolerance?patient=Patient/[id]&category=medication
GET [base]/AllergyIntolerance?patient=Patient/[id]&criticality=high
GET [base]/AllergyIntolerance?patient=Patient/[id]&verification-status=confirmed
GET [base]/AllergyIntolerance?patient=Patient/[id]&code=http://snomed.info/sct%7C256277009
```

**Create**

```
POST [base]/AllergyIntolerance
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance" ]
  },
  "clinicalStatus": { ... },
  "verificationStatus": { ... },
  "type": { "coding": [ { "code": "allergy" } ] },
  "category": [ "environment" ],
  "code": { ... },
  "patient": { "reference": "Patient/[id]" }
}
```

**Update** (e.g. mark `resolved`, or confirm a previously `unconfirmed` allergy) - PUT the full resource back with the new status:

```
PUT [base]/AllergyIntolerance/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) for all supported search parameters.

### Related

- [How to read this guide](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [General guidance](general-guidance.html)
- [Workflows](workflows.html)

### Medication administration link

**Allergy relationship:** `MedicationAdministration.reason` means the medication was administered for that clinical indication, such as treating an allergy. It does not record a reaction caused by the medication. For an allergic reaction caused by this administration, document the reaction in the patient's [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) and link its `reaction` to this administration using the standard `openEHR-administration` extension.
