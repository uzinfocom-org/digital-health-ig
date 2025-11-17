Instance: DHPCapabilityStatement
InstanceOf: CapabilityStatement
Title: "DHP CapabilityStatement"
Description: "DHP platform capability statement, describing the supported resources, profiles, and searchparameters"
Usage: #definition
* date = "2025-09-22T15:35:04+05:00"
* name = "DHPCapabilityStatement"
* title = "DHP CapabilityStatement"
* fhirVersion = #5.0.0
* format[0] = #json
* format[+] = #application/fhir+json
* implementation
  * description = "FHIR R5 Server"
  * url = "https://dhp.uz/fhir/core"
* kind = #instance
* rest
  * mode = #server
  * resource[0]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "responsible"
      * type = #string
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "period"
      * type = #date
    * searchParam[+]
      * name = "effective"
      * type = #date
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "predecessor"
      * type = #reference
    * searchParam[+]
      * name = "contact"
      * type = #string
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "kind"
      * type = #token
    * searchParam[+]
      * name = "topic"
      * type = #token
    * searchParam[+]
      * name = "value"
      * type = #string
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "id-type"
      * type = #token
    * type = #NamingSystem
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * operation[0]
      * definition = "http://hl7.org/fhir/OperationDefinition/CodeSystem-subsumes"
      * name = "subsumes"
    * operation[+]
      * definition = "http://hl7.org/fhir/OperationDefinition/CodeSystem-lookup"
      * name = "lookup"
    * operation[+]
      * definition = "http://hl7.org/fhir/OperationDefinition/CodeSystem-validate-code"
      * name = "validate-code"
    * searchParam[0]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "topic"
      * type = #token
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "content-mode"
      * type = #token
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "predecessor"
      * type = #reference
    * searchParam[+]
      * name = "language"
      * type = #token
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "system"
      * type = #uri
    * searchParam[+]
      * name = "supplements"
      * type = #reference
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "effective"
      * type = #date
    * type = #CodeSystem
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * operation[0]
      * definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-expand"
      * name = "expand"
    * operation[+]
      * definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-validate-code"
      * name = "validate-code"
    * searchParam[0]
      * name = "effective"
      * type = #date
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "expansion"
      * type = #uri
    * searchParam[+]
      * name = "reference"
      * type = #uri
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * searchParam[+]
      * name = "topic"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "predecessor"
      * type = #reference
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * type = #ValueSet
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * operation
      * definition = "http://hl7.org/fhir/OperationDefinition/ConceptMap-translate"
      * name = "translate"
    * searchParam[0]
      * name = "other-map"
      * type = #reference
    * searchParam[+]
      * name = "source-group-system"
      * type = #reference
    * searchParam[+]
      * name = "source-scope-uri"
      * type = #uri
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "target-code"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "target-group-system"
      * type = #reference
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * searchParam[+]
      * name = "effective"
      * type = #date
    * searchParam[+]
      * name = "source-code"
      * type = #token
    * searchParam[+]
      * name = "predecessor"
      * type = #reference
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "source-scope"
      * type = #reference
    * searchParam[+]
      * name = "target-scope"
      * type = #reference
    * searchParam[+]
      * name = "target-scope-uri"
      * type = #uri
    * searchParam[+]
      * name = "topic"
      * type = #token
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "mapping-property"
      * type = #uri
    * searchParam[+]
      * name = "url"
      * type = #uri
    * type = #ConceptMap
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "base"
      * type = #reference
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "type"
      * type = #uri
    * searchParam[+]
      * name = "valueset"
      * type = #reference
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "derivation"
      * type = #token
    * searchParam[+]
      * name = "base-path"
      * type = #token
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "ext-context-expression"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "keyword"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "kind"
      * type = #token
    * searchParam[+]
      * name = "path"
      * type = #token
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "ext-context-type"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "abstract"
      * type = #token
    * searchParam[+]
      * name = "experimental"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * type = #StructureDefinition
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "output-profile"
      * type = #reference
    * searchParam[+]
      * name = "input-profile"
      * type = #reference
    * searchParam[+]
      * name = "instance"
      * type = #token
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "kind"
      * type = #token
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "base"
      * type = #reference
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "system"
      * type = #token
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * type = #OperationDefinition
  * resource[+]
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * interaction[0].code = #read
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "target"
      * type = #token
    * searchParam[+]
      * name = "component"
      * type = #reference
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "version"
      * type = #token
    * searchParam[+]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "base"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * type = #SearchParameter
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "link"
      * type = #reference
    * searchParam[+]
      * name = "phonetic"
      * type = #string
    * searchParam[+]
      * name = "relatedperson"
      * type = #reference
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "phone"
      * type = #token
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "deceased"
      * type = #token
    * searchParam[+]
      * name = "gender"
      * type = #token
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "email"
      * type = #token
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "family"
      * type = #string
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "practitioner"
      * type = #reference
    * searchParam[+]
      * name = "given"
      * type = #string
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "death-date"
      * type = #date
    * searchParam[+]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "birthdate"
      * type = #date
    * type = #Person
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "phonetic"
      * type = #string
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "partof"
      * type = #reference
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "endpoint"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization"
    * type = #Organization
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "death-date"
      * type = #date
    * searchParam[+]
      * name = "deceased"
      * type = #token
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "phonetic"
      * type = #string
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "family"
      * type = #string
    * searchParam[+]
      * name = "gender"
      * type = #token
    * searchParam[+]
      * name = "given"
      * type = #string
    * searchParam[+]
      * name = "communication"
      * type = #token
    * searchParam[+]
      * name = "qualification-period"
      * type = #date
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "email"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "qualification-code"
      * type = #token
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * searchParam[+]
      * name = "phone"
      * type = #token
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner"
    * type = #Practitioner
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "endpoint"
      * type = #reference
    * searchParam[+]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "communication"
      * type = #token
    * searchParam[+]
      * name = "network"
      * type = #reference
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "location"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "characteristic"
      * type = #token
    * searchParam[+]
      * name = "practitioner"
      * type = #reference
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "email"
      * type = #token
    * searchParam[+]
      * name = "role"
      * type = #token
    * searchParam[+]
      * name = "specialty"
      * type = #token
    * searchParam[+]
      * name = "phone"
      * type = #token
    * searchParam[+]
      * name = "service"
      * type = #reference
    * searchParam[+]
      * name = "active"
      * type = #token
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"
    * type = #PractitionerRole
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "specialty"
      * type = #token
    * searchParam[+]
      * name = "characteristic"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "offered-in"
      * type = #reference
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "endpoint"
      * type = #reference
    * searchParam[+]
      * name = "eligibility"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "service-type"
      * type = #token
    * searchParam[+]
      * name = "program"
      * type = #token
    * searchParam[+]
      * name = "coverage-area"
      * type = #reference
    * searchParam[+]
      * name = "location"
      * type = #reference
    * searchParam[+]
      * name = "service-category"
      * type = #token
    * searchParam[+]
      * name = "communication"
      * type = #token
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-healthcareservice"
    * type = #HealthcareService
  * resource[+]
    * conditionalPatch = false
    * searchParam[0]
      * name = "partof"
      * type = #reference
    * searchParam[+]
      * name = "endpoint"
      * type = #reference
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "characteristic"
      * type = #token
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "operational-status"
      * type = #token
    * searchParam[+]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "mode"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location"
    * type = #Location
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #history-instance
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * interaction[+].code = #history-type
    * searchParam[0]
      * name = "death-date"
      * type = #date
    * searchParam[+]
      * name = "language"
      * type = #token
    * searchParam[+]
      * name = "link"
      * type = #reference
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * searchParam[+]
      * name = "given"
      * type = #string
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "deceased"
      * type = #token
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "birthdate"
      * type = #date
    * searchParam[+]
      * name = "phone"
      * type = #token
    * searchParam[+]
      * name = "phonetic"
      * type = #string
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "family"
      * type = #string
    * searchParam[+]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "email"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "gender"
      * type = #token
    * searchParam[+]
      * name = "general-practitioner"
      * type = #reference
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient"
    * type = #Patient
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "phone"
      * type = #token
    * searchParam[+]
      * name = "role"
      * type = #token
    * searchParam[+]
      * name = "family"
      * type = #string
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
    * searchParam[+]
      * name = "address-state"
      * type = #string
    * searchParam[+]
      * name = "address-city"
      * type = #string
    * searchParam[+]
      * name = "phonetic"
      * type = #string
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "birthdate"
      * type = #date
    * searchParam[+]
      * name = "given"
      * type = #string
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "address-use"
      * type = #token
    * searchParam[+]
      * name = "email"
      * type = #token
    * searchParam[+]
      * name = "relationship"
      * type = #token
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "address-country"
      * type = #string
    * searchParam[+]
      * name = "gender"
      * type = #token
    * searchParam[+]
      * name = "telecom"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * type = #RelatedPerson
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "condition"
      * type = #reference
    * searchParam[+]
      * name = "goal"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "intent"
      * type = #token
    * searchParam[+]
      * name = "replaces"
      * type = #reference
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "care-team"
      * type = #reference
    * searchParam[+]
      * name = "activity-reference"
      * type = #reference
    * searchParam[+]
      * name = "part-of"
      * type = #reference
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "custodian"
      * type = #reference
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * type = #CarePlan
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "recorded-date"
      * type = #date
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "stage"
      * type = #token
    * searchParam[+]
      * name = "clinical-status"
      * type = #token
    * searchParam[+]
      * name = "evidence-detail"
      * type = #reference
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "onset-date"
      * type = #date
    * searchParam[+]
      * name = "onset-info"
      * type = #string
    * searchParam[+]
      * name = "abatement-string"
      * type = #string
    * searchParam[+]
      * name = "evidence"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "asserter"
      * type = #reference
    * searchParam[+]
      * name = "body-site"
      * type = #token
    * searchParam[+]
      * name = "abatement-date"
      * type = #date
    * searchParam[+]
      * name = "severity"
      * type = #token
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "verification-status"
      * type = #token
    * supportedProfile = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition"
    * type = #Condition
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "reason-reference"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "diagnosis-code"
      * type = #token
    * searchParam[+]
      * name = "organization"
      * type = #reference
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "care-manager"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "incoming-referral"
      * type = #reference
    * searchParam[+]
      * name = "reason-code"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "diagnosis-reference"
      * type = #reference
    * type = #EpisodeOfCare
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "episode-of-care"
      * type = #reference
    * searchParam[+]
      * name = "service-provider"
      * type = #reference
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "date-start"
      * type = #date
    * searchParam[+]
      * name = "practitioner"
      * type = #reference
    * searchParam[+]
      * name = "account"
      * type = #reference
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "diagnosis-code"
      * type = #token
    * searchParam[+]
      * name = "subject-status"
      * type = #token
    * searchParam[+]
      * name = "diagnosis-reference"
      * type = #reference
    * searchParam[+]
      * name = "end-date"
      * type = #date
    * searchParam[+]
      * name = "location-period"
      * type = #date
    * searchParam[+]
      * name = "location"
      * type = #reference
    * searchParam[+]
      * name = "part-of"
      * type = #reference
    * searchParam[+]
      * name = "participant"
      * type = #reference
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "special-arrangement"
      * type = #token
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "appointment"
      * type = #reference
    * searchParam[+]
      * name = "careteam"
      * type = #reference
    * searchParam[+]
      * name = "class"
      * type = #token
    * searchParam[+]
      * name = "participant-type"
      * type = #token
    * searchParam[+]
      * name = "reason-code"
      * type = #token
    * searchParam[+]
      * name = "reason-reference"
      * type = #reference
    * type = #Encounter
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "context-type"
      * type = #token
    * searchParam[+]
      * name = "effective"
      * type = #date
    * searchParam[+]
      * name = "jurisdiction"
      * type = #token
    * searchParam[+]
      * name = "url"
      * type = #uri
    * searchParam[+]
      * name = "context"
      * type = #token
    * searchParam[+]
      * name = "subject-type"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "item-code"
      * type = #token
    * searchParam[+]
      * name = "title"
      * type = #string
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "combo-code"
      * type = #token
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "questionnaire-code"
      * type = #token
    * searchParam[+]
      * name = "definition"
      * type = #uri
    * searchParam[+]
      * name = "publisher"
      * type = #string
    * searchParam[+]
      * name = "version"
      * type = #token
    * type = #Questionnaire
  * resource[+]
    * conditionalCreate = false
    * conditionalDelete = #not-supported
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #delete
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "answer-concept"
      * type = #token
    * searchParam[+]
      * name = "item-subject"
      * type = #reference
    * searchParam[+]
      * name = "author"
      * type = #reference
    * searchParam[+]
      * name = "answer-reference"
      * type = #reference
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "answer-string"
      * type = #string
    * searchParam[+]
      * name = "questionnaire"
      * type = #reference
    * searchParam[+]
      * name = "authored"
      * type = #date
    * searchParam[+]
      * name = "linkid"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "answer-date"
      * type = #date
    * searchParam[+]
      * name = "answer-number"
      * type = #number
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "part-of"
      * type = #reference
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "source"
      * type = #reference
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * type = #QuestionnaireResponse
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "component-value-reference"
      * type = #reference
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "combo-code"
      * type = #token
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "component-value-canonical"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "interpretation"
      * type = #token
    * searchParam[+]
      * name = "part-of"
      * type = #reference
    * searchParam[+]
      * name = "component-code"
      * type = #token
    * searchParam[+]
      * name = "component-value-concept"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "value-canonical"
      * type = #uri
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "data-absent-reason"
      * type = #token
    * searchParam[+]
      * name = "instantiates-reference"
      * type = #reference
    * searchParam[+]
      * name = "performer"
      * type = #reference
    * searchParam[+]
      * name = "derived-from"
      * type = #reference
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "specimen"
      * type = #reference
    * searchParam[+]
      * name = "value-date"
      * type = #date
    * searchParam[+]
      * name = "component-data-absent-reason"
      * type = #token
    * searchParam[+]
      * name = "method"
      * type = #token
    * searchParam[+]
      * name = "instantiates-canonical"
      * type = #uri
    * searchParam[+]
      * name = "value-reference"
      * type = #reference
    * searchParam[+]
      * name = "component-interpretation"
      * type = #token
    * searchParam[+]
      * name = "device"
      * type = #reference
    * searchParam[+]
      * name = "value-concept"
      * type = #token
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "combo-interpretation"
      * type = #token
    * searchParam[+]
      * name = "focus"
      * type = #reference
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "value-string"
      * type = #string
    * searchParam[+]
      * name = "combo-data-absent-reason"
      * type = #token
    * searchParam[+]
      * name = "has-member"
      * type = #reference
    * searchParam[+]
      * name = "combo-value-concept"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * type = #Observation
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "performer"
      * type = #reference
    * searchParam[+]
      * name = "reason-code"
      * type = #token
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "report"
      * type = #reference
    * searchParam[+]
      * name = "location"
      * type = #reference
    * searchParam[+]
      * name = "reason-reference"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "part-of"
      * type = #reference
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "code"
      * type = #token
    * type = #Procedure
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "form"
      * type = #token
    * searchParam[+]
      * name = "lot-number"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "expiration-date"
      * type = #date
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "ingredient-code"
      * type = #token
    * searchParam[+]
      * name = "marketingauthorizationholder"
      * type = #reference
    * searchParam[+]
      * name = "serial-number"
      * type = #token
    * searchParam[+]
      * name = "ingredient"
      * type = #reference
    * type = #Medication
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "priority"
      * type = #token
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "group-or-identifier"
      * type = #token
    * searchParam[+]
      * name = "intent"
      * type = #token
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "medication"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "authoredon"
      * type = #date
    * searchParam[+]
      * name = "combo-date"
      * type = #date
    * searchParam[+]
      * name = "group-identifier"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "requester"
      * type = #reference
    * searchParam[+]
      * name = "intended-performer"
      * type = #reference
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "intended-performertype"
      * type = #token
    * searchParam[+]
      * name = "intended-dispenser"
      * type = #reference
    * type = #MedicationRequest
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "encounter"
      * type = #reference
    * searchParam[+]
      * name = "medication"
      * type = #reference
    * searchParam[+]
      * name = "whenprepared"
      * type = #date
    * searchParam[+]
      * name = "location"
      * type = #reference
    * searchParam[+]
      * name = "performer"
      * type = #reference
    * searchParam[+]
      * name = "responsibleparty"
      * type = #reference
    * searchParam[+]
      * name = "receiver"
      * type = #reference
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "prescription"
      * type = #reference
    * searchParam[+]
      * name = "destination"
      * type = #reference
    * searchParam[+]
      * name = "whenhandedover"
      * type = #date
    * searchParam[+]
      * name = "recorded"
      * type = #date
    * type = #MedicationDispense
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "severity"
      * type = #token
    * searchParam[+]
      * name = "verification-status"
      * type = #token
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "route"
      * type = #token
    * searchParam[+]
      * name = "clinical-status"
      * type = #token
    * searchParam[+]
      * name = "code"
      * type = #token
    * searchParam[+]
      * name = "manifestation-code"
      * type = #token
    * searchParam[+]
      * name = "criticality"
      * type = #token
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "asserter"
      * type = #reference
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "manifestation-reference"
      * type = #reference
    * searchParam[+]
      * name = "last-reaction-date"
      * type = #date
    * searchParam[+]
      * name = "type"
      * type = #token
    * type = #AllergyIntolerance
  * resource[+]
    * conditionalCreate = false
    * conditionalPatch = false
    * conditionalRead = #not-supported
    * conditionalUpdate = false
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #create
    * searchParam[0]
      * name = "context"
      * type = #reference
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "attester"
      * type = #reference
    * searchParam[+]
      * name = "contenttype"
      * type = #token
    * searchParam[+]
      * name = "relatesto"
      * type = #reference
    * searchParam[+]
      * name = "category"
      * type = #token
    * searchParam[+]
      * name = "relation"
      * type = #token
    * searchParam[+]
      * name = "event-reference"
      * type = #reference
    * searchParam[+]
      * name = "modality"
      * type = #token
    * searchParam[+]
      * name = "bodysite"
      * type = #token
    * searchParam[+]
      * name = "format-code"
      * type = #token
    * searchParam[+]
      * name = "doc-status"
      * type = #token
    * searchParam[+]
      * name = "version"
      * type = #string
    * searchParam[+]
      * name = "description"
      * type = #string
    * searchParam[+]
      * name = "creation"
      * type = #date
    * searchParam[+]
      * name = "related"
      * type = #reference
    * searchParam[+]
      * name = "event-code"
      * type = #token
    * searchParam[+]
      * name = "facility"
      * type = #token
    * searchParam[+]
      * name = "security-label"
      * type = #token
    * searchParam[+]
      * name = "language"
      * type = #token
    * searchParam[+]
      * name = "period"
      * type = #date
    * searchParam[+]
      * name = "format-uri"
      * type = #uri
    * searchParam[+]
      * name = "patient"
      * type = #reference
    * searchParam[+]
      * name = "subject"
      * type = #reference
    * searchParam[+]
      * name = "format-canonical"
      * type = #uri
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * searchParam[+]
      * name = "author"
      * type = #reference
    * searchParam[+]
      * name = "custodian"
      * type = #reference
    * searchParam[+]
      * name = "status"
      * type = #token
    * searchParam[+]
      * name = "location"
      * type = #uri
    * searchParam[+]
      * name = "based-on"
      * type = #reference
    * searchParam[+]
      * name = "bodysite-reference"
      * type = #reference
    * searchParam[+]
      * name = "setting"
      * type = #token
    * type = #DocumentReference
* status = #active
