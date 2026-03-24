Ushbu misol MIS2 JSON formatidagi tashkilotni [UZ Core Organization](StructureDefinition-uz-core-organization.html) profiliga mos FHIR Organization resursiga o'girishni ko'rsatadi. [Natijadagi FHIR JSON](Organization-xonobod-medical-association.json.html) ni ko'ring.

#### Manba MIS2 JSON

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

#### Mapping eslatmalari

| Manba maydoni | FHIR yo'li | Ishlatilgan ConceptMap |
|---|---|---|
| `tin` | `identifier[taxId].value` | - |
| `name` | `name` | - |
| `active` | `active` | - |
| `phone`, `email` | `contact.telecom` | - |
| `country`, `state`, `city`, `line` | `contact.address` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) `state` (UZ-AN -> 1703) va `city` (AN-408 -> 1703408) uchun |
| `serviceArea` | `extension[coverage-area]` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) (UZ-AN -> StateCS#1703) |
| `levelType` | `type.coding[subordinationGroup]` | [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html) (3 -> I_3) |
| `medicalType` | `type.coding[organizationalStructure]` | [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) (16 -> 148) |
| `serviceTypes` | `type.coding[organizationalServiceGroup]` | [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html) (2+1 -> III_100, 1 -> III_500) |
| `id`, `uuid` | mapping qilinmagan | MIS2 ichki identifikatorlari |
