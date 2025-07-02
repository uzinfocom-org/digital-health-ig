Profile: DHPOrganization
Parent: Organization
Id: dhp-organization
Title: "Uzbekistan DHP Organization"
Description: "Uzbekistan DHP Organization profile, used to define healthcare organizations and sub-units"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-02-24"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways an organization can be categorized"
* identifier ^slicing.ordered = false
* identifier contains tax-id 0..1 MS and argoz-id 0..1 MS

* insert TaxIdentifier

* identifier[argoz-id]
  * system 1..1 MS
  * system = $organization-argoz-id-system
  * type 1..1 MS
  * type = $identifier-type#XX "Organization Identifier"
  * use = #official
  * value 1..1 MS

* active 0..1 MS

* type MS
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Organization categorization"
* type.coding ^slicing.ordered = false

* type.coding contains
    nomenclatureGroup 0..1 MS and
    organizationalServiceGroup 0..1 MS and
    organizationalStructure 0..1 MS and
    organizationType 0..* MS and
    specialization 0..1 MS and
    subordinationGroup 0..1 MS and
    withoutLegalStatus 0..1 MS

* type.coding[nomenclatureGroup] 
  ^short = "Определяет группу номенклатуры (группировку учреждений)"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/nomenclature-group-cs"
  * code 1..1 MS
  * code from nomenclature-group-vs (required)
* type.coding[organizationalServiceGroup]
  ^short = "Определяет организационно-сервисную группу медучреждения"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/organizational-service-group-cs"
  * code 1..1 MS
  * code from organizational-service-group-vs (required)
* type.coding[organizationalStructure]
  ^short = "Определяет организационную структуру медучреждения"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/organizational-structure-cs"
  * code 1..1 MS
  * code from organizational-structure-vs (required)
* type.coding[organizationType] 
  ^short = "Вид организации"
  * system 1..1 MS
  * system = Canonical($organization-type-cs)
  * code 1..1 MS
  * code from $organization-type-vs (required)
* type.coding[specialization] 
  ^short = "Определяет специализацию медорганизации"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/organizational-specialization-cs"
  * code 1..1 MS
  * code from organizational-specialization-vs (required)
* type.coding[subordinationGroup]
  ^short = "Группа подчинения медорганизации"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/organizational-subordination-group-cs"
  * code 1..1 MS
  * code from organizational-subordination-group-vs (required)
* type.coding[withoutLegalStatus]
  ^short = "Определяет тип медорганизаций без образования юридического лица"
  * system 1..1 MS
  * system = "https://terminology.medcore.uz/CodeSystem/organizational-subordination-institution-cs"
  * code 1..1 MS
  * code from organizational-subordination-institution-vs (required)

* insert MultilingualName(организации)

* contact MS
* partOf MS
* endpoint MS

Instance: example-organization
InstanceOf: DHPOrganization
Description: "Example of a hospital organization"
Usage: #example
* language = #uz
* identifier[tax-id]
  * use = #official
  * type = $identifier-type#TAX "Tax ID number"
  * system = $organization-tax-id-system
  * value = "200935935"
* identifier[argoz-id]
  * use = #official
  * type = $identifier-type#XX "Organization Identifier"
  * system = $organization-argoz-id-system
  * value = "9512"
* active = true
* type.coding[organizationType] = $organization-type-cs#prov "Healthcare Provider"
* type.coding[subordinationGroup] = organizational-subordination-group-cs#I_1 "Respublika tassarufidagi muassasalari"
* type.coding[nomenclatureGroup] = nomenclature-group-cs#II_100 "Shifoxona muassasalari"
* type.coding[organizationalServiceGroup] = organizational-service-group-cs#III_100 "Poliklinika bo'limi va statsionar bo'limi mavjud"
* type.coding[organizationalStructure] = organizational-structure-cs#110 "Ixtisoslashtirilgan ilmiy-amaliy tibbiyot markazi"
* type.coding[specialization] = organizational-specialization-cs#145.0 "Kattalar onkologiyasi"
* name = "Respublika onkologiya markazi"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "Республиканский онкологический центр"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #en
    * extension[content][+]
      * valueString = "Republican Oncology Center"

Instance: tashkent-diseases-hospital
InstanceOf: DHPOrganization
Description: "Example of a hospital organization"
Usage: #example
* active = true
* identifier[0]
  * system = $organization-tax-id-system
  * type = $identifier-type#TAX "Tax ID number"
  * use = #official
  * value = "203108505"
* identifier[+]
  * system = $organization-argoz-id-system
  * type = $identifier-type#XX "Organization Identifier"
  * use = #official
  * value = "22640"
* language = #uz
* name = "Toshkent viloyati yuqumli kasalliklar shifoxonasi"
  * extension[0]
    * extension[0]
      * url = "lang"
      * valueCode = #ru
    * extension[+]
      * url = "content"
      * valueString = "Ташкентская областная инфекционная больница"
    * url = "http://hl7.org/fhir/StructureDefinition/translation"
  * extension[+]
    * extension[0]
      * url = "lang"
      * valueCode = #en
    * extension[+]
      * url = "content"
      * valueString = "Tashkent Region Infectious Diseases Hospital"
    * url = "http://hl7.org/fhir/StructureDefinition/translation"
* type
  * coding[0] = $organization-type-cs#prov "Healthcare Provider"
  * coding[+] = organizational-subordination-group-cs#I_2 "Hududiy boshqaruv tarkibidagi"
  * coding[+] = nomenclature-group-cs#II_100 "Shifoxona muassasalari"
  * coding[+] = organizational-service-group-cs#III_200 "Statsionar bo'limi mavjud"
  * coding[+] = organizational-structure-cs#146 "Shifoxonasi"
