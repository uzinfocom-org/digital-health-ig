Profile: UZCoreConsent
Parent: Consent
Id: uz-core-consent
Title: "UZ Core Consent"
Description: "Uzbekistan Core Consent profile, used to manage patient consent for data sharing and processing"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-02"
* ^publisher = "Uzinfocom"

* status and subject and period and grantor and sourceAttachment and sourceReference and regulatoryBasis and decision and provision MS
* status from ConsentStateCodesVS (required)

* period
  * start and end MS

* sourceAttachment
  * url and creation MS

* regulatoryBasis from ConsentPolicyVS (preferred)
* regulatoryBasis ^slicing.discriminator.type = #value
* regulatoryBasis ^slicing.discriminator.path = "$this"
* regulatoryBasis ^slicing.rules = #open
* regulatoryBasis ^slicing.description = "Regulatory bases from the national value set; codes from other systems are allowed alongside them"
* regulatoryBasis ^slicing.ordered = false
* regulatoryBasis contains dhpRegulatoryBasis 0..* MS
* regulatoryBasis[dhpRegulatoryBasis] from ConsentPolicyVS (required)
* regulatoryBasis[dhpRegulatoryBasis] ^short = "Regulatory basis from the national value set"

* decision from ConsentProvisionTypeVS (required)

* provision
  * action from ConsentActionVS (preferred)
  * action ^slicing.discriminator.type = #value
  * action ^slicing.discriminator.path = "$this"
  * action ^slicing.rules = #open
  * action ^slicing.description = "Actions from the national value set; codes from other systems are allowed alongside them"
  * action ^slicing.ordered = false
  * action contains dhpAction 0..*
  * action[dhpAction] from ConsentActionVS (required)
  * action[dhpAction] ^short = "Action from the national value set"
  * purpose from ConsentPurposeOfUseVS (extensible)

Instance: example-consent
InstanceOf: UZCoreConsent
Description: "Example of a consent"
Usage: #example
* language = #uz
* status = #active
* subject = Reference(example-patient)
* period
  * start = "2025-02-15T14:02:52+05:00"
  * end = "2026-02-15T14:02:52+05:00"
* grantor = Reference(example-patient)
* regulatoryBasis = ConsentPolicyCS#uz-LRU-547
* decision = $consent-provision-type#permit
* provision
  * action = $consent-action#disclose
  * purpose = $v3-ActReason#RECORDMGT
  * period 
    * start = "2025-02-15T14:02:52+05:00"
    * end = "2026-02-15T14:02:52+05:00"
