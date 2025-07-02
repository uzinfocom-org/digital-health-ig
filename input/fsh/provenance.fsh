Profile: DHPProvenance
Parent: Provenance
Id: dhp-provenance
Title: "Uzbekistan DHP Provenance"
Description: "Uzbekistan DHP Provenance Profile, used to digitally sign documents via myID"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-13"
* ^publisher = "Uzinfocom"

* target and occurredDateTime and activity and patient and agent and entity and signature MS

* target only Reference(Medication or DocumentReference)
* activity from ProvenanceActivityTypesVS (required) 
* agent
  * type and who MS
  * type from ProvenanceParticipationRoleTypeVS (required)
  * who only Reference(PractitionerRole)
* entity
  * role and what MS
  * role from ProvenanceEntityRoleVS (required)
* signature
  * type and when and who and sigFormat and data MS
  * type from SignatureTypeVS (required)
  * who only Reference(PractitionerRole)

Instance: example-pdf-document
InstanceOf: DocumentReference
Description: "Example ofa PDF document signed with myID"
Usage: #example
* status = #current
* content.attachment
  * contentType = #application/pdf
  * url = "https://example.com/documents/sample-report.pdf"
  * title = "Sample Medical Report"

Instance: example-provenance
InstanceOf: DHPProvenance
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
  * type = signature-type-cs#biometricAuth
  * when = "2025-02-05T12:58:00+05:00"
  * who = Reference(PractitionerRole/example-practitionerrole)
  * sigFormat = #application/signature+xml
  * data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="
