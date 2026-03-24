Этот пример демонстрирует преобразование организации из формата Hepatitis JSON в ресурс FHIR Organization, соответствующий профилю [UZ Core Organization](StructureDefinition-uz-core-organization.html). См. [результирующий FHIR JSON](Organization-xonobod-medical-association.json.html).

#### Исходный Hepatitis JSON

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

#### Примечания к маппингу

| Исходное поле | FHIR путь | Используемый ConceptMap |
|---|---|---|
| `tin` | `identifier[taxId].value` | - |
| `name` | `name` | - |
| `active` | `active` | - |
| `phone`, `email` | `contact.telecom` | - |
| `country`, `state`, `city`, `line` | `contact.address` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) для `state` (UZ-AN -> 1703) и `city` (AN-408 -> 1703408) |
| `serviceArea` | `extension[coverage-area]` | [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) (UZ-AN -> StateCS#1703) |
| `levelType` | `type.coding[subordinationGroup]` | [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) (URBAN -> I_3) |
| `medicalType` | `type.coding[organizationalStructure]` | [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) (MEDICAL_ASSOCIATION -> 148) |
| `serviceTypes` | `type.coding[organizationalServiceGroup]` | [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) (OUTPATIENT+INPATIENT -> III_100, OUTPATIENT -> III_500) |
| `id`, `uuid` | не маппится | Внутренние идентификаторы Hepatitis |
