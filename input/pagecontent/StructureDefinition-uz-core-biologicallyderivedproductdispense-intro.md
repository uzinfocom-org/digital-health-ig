UZ Core BiologicallyDerivedProductDispense records the issue of a [biologically derived product](StructureDefinition-uz-core-biologically-derived-product.html) to the care team of a [patient](StructureDefinition-uz-core-patient.html). It fulfils a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). A [Procedure](StructureDefinition-uz-core-procedure.html) can reference the dispense as supporting information and records the actual transfusion.

### undefined

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core BiologicallyDerivedProductDispense Must Have

A status, one product reference and the intended recipient are mandatory. Each supplied performer must identify a practitioner. Each supplied business identifier must contain its system and value.

#### Each UZ Core BiologicallyDerivedProductDispense Must Support

- the dispense business identifier, when assigned;
- the order being fulfilled;
- the dispense status;
- the product and intended recipient;
- the participating practitioners;
- the actual handover time.

### Building the JSON, step by step

1. The [minimal JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.json.html) gives the status, product and patient, with the profile in `meta.profile`.
2. The [issued JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) adds the order, practitioner, locations, quantity and preparation and handover times. References target UZ Core profiles; quantity describes the amount actually dispensed.
3. The [returned JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.json.html) illustrates optional matching, origin relationship and performer function codes from the original HL7 systems. A stopped transfusion alone does not imply a returned product.

In the BMS workflow, ABO and Rh-Hr compatibility results remain in Observation. The dispense status describes the issue process, not the outcome of transfusion. The identifier system is agreed with the issuer; no placeholder URI is fixed by this profile.

[Quick Start](#quick-start).
