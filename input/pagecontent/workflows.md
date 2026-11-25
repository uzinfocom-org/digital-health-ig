The profile pages tell you the *shape* of each resource. These workflow pages tell you the *story* - for a real clinical task, which resources to create, in what order, how they reference each other, and what API calls to make. If you are not sure which resource to use for something, start here.

Each workflow describes the actors, the sequence of FHIR interactions, and the key rules, with example calls and payload fragments.

### Available scenarios

| Workflow | What it covers | Resources |
|----------|----------------|-----------|
| [Patient registration and attachment](workflow-patient-registration.html) | Finding or creating a patient by PINFL, attaching them to a polyclinic and family doctor, relating parent and child, and detaching | [Patient](StructureDefinition-uz-core-patient.html), [RelatedPerson](StructureDefinition-uz-core-relatedperson.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Organization](StructureDefinition-uz-core-organization.html) |
| [Immunization](workflow-immunization.html) | National schedule &rarr; recommendation &rarr; consultation and vaccination visits &rarr; recording a dose | [PlanDefinition](StructureDefinition-uz-core-plan-definition.html), [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Immunization](StructureDefinition-uz-core-immunization.html), [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) |
| [Laboratory order to result](workflow-lab.html) | Ordering a test and returning the result | [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) |
| [e-Referral lifecycle](workflow-referral.html) | Creating and fulfilling a referral, including the state-insurance approval chain | [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [Task](StructureDefinition-uz-core-referral-approval-task.html), [Procedure](StructureDefinition-uz-core-procedure.html) |
| [Patient journey (Episode of Care)](workflow-patient-journey.html) | Grouping a case's visits, diagnoses and results under one episode over time | [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) |
| [e-Prescription and dispensing](workflow-prescription.html) | Prescribing a medicine, dispensing it, and reporting to SHIF | [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), [Medication](StructureDefinition-uz-core-medication.html), [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html), [MedicationKnowledge](StructureDefinition-uz-core-medicationknowledge.html), [Condition](StructureDefinition-uz-core-condition.html) |
| [Supplies and stock](workflow-supplies.html) | Requesting supplies, delivering them, and keeping and counting stock | [SupplyRequest](StructureDefinition-uz-core-supply-request.html), [SupplyDelivery](StructureDefinition-uz-core-supply-delivery.html), [InventoryItem](StructureDefinition-uz-core-inventoryitem.html), [InventoryReport](StructureDefinition-uz-core-inventoryreport.html) |
| [Population screening](workflow-screening.html) | Screening program &rarr; eligibility evaluation &rarr; screening plan or invitation &rarr; questionnaires and results &rarr; follow-up when positive | [PlanDefinition](StructureDefinition-uz-core-plan-definition.html), [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html), [Observation](StructureDefinition-uz-core-observation.html), [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) |

Clinical document creation and signing (assembling a `Composition`-based document and signing it for legal force) is specified in the [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) under Documents, not here.

Flows specific to one programme or external system are also described in the DHP Integrations IG: [Blood Service](https://dhp.uz/fhir/integrations/en/blood-service.html) (donor to transfusion), [Sick Leave](https://dhp.uz/fhir/integrations/en/sick-leave.html), [Orders](https://dhp.uz/fhir/integrations/en/orders.html) and [Cervical and Breast Cancer Screening](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html).

### The interaction model

A few rules apply to every workflow:

- Authenticate first. All requests carry an OAuth2 bearer token (`Authorization: Bearer <token>`) obtained from the platform SSO. System-to-system clients use the client-credentials flow; user-facing apps use the authorization-code flow via oneID.
- Declare the profile. Every resource you submit carries `meta.profile` so the server validates it against the right UZ Core profile. See [General guidance &rarr; metadata](general-guidance.html#metadata).
- Group related resources in a Bundle. When several resources belong together, you may submit them as a Bundle (transaction or batch) or, for a finalized document, a document Bundle. See [General guidance &rarr; Bundles](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- Honour consent. Read requests are subject to the patient's [Consent](StructureDefinition-uz-core-consent.html); a denied request returns `403`. Every access is logged to [AuditEvent](StructureDefinition-uz-core-auditevent.html).
- Logical delete only. Records are retired by changing status, not by `DELETE`. See [General guidance &rarr; deleting](general-guidance.html#creating-updating-and-deleting).

### How resources relate

Most clinical data hangs off the patient through a small number of reference patterns. The diagram below maps that core backbone - it is not an exhaustive list of every profile (see [Artifacts](artifacts.html) for the full set):

<div>{% include resource-relationships.svg %}</div><br clear="all"/>

- A Patient has many Encounters (visits); related Encounters may be grouped into an EpisodeOfCare (an ongoing case).
- Within an Encounter, clinicians record Conditions (diagnoses), Observations (results, vitals), Procedures, MedicationRequests, [AllergyIntolerances](StructureDefinition-uz-core-allergy-intolerance.html) and [Flags](StructureDefinition-uz-core-flag.html) (warnings, such as a medical deferral from blood donation).
- A [CarePlan](StructureDefinition-uz-core-careplan.html) plans care over a period of time, such as a course of treatment or nursing patronage visits; the Observations, Procedures and Immunizations that carry it out reference it in `basedOn`.
- Workflow resources (ServiceRequest, Task) drive ordering and fulfilment; result resources (Observation, DiagnosticReport) reference back to the order.
- Finalized, legally-significant content is assembled into a [Composition](StructureDefinition-uz-core-composition.html)-based document. The document Bundle is signed with a [Provenance](StructureDefinition-uz-core-provenance.html) that targets it; the [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) specifies the signing flow.

A note on choosing between a document and workflow resources: store ongoing clinical facts as discrete resources (Condition, Observation, Procedure); assemble a Composition-based document only when you need a finalized, legally-significant artifact (a discharge summary, a signed certificate, a signed report).
