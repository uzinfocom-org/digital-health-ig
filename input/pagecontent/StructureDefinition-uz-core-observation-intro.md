UZ Core Observation represents a measurement or finding about a patient on the Digital Health Platform - laboratory results, vital signs, and other clinical observations. Observations are coded with LOINC (SNOMED CT is also allowed) and carry the result in `value[x]`, along with `interpretation` (normal/high/low/critical), `referenceRange`, and `component` parts for panels such as blood pressure or a CBC. A laboratory Observation links back to the order that produced it through `basedOn` (a ServiceRequest, CarePlan, or MedicationRequest) and to the sample it was measured on through `specimen`. The `category` (vital-signs, laboratory ...) keeps clinician-asserted and patient-reported observations distinct. See also [Vital signs](vital-signs.html).

### Each UZ Core Observation **Must Have**

This profile adds no mandatory cardinality of its own. The elements required come from the base resource: a **status** (registered | preliminary | final | amended ...) and a **code** identifying what was observed.

### Each UZ Core Observation **Must Support**

- an **identifier**, **instantiates[x]** (the definition followed), and **basedOn** (0..1 - the originating ServiceRequest, CarePlan, or MedicationRequest);
- **triggeredBy** (the observation that triggered this one) and **partOf** (a procedure, immunization, imaging study, or medication event);
- the **status** (required binding) and the **category** (vital-signs, laboratory ...);
- the **code** (preferred LOINC / SNOMED binding) and the **subject** (usually the patient);
- a **focus** and the **encounter** the observation belongs to;
- the **effective[x]** time and the **issued** instant;
- the **performer** (practitioner, role, or organization);
- the result **value[x]**, or a **dataAbsentReason** when there is no value;
- **interpretation**, free-text **note**, **bodySite**, and lab **method**;
- the **specimen** measured and the **device** used;
- a **referenceRange** (low, high, normalValue, type, age, text);
- **hasMember** and **derivedFrom** links to related observations or responses;
- **component** parts, each with their own **code**, **value[x]**, dataAbsentReason, and interpretation.

> Use `component` for panels whose parts share one effective time and subject (e.g. systolic + diastolic on one blood-pressure Observation); use `hasMember` to group separately-resulted Observations under a panel.
