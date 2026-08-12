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
* identifier ^short = "Order or prescription identifier"

* identifier.use MS
* identifier.use from IdentifierUseVS (required)
* identifier.use ^short = "Defines the type of identifier usage (official, secondary, temporary, old, usual)"


* identifier.type MS
* identifier.type from IdentifierTypeVS (required)
* identifier.type ^short = "Identifier type code"

* identifier.value MS
* identifier.value ^short = "Identifier value"

* status MS
* status from MedicationRequestStatusVS (required)
* status ^short = "Request status"

* statusReason MS
* statusReason from MedicationRequestStatusReasonVS (required)
* statusReason ^short = "Reason for the current status"
* statusReason ^definition = "Reason for the current status. In the DMED (MIS) system, this process is entered manually by physicians and pharmacists."

* statusChanged MS
* statusChanged ^short = "When the status was changed"

* intent MS
* intent from MedicationRequestIntentVS (required)
* intent ^short = "Purpose of the order"

* category MS
* category from MedicationRequestAdminLocationVS (example)
* category ^short = "Medication administration location category"


* medication MS
* medication only CodeableReference(UZCoreMedication)
* medication ^short = "Medication to be taken"
* medication ^definition = "Medication to be taken. When prescribing a medicinal product with a complex composition, the physician specifies its brand name. In other cases, the international nonproprietary name is used."

* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Person for whom the prescription is issued"

* informationSource MS
* informationSource only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or RelatedPerson or UZCoreOrganization)
* informationSource ^short = "Source of medication request information"
* informationSource ^definition = "Used to specify the source of information about the medication request. That is, it identifies who or what source provided the information about this medication."

* extension contains Trustee named trustee 0..* MS
* extension[trustee].valueReference only Reference(UZCoreRelatedPerson or UZCorePractitionerRole)
* extension[trustee] ^short = "Authorized representative {Patronage nurse | Relative}"
* extension[trustee] ^definition = "An authorized representative is a person authorized to collect medications from the pharmacy on behalf of the patient based on a written prescription."

* encounter MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Encounter during which the request was made"

* authoredOn MS
* authoredOn ^short = "When the request was made"

* requester MS
* requester only Reference(UZCorePractitionerRole)
* requester ^short = "Who made the request"

* reason MS
* reason from ConditionCodeVS (required)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation)
* reason ^short = "Reason or indication for prescribing or not prescribing the medication"

* effectiveDosePeriod MS
* effectiveDosePeriod ^short = "Period during which the medication should be taken"

* insurance MS
* insurance only Reference(Coverage or ClaimResponse)
* insurance ^short = "Associated insurance coverage"

* dosageInstruction MS
* dosageInstruction ^short = "Specific medication administration instructions"

* dosageInstruction.patientInstruction MS
* dosageInstruction.patientInstruction ^short = "Text instructions for the patient on dosage and medication administration"

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
* dosageInstruction.timing.repeat.bounds[x] ^short = "Length/range of lengths or (start and/or end) limits"

* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.count ^short = "Duration is defined by count rather than time"

* dosageInstruction.timing.repeat.countMax MS
* dosageInstruction.timing.repeat.countMax ^short = "Maximum allowed number of repetitions"

* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.duration ^short = "Duration of performing the action"

* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.durationUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.repeat.durationUnit ^short = "s | min | h | d | wk | mo | a - unit of time"

* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequency ^short = "Indicates the number of repetitions that should occur within the period"

* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.period ^short = "The duration to which the frequency applies"

* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.repeat.periodUnit ^short = "s | min | h | d | wk | mo | a - unit of time"

* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.timeOfDay ^short = "Time of day for the action"

* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.dayOfWeek from DaysOfWeekVS (required)
* dosageInstruction.timing.repeat.dayOfWeek ^short = "Mon | Tue | Wed | Thu | Fri | Sat | Sun"

* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.repeat.when from EventTimingVS (required)
* dosageInstruction.timing.repeat.when ^short = "Timing event code"

* dosageInstruction.timing.code MS
* dosageInstruction.timing.code from TimingAbbreviationVS (preferred)
* dosageInstruction.timing.code ^short = "C | BID | TID | QID | AM | PM | QD | QOD | +"

* dosageInstruction.route MS
* dosageInstruction.route from RouteCodesVS (required)
* dosageInstruction.route ^short = "Route of medication administration"

* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate ^short = "Amount of medication to be administered"

* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseQuantity.code from UnitOfMeasurementVS (required)

* dosageInstruction.doseAndRate.doseQuantity.value MS
* dosageInstruction.doseAndRate.doseQuantity.value ^short = "Medication quantity"

* dosageInstruction.doseAndRate.doseQuantity.unit MS
* dosageInstruction.doseAndRate.doseQuantity.unit ^short = "Unit of measure for the quantity"

* dispenseRequest MS
* dispenseRequest ^short = "Authorization for medication dispensing"

* dispenseRequest.quantity MS
* dispenseRequest.quantity ^short = "Quantity that may be dispensed from the total"

* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod ^short = "Period during which dispensing is authorized"

* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.start ^short = "Prescription issue date"

* dispenseRequest.validityPeriod.end MS
* dispenseRequest.validityPeriod.end ^short = "Prescription expiration date"

* dispenseRequest.dispenser MS
* dispenseRequest.dispenser only Reference(UZCoreOrganization)
* dispenseRequest.dispenser ^short = "Pharmacy where this prescription can be dispensed"

* note MS
* note ^short = "Prescription information"


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
  * route.coding[0]
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/route-codes-cs" 
    * code = #pharm-0001-0062 
    * display = "External"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "dona"
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/unit-of-measurement-cs"
    * code = #252

* dispenseRequest
  * quantity.value = 10
  * validityPeriod
    * start = "2026-01-27"
    * end = "2026-02-27"
