UZ Core defines two Observation profiles for different coding domains. This page explains when to use each profile.

### Profiles

| Profile | Code binding | Use case |
|---------|-------------|----------|
| [UZ Core Laboratory Observation](StructureDefinition-uz-core-laboratory-observation.html) | LOINC + DHP lab codes (required) | Laboratory results, vital signs, quantitative clinical measurements |
| [UZ Core Clinical Finding Observation](StructureDefinition-uz-core-clinical-finding-observation.html) | SNOMED CT (required) | Clinician-assessed findings, functional status, qualitative clinical observations |

Both profiles share the same structural constraints, MS flags, and cardinalities - only the `Observation.code` binding differs.

### Choosing a profile

```
Is there a LOINC code for this observation?
  Yes → Use UZ Core Laboratory Observation
  No  → Is there a custom DHP lab code?
          Yes → Use UZ Core Laboratory Observation
          No  → Use UZ Core Clinical Finding Observation (SNOMED CT)
```

**Examples:**
- Blood pressure (LOINC 85354-9) - UZ Core Laboratory Observation
- CBC panel (DHP lab code lab-A) - UZ Core Laboratory Observation
- Muscle strength finding (SNOMED CT 366725004) - UZ Core Clinical Finding Observation

### Related

* [Vital signs](vital-signs.html) - guidance for vital sign observations specifically
* [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) - for socioeconomic and demographic observations
