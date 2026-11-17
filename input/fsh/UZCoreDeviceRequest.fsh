Profile: UZCoreDeviceRequest
Parent: DeviceRequest
Id: uz-core-devicerequest
Title: "UZ Core DeviceRequest"
Description: "Uzbekistan Core DeviceRequest profile, used to request that a medical device be supplied to or used for a patient"

* ^experimental = true
* ^status = #active
* ^date = "2026-11-17"
* ^publisher = "Uzinfocom"

* identifier MS

* instantiatesCanonical only Canonical(UZCoreActivityDefinition or UZCorePlanDefinition)

* replaces MS
* replaces only Reference(UZCoreDeviceRequest)

* groupIdentifier MS

* status MS
* status from ServiceRequestStatusVS (required)

* intent MS
* intent from RequestIntentVS (required)

* priority MS
* priority from RequestPriorityVS (required)

* doNotPerform MS

* code MS
* code only CodeableReference(UZCoreDevice)
* code from DeviceTypeVS (preferred)

* quantity MS

* parameter MS
* parameter ^short = "Characteristic or setting of the requested device, such as its length, width or diameter"
  * code MS
  * code from DeviceRequestParameterCodeVS (extensible)
  * code ^short = "Device characteristic or setting specified in the request"
  * value[x] MS
  * value[x] ^short = "Requested value for the characteristic or setting identified by parameter.code"

* subject MS
* subject only Reference(UZCorePatient)

* encounter MS
* encounter only Reference(UZCoreEncounter)

* occurrence[x] MS

* authoredOn MS

* requester MS
* requester only Reference(UZCorePractitionerRole)

* performer MS
* performer only CodeableReference(UZCorePractitionerRole or UZCoreOrganization)

* reason MS
* reason only CodeableReference(UZCoreCondition)
* reason from ConditionCodeVS (preferred)

* asNeeded MS

* asNeededFor MS

* insurance MS
* insurance only Reference(Coverage or UZCoreClaimResponse)

* supportingInfo MS
* supportingInfo only Reference(UZCoreObservation or DocumentReference)

* note MS

* relevantHistory MS
* relevantHistory only Reference(UZCoreProvenance)

Instance: example-devicerequest-implant
InstanceOf: UZCoreDeviceRequest
Usage: #example
Title: "Example UZ Core DeviceRequest - Contraceptive Implant, Revoked"
Description: "Example of an order for a contraceptive implant that was revoked when the patient chose a copper intrauterine device instead"

* language = #uz
* status = #revoked
* intent = #order
* priority = #routine
* code.concept = $sct#468312002 "Drug-eluting contraceptive implant"
* quantity = 1
* subject = Reference(example-nodira)
* authoredOn = "2026-02-03T11:00:00+05:00"
* requester = Reference(example-practitionerrole)
* reason.concept = $sct#13197004 "Uses contraception"
* note.text = "Revoked: at the follow-up visit the patient chose a copper IUD instead of an implant."

Instance: example-encounter-iud-consultation
InstanceOf: UZCoreEncounter
Usage: #example
Title: "Example UZ Core Encounter - Contraception Consultation"
Description: "Example of an outpatient gynaecology consultation at which a copper intrauterine device was ordered"

* language = #uz
* status = #completed
* class[dhpClass] = $v3-ActCode#AMB
* type[nationalType] = encounter-type-cs#mserv-0001-00003 "Konsultativ"
* subject = Reference(example-nodira)
* participant.actor = Reference(example-practitionerrole)
* actualPeriod.start = "2026-02-10T10:00:00+05:00"
* actualPeriod.end = "2026-02-10T10:30:00+05:00"

Instance: example-devicerequest-iud
InstanceOf: UZCoreDeviceRequest
Usage: #example
Title: "Example UZ Core DeviceRequest - Copper IUD"
Description: "Example of a completed order for the copper intrauterine device that was then inserted at the polyclinic; it replaces an earlier order for an implant"

* language = #uz
* replaces = Reference(example-devicerequest-implant)
* status = #completed
* intent = #order
* priority = #routine
* doNotPerform = false
* code.reference = Reference(example-copper-iud)
* quantity = 1
* subject = Reference(example-nodira)
* encounter = Reference(example-encounter-iud-consultation)
* occurrenceDateTime = "2026-02-18T09:00:00+05:00"
* authoredOn = "2026-02-10T10:15:00+05:00"
* requester = Reference(example-practitionerrole)
* performer.reference = Reference(xonobod-medical-association)
* reason.concept = $sct#13197004 "Uses contraception"
* asNeeded = false
* note.text = "Copper T 380A from the polyclinic stock; insertion booked for 18 February."

Instance: example-devicerequest-wheelchair
InstanceOf: UZCoreDeviceRequest
Usage: #example
Title: "Example UZ Core DeviceRequest - Wheelchair by Seat Width"
Description: "Example of an order for a manual wheelchair given only by its kind, with the acceptable seat width the supplier must match"

* language = #uz
* status = #active
* intent = #order
* priority = #routine
* code.concept = $sct#58938008 "Wheelchair"
* quantity = 1
* parameter[0].code = $sct#103355008 "Kenglik"
* parameter[=].valueRange.low = 44 'cm' "cm"
* parameter[=].valueRange.high = 48 'cm' "cm"
* subject = Reference(example-salim)
* authoredOn = "2026-11-10T11:00:00+05:00"
* requester = Reference(example-physiotherapist-role)
* reason.reference = Reference(example-disability)
* note.text = "Replaces the patient's worn manual wheelchair. The width is the seat width."
