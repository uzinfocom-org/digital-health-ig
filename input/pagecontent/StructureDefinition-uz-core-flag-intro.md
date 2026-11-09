UZ Core Flag records a donation eligibility decision for a [UZ Core Patient](StructureDefinition-uz-core-patient.html). The decision can be linked to a [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) and its author. An active flag may record either eligibility or medical deferral: the status describes the flag's lifecycle.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Flag Must Have

A status, a donation eligibility code and a patient reference are mandatory in base FHIR R5.

#### Each UZ Core Flag Must Support

- the business identifier, with its system, when assigned;
- the status of the flag;
- the donation eligibility decision;
- the patient to whom the decision applies.

### Building the JSON, step by step

1. Start with the [minimal flag JSON](Flag-example-donation-minimal-flag.json.html): it contains the profile, language, status, decision and patient reference.
2. Use the [eligible donor JSON](Flag-example-donation-eligible-flag.json.html) to add an administrative category, encounter, author and validity period.
3. Use the [medical deferral JSON](Flag-example-donation-deferred-flag.json.html) for a clinical deferral. Its status is still active while the deferral applies.

These JSON representations are generated from the FSH examples. Use the supplied code system with the decision code; HL7 category codes retain their original system. The subject references UZ Core Patient. See [Quick Start](#quick-start).
