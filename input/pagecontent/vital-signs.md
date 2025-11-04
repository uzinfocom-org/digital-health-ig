Vital signs are measurements of the body's most basic functions and are essential for monitoring patient health. This page provides guidance on how to work with vital signs in the DHP implementation guide in conjunction with UZ Core.

### Overview

Vital signs in FHIR are represented using the Observation resource with specific profiles that define standardized ways to capture and exchange these critical measurements.

**UZ Core vital signs are based on the [FHIR Vital Signs profile](https://hl7.org/fhir/observation-vitalsigns.html)**, which provides a standardized approach to representing vital signs measurements. The DHP implementation guide leverages these FHIR R5 vital signs profiles to ensure consistent representation of vital signs data across Uzbekistan's healthcare ecosystem.

### Common vital signs

The following table lists the vital signs defined in the FHIR vital signs specification:

| Vital Sign | LOINC Code | Description | Unit | Example |
|------------|------------|-------------|------|---------|
| [Respiratory Rate](http://hl7.org/fhir/r5/resprate.html) | 9279-1 | Respiratory Rate | /min | [JSON](Observation-respiratory-rate-example.json) |
| [Heart Rate](http://hl7.org/fhir/r5/heartrate.html) | 8867-4 | Heart rate measurement | /min | [JSON](Observation-heart-rate-example.json) |
| [Oxygen Saturation](http://hl7.org/fhir/r5/oxygensat.html) | 2708-6 | Oxygen saturation in Arterial blood | % | [JSON](Observation-oxygen-saturation-example.json) |
| [Body Temperature](http://hl7.org/fhir/r5/bodytemp.html) | 8310-5 | Body temperature measurement | Cel, [degF] | [JSON](Observation-body-temperature-example.json) |
| [Body Height](http://hl7.org/fhir/r5/bodyheight.html) | 8302-2 | Body height measurement | cm, [in_i] | [JSON](Observation-body-height-example.json) |
| [Head Circumference](http://hl7.org/fhir/r5/headcircum.html) | 9843-4 | Head Occipital-frontal circumference | cm, [in_i] | [JSON](Observation-head-circumference-example.json) |
| [Body Weight](http://hl7.org/fhir/r5/bodyweight.html) | 29463-7 | Body weight measurement | g, kg, [lb_av] | [JSON](Observation-body-weight-example.json) |
| [Body Mass Index](http://hl7.org/fhir/r5/bmi.html) | 39156-5 | Body mass index (BMI) [Ratio] | kg/m2 | [JSON](Observation-bmi-example.json) |
| [Blood Pressure](http://hl7.org/fhir/r5/bp.html) | 85354-9 | Blood pressure panel | — | [JSON](Observation-blood-pressure-example.json) |

### FHIR representation

Vital signs observation instances in UZ Core work in a **compositional manner** by combining multiple profiles together. Each vital signs observation must conform to all three profiles:
* [UZ Core Observation profile](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) - which defines Uzbekistan-specific requirements
* [FHIR Vital Signs profile](http://hl7.org/fhir/StructureDefinition/vitalsigns) ([documentation](https://hl7.org/fhir/vitalsigns.html)) - which defines international vital signs standards
* **Specific vital sign profile** (e.g., [Heart Rate](http://hl7.org/fhir/r5/heartrate.html), [Blood Pressure](http://hl7.org/fhir/r5/bp.html)) - which defines rules for that particular vital sign type

In practice, these profiles are combined by declaring all three in the resource's `meta.profile` array. This compositional approach allows vital signs observations to satisfy local Uzbekistan requirements, international FHIR standards, and specific vital sign constraints simultaneously. **Most conformance rules that require validation are found in the final (most specific) profile**, with the base profiles providing foundational requirements.

### Understanding observations as key-value pairs

In general, observations can be thought of as **key-value pairs**, where:
- The **key** is `Observation.code` - identifying what was measured (e.g., heart rate, temperature)
- The **value** is in `Observation.value[x]` - the actual measurement result

That said, complex observations that inherently have multiple values together that should not be separated can be represented with multiple values going into `Observation.component.value[x]`. For example, blood pressure has both systolic and diastolic components that are measured together and should remain together as a single observation.

Vital signs are captured as Observation resources with:

* A standard LOINC code identifying the type of vital sign
* A value with appropriate units (e.g., mmHg for blood pressure, bpm for heart rate)
* A reference to the patient
* Effective date/time when the measurement was taken
* Optional performer reference to who recorded the measurement

### Example: blood pressure

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation",
      "http://hl7.org/fhir/StructureDefinition/vitalsigns",
      "http://hl7.org/fhir/StructureDefinition/bp"
    ]
  },
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Blood pressure: 120/80 mmHg</p></div>"
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
      "code": "vital-signs",
      "display": "Vital Signs"
    }]
  }],
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "85354-9",
      "display": "Blood pressure panel with all children optional"
    }]
  },
  "subject": {
    "reference": "Patient/example"
  },
  "effectiveDateTime": "2025-11-04T10:30:00Z",
  "performer": [{
    "reference": "Practitioner/example"
  }],
  "component": [{
    "code": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "8480-6",
        "display": "Systolic blood pressure"
      }]
    },
    "valueQuantity": {
      "value": 120,
      "unit": "mmHg",
      "system": "http://unitsofmeasure.org",
      "code": "mm[Hg]"
    }
  }, {
    "code": {
      "coding": [{
        "system": "http://loinc.org",
        "code": "8462-4",
        "display": "Diastolic blood pressure"
      }]
    },
    "valueQuantity": {
      "value": 80,
      "unit": "mmHg",
      "system": "http://unitsofmeasure.org",
      "code": "mm[Hg]"
    }
  }]
}
```

### Implementation considerations

When implementing vital signs in DHP:

1. **Use Standard Codes** - Always use LOINC codes for vital signs observations to ensure interoperability
2. **Include Units** - Use UCUM (Unified Code for Units of Measure) for all quantity values
3. **Timestamp Accuracy** - Record the effective date/time when the measurement was actually taken, not when it was recorded in the system
4. **Reference Ranges** - Include reference ranges when available to provide clinical context
5. **Data Quality** - Mark observations with appropriate status (preliminary, final, amended, etc.)

### Links

For further reading on vital signs in FHIR:

* [FHIR Vital Signs Profile](http://hl7.org/fhir/r5/vitalsigns.html)
* [Observation Resource](http://hl7.org/fhir/r5/observation.html)
