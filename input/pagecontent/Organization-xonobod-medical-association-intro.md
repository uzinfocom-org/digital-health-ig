This example demonstrates translating an organization from Hepatitis JSON format into a FHIR Organization conforming to the [UZ Core Organization](StructureDefinition-uz-core-organization.html) profile. See the [resulting FHIR JSON](Organization-xonobod-medical-association.json.html).

#### Source Hepatitis JSON

```json
{
  "id": 7442,
  "uuid": "b1d072d4-c460-410b-9edf-1125f1b08fb6",
  "tin": "200248215",
  "name": "Xonobod shahar tibbiyot birlashmasi",
  "active": true,
  "email": "health@example.uz",
  "phone": "1341353613",
  "country": "UZB",
  "state": "UZ-AN",
  "city": "AN-408",
  "district": null,
  "serviceArea": "UZ-AN",
  "line": "A.Fitrat ko'chasi, 1",
  "serviceTypes": [
    "EMERGENCY",
    "INPATIENT",
    "OUTPATIENT"
  ],
  "levelType": "URBAN",
  "medicalType": "MEDICAL_ASSOCIATION"
}
```

#### Mapping notes

| Source field | FHIR path | ConceptMap used |
|---|---|---|
| `tin` | `identifier[taxId].value` | - |
| `name` | `name` | - |
| `active` | `active` | - |
| `phone`, `email` | `contact.telecom` | - |
| `country`, `state`, `city`, `line` | `contact.address` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) for `state` (UZ-AN -> 1703) and `city` (AN-408 -> 1703408) |
| `serviceArea` | `extension[coverage-area]` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) (UZ-AN -> StateCS#1703) |
| `levelType` | `type.coding[subordinationGroup]` | [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) (3 "Urban" -> I_3 "In district and city administration") |
| `medicalType` | `type.coding[organizationalStructure]` | [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) (16 "Medical Association" -> 148 "Medical association") |
| `serviceTypes` | `type.coding[organizationalServiceGroup]` | [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) (2 "Inpatient" + 1 "Outpatient" -> III_100, 1 "Outpatient" -> III_500) |
| `id`, `uuid` | not mapped | Hepatitis internal identifiers |
