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
* identifier.use MS
* identifier.type MS
* identifier.value MS

* status MS
* statusReason MS
* statusChanged MS
* intent MS
* category MS
* medication MS
* subject MS
* informationSource MS
* extension contains trustee named trustee 0..* MS
* extension[trustee].url = "http://example.org/fhir/StructureDefinition/trustee"
* extension[trustee].valueReference MS
* encounter MS
* authoredOn MS
* requester MS
* reason MS
* effectiveDosePeriod MS
* insurance MS

* dosageInstruction MS
* dosageInstruction.patientInstruction MS
* dosageInstruction.timing MS
* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat.bounds[x] MS
* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.countMax MS
* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.code MS

* dosageInstruction.route MS
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseQuantity.value MS
* dosageInstruction.doseAndRate.doseQuantity.unit MS

* dispenseRequest MS
* dispenseRequest.quantity MS
* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.end MS
* dispenseRequest.dispenser MS

* note MS


* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* statusReason from MedicationRequestStatusReasonVS (required)
* intent from MedicationRequestIntentVS (required)
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)


Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Пример с одной инструкцией"
Usage: #example

* identifier
  * use = #official
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC "Placer Identifier"
  * value = "12345678"

* status = #active
* intent = #order
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient
* medication.concept.text = "авитриптан"

// Extension: trustee
* extension[trustee].url = "http://dmed.uz/"
* extension[trustee].valueReference.display = "Ruslan Isakhov (Father)"

* authoredOn = "2026-03-02T06:44:12+05:00"
* reason.concept.text = "headache"
* effectiveDosePeriod.start = "2026-03-02" 
// Обозначено как 3 month, для примера:
* effectiveDosePeriod.end = "2026-06-02"

* dosageInstruction[0]
  * timing
    * repeat
      * boundsPeriod
        * start = "2026-01-27"
        * end = "2026-02-01" // 5d из таблицы
      * count = 5
      * countMax = 5
      * duration = 6
      * durationUnit = #mo
      * frequency = 2
      * period = 1
      * periodUnit = #d
      * timeOfDay[0] = "08:00:00"
      * timeOfDay[1] = "16:00:00"
      * dayOfWeek[0] = #mon
    * code.text = "Two times a day at institution specified time"
  * route.text = "External"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "шт"

* dispenseRequest
  * quantity.value = 10
  * validityPeriod
    * start = "2026-01-27"
    * end = "2026-02-27"