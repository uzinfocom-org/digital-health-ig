Profile: UZCoreCommunication
Parent: Communication
Id: uz-core-communication
Title: "UZ Core Communication"
Description: "Uzbekistan Core Communication profile, used to record information conveyed to patients, practitioners or organizations, such as a public health alert shown to patients in the Patient Portal"
* ^experimental = true
* ^status = #active
* obeys uzcore-comm-1

* status MS
* status from ProcedureEventStatusVS (required)
* status ^short = "Status of the communication, for example completed once it has been sent"

* category MS
* category ^short = "Kind of communication, such as a public health alert, and the zone alert level of an alert"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Kind of communication from the HL7 communication category code system and the level of a public health alert from the national value set; codes from other systems are allowed alongside them"
* category ^slicing.ordered = false
* category contains
    type 0..1 MS and
    alertLevel 0..1 MS
* category[type] from CommunicationCategoryVS (required)
* category[type].coding.system = $communication-category
* category[type] ^short = "Kind of communication, such as alert for a public health alert"
* category[alertLevel] from AlertLevelVS (required)
* category[alertLevel].coding.system = Canonical(AlertLevelCS)
* category[alertLevel] ^short = "Zone alert level under the national alert regulation: I red, II orange, III yellow, IV blue; required for an alert to the residents of a zone; keeps the level at the time of sending if the zone level changes later"

* about MS
* about ^short = "What the communication is about; for a public health alert, the risk zone (Location) or the employee group (Group)"

* sent 1..1 MS
* sent ^short = "When the communication was sent; a patient sees an alert in the Patient Portal from this time"

* recipient 1..* MS
* recipient only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* recipient ^short = "Who receives the communication; for a public health alert, each patient living in the risk zone or each member of the employee group"

* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation)
* reason from ConditionCodeVS (preferred)
* reason ^short = "Why the communication was sent: a disease code (ICD-10 or SNOMED CT) or a reference to a confirmed diagnosis or a sample test result, such as an outbreak of an intestinal infection"

* payload 1..* MS
* payload ^short = "Content of the communication"
* payload.content[x] MS
* payload.content[x] ^short = "Content of the communication; the text of a public health alert goes in contentCodeableConcept.text"
* payload.contentCodeableConcept.text 1..1 MS
* payload.contentCodeableConcept.text ^short = "Text of the communication, such as the alert text a patient sees in the Patient Portal"

Invariant: uzcore-comm-1
Description: "An alert about a zone (Location) carries its alert level"
* severity = #error
* expression = "about.where(reference.startsWith('Location/')).exists() implies category.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/alert-level-cs').exists()"

Instance: example-zone-alert-communication
InstanceOf: UZCoreCommunication
Usage: #example
Title: "Example UZ Core Communication - Zone Residents Alert"
Description: "An orange-level alert shown in the Patient Portal to a patient who lives in a mahalla with confirmed cases of an intestinal infection."
* language = #uz
* status = #completed
* category[type] = $communication-category#alert
* category[alertLevel] = alert-level-cs#alrtlv-0001-00002 "II - To'q sariq"
* about = Reference(Location/example-mahalla-zone-location)
* sent = "2026-11-18T10:00:00+05:00"
* recipient = Reference(Patient/example-salim)
* reason.concept.text = "Ichak infeksiyasi tarqalishi"
* payload.contentCodeableConcept.text = "Mahallangizda ichak infeksiyasi aniqlandi. Faqat qaynatilgan suv iching."


Instance: example-employee-group-alert-communication
InstanceOf: UZCoreCommunication
Usage: #example
Title: "Example UZ Core Communication - Employee Group Alert"
Description: "An alert sent by a manager to the members of an organization employee group."
* language = #uz
* status = #completed
* category[type] = $communication-category#alert
* about = Reference(Group/example-employee-group)
* sent = "2026-11-18T11:00:00+05:00"
* recipient = Reference(Patient/example-salim)
* payload.contentCodeableConcept.text = "Tashkilotingizda ichak infeksiyasi aniqlandi. Belgilar bo'lsa, shifokorga boring."
