// This file contains the operations defined by the Digital Health Platform

Instance: person-populate
InstanceOf: OperationDefinition
Description: "Create a Person from an identity document, populated from the state registries"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/person-populate"
* name = "PersonPopulate"
* title = "Populate a person from state registries by identifier"
* status = #active
* kind = #operation
* experimental = false
* date = "2026-08-13"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Creates a Person resource from an identity document, populating it with data from the state registries of natural persons. The operation takes the identifier as a `system` + `code` + `value` triple (with `birthDate` where needed), resolves it to a PINFL (NI), and retrieves the citizen's details by that PINFL. The operation is idempotent: if a Person with that PINFL already exists in the system it is returned without calling any external source and without creating a duplicate; otherwise a new Person resource is created with an assigned identifier and version. The operation is invoked at type level (Person/$populate) with POST and a Parameters body. The response is the Person resource itself, not Parameters."
* affectsState = true
* code = #populate
* comment = "The document codes NI (PINFL), PPN (passport / ID card) and BCT (birth certificate) are supported; the case of `code` does not matter. For NI the value is checked locally for correctness. For PPN the `birthDate` parameter is mandatory - the PINFL is resolved from the series and number together with the date of birth. For BCT the value is split into series and number, which resolve the PINFL. The `system` value must be one of the permitted identification systems; an unknown `system` or `code` results in an OperationOutcome with code `invalid`. The citizen's address is requested separately and is optional: if it is unavailable, the Person is still created, but without address details. If the citizen is not found in the external registries, or the data retrieved is invalid, no resource is created and an error is returned. Equivalent operations are defined for Practitioner and Organization."
* resource = #Person
* system = false
* type = true
* instance = false

* parameter[+].name = #system
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Identification system of the document (Identifier.system). Permitted values: `http://terminology.hl7.org/CodeSystem/v2-0203`, `https://dhp.uz/fhir/core/sid/pid/uz/ni` (PINFL), `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` (biometric passport / ID card), `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` (international passport), `https://dhp.uz/fhir/core/sid/pid/uz/bct` (birth certificate). Passed as valueUri."
* parameter[=].type = #uri
* parameter[+].name = #code
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Document type: `NI` - PINFL, `PPN` - passport or ID card, `BCT` - birth certificate. Passed as valueCode."
* parameter[=].type = #code
* parameter[+].name = #value
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Document value: the PINFL for `NI`, the passport series and number for `PPN`, the birth certificate series and number for `BCT`. Passed as valueString."
* parameter[=].type = #string
* parameter[+].name = #birthDate
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Date of birth in YYYY-MM-DD format. Mandatory when `code` is `PPN`, because the PINFL is resolved from the passport together with the date of birth. Optional for the other document types, where it is used as an additional matching criterion. Passed as valueDate."
* parameter[=].type = #date
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Person resource that was created, or the one that already existed, populated with data from the state registries."
* parameter[=].type = #Person


Instance: patient-populate
InstanceOf: OperationDefinition
Description: "Create a Patient from an identity document, populated from the state registries"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/patient-populate"
* name = "PatientPopulate"
* title = "Populate a patient from state registries by identifier"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-08-13"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Creates a Patient resource from an identity document, populating it with data from the state registries of natural persons. The operation takes the identifier as a `system` + `code` + `value` triple (with `birthDate` where needed), resolves it to a PINFL (NI), and retrieves the citizen's details by that PINFL. The operation is idempotent: if a Patient with that PINFL already exists in the system it is returned without calling any external source and without creating a duplicate; otherwise a new Patient resource is created with an assigned identifier and version. The operation is invoked at type level (Patient/$populate) with POST and a Parameters body. The response is the Patient resource itself, not Parameters."
* affectsState = true
* code = #populate
* comment = "The document codes NI (PINFL), PPN (passport / ID card) and BCT (birth certificate) are supported; the case of `code` does not matter. For NI the value is checked locally for correctness. For PPN the `birthDate` parameter is mandatory - the PINFL is resolved from the series and number together with the date of birth. For BCT the value is split into series and number, which resolve the PINFL. The `system` value must be one of the permitted identification systems; an unknown `system` or `code` results in an OperationOutcome with code `invalid`. The citizen's address is requested separately and is optional: if it is unavailable, the Patient is still created, but without address details. If the citizen is not found in the external registries, or the data retrieved is invalid, no resource is created and an error is returned. The operation follows the same model as Person/$populate."
* resource = #Patient
* system = false
* type = true
* instance = false

* parameter[+].name = #system
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Identification system of the document (Identifier.system). Permitted values: `http://terminology.hl7.org/CodeSystem/v2-0203`, `https://dhp.uz/fhir/core/sid/pid/uz/ni` (PINFL), `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local` (biometric passport / ID card), `https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl` (international passport), `https://dhp.uz/fhir/core/sid/pid/uz/bct` (birth certificate). Passed as valueUri."
* parameter[=].type = #uri
* parameter[+].name = #code
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Document type: `NI` - PINFL, `PPN` - passport or ID card, `BCT` - birth certificate. Passed as valueCode."
* parameter[=].type = #code
* parameter[+].name = #value
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Document value: the PINFL for `NI`, the passport series and number for `PPN`, the birth certificate series and number for `BCT`. Passed as valueString."
* parameter[=].type = #string
* parameter[+].name = #birthDate
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Date of birth in YYYY-MM-DD format. Mandatory when `code` is `PPN`, because the PINFL is resolved from the passport together with the date of birth. Optional for the other document types, where it is used as an additional matching criterion. Passed as valueDate."
* parameter[=].type = #date
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Patient resource that was created, or the one that already existed, populated with data from the state registries."
* parameter[=].type = #Patient


Instance: organization-practitioners
InstanceOf: OperationDefinition
Description: "List the practitioners who work at an organization"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/organization-practitioners"
* name = "OrganizationPractitioners"
* title = "Fetch practitioners linked to an organization"
* status = #active
* kind = #operation
* experimental = false
* date = "2026-08-13"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Returns the practitioners (Practitioner) linked to the given organization, that is, the people who work there. The link between a practitioner and an organization is established through PractitionerRole; the operation saves the client from searching for the roles and resolving the references to Practitioner. The operation is invoked at instance level only (Organization/[id]/$practitioners) with GET. The organization identifier must be a valid UUID, otherwise an OperationOutcome with code `invalid` and HTTP 400 is returned. The result is paged with the `_page` and `_count` parameters. If there are no linked practitioners, HTTP 200 is returned with a Bundle containing an OperationOutcome with code `not-found`."
* affectsState = false
* code = #practitioners
* comment = "Bundle.total carries the total number of linked practitioners, ignoring paging, and Bundle.link carries the self/next/previous links. Each practitioner appears in the response at most once, no matter how many roles they hold in that organization. The reverse operation is Practitioner/$organizations."
* resource = #Organization
* system = false
* type = false
* instance = true

* parameter[+].name = #_page
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The page requested, counting from 1. Defaults to 1. Values below 1 are ignored; a non-numeric value causes a parameter parsing error."
* parameter[=].type = #integer
* parameter[+].name = #_count
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Number of resources per page. Defaults to 20, maximum 100 - values above 100 are reduced to 100, values below 1 are ignored."
* parameter[=].type = #integer
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A `searchset` Bundle with the Practitioner resources linked to the organization. When there are no links, the Bundle contains a single OperationOutcome with severity `not-found`."
* parameter[=].type = #Bundle


Instance: practitioner-organizations
InstanceOf: OperationDefinition
Description: "List the organizations a practitioner works at"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/practitioner-organizations"
* name = "PractitionerOrganizations"
* title = "Fetch organizations a practitioner is affiliated with"
* status = #active
* kind = #operation
* experimental = false
* date = "2026-08-13"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Returns the organizations (Organization) the given practitioner is linked to, that is, their places of work. The link is established through PractitionerRole; the operation returns the organizations directly, without searching for the roles and resolving the references afterwards. The operation is invoked at instance level only (Practitioner/[id]/$organizations) with GET. The practitioner identifier must be a valid UUID, otherwise an OperationOutcome with code `invalid` and HTTP 400 is returned. The result is paged with the `_page` and `_count` parameters. If there are no linked organizations, HTTP 200 is returned with a Bundle containing an OperationOutcome with code `not-found`."
* affectsState = false
* code = #organizations
* comment = "The operation mirrors Organization/$practitioners. Organizations are returned without duplicates - one entry per organization, regardless of how many roles the practitioner holds there. If the roles and specialties are needed alongside the organizations, use Practitioner/$specializations."
* resource = #Practitioner
* system = false
* type = false
* instance = true

* parameter[+].name = #_page
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The page requested, counting from 1. Defaults to 1."
* parameter[=].type = #integer
* parameter[+].name = #_count
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Number of resources per page. Defaults to 20, maximum 100 - values above 100 are reduced to 100."
* parameter[=].type = #integer
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A `searchset` Bundle with the Organization resources the practitioner is linked to. When there are no links, the Bundle contains a single OperationOutcome with severity `not-found`."
* parameter[=].type = #Bundle


Instance: practitioner-specializations
InstanceOf: OperationDefinition
Description: "List the active roles of a practitioner with their specialties and organizations"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/practitioner-specializations"
* name = "PractitionerSpecializations"
* title = "Fetch active roles and specialties of a practitioner"
* status = #active
* kind = #operation
* experimental = false
* date = "2026-08-13"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Returns the active roles (PractitionerRole) of the given practitioner together with the organizations where those roles are held. Each role carries the specialty (PractitionerRole.specialty), the job title (PractitionerRole.code) and the place of work (PractitionerRole.organization), so the operation gives the full picture of the practitioner's professional activity in a single request. Only roles that have not been deleted and whose `active` is not false are included; the roles are ordered by creation date, newest first. The organizations the roles reference are added to the same Bundle as accompanying entries (search.mode = `include`) and deduplicated: each organization appears at most once. The operation is invoked at instance level only (Practitioner/[id]/$specializations) with GET and takes no input parameters. The practitioner identifier must be a valid UUID, otherwise an OperationOutcome with code `invalid` and HTTP 400 is returned. If there are no active roles, HTTP 200 is returned with a Bundle containing an OperationOutcome with code `not-found`."
* affectsState = false
* code = #specializations
* comment = "If a role references an organization that cannot be found or has been deleted, the role is still returned and a warning OperationOutcome with code `not-found` and text of the form \"Organization referenced by PractitionerRole/[id] was not found\" is added to the Bundle. Such warnings do not affect the response code (HTTP 200) and are not counted in Bundle.total, which counts only the PractitionerRole entries. The operation returns all of the practitioner's active roles at once; paging is not supported."
* resource = #Practitioner
* system = false
* type = false
* instance = true

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A `searchset` Bundle. The PractitionerRole entries are marked search.mode = `match`, the related Organization entries search.mode = `include`. Warnings about organizations that were not found are added as OperationOutcome entries. When there are no active roles, the Bundle contains a single OperationOutcome with severity `not-found`."
* parameter[=].type = #Bundle


Instance: patient-attach
InstanceOf: OperationDefinition
Description: "Attach a patient to a healthcare organization and/or a practitioner, checked against the master data registry"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/patient-attach"
* name = "PatientAttach"
* title = "Attach a patient to a healthcare organization and/or a practitioner"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-10-19"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Attaches a patient to a healthcare organization (Patient.managingOrganization) and/or to a practitioner (Patient.generalPractitioner) in a single call, and records the date of attachment to the organization in the `https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment` extension. The organization and the practitioner are checked for existence in the master data registry; each can be named either by a literal reference or by a business identifier, which the server resolves to a literal reference before writing. The operation is invoked with POST and a Parameters body at instance level (Patient/[id]/$attach), where the patient is named in the URL, or at type level (Patient/$attach), where the patient is named by the `patientIdentifier` parameter. The response is the updated Patient resource, not Parameters."
* purpose = "A patient is served by the primary-care organization (polyclinic) and the practitioner (family doctor) they are attached to. This operation is the single entry point for recording that attachment on the Patient. Without it a client would have to read the Patient, edit managingOrganization, generalPractitioner and the attachment-date extension by hand and write the resource back with update, with no check that the organization and the practitioner exist. With the operation the client sends only what changes, and the server checks the organization and the practitioner against the master data registry, resolves business identifiers to references, keeps both sides of the attachment consistent and stores the attachment date that the client needs to enforce the once-a-year reattachment rule. The type-level call lets a client that knows only the patient's PINFL attach the patient without a prior Patient/$populate."
* affectsState = true
* code = #attach
* comment = "At least one of `organization` and `practitioner` must be supplied, otherwise an OperationOutcome with code `required` is returned. Changing one side of the attachment detaches the other: when the organization changes and no `practitioner` is supplied, Patient.generalPractitioner is cleared; when the practitioner changes and no `organization` is supplied, Patient.managingOrganization is cleared and the attachment date is set to the current server date. When the supplied organization equals the current one, neither the reference nor the attachment date is changed. Repeated identical calls do not create a new version of the Patient. At type level the patient is resolved by PINFL in the same way as Patient/$populate and is created if it does not exist yet, so a single type-level call replaces the $populate + $attach pair. If the Patient was modified concurrently between read and write, the operation fails with HTTP 412 and does not overwrite the other change; the client should retry. The operation does not enforce the rule that a patient may change organization no more than once a year, does not check that the practitioner works in the given organization, and does not look at Patient.active or Patient.deceased. Detachment is done with Patient/$detach."
* resource = #Patient
* system = false
* type = true
* instance = true

* parameter[+].name = #patientIdentifier
* parameter[=].use = #in
* parameter[=].scope = #type
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "PINFL (NI) of the patient to attach. Mandatory at type level, rejected with code `invalid` at instance level, where the patient is taken from the URL. `Identifier.value` is always treated as a PINFL and is checked for correctness; `Identifier.system` is ignored. Passed as valueIdentifier."
* parameter[=].type = #Identifier
* parameter[+].name = #patientBirthDate
* parameter[=].use = #in
* parameter[=].scope = #type
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Date of birth of the patient, used as an additional matching criterion when the patient is looked up in the state registries. It does not filter the local patient, which is matched by PINFL only. Accepted at type level only. Passed as valueDate."
* parameter[=].type = #date
* parameter[+].name = #organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The healthcare organization the patient is attached to; written to Patient.managingOrganization. Passed either as valueReference with a relative literal reference `Organization/[id]`, or as valueIdentifier with a business identifier that must match exactly one Organization (`Identifier.system` is ignored). Absolute URLs, logical references and references to other resource types are rejected with code `value`; supplying both valueReference and valueIdentifier is rejected with code `structure`. An organization that does not exist results in HTTP 422 with code `not-found`."
* parameter[=].type = #DataType
* parameter[=].allowedType[+] = #Reference
* parameter[=].allowedType[+] = #Identifier
* parameter[+].name = #practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The practitioner the patient is attached to; replaces Patient.generalPractitioner as a whole. Passed either as valueReference with a relative literal reference `Practitioner/[id]`, or as valueIdentifier with a business identifier that must match exactly one Practitioner (`Identifier.system` is ignored). PractitionerRole is not accepted. The same reference and identifier rules as for `organization` apply."
* parameter[=].type = #DataType
* parameter[=].allowedType[+] = #Reference
* parameter[=].allowedType[+] = #Identifier
* parameter[+].name = #attachmentDate
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Date of attachment to the organization in full YYYY-MM-DD format; partial dates are rejected. Defaults to the current server date. Accepted only together with `organization`; must not be later than the current server date and not earlier than the attachment date already stored on the patient. Passed as valueDate."
* parameter[=].type = #date
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The updated Patient resource. If the call changed nothing, the current version is returned and no new version is created."
* parameter[=].type = #Patient

Instance: patient-detach
InstanceOf: OperationDefinition
Description: "Detach a patient from the managing organization and the general practitioner"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/patient-detach"
* name = "PatientDetach"
* title = "Detach a patient from the managing organization and the general practitioner"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-10-22"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Detaches the patient from both the managing organization and the general practitioner in one call. The server clears Patient.managingOrganization and Patient.generalPractitioner and removes the `https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment` extension set by Patient/$attach; other extensions are kept. The operation is invoked at instance level only (Patient/[id]/$detach) with POST and a Parameters body. The response is the Patient resource, not Parameters."
* purpose = "The reverse of Patient/$attach: where $attach records the attachment, $detach removes it in one call, for example when the patient has applied to be detached."
* affectsState = true
* code = #detach
* comment = "The update goes through the regular update path with the version of the read resource, so if the Patient was modified concurrently the operation fails with HTTP 412. If the patient has neither an organization, nor a practitioner, nor the attachment extension, no new version is created and the current resource is returned. The reason is validated and logged but is not stored in the Patient resource. Detaching only the organization or only the practitioner is not supported; use Patient/$attach to change one side of the attachment."
* resource = #Patient
* system = false
* type = false
* instance = true

* parameter[+].name = #reason
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Reason for detaching the patient. Must carry a non-empty text or at least one coding with a non-empty code, otherwise the request is rejected with 400 and issue code `value`. A missing reason is rejected with 400 and issue code `required`."
* parameter[=].type = #CodeableConcept
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Patient resource after detachment, or the current resource when there was nothing to detach."
* parameter[=].type = #Patient

Instance: patient-relate
InstanceOf: OperationDefinition
Description: "Relate a parent patient to a child, confirmed against the civil registry"
Usage: #definition
* url = "https://dhp.uz/fhir/core/OperationDefinition/patient-relate"
* name = "PatientRelate"
* title = "Relate a parent patient to a child confirmed by the civil registry"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-10-19"
* publisher = "Ministry of Health of the Republic of Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "Relates a parent to a child. The parent is the Patient named in the URL; the child is named by PINFL. The kinship is confirmed against the child registry of the Ministry of Justice: the parent's PINFL must match the father or the mother of the child. The child Patient is then resolved by PINFL in the same way as Patient/$populate (and created if it does not exist yet), and a RelatedPerson is created on behalf of the parent, pointing to the child via RelatedPerson.patient and carrying the parent's identifier, name, gender, birthDate and address. The operation is invoked at instance level only (Patient/[id]/$relate) with POST and a Parameters body. The response is a Bundle, not Parameters."
* purpose = "Records a confirmed parent-child relationship between two patients. A RelatedPerson could be created with a plain create, but nothing would then guarantee that the person is actually the child's parent. This operation creates the relation only after the kinship is confirmed against the Ministry of Justice child registry, finds or creates the child Patient by PINFL, and does not duplicate a relation that already exists, so the client gets the relation, the child and the outcome in one call. The relation is a record of kinship only and by itself grants no access to the child's data."
* affectsState = true
* code = #relate
* comment = "The operation always answers HTTP 200: success and failure are distinguished by the severity of the OperationOutcome that closes the returned Bundle, not by the HTTP status. On failure the Bundle contains that OperationOutcome only, with severity `error` and one of the codes `not-found`, `deleted`, `structure`, `required`, `value`, `business-rule` (the parent has no PINFL, kinship is not confirmed, or the child identifier resolved to the parent itself), `invalid`, `transient` or `exception`. The steps are ordered so that a refusal leaves no trace: kinship is checked before the child is resolved, so a request with unconfirmed kinship creates no Patient. The parent must carry an identifier in the PINFL system `https://dhp.uz/fhir/core/sid/pid/uz/ni`. The operation is idempotent per pair of parent PINFL and child Patient among RelatedPerson resources whose `active` is not `false`: an existing relation is returned as is and is never rewritten; if the requested `relationship` differs from the stored one, an informational issue reports both values. Kinship is re-checked on every call, including when an existing relation is reused. A new RelatedPerson is written with `active: true`. The relation by itself grants no access to the child's data."
* resource = #Patient
* system = false
* type = false
* instance = true

* parameter[+].name = #childIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "PINFL (NI) of the child. `Identifier.value` is mandatory and is always treated as a PINFL; `Identifier.system` is ignored. The value is checked for correctness: 14 digits, a gender digit of 1-6, a valid encoded date of birth and the 7-3-1 checksum. Passed as valueIdentifier."
* parameter[=].type = #Identifier
* parameter[+].name = #relationship
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Relationship of the parent to the child, written to RelatedPerson.relationship of a new relation. When the parameter is absent, `http://terminology.hl7.org/CodeSystem/v3-RoleCode#GUARD` (guardian) is used. When supplied, the value is written as sent: valueCode gets the system `http://terminology.hl7.org/CodeSystem/v3-RoleCode`, valueCoding is written as a whole including a foreign system and display, valueCodeableConcept is written as a whole, including one carrying `text` only. An empty code is rejected with code `value`, and the default is not substituted for it."
* parameter[=].type = #DataType
* parameter[=].allowedType[+] = #code
* parameter[=].allowedType[+] = #Coding
* parameter[=].allowedType[+] = #CodeableConcept
* parameter[=].binding.strength = #example
* parameter[=].binding.valueSet = Canonical(RelationshipTypeVS)
* parameter[+].name = #link
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "When `true`, the parent Patient additionally gets a Patient.link entry with `type` `seealso` whose `other` points to the RelatedPerson. When `false` or absent, the parent Patient is not changed. If writing the parent Patient fails, the relation is still created and returned, and the closing OperationOutcome carries a `warning` with code `forbidden`. Passed as valueBoolean."
* parameter[=].type = #boolean
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A `collection` Bundle with a fixed order of entries: (1) the created or reused RelatedPerson, (2) the child Patient, (3) the parent Patient, only when `link` is `true` and the write succeeded, (4) an OperationOutcome, always last. Resource entries carry `fullUrl` when the server's gateway URL is configured. On failure the Bundle contains only the OperationOutcome with severity `error`."
* parameter[=].type = #Bundle
