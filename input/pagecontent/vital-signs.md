Vital signs measure the body's basic functions. This page provides guidance for working with vital signs in UZ Core.

### Overview

**UZ Core vital signs are based on the [FHIR Vital Signs profile](https://hl7.org/fhir/observation-vitalsigns.html)**, using the Observation resource to represent measurements consistently across Uzbekistan's healthcare ecosystem.

### Common vital signs

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

Vital signs observations in UZ Core **compose** three profiles together:
* [UZ Core Observation profile](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) - Uzbekistan-specific requirements
* [FHIR Vital Signs profile](http://hl7.org/fhir/StructureDefinition/vitalsigns) ([documentation](https://hl7.org/fhir/vitalsigns.html)) - International vital signs standards
* **Specific vital sign profile** (e.g., [Heart Rate](http://hl7.org/fhir/r5/heartrate.html), [Blood Pressure](http://hl7.org/fhir/r5/bp.html)) - Rules for that particular vital sign type

Declare all three in `meta.profile`. **Most conformance rules are in the final (most specific) profile**, with base profiles providing foundational requirements.

### Understanding observations as key-value pairs

Observations work as **key-value pairs**:
- **Key**: `Observation.code` (what was measured)
- **Value**: `Observation.value[x]` (the measurement result)

Complex observations with multiple inseparable values use `Observation.component.value[x]`. For example, blood pressure has systolic and diastolic components measured together, instead of 2 separate Observations.

Key elements:

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


### Links

For further reading on vital signs in FHIR:

* [FHIR Vital Signs Profile](http://hl7.org/fhir/r5/vitalsigns.html)
* [Observation Resource](http://hl7.org/fhir/r5/observation.html)
