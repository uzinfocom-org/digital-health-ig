Profile: UZCoreCommunication
Parent: Communication
Id: uz-core-communication
Title: "UZ Core Communication"
Description: "Uzbekistan Core Communication profile, used to record a public health alert shown to patients in the Patient Portal, such as an alert to the residents of a zone with an assigned alert level or to the members of an organization employee group"
* ^experimental = true
* ^status = #active
* obeys uzcore-comm-1

* status MS
* status from ProcedureEventStatusVS (required)
* status ^short = "Status of the alert, for example completed when it has been sent"

* category 1..* MS
* category ^short = "Kind of alert and the zone alert level"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "Kind and level of the alert from the national value sets; codes from other systems are allowed alongside them"
* category ^slicing.ordered = false
* category contains
    type 1..1 MS and
    alertLevel 0..1 MS
* category[type] from CommunicationCategoryVS (required)
* category[type].coding.system = Canonical(CommunicationCategoryCS)
* category[type] ^short = "Who the alert is addressed to: the residents of a risk zone or an organization employee group"
* category[alertLevel] from AlertLevelVS (required)
* category[alertLevel].coding.system = Canonical(AlertLevelCS)
* category[alertLevel] ^short = "Zone alert level under the national alert regulation: I red, II orange, III yellow, IV blue; required for an alert to the residents of a zone; keeps the level at the time of sending if the zone level changes later"

* about MS
* about only Reference(UZCoreLocation or UZCoreGroup)
* about ^short = "What the alert is about: the risk zone for an alert to its residents, or the employee group for an alert to its members"

* sent 1..1 MS
* sent ^short = "When the alert was sent; the patient sees it in the Patient Portal"

* recipient 1..* MS
* recipient only Reference(UZCorePatient)
* recipient ^short = "Who receives the alert: each patient living in the risk zone, or each member of the employee group"

* reason MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation)
* reason from ConditionCodeVS (preferred)
* reason ^short = "Why the alert was sent: a disease code (ICD-10 or SNOMED CT) or a reference to a confirmed diagnosis or a sample test result, such as an outbreak of an intestinal infection"

* payload 1..* MS
* payload ^short = "Content of the alert"
* payload.content[x] only CodeableConcept
* payload.content[x] MS
* payload.content[x] ^short = "Content of the alert; no codes are used, the text is sent in contentCodeableConcept.text"
* payload.contentCodeableConcept.text 1..1 MS
* payload.contentCodeableConcept.text ^short = "Text of the alert the patient sees in the Patient Portal"

Invariant: uzcore-comm-1
Description: "An alert to the residents of a zone carries its alert level"
* severity = #error
* expression = "category.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs' and code = 'comcat-0001-00001').exists() implies category.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/alert-level-cs').exists()"


Instance: example-mahalla-zone-location
InstanceOf: UZCoreLocation
Usage: #example
Title: "Example UZ Core Location - Mahalla Zone"
Description: "A mahalla for which a manager has set a public health alert level after confirmed cases of an intestinal infection."
* language = #uz
* status = #active
* mode = #instance
* name = "Bunyodkor mahallasi"
* address.text = "Toshkent shahar, Chilonzor tumani, Bunyodkor mahallasi"


Instance: example-zone-alert-communication
InstanceOf: UZCoreCommunication
Usage: #example
Title: "Example UZ Core Communication - Zone Residents Alert"
Description: "An orange-level alert shown in the Patient Portal to a patient who lives in a mahalla with confirmed cases of an intestinal infection."
* language = #uz
* status = #completed
* category[type] = CommunicationCategoryCS#comcat-0001-00001 "Hudud aholisini ogohlantirish"
* category[alertLevel] = AlertLevelCS#alrtlv-0001-00002 "II - To'q sariq"
* about = Reference(Location/example-mahalla-zone-location)
* sent = "2026-11-18T10:00:00+05:00"
* recipient = Reference(Patient/example-salim)
* reason.concept.text = "Ichak infeksiyasi tarqalishi"
* payload.contentCodeableConcept.text = "Mahallangizda ichak infeksiyasi aniqlandi. Faqat qaynatilgan suv iching."


Instance: example-employee-group
InstanceOf: UZCoreGroup
Usage: #example
Title: "Example UZ Core Group - Organization Employee Group"
Description: "Enumerated group of employees of an organization, created by a manager from confirmed cases of the same diagnosis."
* language = #uz
* active = true
* type = #person
* membership = #enumerated
* name = "Tashkilot xodimlari guruhi"
* managingEntity = Reference(Organization/example-organization)
* member[0].entity = Reference(Patient/example-salim)
* member[0].period.start = "2026-11-17"


Instance: example-employee-group-alert-communication
InstanceOf: UZCoreCommunication
Usage: #example
Title: "Example UZ Core Communication - Employee Group Alert"
Description: "An alert sent by a manager to the members of an organization employee group."
* language = #uz
* status = #completed
* category[type] = CommunicationCategoryCS#comcat-0001-00002 "Tashkilot xodimlari guruhini ogohlantirish"
* about = Reference(Group/example-employee-group)
* sent = "2026-11-18T11:00:00+05:00"
* recipient = Reference(Patient/example-salim)
* payload.contentCodeableConcept.text = "Tashkilotingizda ichak infeksiyasi aniqlandi. Belgilar bo'lsa, shifokorga boring."
