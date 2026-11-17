Profile: UZCoreDeviceRequest
Parent: DeviceRequest
Id: uz-core-devicerequest
Title: "UZ Core DeviceRequest"
Description: "Uzbekistan Core DeviceRequest profile, used to request that a medical device be supplied to or used for a patient"

* ^experimental = true
* ^status = #active
* ^date = "2026-11-18"
* ^publisher = "Uzinfocom"

* identifier MS

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
* reason from ConditionCodeVS (example)

* asNeeded MS

* asNeededFor MS

* insurance MS
* insurance only Reference(Coverage or UZCoreClaimResponse)

* supportingInfo MS
* supportingInfo only Reference(UZCoreObservation or DocumentReference)

* note MS

* relevantHistory MS
* relevantHistory only Reference(UZCoreProvenance)

Instance: example-devicerequest-iud
InstanceOf: UZCoreDeviceRequest
Usage: #example
Title: "Example UZ Core DeviceRequest - Copper IUD"
Description: "Example of a routine order for a copper intrauterine device for contraception, with the requested device width"

* status = #active
* intent = #order
* priority = #routine
* doNotPerform = false
* code.reference = Reference(example-copper-iud)
* quantity = 1
* parameter[0].code = $sct#103355008 "Width"
* parameter[=].valueQuantity = 28 'mm' "mm"
* subject = Reference(example-nodira)
* occurrenceDateTime = "2026-11-20T09:00:00+05:00"
* authoredOn = "2026-11-16T10:15:00+05:00"
* requester = Reference(example-practitionerrole)
* performer.reference = Reference(example-organization)
* reason.concept = $sct#13197004 "Uses contraception"
* asNeeded = false
