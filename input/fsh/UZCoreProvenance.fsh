Profile: UZCoreProvenance
Parent: Provenance
Id: uz-core-provenance
Title: "UZ Core Provenance"
Description: "Uzbekistan Core Provenance profile, used to digitally sign documents via oneID"
* ^experimental = true
* ^status = #active
* ^date = "2025-03-13"
* ^publisher = "Uzinfocom"

* target and occurredDateTime and activity and patient and agent and entity and signature MS

* target only Reference(UZCoreMedication or DocumentReference or Bundle or ImagingStudy)
* activity from ProvenanceActivityTypesVS (required)
* agent
  * type and who MS
  * type from ProvenanceParticipationRoleTypeVS (required)
  * who only Reference(UZCorePractitionerRole or UZCoreOrganization or UZCoreDevice)
  * onBehalfOf only Reference(UZCoreOrganization or UZCorePractitioner or UZCorePractitionerRole or UZCorePatient)
* entity
  * role and what MS
  * role from ProvenanceEntityRoleVS (required)
* signature
  * type and when and who and sigFormat and data MS
  * type ^slicing.discriminator.type = #value
  * type ^slicing.discriminator.path = "system"
  * type ^slicing.rules = #open
  * type ^slicing.description = "A national signature-type code is required; additional type codings from other systems are allowed"
  * type contains nationalType 1..1 MS
  * type[nationalType] from SignatureTypeVS (required)
  * type[nationalType].system = Canonical(SignatureTypeCS)
  * who only Reference(UZCorePractitionerRole)

Instance: example-pdf-document
InstanceOf: DocumentReference
Description: "Example of a PDF document signed via oneID"
Usage: #example
* status = #current
* content.attachment
  * contentType = #application/pdf
  * url = "https://example.com/documents/sample-report.pdf"
  * title = "Sample Medical Report"

Instance: example-provenance
InstanceOf: UZCoreProvenance
Description: "Example of a provenance event"
Usage: #example
* language = #uz
* target = Reference(DocumentReference/example-pdf-document)
* occurredDateTime = "2025-02-05T12:58:00+05:00"
* activity = $v3-DocumentCompletion#LA
* patient = Reference(Patient/example-patient)
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PractitionerRole/example-practitionerrole)
* signature
  * type[nationalType] = signature-type-cs#biometricAuth
  * when = "2025-02-05T12:58:00+05:00"
  * who = Reference(PractitionerRole/example-practitionerrole)
  * sigFormat = #application/signature+xml
  * data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="

Instance: example-imaging-study-provenance
InstanceOf: UZCoreProvenance
Usage: #example
Title: "Imaging Study Metadata Provenance"
Description: "An example of recording the source of imaging study metadata registered in the DHP by the RIS."

* target[0] = Reference(ImagingStudy/example-imaging-study)

* occurredDateTime = "2026-11-27T09:30:00+05:00"
* recorded = "2026-11-27T09:30:05+05:00"

* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(Device/example-pacs)
* agent[0].who.display = "Picture Archiving and Communication System"

* agent[1].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#enterer "Enterer"
* agent[1].who = Reference(Device/example-ris)
* agent[1].who.display = "Radiology Information System"
* agent[1].onBehalfOf = Reference(Organization/example-organization)
