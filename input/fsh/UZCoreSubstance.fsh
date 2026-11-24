Profile: UZCoreSubstance
Parent: Substance
Id: uz-core-substance
Title: "UZ Core Substance"
Description: "Uzbekistan Core Substance profile, used to represent a specific portion of a substance sampled for sanitary and epidemiological examination - such as a food product, water or a swabbed surface - with its sample and batch numbers, expiry date and the amount taken"

* ^status = #active
* ^experimental = true
* ^date = "2026-11-18"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identifiers of the sampled substance"
* identifier ^slicing.ordered = false
* identifier contains sample 0..1 MS and lot 0..1 MS
* identifier[sample] ^short = "Sample identifier assigned by LIS SES when the sample is added to the sampling act"
* identifier[sample].system 1..1 MS
* identifier[sample].system = $substance-sample-number
* identifier[sample].value 1..1 MS
* identifier[lot] ^short = "Batch (lot, series) number of the sampled product"
* identifier[lot].system 1..1 MS
* identifier[lot].system = $substance-lot-number
* identifier[lot].value 1..1 MS

* instance MS
* instance = true
* instance ^short = "Always true: the resource describes the sampled portion, not the substance in general"

* status MS
* status from SubstanceStatusVS (required)
* status ^short = "active | inactive | entered-in-error"

* category MS
* category from SubstanceSampleCategoryVS (extensible)

* code MS
* code only CodeableReference(UZCoreSubstanceDefinition)
* code from SubstanceNamesVS (extensible)
* code ^short = "What substance this is: the reference list entry it was chosen from"
* code.reference 1..1 MS
* code.reference ^short = "The UZ Core SubstanceDefinition entry: names, classification and manufacturer"
* code.concept ^short = "The codes of the substance, the same as in the SubstanceDefinition: SNOMED CT, or the national code with its broader SNOMED CT concept"

* description ^short = "Free-text description of the sampled portion, such as its kind and packaging"

* expiry MS
* expiry ^short = "Expiry date of the batch"

* quantity MS
* quantity only SimpleQuantity
* quantity ^short = "Amount of the substance taken as the sample, in UCUM units"

* ingredient ^short = "Composition declared in the accompanying document, such as the fat content of milk"
* ingredient.quantity ^short = "Declared amount of the ingredient"
* ingredient.substance[x] only CodeableConcept or Reference(UZCoreSubstance)



Instance: example-substance-pasteurized-milk
InstanceOf: UZCoreSubstance
Title: "Example UZ Core Substance - Pasteurized Milk Sample"
Description: "Example sample of pasteurized drinking milk taken for sanitary and epidemiological examination, with its sample and batch numbers, expiry date, the amount taken and the declared fat content"
Usage: #example
* language = #uz
* identifier[sample].value = "NMN-2026-000123"
* identifier[lot].value = "SER-2611-15"
* instance = true
* status = #active
* category = $sct#255620007
* code.reference = Reference(SubstanceDefinition/example-substance-definition-pasteurized-milk)
* code.concept.coding[0] = $substance-names-cs#sbnam-0008-00013 "Pasterlangan ichimlik suti"
* code.concept.coding[+] = $sct#3718001 "Cow's milk"
* description = "Pasterlangan ichimlik suti, 1 l karton qadoq"
* expiry = "2026-11-25"
* quantity = 1 'L' "L"
* ingredient[0].substanceCodeableConcept.text = "Sut yog'i"
* ingredient[=].quantity.numerator = 3.2 '%' "%"
* ingredient[=].quantity.denominator = 1 '1' "1"

Instance: example-substance-raw-milk
InstanceOf: UZCoreSubstance
Title: "Example UZ Core Substance - Raw Cow's Milk Sample"
Description: "Example sample of raw cow's milk taken for sanitary and epidemiological examination, with only the reference to its definition and the amount taken"
Usage: #example
* language = #uz
* identifier[sample].value = "NMN-2026-000124"
* instance = true
* status = #active
* category = $sct#255620007
* code.reference = Reference(SubstanceDefinition/example-substance-definition-raw-milk)
* quantity = 0.5 'L' "L"
