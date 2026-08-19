Profile: UZCoreMedicationRequest
Parent: MedicationRequest
Id: uz-core-medicationrequest
Title: "UZ Core MedicationRequest"
Description: "Uzbekistan Core profile for MedicationRequest, used to order medications for a patient"
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Prescription ID in DMED or local MIS"

* identifier.use MS
* identifier.use from IdentifierUseVS (required)


* identifier.type MS
* identifier.type from IdentifierTypeVS (required)

* identifier.value MS

* status MS
* status from MedicationRequestStatusVS (required)

* statusReason MS
* statusReason from MedicationRequestStatusReasonVS (required)
* statusReason ^short = "Reason for prescription status in DMED"
* statusReason ^definition = "Reason for the current prescription status, entered manually by physicians or pharmacists in DMED"

* statusChanged MS

* intent MS
* intent from MedicationRequestIntentVS (required)

* category MS
* category from MedicationRequestAdminLocationVS (example)


* medication MS
* medication only CodeableReference(UZCoreMedication)

* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Patient for whom the prescription is written"

* informationSource MS
* informationSource only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or RelatedPerson or UZCoreOrganization)

* extension contains Trustee named trustee 0..* MS
* extension[trustee].valueReference only Reference(UZCoreRelatedPerson or UZCorePractitionerRole)
* extension[trustee] ^short = "Authorized representative to pick up the medication, either a patronage nurse or a relative"
* extension[trustee] ^definition = "An authorized representative is a person authorized to collect medications from the pharmacy on behalf of the patient based on a written prescription."

* encounter MS
* encounter only Reference(UZCoreEncounter)

* authoredOn MS


* requester MS
* requester only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson)
* requester ^short = "Healthcare provider or organization issuing the prescription"

* reason MS
* reason from ConditionCodeVS (preferred)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation)

* effectiveDosePeriod MS

* insurance MS
* insurance only Reference(Coverage or UZCoreClaimResponse)

* dosageInstruction MS

* dosageInstruction.patientInstruction MS

* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "This section contains a few types of mechanism"
* dosageInstruction.timing ^definition = """SHOULD BE USED:
- frequency should be used with period and periodUntil
- frequency should be used with timeOfDay
SHOULD NOT BE USED:
- 'when' should not be used with 'timeOfDay'
- event should not be used with bounds[x]
- bounds[x] should not be used with count
- event should not be used with period and Frequency
- event should not be used with timeOfDay and DayOfWeek
- period should not be used if timeOfDay + Exact Times (Count)
- period should not be used if when + countMax
- period should not be used with boundsRange
- 'dayOfWeek' and 'periodUnit' should not be used together
- dayOfWeek and timeOfDay should not be used with count
- dayOfWeek should not be used with boundsRange
- frequency should not be used with count alone unless there is a cycle"""

* dosageInstruction.timing.repeat MS


* dosageInstruction.timing.repeat.bounds[x] MS

* dosageInstruction.timing.repeat.count MS

* dosageInstruction.timing.repeat.countMax MS

* dosageInstruction.timing.repeat.duration MS

* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.durationUnit from UnitsOfTimeVS (required)

* dosageInstruction.timing.repeat.frequency MS

* dosageInstruction.timing.repeat.period MS

* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit from UnitsOfTimeVS (required)

* dosageInstruction.timing.repeat.timeOfDay MS

* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.dayOfWeek from DaysOfWeekVS (required)
* dosageInstruction.timing.repeat.dayOfWeek ^short = "mon | tue | wed | thu | fri | sat | sun"

* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.repeat.when from EventTimingVS (required)

* dosageInstruction.timing.code MS
* dosageInstruction.timing.code from TimingAbbreviationVS (preferred)
* dosageInstruction.timing.code ^short = "C | BID | TID | QID | AM | PM | QD | QOD | +"

* dosageInstruction.route MS
* dosageInstruction.route from RouteCodeVS (extensible)
* dosageInstruction.route ^short = "Route of medication administration"

* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate ^short = "Amount of medication to be administered"

* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseQuantity.code from UCUMUnitsSupplementVS (extensible)

* dosageInstruction.doseAndRate.doseQuantity.value MS

* dosageInstruction.doseAndRate.doseQuantity.unit MS

* dispenseRequest MS

* dispenseRequest.quantity MS

* dispenseRequest.validityPeriod MS

* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.start ^short = "Prescription issue date"

* dispenseRequest.validityPeriod.end MS
* dispenseRequest.validityPeriod.end ^short = "Prescription expiration date"

* dispenseRequest.dispenser MS
* dispenseRequest.dispenser only Reference(UZCoreOrganization)
* dispenseRequest.dispenser ^short = "Pharmacy where this prescription can be dispensed"

* note MS
* note ^short = "Additional notes or instructions for the pharmacist/patient"


Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Example with a single instruction"
Usage: #example

* identifier
  * use = #official
  * type = $identifier-type#PLAC "Placer Identifier"
  * value = "12345678"

* status = #active
* intent = #order
* category = $medicationrequest-admin-location#outpatient
* medication = Reference(example-medication)
* subject = Reference(example-salim)

// Extension: trustee
// * extension[trustee].url = "http://dmed.uz/"
* extension[trustee].valueReference.display = "Ruslan Isakhov (Father)"

* authoredOn = "2026-03-02T06:44:12+05:00"
// * reason.concept.text = "headache"
* reason = $sct#25064002 "Headache"
* effectiveDosePeriod.start = "2026-03-02" 
// Обозначено как 3 month, для примера:
* effectiveDosePeriod.end = "2026-09-02"

* dosageInstruction[0]
  * timing
    * repeat
      * boundsPeriod
        * start = "2026-03-02"
        * end = "2026-09-02" // 5d из таблицы
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
  * route.coding[0]
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/route-codes-cs" 
    * code = #pharm-0001-0062 
    * display = "External"
  * doseAndRate[0].doseQuantity
    * value = 500
    * unit = "mg"
    * system = "http://unitsofmeasure.org"
    * code = #mg

* dispenseRequest
  * quantity.value = 10
  * validityPeriod
    * start = "2026-03-02"
    * end = "2026-09-02"
