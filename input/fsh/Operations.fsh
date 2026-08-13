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
