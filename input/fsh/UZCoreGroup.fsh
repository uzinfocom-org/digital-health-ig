Profile: UZCoreGroup
Parent: Group
Id: uz-core-group
Title: "UZ Core Group"
Description: "Uzbekistan Core Group profile, used to represent a defined collection of entities (for example patients, practitioners or specimens), such as screening, vaccination and donation target groups and their outcome cohorts"
* ^experimental = true
* ^status = #active

* identifier MS
* active MS

* type MS
* type ^short = "Identifies the broad classification of the kind of resources the group includes: person | animal | practitioner | device | careteam | healthcareservice | location | organization | relatedperson | specimen"
* type from GroupTypeVS (required)

* membership MS
* membership ^short = "Basis for membership: definitional (defined by characteristics) or enumerated (defined by listed members)"
* membership from GroupMembershipBasisVS (required)

* code MS
* code ^short = "Purpose or kind of the group, for example a screening, vaccination or donation target group"
* code from GroupKindVS (extensible)

* name MS
* description MS
* quantity MS

* managingEntity MS
* managingEntity only Reference(UZCoreOrganization or UZCoreRelatedPerson or UZCorePractitioner or UZCorePractitionerRole)

* characteristic MS
* characteristic ^short = "Include or exclude members of the group by a shared trait"
* characteristic.code MS
* characteristic.code ^short = "Kind of characteristic used to define membership"
* characteristic.code from GroupCharacteristicKindVS (extensible)
* characteristic.value[x] MS
* characteristic.value[x] ^short = "Value held by the characteristic. For diagnosis-based characteristics, ICD-10 codes are recommended"
* characteristic.value[x] from $icd-10-vs (example)
* characteristic.exclude MS
* characteristic.period MS

* member MS
* member.entity MS
* member.entity ^short = "Reference to the group member"
* member.entity only Reference(CareTeam or Device or UZCoreGroup or UZCoreHealthcareService or UZCoreLocation or UZCoreOrganization or UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or UZCoreSpecimen)
* member.period MS
* member.inactive MS


Instance: example-diabetes-screening-target-group
InstanceOf: UZCoreGroup
Title: "Example Uz Core Group - Type 2 diabetes screening target group"
Description: "Definitional group describing adults with elevated body mass index targeted for type 2 diabetes screening, excluding those already diagnosed with type 2 diabetes"
Usage: #example
* language = #en
* active = true
* type = #person
* membership = #definitional
* code = GroupKindCS#group-0001-00001
* code.text = "Screening target group"
* name = "Type 2 diabetes screening target group"
* description = "Adults with a body mass index of 25 kg/m2 or higher targeted for type 2 diabetes screening, excluding patients who already have a diagnosis of type 2 diabetes mellitus"
* quantity = 1875
* managingEntity = Reference(example-organization)
* characteristic[0].code = $loinc#39156-5
* characteristic[0].code.text = "Body mass index (BMI)"
* characteristic[0].valueRange.low.value = 25
* characteristic[0].valueRange.low.unit = "kg/m2"
* characteristic[0].valueRange.low.system = "http://unitsofmeasure.org"
* characteristic[0].valueRange.low.code = #kg/m2
* characteristic[0].exclude = false
* characteristic[1].code = GroupCharacteristicKindLocalCS#diagnosis
* characteristic[1].code.text = "Diagnosis"
* characteristic[1].valueCodeableConcept = $icd-10#E11 "Type 2 diabetes mellitus"
* characteristic[1].exclude = true


Instance: example-measles-vaccinated-group
InstanceOf: UZCoreGroup
Title: "Example Uz Core Group - Measles-vaccinated patients"
Description: "Enumerated group listing patients who received a measles-containing vaccine at the polyclinic during the first quarter of 2026"
Usage: #example
* language = #en
* active = true
* type = #person
* membership = #enumerated
* code = GroupKindCS#group-0001-00008
* code.text = "Vaccinated patients"
* name = "Measles-vaccinated patients cohort"
* description = "Patients who received a measles-containing vaccine at the polyclinic during the first quarter of 2026"
* quantity = 2
* managingEntity = Reference(example-organization)
* member[0].entity = Reference(example-salim)
* member[0].period.start = "2026-01-15"
* member[0].inactive = false
* member[1].entity = Reference(example-emma)
* member[1].period.start = "2026-02-03"
* member[1].inactive = false
