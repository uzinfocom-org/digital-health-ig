Profile: UZCoreMedicationRequest
Parent: MedicationRequest
Id: uz-core-medication-request
Title: "UZ Core MedicationRequest"
Description: "Uzbekistan Core MedicationRequest profile, used to order medications for a patient"
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Identifier for the order or prescription"

* identifier.use MS
* identifier.use ^short = "Defines how the identifier is used (official, secondary, temporary, old, usual)"

* identifier.type MS
* identifier.type ^short = "Identifier type code"

* identifier.value MS
* identifier.value ^short = "The identifier value"

* status MS
* status ^short = "Status of the request"

* statusReason MS
* statusReason ^short = "Reason for the current status"
* statusReason ^definition = "Reason for the current status. In the DMED (MIS) system this is entered manually by physicians and pharmacists"

* statusChanged MS

* intent MS
* intent ^short = "Intent of the order"

* category MS
* category ^short = "Category of the location where the medication is administered"

* medication MS
* medication ^definition = "Medication to be taken. When prescribing a compound medicinal product, the physician specifies its trade name. In other cases the international nonproprietary name (INN) is used"

* subject MS
* subject ^short = "The person for whom the prescription is issued"

* informationSource MS
* informationSource ^short = "Source of information about the medication order"
* informationSource ^definition = "Used to indicate the source of information about the medication order, i.e. who or what source provided the information about this medication"

* extension contains trustee named trustee 0..* MS
* extension[trustee] ^short = "Trustee {patronage nurse | relative}"
* extension[trustee] ^definition = "A trustee is a person authorized to collect medication from the pharmacy on behalf of the patient based on a written prescription"

* encounter MS
* encounter ^short = "Encounter during which the request was made"

* authoredOn MS
* authoredOn ^short = "When the request was made"

* requester MS
* requester ^short = "Who made the request"

* reason MS

* effectiveDosePeriod MS
* effectiveDosePeriod ^short = "Period over which the medication should be taken"

* insurance MS

* dosageInstruction MS
* dosageInstruction ^short = "Specific instructions for taking the medication"

* dosageInstruction.patientInstruction MS
* dosageInstruction.patientInstruction ^short = "Patient-facing free-text dosage and administration instructions"

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
* dosageInstruction.timing.repeat.bounds[x] ^short = "Length/range of lengths, or (start and/or end) limits"

* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.count ^short = "Duration is determined by a count rather than by time"

* dosageInstruction.timing.repeat.countMax MS
* dosageInstruction.timing.repeat.countMax ^short = "Maximum number of repetitions allowed"

* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.duration ^short = "Duration of the action"

* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.durationUnit ^short = "s | min | h | d | wk | mo | a - unit of time"

* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequency ^short = "Indicates the number of repetitions that should occur within a period"

* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.period ^short = "The duration to which the frequency applies"

* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit ^short = "s | min | h | d | wk | mo | a - unit of time"

* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.timeOfDay ^short = "Time of day for the action"

* dosageInstruction.timing.repeat.dayOfWeek MS

* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.repeat.when ^short = "Code for the time period of occurrence"

* dosageInstruction.timing.code MS
* dosageInstruction.timing.code ^short = "C | BID | TID | QID | AM | PM | QD | QOD | +"

* dosageInstruction.route MS
* dosageInstruction.route ^short = "Route of administration of the medication"

* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate ^short = "Amount of medication to be administered"

* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseQuantity.value MS
* dosageInstruction.doseAndRate.doseQuantity.value ^short = "Amount of medication"

* dosageInstruction.doseAndRate.doseQuantity.unit MS
* dosageInstruction.doseAndRate.doseQuantity.unit ^short = "Unit of measure for the amount"

* dispenseRequest MS
* dispenseRequest ^short = "Authorization for the supply of the medication"

* dispenseRequest.quantity MS
* dispenseRequest.quantity ^short = "Amount of the total that can be dispensed at once"

* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod ^short = "Period for which the supply is authorized"

* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.start ^short = "Time when the prescription was issued"

* dispenseRequest.validityPeriod.end MS
* dispenseRequest.validityPeriod.end ^short = "Expiry of the prescription"

* dispenseRequest.dispenser MS
* dispenseRequest.dispenser ^short = "Pharmacy where this prescription can be dispensed"

* note MS

* medication only CodeableReference(UZCoreMedication)
* subject only Reference(UZCorePatient)
* informationSource only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or RelatedPerson or UZCoreOrganization)
* extension[trustee].valueReference only Reference(RelatedPerson or UZCorePractitionerRole)
* encounter only Reference(UZCoreEncounter)
* requester only Reference(UZCorePractitionerRole)
* reason only CodeableReference(UZCoreCondition or UZCoreObservation)
* insurance only Reference(Coverage)
* dispenseRequest.dispenser only Reference(UZCoreOrganization)


* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* status from MedicationRequestStatusVS (required)
* statusReason from MedicationRequestStatusReasonVS (required)
* intent from MedicationRequestIntentVS (required)
* category from MedicationRequestAdminLocationVS (required)
* reason from ConditionCodeVS (required)
* medication from MedicationClassificationVS (required)
* dosageInstruction.timing.repeat.dayOfWeek from DaysOfWeekVS (required)
* dosageInstruction.timing.repeat.when from EventTimingVS (required)
* dosageInstruction.timing.repeat.durationUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.repeat.periodUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.code from TimingAbbreviationVS (preferred)
* dosageInstruction.route from RouteCodesVS (required)
* dosageInstruction.doseAndRate.doseQuantity.code from UnitOfMeasurementVS (required)


Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Example outpatient prescription: ibuprofen 400 mg tablet taken twice daily for five days for headache"
Usage: #example

* identifier
  * use = #official
  * type = $identifier-type#PLAC "Placer Identifier"
  * value = "12345678"

* status = #active
* intent = #order
* category = $medicationrequest-admin-location#outpatient
* medication.concept.text = "Ibuprofen 400 mg tablet"
* subject = Reference(example-salim)

* extension[trustee].valueReference.display = "Ruslan Isakhov (father)"

* authoredOn = "2026-03-02T09:00:00+05:00"
* reason.concept.text = "headache"
* effectiveDosePeriod.start = "2026-03-02"
* effectiveDosePeriod.end = "2026-03-06"

* dosageInstruction[0]
  * timing
    * repeat
      * boundsPeriod
        * start = "2026-03-02"
        * end = "2026-03-06"
      * frequency = 2
      * period = 1
      * periodUnit = #d
      * timeOfDay[0] = "08:00:00"
      * timeOfDay[1] = "16:00:00"
    * code.text = "Twice a day"
  * route.coding[0]
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/route-codes-cs"
    * code = #pharm.0001.00046
    * display = "Peroral"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "dona"
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/unit-of-measurement-cs"
    * code = #252

* dispenseRequest
  * quantity.value = 10
  * validityPeriod
    * start = "2026-03-02"
    * end = "2026-04-02"
