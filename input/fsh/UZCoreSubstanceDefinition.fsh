Profile: UZCoreSubstanceDefinition
Parent: SubstanceDefinition
Id: uz-core-substancedefinition
Title: "UZ Core SubstanceDefinition"
Description: "Uzbekistan Core SubstanceDefinition profile, used to represent an entry of the reference list of substances and sampling objects - such as a food product, a water source or a swabbed surface - with its code, names in Uzbek and Russian, category and manufacturer"

* ^status = #active
* ^experimental = true
* ^date = "2026-11-18"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identifiers of the reference list entry"
* identifier ^slicing.ordered = false
* identifier contains substanceDefinition 0..1 MS
* identifier[substanceDefinition] ^short = "Number of the entry in the LIS SES reference list of sample names"
* identifier[substanceDefinition].system 1..1 MS
* identifier[substanceDefinition].system = $substance-definition-number
* identifier[substanceDefinition].value 1..1 MS

* version ^short = "Version of the reference list entry, increased when the entry is edited"

* status MS
* status from PublicationStatusVS (preferred)
* status ^short = "active | retired: whether the reference list entry is in use"

* classification MS
* classification ^slicing.discriminator.type = #value
* classification ^slicing.discriminator.path = "$this"
* classification ^slicing.rules = #open
* classification ^slicing.description = "High-level kind of substance; classifications from other systems are allowed alongside it"
* classification ^slicing.ordered = false
* classification contains substanceCategory 0..* MS
* classification[substanceCategory] from SubstanceSampleCategoryVS (required)
* classification[substanceCategory] ^short = "High-level kind of substance (chemical, food, material ...)"

* description ^short = "Textual description of the substance"

* manufacturer MS
* manufacturer only Reference(UZCoreOrganization)
* manufacturer ^short = "Manufacturer of the substance or product"
* supplier only Reference(UZCoreOrganization)

* note ^short = "Comments, such as the normative document the substance is checked against"

* code MS
* code.code 1..1 MS
* code.code from SubstanceNamesVS (preferred)
* code.status from PublicationStatusVS (preferred)

* name MS
* name ^short = "Names of the substance (Uzbek name preferred, Russian translation)"
* name.name MS
* name.preferred MS
* name.preferred ^short = "True for the Uzbek name, which is the display name"
* name.language MS
* name.language ^short = "Language of the name (uz, ru, en)"
* name.status from PublicationStatusVS (preferred)
* name.official.status from PublicationStatusVS (preferred)
* name.translation ^short = "Translation of the name, such as the Russian name"
* name.synonym ^short = "Other names of the substance"

* relationship.substanceDefinition[x] only Reference(UZCoreSubstanceDefinition) or CodeableConcept





Instance: example-substance-definition-pasteurized-milk
InstanceOf: UZCoreSubstanceDefinition
Title: "Example UZ Core SubstanceDefinition - Pasteurized Drinking Milk"
Description: "Example reference list entry for pasteurized drinking milk, a food product sampled for sanitary and epidemiological examination, with its SNOMED CT code, Uzbek and Russian names, category and manufacturer"
Usage: #example
* language = #uz
* identifier[substanceDefinition].value = "1368"
* version = "1.0.0"
* status = $publication-status#active
* classification[substanceCategory] = $sct#255620007
* description = "Pasterlangan ichimlik suti"
* manufacturer = Reference(Organization/example-organization-dairy-manufacturer)
* note.text = "Namuna sovutilgan holda tashiladi"
* code[0].code = $sct#3718001 "Cow's milk"
* code[=].status = $publication-status#active
* name[0].name = "Pasterlangan ichimlik suti"
* name[=].preferred = true
* name[=].language = urn:ietf:bcp:47#uz
* name[=].translation[0].name = "Молоко питьевое пастеризованное"
* name[=].translation[=].language = urn:ietf:bcp:47#ru
* name[=].synonym[0].name = "Pasterizatsiyalangan sut"
* name[=].synonym[=].language = urn:ietf:bcp:47#uz

Instance: example-substance-definition-raw-milk
InstanceOf: UZCoreSubstanceDefinition
Title: "Example UZ Core SubstanceDefinition - Raw Cow's Milk"
Description: "Example reference list entry for raw cow's milk, a food product sampled for sanitary and epidemiological examination, with only its code, category and names"
Usage: #example
* language = #uz
* identifier[substanceDefinition].value = "1379"
* status = $publication-status#active
* classification[substanceCategory] = $sct#255620007
* code[0].code = $sct#3718001 "Cow's milk"
* name[0].name = "Sigir xom suti"
* name[=].preferred = true
* name[=].language = urn:ietf:bcp:47#uz
* name[=].translation[0].name = "Молоко сырое коровье"
* name[=].translation[=].language = urn:ietf:bcp:47#ru
