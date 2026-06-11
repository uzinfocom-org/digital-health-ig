UZ Core AuditEvent is the immutable audit log of who accessed or changed what on the Digital Health Platform. It follows the IHE ATNA / DICOM audit model: the platform logs reads, creates, updates, deletes, searches, logins and break-glass events, recording the query behind a search and flagging failed or denied access (HTTP 401 / 403). AuditEvents are written by the platform and are read-only to clients; they link to the [Patient](StructureDefinition-uz-core-patient.html) whose data was involved.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core AuditEvent Must Have

This profile adds no top-level mandatory cardinality of its own. The required elements are the ones inherited from the base resource: a code (what happened), a recorded timestamp, at least one agent with a who, and a source with an observer. Within the dhpCategory category slice, when present, the system (DICOM dcm) and code are each 1..1.

#### Each UZ Core AuditEvent Must Support



- a category - the event grouping, with a sliced dhpCategory coding from DICOM (required binding on its code);
- a code - the specific event sub-type (required binding);
- an action - create, read, update, delete or execute (required binding);
- an occurredDateTime and the recorded timestamp;
- an outcome, whose code uses the required outcome binding (success, or a failure for denied 401 / 403 access);
- the patient whose data was involved;
- an agent with its type, role, who and authorization (the purpose-of-use, required binding) - `who` may be a PractitionerRole, Practitioner, Patient or RelatedPerson;
- an entity with its role, what, securityLabel and query (the base64-encoded search, where applicable).

> Break-glass access is recorded here as an AuditEvent whose `agent.authorization` carries an emergency purpose-of-use.

### Building the JSON, step by step

AuditEvents are written by the platform, not by clients, so you mostly read them - but it helps to know their shape. The examples below show a self-contained event and then an event that touches a patient's data. Every value shown validates against this profile. The full reference instances are linked at the bottom of the page ([login](AuditEvent-example-auditevent-login.html), [condition lookup](AuditEvent-example-auditevent-condition-lookup.html)).

#### A representative event (a login)

A self-contained event names what happened (`code`), its grouping (`category`), the `action` (E = execute), when it `occurredDateTime` and was `recorded`, the `outcome.code`, the `agent` who did it, and the `source` that logged it. The `agent.who` is a plain `Reference` and may point at a PractitionerRole, Practitioner, Patient or RelatedPerson:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110114",
          "display": "User Authentication"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://dicom.nema.org/resources/ontology/DCM",
        "code": "110122",
        "display": "Login"
      }
    ]
  },
  "action": "E",
  "occurredDateTime": "2023-11-09T15:23:47.123Z",
  "recorded": "2023-11-09T15:23:47.123Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

`category`, `code`, `action`, `outcome.code`, and the `agent` codings (type, role, authorization) each use a required binding - the value must come from the bound value set (the Snapshot view below lists each one). `agent.authorization` is the purpose-of-use (`TREAT` here); a break-glass access carries an emergency purpose-of-use instead.

#### An event that touched a patient's data

When the event read or changed a specific patient's record, add the `patient` it concerned and an `entity` describing the resource that was touched. Here a practitioner searched for a [Condition](StructureDefinition-uz-core-condition.html): the `action` is `R` (read), the `code` is the FHIR `search` interaction, and `entity.what` references the resource that was returned. Both `patient` and `entity.what` are plain `Reference` types:

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-auditevent" ] },
  "category": [
    {
      "coding": [
        {
          "system": "http://dicom.nema.org/resources/ontology/DCM",
          "code": "110112",
          "display": "Query"
        }
      ]
    }
  ],
  "code": {
    "coding": [ { "system": "http://hl7.org/fhir/restful-interaction", "code": "search" } ]
  },
  "action": "R",
  "occurredDateTime": "2025-02-15T14:02:52Z",
  "recorded": "2025-02-15T14:02:52Z",
  "outcome": { "code": { "system": "http://hl7.org/fhir/issue-severity", "code": "success" } },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code": "humanuser"
          }
        ]
      },
      "role": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sample-security-structural-roles",
              "code": "regulated-health-professionals"
            }
          ]
        }
      ],
      "authorization": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }
          ]
        }
      ],
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "entity": [
    {
      "role": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/object-role",
            "code": "4",
            "display": "Domain Resource"
          }
        ]
      },
      "securityLabel": [
        {
          "coding": [
            { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "NOAUTH" }
          ]
        }
      ],
      "what": { "reference": "Condition/example-headache" }
    }
  ],
  "source": {
    "observer": { "display": "Uzbekistan Digital Health Platform" },
    "type": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code": "4",
            "display": "Application Server"
          }
        ]
      }
    ]
  }
}
```

For a search, the platform also records the query itself (base64-encoded) in `entity.query`. A failed or denied access (HTTP 401 / 403) is logged the same way but with a failure `outcome.code`.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
