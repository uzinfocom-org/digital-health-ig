Profile: UZCoreSchedule
Parent: Schedule
Id: uz-core-schedule
Title: "UZ Core Schedule"
Description: "Uzbekistan Core Schedule profile, used to represent the availability of practitioners, rooms, devices or services over a planning horizon, whose bookable periods are UZ Core Slots, such as the schedule of a general practitioner's office offered for online booking"
* ^experimental = true
* ^status = #active
* ^date = "2026-11-26"
* ^publisher = "Uzinfocom"

* active MS
* active ^short = "Whether the schedule is in use; false when it is no longer used"

* serviceCategory MS
* serviceCategory from AppointmentServiceCategoryVS (preferred)
* serviceCategory ^short = "Broad category of the services the schedule offers, such as a consultation or diagnostics"

* specialty MS
* specialty from ProfessionSpecializationVS (preferred)
* specialty ^short = "Medical specialty needed for the services, such as general medical practice"

* name MS
* name ^short = "Name of the schedule shown to users, such as the general practitioner's office schedule"

* actor MS
* actor only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or CareTeam or UZCoreRelatedPerson or UZCoreDevice or UZCoreHealthcareService or UZCoreLocation)
* actor ^short = "Whose availability the schedule holds: a practitioner role, a room (Location), a device or a healthcare service"

* planningHorizon MS
* planningHorizon ^short = "Period the schedule gives availability for; the bookable periods within it are UZ Core Slots"

* comment MS
* comment ^short = "Free-text comment about the schedule, such as booking by prior appointment only"

Instance: example-gp-schedule
InstanceOf: UZCoreSchedule
Usage: #example
Title: "Example UZ Core Schedule - General Practitioner's Office"
Description: "Schedule of a general practitioner's office for one working day, offered for appointment booking."
* language = #uz
* active = true
* serviceCategory = appointment-service-category-cs#270 "Konsultatsiya"
* specialty = profession-specialization-cs#408443003 "Umumiy tibbiy amaliyot"
* name = "Umumiy amaliyot kabineti jadvali"
* name.extension[+].url = $translation-extension
* name.extension[=].extension[0].url = "lang"
* name.extension[=].extension[=].valueCode = #ru
* name.extension[=].extension[+].url = "content"
* name.extension[=].extension[=].valueString = "Расписание кабинета общей практики"
* actor[0] = Reference(PractitionerRole/example-practitionerrole)
* actor[+] = Reference(Location/example-location)
* planningHorizon.start = "2026-11-02T08:00:00+05:00"
* planningHorizon.end = "2026-11-02T18:00:00+05:00"
* comment = "Oldindan yozilish bo'yicha qabul"
