This workflow shows how a national screening program is defined, how the platform evaluates a patient's screening eligibility, how the patient's screening plan (invitation) is found or created, how the screening visit records questionnaire answers and results against that plan, and how a positive finding leads to follow-up. It is the generic pattern. The program-specific rules - program codes, result profiles, and which system closes the plan - are in the [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html), on the cervical and breast cancer screening page.

Actors: the screening program manager (maintains the program definition); DHP (evaluates eligibility and issues national invitations); the clinic's medical information system (MIS) and its clinicians, who carry out the screening; the facility that performs any follow-up.

The one-line rule:

> The program is a [PlanDefinition](StructureDefinition-uz-core-plan-definition.html). A patient's screening plan or invitation is a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) with `intent = plan`. Everything recorded during screening points back to that plan through `basedOn`.

<div>{% include screening-sequence.svg %}</div><br clear="all"/>

### 1. The program as code

A screening program is published as a PlanDefinition with exactly one `focus` use context set to SNOMED CT `360156006` (Screening intent). `jurisdiction` use contexts say where it applies - nationally (`UZ`) or in specific regions. `subjectReference` points to the target population, a [Group](StructureDefinition-uz-core-group.html) with code `group-0001-00001` (Screening target group) whose `characteristic` entries describe who is included or excluded. Each screening activity is an `action` with its `timing[x]` (for example, an HbA1c test every three years), an eligibility `condition` and a `participant`.

```
# active screening programs
GET [base]/PlanDefinition?status=active&context=http://snomed.info/sct|360156006

# one program by its program code (here diabetes screening)
GET [base]/PlanDefinition?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004
```

```
{
  "resourceType": "PlanDefinition",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition"] },
  "url": "...", "name": "...", "description": "...",
  "status": "active",
  "subjectReference": { "reference": "Group/[target-group-id]" },
  "useContext": [{
    "code": { "system": "http://terminology.hl7.org/CodeSystem/usage-context-type", "code": "focus" },
    "valueCodeableConcept": { "coding": [{ "system": "http://snomed.info/sct", "code": "360156006", "display": "Screening intent" }] }
  }],
  "action": [{
    "linkId": "action-1",
    "title": "Glycated haemoglobin test",
    "code": { "coding": [{ "system": "http://hl7.org/fhir/action-code", "code": "order-service", "display": "Order a service" }] },
    "timingTiming": { "repeat": { "frequency": 1, "period": 3, "periodUnit": "a" } },
    "participant": [{ "type": "practitioner" }]
  }]
}
```

The DHP Integrations IG adds two things to a program definition. A program `identifier` with system `https://dhp.uz/fhir/core/sid/prg/uz/program` and a code from [Screening Program Types](ValueSet-screening-program-type-vs.html) names the program. An `action.definitionCanonical` points to an [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) that is the invitation template (`kind = ServiceRequest`, `intent = plan`). See the [regional screening example](PlanDefinition-example-uz-core-regional-screening-plan-definition.html) for the use contexts, target Group and timing, and the Integrations [HPV cervical program example](https://dhp.uz/fhir/integrations/en/PlanDefinition-example-hpv-cervical-plan.html) for the identifier and invitation template.

> Only one schedule version may be active at a time for a given scope or jurisdiction. See the [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) page for the validation rules.

### 2. Evaluate screening eligibility

The platform evaluates a patient's screening eligibility with the Patient operation `$screening-evaluate`, declared in the CapabilityStatement of the production and sandbox [servers](api-access.html#endpoints) with the canonical `https://dhp.uz/fhir/core/OperationDefinition/patient-screening-evaluate`.

> The OperationDefinition is not yet published in this guide. Its parameters, whether it is called on the type (`Patient/$screening-evaluate`) or on an instance (`Patient/[id]/$screening-evaluate`), and the shape of its result are to be documented. Until then, read the patient's open plans directly (step 3).

### 3. The patient's screening plan

For each patient and program there is one open plan: a ServiceRequest with `intent = plan`, `category` SNOMED CT `310422005` (Prevention/screening invitation), and the program `identifier`. A national invitation is a plan that DHP creates with `status = draft` and `instantiatesCanonical` set to the exact `PlanDefinition.url|version`. When no invitation exists, the MIS creates its own `active` plan without `instantiatesCanonical`.

```
POST [base]/ServiceRequest
If-None-Exist: [the complete plan identity]
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "plan",
  "category": [{ "coding": [{ "system": "http://snomed.info/sct", "code": "310422005", "display": "Prevention/screening invitation" }] }],
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "171183004", "display": "Diabetes mellitus screening" }] } },
  "subject": { "reference": "Patient/[id]" },
  "authoredOn": "2026-10-09T09:00:00+05:00",
  "performer": [{ "reference": "Organization/[clinic]" }]
}
```

Before saving any screening data, the MIS looks up the open plan for the exact program:

```
GET [base]/ServiceRequest?subject=Patient/[id]&intent=plan&status=draft,active&category=http://snomed.info/sct|310422005&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004&_sort=-_lastUpdated
```

| Lookup result | Action |
|---------------|--------|
| One matching plan | Reuse it; accept a national invitation by changing `draft` to `active` with `PUT` and `If-Match`, keeping the other fields |
| No open plan | Create an `active` MIS plan, as above |
| Several matching plans | Resolve the duplicates before linking results |

Create a plan with a conditional create (`If-None-Exist`) carrying the complete plan identity, so that a retry does not make a duplicate.

For a national invitation, also compare `instantiatesCanonical` with the current program version: an invitation to an older definition is not reused. A newer invitation refers to the one it supersedes through `replaces`.

| Plan state | `ServiceRequest.status` | `instantiatesCanonical` |
|------------|-------------------------|-------------------------|
| National invitation, not yet accepted | `draft` | <code>PlanDefinition.url&#124;version</code> |
| Invitation accepted, or MIS's own plan in use | `active` | kept on an invitation, absent on an MIS plan |
| Screening finished | `completed` | unchanged |

The MIS changes the plan status; DHP does not infer completion from the results it receives. When a plan is completed depends on the program: one program keeps its plan `active` across repeated examinations, another completes it after a completed questionnaire. See [Screening plans and invitations](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html#screening-plans-and-invitations), [Populating the patient plan](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html#populating-the-patient-plan) and [Finding, activating and creating a plan](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html#finding-activating-and-creating-a-plan).

### 4. The screening visit: questionnaires

The visit is an [Encounter](StructureDefinition-uz-core-encounter.html). Risk assessment uses a screening [Questionnaire](StructureDefinition-uz-core-questionnaire.html); the answers are a [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) that names the questionnaire by its canonical and links to the plan in `basedOn`. Only `active` questionnaires capture new responses. Several questionnaires compute a total score and a risk band from the answers (for example `diabetes-total-score` and `diabetes-risk-category` in the diabetes questionnaire).

```
# the questionnaire for a program
GET [base]/Questionnaire?status=active&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|171183004

POST [base]/QuestionnaireResponse
{
  "resourceType": "QuestionnaireResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/DiabetesScreeningQuestionnaire",
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "authored": "2026-10-09T09:15:00+05:00",
  "item": [ ... ]
}
```

The screening questionnaires are published in the DHP Integrations IG:

| Questionnaire | Program identifier | Status |
|---------------|--------------------|--------|
| [Cardiovascular disease risk](https://dhp.uz/fhir/integrations/en/Questionnaire-CVDRiskScreeningQuestionnaire.html) | `300007000` (Screening for cardiovascular system disease) | `draft` |
| [Diabetes](https://dhp.uz/fhir/integrations/en/Questionnaire-DiabetesScreeningQuestionnaire.html) | `171183004` (Diabetes mellitus screening) | `active` |
| [Cerebrovascular disease](https://dhp.uz/fhir/integrations/en/Questionnaire-CerebrovascularScreeningQuestionnaire.html) | `mserv-0007-00003` (Early Detection Questionnaire for Cerebrovascular Diseases) | `draft` |
| [Cervical cancer](https://dhp.uz/fhir/integrations/en/Questionnaire-CervicalCancerScreeningQuestionnaire.html) | `mserv-0007-00009` (DMED cervical cancer screening program) | `active` |
| [Breast cancer](https://dhp.uz/fhir/integrations/en/Questionnaire-BreastCancerScreeningQuestionnaire.html) | `mserv-0007-00007` (DMED breast cancer screening program) | `active` |
| [Helminth diseases](https://dhp.uz/fhir/integrations/en/Questionnaire-HelminthScreeningQuestionnaire.html) | `171147008` (Screening for intestinal helminthiasis) | `draft` |
| [Ischemic heart disease pretest probability](https://dhp.uz/fhir/integrations/en/Questionnaire-IhdPretestQuestionnaire.html) | `171223006` (Ischemic heart disease screening) | `draft` |
| [Oncohematology](https://dhp.uz/fhir/integrations/en/Questionnaire-OncohematologyScreeningQuestionnaire.html) | `762445000` (Screening for hematological disorder) | `active` |
| [Fertility](https://dhp.uz/fhir/integrations/en/Questionnaire-FertilityQuestionnaire.html) | `408961002` (Fertility care assessment) | `active` |

Draft questionnaires are not yet used to capture responses; the `status=active` lookup does not return them.

> A patient-entered QuestionnaireResponse is informational. It is not converted into a Condition or Observation automatically; that needs a clinician's action within an Encounter.

### 5. Results

Tests and examinations ordered during screening follow the [laboratory workflow](workflow-lab.html): an order ServiceRequest, then [Observations](StructureDefinition-uz-core-observation.html) and a [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html). Each result keeps the reference to its own order and adds the plan:

| Resource | Link to the plan |
|----------|------------------|
| QuestionnaireResponse, Observation, DiagnosticReport, Procedure, order ServiceRequest | `basedOn` |
| Specimen | `request` |
| Condition | the [event-basedOn](https://hl7.org/fhir/extensions/StructureDefinition-event-basedOn.html) extension |

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"] },
  "identifier": [{ "system": "https://dhp.uz/fhir/core/sid/prg/uz/program", "value": "171183004" }],
  "basedOn": [
    { "reference": "ServiceRequest/[order-id]" },
    { "reference": "ServiceRequest/[plan-id]" }
  ],
  "status": "final",
  "category": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/observation-category", "code": "laboratory", "display": "Laboratory" }] }],
  "code": { "coding": [{ "system": "http://loinc.org", "code": "4548-4", "display": "Hemoglobin A1c/Hemoglobin.total in Blood" }] },
  "subject": { "reference": "Patient/[id]" },
  "encounter": { "reference": "Encounter/[id]" },
  "effectiveDateTime": "2026-10-09T10:00:00+05:00",
  "valueQuantity": { "value": 6.1, "unit": "%", "system": "http://unitsofmeasure.org", "code": "%" }
}
```

Read everything recorded under a plan:

```
GET [base]/QuestionnaireResponse?based-on=ServiceRequest/[plan-id]
GET [base]/Observation?based-on=ServiceRequest/[plan-id]
GET [base]/DiagnosticReport?based-on=ServiceRequest/[plan-id]
```

Program-specific results (cytology, HPV test, colposcopy, mammography, histology) have their own profiles in the DHP Integrations IG; see [Linking clinical resources and changing status](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html#linking-clinical-resources-and-changing-status).

### 6. Follow-up when positive

When a result is abnormal or the questionnaire returns a high risk band, the clinician records the diagnosis as a [Condition](StructureDefinition-uz-core-condition.html) where one is made, and orders the follow-up as a ServiceRequest with `intent = order`. It links to the plan in `basedOn` and gives the finding in `reason`. A referral to a specialist then follows the [e-Referral lifecycle](workflow-referral.html).

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [{ "system": "http://snomed.info/sct", "code": "306206005", "display": "Referral to service" }] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "basedOn": [{ "reference": "ServiceRequest/[plan-id]" }],
  "reason": [{ "reference": { "reference": "Observation/[id]" } }]
}
```

A health target agreed with the patient, such as a target HbA1c, is a [Goal](StructureDefinition-uz-core-goal.html) that `addresses` the Condition or Observation.

### Related

- Profiles: [PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) &middot; [Group](StructureDefinition-uz-core-group.html) &middot; [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Questionnaire](StructureDefinition-uz-core-questionnaire.html) &middot; [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) &middot; [Observation](StructureDefinition-uz-core-observation.html) &middot; [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Goal](StructureDefinition-uz-core-goal.html)
- Component: [Screening Schedules Management](components.html#screening-schedules-management) &middot; [Questionnaires](forms.html)
- DHP Integrations IG: [Cervical and breast cancer screening](https://dhp.uz/fhir/integrations/en/cervical-breast-cancer-screening.html)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
