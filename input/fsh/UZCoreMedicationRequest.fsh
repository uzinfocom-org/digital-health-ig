Profile: UZCoreMedicationRequest
Parent: MedicationRequest
Id: uz-core-medication-request
Title: "UZ Core Medication Request"
Description: "Uzbekistan Core profile for MedicationRequest, used to order medications for a patient"
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier.type MS
* status MS
* intent MS
* category MS
* medication MS
* dosageInstruction MS
* dosageInstruction.patientInstruction MS
* dosageInstruction.route MS
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.value MS
* dosageInstruction.doseAndRate.unit MS



Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Example of a medication request (prescription)"
Usage: #example
* identifier[0]
  * use = #official
  * type.coding.system = "https://terminology.dhp.uz/CodeSystem/identifier-type"
  * type.coding.code = #PLAC
  * value = "12345678"
* status = #active
* intent = #order
* category.coding.system = "https://terminology.dhp.uz/CodeSystem/medicationrequest-admin-location"
* category.coding.code = #outpatient
* medication.concept.text = "Авитриптан"
* subject = Reference(example-david)
* authoredOn = "2026-01-27T10:00:00+05:00"

* dosageInstruction[0]
  * text = "Принимать по 1 таблетке 2 раза в день во время еды"
  * timing.repeat
    * boundsPeriod.start = "2026-01-27"
    * boundsPeriod.end = "2026-02-01"
    * frequency = 2
    * period = 1
    * periodUnit = #d
    * when = #C // Meal - C (Cibar) or similar standard code
  * route.coding.system = "http://snomed.info/sct"
  * route.coding.code = #26643006 "Oral route" // External example
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "шт"
    * system = "https://terminology.dhp.uz/CodeSystem/units"

* dispenseRequest
  * quantity
    * value = 10
    * unit = "tablet"
  * validityPeriod.start = "2026-01-27"
  * validityPeriod.end = "2026-02-27"
  * dispenser = Reference(tashkent-diseases-hospital)