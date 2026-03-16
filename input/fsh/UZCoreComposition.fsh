Profile: UZCoreComposition
Parent: Composition
Id: uz-core-composition
Title: "UZ Core Composition"
Description: "UZ Core Composition profile, which defines the core elements of a composition, including its structure, content, and metadata. This profile is designed to be used as a foundation for creating specific compositions in various domains, such as healthcare, education, or business. It provides a standardized way to represent and exchange information about compositions, ensuring interoperability and consistency across different systems and applications."
* ^status = #active
* ^date = "2026-03-05"
* ^publisher = "Uzinfocom"

* status and type and category and subject and date and author and title and attester and custodian and section MS
* status from $composition-status-vs
* type from CompositionTypeVS (required)
* category from CompositionCategoryVS

* subject 1..* MS
* subject only Reference(Patient)

* author 1..* MS
* author only Reference(PractitionerRole)

* attester
  * mode 1..1 MS
  * mode from CompositionAttModeVS (preferred)
  * party 0..1 MS
  * party only Reference(PractitionerRole)

* custodian 0..1 MS
* custodian only Reference(Organization)

* section
  * title and code and author and text and entry and emptyReason and orderedBy MS
  * text
    * status 1..1 MS
    * status from CompositionNarrativeStatusVS (required)
    * div 1..1 MS
  * orderedBy from CompositionListOrderVS (preferred)
  * emptyReason from CompositionListEmptyReasonVS
  * author only Reference(PractitionerRole)


Instance: example-medical-composition
InstanceOf: UZCoreComposition
Description: "Example of a medical record composition"
Usage: #example
* language = #uz
* status = #final
* type = CompositionTypeCS#emdoc-0010-0001 "Register of persons who visited (presented to) a medical facility"
* category = CompositionCategoryCS#Comp001-0001 "Tibbiy karta"
* date = "2026-03-05T10:00:00+05:00"
* title = "Bemorning elektron tibbiy kartasi"
* subject = Reference(example-patient)
* author = Reference(example-practitionerrole )

* attester
  * mode = $composition-att-mode#professional
  * party = Reference(example-practitionerrole )

* section
  * title = "Anamnez"
  * code = http://loinc.org#10164-2 "History of Present illness Narrative"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bemorning umumiy holati qoniqarli, shikoyatlar mavjud emas.</div>"
  * orderedBy = $composition-list-order#event-date