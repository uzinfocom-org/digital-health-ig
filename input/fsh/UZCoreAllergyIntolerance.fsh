Profile: UZCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: uz-core-allergy-intolerance
Title: "UZ Core AllergyIntolerance"
Description: "Uzbekistan Core profile for AllergyIntolerance, representing clinical records of allergy or intolerance within the national health information exchange. "
* ^experimental = true
* ^status = #active
* ^date = "2025-08-12"
* ^publisher = "Uzinfocom"
//rules
* identifier MS
  * ^short = "Identifier associated with this AllergyIntolerance"
* code MS
  * ^short = "Code identifying the allergy or intolerance. This is the allergen itself, i.e., the substance to which the patient is allergic."
* code from AllergenCodesVS (extensible)
* type MS
  * ^short = "The type field in the Uz DHP AllergyIntolerance resource indicates whether the patient's condition is an allergy or an intolerance."
* type from AllergyTypesVS (required)
* clinicalStatus MS
  * ^short = "This field indicates the current clinical status of the allergy or intolerance."
* clinicalStatus from AllergyClinicalStatusVS (required)
* verificationStatus MS
  * ^short = "This field reflects how well the reported allergy has been confirmed."
* verificationStatus from AllergyVerificationStatusVS (required)
* category MS
* category from AllergyCategoryVS (required)
* patient MS
* patient only Reference(UZCorePatient)
* encounter MS
// TODO UzCoreEncounter
* encounter only Reference(UZCoreEncounter)
* onset[x] MS
* extension contains $allergyintolerance-abatement named abatement 0..1 MS
* reaction MS
  * extension contains
      $openEHR-administration named administration 0..1 MS
  * extension[administration] ^short = "Medication administration associated with this allergic reaction"
  * extension[administration].valueReference only Reference(UZCoreMedicationAdministration)
  * severity MS
  * severity from AllergyReactionSeverityVS (required)
  * manifestation MS
  * manifestation from ReactionManifestationVS (preferred)
  * manifestation ^slicing.discriminator.type = #value
  * manifestation ^slicing.discriminator.path = "concept.coding.system"
  * manifestation ^slicing.rules = #open
  * manifestation ^slicing.description = "Manifestations from the national value set; codes from other systems are allowed alongside them"
  * manifestation ^slicing.ordered = false
  * manifestation contains dhpManifestation 0..* MS
  * manifestation[dhpManifestation] from ReactionManifestationVS (required)
  * manifestation[dhpManifestation].concept.coding.system = Canonical(ReactionManifestationCS)
  * manifestation[dhpManifestation] ^short = "Reaction manifestation from the national value set"
  * substance MS
  * substance from ReactionSubstanceVS (extensible)

//test
Instance: example-grass-pollen-allergy
InstanceOf: UZCoreAllergyIntolerance
Usage: #example
Title: "Example UZ Core AllergyIntolerance - Grass Pollen Allergy"
Description: "Example instance conforming to UZCoreAllergyIntolerance."
//* meta.profile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-allergy-intolerance"
//* identifier.system = "https://terminology.dhp.uz/AllergyIntolerance"
//* identifier.value = "AI-0001"

* clinicalStatus = $allergy-clinical#active "Active"
* verificationStatus = $allergy-verification#confirmed "Confirmed"
* type = $allergy-intolerance-type#allergy "Allergy"
* category = $allergy-category#environment "Environment"

* code = allergen-codes-cs#aller-0010-00001 "Grass pollen"

* patient = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)

* onsetDateTime = "2025-07-10"

* extension[abatement].valueString = "Symptoms resolved after antihistamine course"
// Реакция
* reaction.severity = #severe
* reaction.manifestation[0] = allergy-reaction-manifestation-cs#aller-0006-00004 "Shortness of breath"
* reaction.substance = allergy-reaction-substance-cs#aller-0010-00031 "Walnut, pollen (Jug r_pollen)"

Instance: example-analgesic-allergy
InstanceOf: UZCoreAllergyIntolerance
Usage: #example
Title: "Example UZ Core AllergyIntolerance - Analgesic Allergy"
Description: "Skin rash after a paracetamol dose, linked to the administration that caused it."

* clinicalStatus = $allergy-clinical#active "Active"
* verificationStatus = $allergy-verification#unconfirmed "Unconfirmed"
* type = $allergy-intolerance-type#allergy "Allergy"
* category = $allergy-category#medication "Medication"

* code = allergen-codes-cs#aller-0010-00343 "Allergic reaction caused by analgesic"

* patient = Reference(Patient/example-salim)

* onsetDateTime = "2026-08-28"

* reaction.severity = #mild
* reaction.manifestation[0] = allergy-reaction-manifestation-cs#aller-0009-00002 "Skin rash"
* reaction.extension[administration].valueReference = Reference(example-paracetamol-administration)




