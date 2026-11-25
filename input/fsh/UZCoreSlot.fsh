Profile: UZCoreSlot
Parent: Slot
Id: uz-core-slot
Title: "UZ Core Slot"
Description: "Uzbekistan Core Slot profile, used to represent a period of time in a schedule that can be booked for an appointment or is busy or blocked, such as a 30-minute visit to a general practitioner offered for online booking"
* ^experimental = true
* ^status = #active
* ^date = "2026-11-25"
* ^publisher = "Uzinfocom"

* obeys uzcore-slot-1

* serviceCategory MS
* serviceCategory from AppointmentServiceCategoryVS (preferred)
* serviceCategory ^short = "Broad category of the service that can be booked in this slot, such as a consultation or diagnostics"

* specialty MS
* specialty from ProfessionSpecializationVS (preferred)
* specialty ^short = "Medical specialty of the practitioner needed for the service, such as general practice"

* appointmentType MS
* appointmentType from AppointmentTypeVS (preferred)
* appointmentType ^short = "Kind of appointment the slot is for: routine, walk-in, check-up, follow-up or emergency"

* schedule MS
* schedule ^short = "Schedule the slot belongs to: whose time it is, such as a practitioner's or a diagnostic room's"

* status MS
* status from SlotStatusVS (required)
* status ^short = "Whether the slot is free or busy: free, busy, busy-unavailable, busy-tentative or entered-in-error"

* start MS
* start ^short = "When the slot begins, with the time zone offset, such as +05:00"
* end MS
* end ^short = "When the slot ends, with the time zone offset, such as +05:00; later than start"

* overbooked MS
* overbooked ^short = "True if more appointments are booked into the slot than it allows"

* comment MS
* comment ^short = "Free-text comment about the slot, such as booking by prior appointment only"

Invariant: uzcore-slot-1
Description: "A slot ends after it starts"
* severity = #error
* expression = "end > start"

Instance: example-schedule
InstanceOf: Schedule
Usage: #example
Title: "Example Schedule - General Practitioner"
Description: "Schedule of a general practitioner whose slots are offered for appointment booking."
* language = #uz
* active = true
* serviceCategory = appointment-service-category-cs#270 "Konsultatsiya"
* specialty = profession-specialization-cs#394814009 "Umumiy amaliyot"
* actor = Reference(PractitionerRole/example-practitionerrole)
* planningHorizon.start = "2026-11-02T08:00:00+05:00"
* planningHorizon.end = "2026-11-30T18:00:00+05:00"

Instance: example-slot-free
InstanceOf: UZCoreSlot
Usage: #example
Title: "Example UZ Core Slot - Free Consultation Slot"
Description: "A free 30-minute routine consultation slot in a general practitioner's schedule, open for booking."
* language = #uz
* serviceCategory = appointment-service-category-cs#270 "Konsultatsiya"
* specialty = profession-specialization-cs#394814009 "Umumiy amaliyot"
* appointmentType = $v2-0276#ROUTINE
* schedule = Reference(Schedule/example-schedule)
* status = #free
* start = "2026-11-02T09:00:00+05:00"
* end = "2026-11-02T09:30:00+05:00"

Instance: example-slot-busy
InstanceOf: UZCoreSlot
Usage: #example
Title: "Example UZ Core Slot - Booked Follow-up Slot"
Description: "A 30-minute follow-up slot in a general practitioner's schedule that has already been booked."
* language = #uz
* serviceCategory = appointment-service-category-cs#270 "Konsultatsiya"
* specialty = profession-specialization-cs#394814009 "Umumiy amaliyot"
* appointmentType = $v2-0276#FOLLOWUP
* schedule = Reference(Schedule/example-schedule)
* status = #busy
* start = "2026-11-02T09:30:00+05:00"
* end = "2026-11-02T10:00:00+05:00"
* overbooked = false
* comment = "Oldindan yozilish bo'yicha qabul"
