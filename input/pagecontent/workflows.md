# Workflows

The profile pages tell you the *shape* of each resource. These workflow pages tell you the *story* - for a real clinical task, which resources to create, in what order, how they reference each other, and what API calls to make. If you are not sure which resource to use for something, start here.

Each workflow describes the actors, the sequence of FHIR interactions, and the key rules, with example calls and payload fragments.

## Worked scenarios

| Workflow | What it covers | Resources |
|----------|----------------|-----------|
| [Immunization](workflow-immunization.html) | National schedule &rarr; recommendation &rarr; recording a dose | PlanDefinition, ImmunizationRecommendation, Immunization, AdverseEvent |
| [Laboratory order to result](workflow-lab.html) | Ordering a test and returning the result | ServiceRequest, Specimen, Observation, DiagnosticReport |
| [e-Referral lifecycle](workflow-referral.html) | Creating and fulfilling a referral, including the state-insurance approval chain | ServiceRequest, Task, Procedure |

More scenarios (clinical documentation, reimbursement) will be added as the corresponding profiles are finalized.

## The interaction model

A few rules apply to every workflow:

- **Authenticate first.** All requests carry an OAuth2 bearer token (`Authorization: Bearer <token>`) obtained from the platform SSO. System-to-system clients use the client-credentials flow; user-facing apps use the authorization-code flow via OneID.
- **Declare the profile.** Every resource you submit carries `meta.profile` so the server validates it against the right UZ Core profile. See [General guidance &rarr; metadata](general-guidance.html#metadata).
- **Group related resources in a Bundle.** When several resources belong together, submit them as a transaction Bundle (atomic) or, for a finalized document, a document Bundle. See [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- **Honour consent.** Read requests are subject to the patient's [Consent](StructureDefinition-uz-core-consent.html); a denied request returns `403`. Every access is logged to [AuditEvent](StructureDefinition-uz-core-auditevent.html).
- **Logical delete only.** Records are retired by changing status, not by `DELETE`. See [General guidance &rarr; deleting](general-guidance.html#creating-updating-and-deleting).

## How resources relate

Most clinical data hangs off the patient through a small number of reference patterns:

```
Patient ──< EpisodeOfCare ──< Encounter
                                  │
        ┌─────────────────┬───────┼───────────────┬──────────────┐
   Condition         Observation  Procedure   MedicationRequest  Composition
                          │
                       Specimen ──> ServiceRequest
```

- A **Patient** has many **Encounters** (visits); related Encounters may be grouped into an **EpisodeOfCare** (an ongoing case).
- Within an Encounter, clinicians record **Conditions** (diagnoses), **Observations** (results, vitals), **Procedures**, and **MedicationRequests**.
- Workflow resources (**ServiceRequest**, **Task**) drive ordering and fulfilment; result resources (**Observation**, **DiagnosticReport**) reference back to the order.
- Finalized, legally-significant content is assembled into a **Composition**-based document and signed via **[Provenance](StructureDefinition-uz-core-provenance.html)**.

A note on choosing between a **document** and **workflow resources**: store ongoing clinical facts as discrete resources (Condition, Observation, Procedure); assemble a Composition-based document only when you need a finalized, legally-significant artifact (a discharge summary, a signed certificate, a signed report).
