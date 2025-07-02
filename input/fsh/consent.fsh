Profile: DHPConsent
Parent: Consent
Id: dhp-consent
Title: "Uzbekistan DHP Consent"
Description: "Uzbekistan DHP Consent Profile, used to manage patient consent for data sharing and processing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-06-02"
* ^publisher = "Uzinfocom"

* status and subject and period and grantor and sourceAttachment and sourceReference and regulatoryBasis and decision and provision MS
* status from ConsentStateCodesVS (required)

* period
  * start and end MS

* sourceAttachment
  * url and creation MS

* regulatoryBasis from ConsentPolicyVS (required)

* decision from ConsentProvisionTypeVS (required)

* provision
  * action from ConsentActionVS (required)
  * purpose from ConsentPurposeOfUseVS (required)

Instance: example-consent
InstanceOf: DHPConsent
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
