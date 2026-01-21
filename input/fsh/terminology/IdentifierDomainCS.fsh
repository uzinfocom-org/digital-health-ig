CodeSystem: IdentifierDomainCS
Id: identifier-domain-cs
Title: "Identifier domain"
Description: """
  Description of the identifier systems acceptable for entity (patient, practitioner, organization) identification.

  See [identifiers](identifiers.html) page for guidance and examples on using this codesystem.

  This is modelled after the [Estonian Identifier Domain](https://fhir.ee/ig/terminology/0.2.3/site/CodeSystem-identifier-domain.html) with the exception that country codes are ISO 3166 two letter codes for consistency within UZ Core.
  """
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete
* ^property[0].code = #idtype
* ^property[=].uri = $identifier-type
* ^property[=].description = "Identifier type of concept according to http://terminology.hl7.org/CodeSystem/v2-0203"
* ^property[=].type = #Coding
* ^property[+].code = #country
* ^property[=].uri = $iso-3166
* ^property[=].description = "ISO 3166-1 two letter country code"
* ^property[=].type = #Coding
* ^property[+].code = #naming-system
* ^property[=].description = "The uri for the related naming system that defines system metadata"
* ^property[=].type = #string
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "The concept is not intended to be chosen by the user (abstract concept)"
* ^property[=].type = #boolean
* #https://dhp.uz/fhir/core/sid/org "Root of identifiers for organization identification"
  * ^property[0].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #https://dhp.uz/fhir/core/sid/org/uz "Root of Uzbekistan identifiers for organizations"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UZ
    * #https://dhp.uz/fhir/core/sid/org/uz/soliq "Tax identification numbers and other identifiers assigned by the Uzbekistan Tax Authority (Soliq)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#TAX
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = Canonical(uzb-soliq)
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
    * #https://dhp.uz/fhir/core/sid/org/uz/argos "Healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#FI
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = Canonical(uzb-hrm-argos)
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
* #https://dhp.uz/fhir/core/sid/pro "Root of identifiers for healthcare professionals"
  * ^property[0].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #https://dhp.uz/fhir/core/sid/pro/uz "Root of Uzbekistan identifiers for healthcare professionals"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UZ
    * #https://dhp.uz/fhir/core/sid/pro/uz/argos "Healthcare professional official ID provided by HRM Argos."
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = Canonical(uzb-hrm-argos-practitioner)
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
* #https://dhp.uz/fhir/core/sid/pid "Root of identifiers for personal identification"
  * ^property[0].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #https://dhp.uz/fhir/core/sid/pid/uz "Root of Uzbekistan identifiers for personal identification"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UZ
    * #https://dhp.uz/fhir/core/sid/pid/uz/ppn "Passport number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = true
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/local "Local (internal) passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCoding = $identifier-type#PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCoding = $iso-3166#UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-local"
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl "International passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCoding = $identifier-type#PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCoding = $iso-3166#UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-international"
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/dp "Diplomatic passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCoding = $identifier-type#PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCoding = $iso-3166#UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-diplomatic"
    * #https://dhp.uz/fhir/core/sid/pid/uz/ni "National unique individual identifier of Uzbekistan (PINFL)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-national-id"
    * #https://dhp.uz/fhir/core/sid/pid/uz/bct "Birth certificate of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#BCT
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-birth-certificate"
    * #https://dhp.uz/fhir/core/sid/pid/uz/dl "Driver's license of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-drivers-license"
    * #https://dhp.uz/fhir/core/sid/pid/uz/hc "Health card number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#HC
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-health-card"
    * #https://dhp.uz/fhir/core/sid/pid/uz/mi "Military ID number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#MI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-military-id"
    * #https://dhp.uz/fhir/core/sid/pid/uz/pcn "Penitentiary/correctional institution number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PCN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-penitentiary-number"
    * #https://dhp.uz/fhir/core/sid/pid/uz/prn "Provider-assigned patient identifiers (organization-specific namespace)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PRN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = true
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-provider-assigned"
    * #https://dhp.uz/fhir/core/sid/pid/uz/mrt "Unknown patient code generated by healthcare provider, used when the organization's tax ID is not available. Prefer `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt` when possible."
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#MR
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-unknown-patient"
  * #https://dhp.uz/fhir/core/sid/pid/af "Root identifier for personal identification of country Afghanistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AF
    * #https://dhp.uz/fhir/core/sid/pid/af/ppn "Passport number of Afghanistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AFG"
  * #https://dhp.uz/fhir/core/sid/pid/ax "Root identifier for personal identification of country Åland Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AX
    * #https://dhp.uz/fhir/core/sid/pid/ax/ppn "Passport number of Åland Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALA"
  * #https://dhp.uz/fhir/core/sid/pid/al "Root identifier for personal identification of country Albania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AL
    * #https://dhp.uz/fhir/core/sid/pid/al/ppn "Passport number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALB"
    * #https://dhp.uz/fhir/core/sid/pid/al/ni "National identifier of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AL
    * #https://dhp.uz/fhir/core/sid/pid/al/cz "ID-card number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AL
    * #https://dhp.uz/fhir/core/sid/pid/al/dl "Driver's licence number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AL
  * #https://dhp.uz/fhir/core/sid/pid/dz "Root identifier for personal identification of country Algeria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DZ
    * #https://dhp.uz/fhir/core/sid/pid/dz/ppn "Passport number of Algeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DZA"
  * #https://dhp.uz/fhir/core/sid/pid/as "Root identifier for personal identification of country American Samoa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AS
    * #https://dhp.uz/fhir/core/sid/pid/as/ppn "Passport number of American Samoa"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ASM"
  * #https://dhp.uz/fhir/core/sid/pid/us "Root identifier for personal identification of country United States of America"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#US
    * #https://dhp.uz/fhir/core/sid/pid/us/ppn "Passport number of United States of America"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#US
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-USA"
  * #https://dhp.uz/fhir/core/sid/pid/ad "Root identifier for personal identification of country Andorra"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AD
    * #https://dhp.uz/fhir/core/sid/pid/ad/ppn "Passport number of Andorra"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AND"
  * #https://dhp.uz/fhir/core/sid/pid/ao "Root identifier for personal identification of country Angola"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AO
    * #https://dhp.uz/fhir/core/sid/pid/ao/ppn "Passport number of Angola"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AGO"
  * #https://dhp.uz/fhir/core/sid/pid/ai "Root identifier for personal identification of country Anguilla"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AI
    * #https://dhp.uz/fhir/core/sid/pid/ai/ppn "Passport number of Anguilla"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AIA"
  * #https://dhp.uz/fhir/core/sid/pid/aq "Root identifier for personal identification of country Antarctica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AQ
    * #https://dhp.uz/fhir/core/sid/pid/aq/ppn "Passport number of Antarctica"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATA"
  * #https://dhp.uz/fhir/core/sid/pid/ag "Root identifier for personal identification of country Antigua and Barbuda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AG
    * #https://dhp.uz/fhir/core/sid/pid/ag/ppn "Passport number of Antigua and Barbuda"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATG"
  * #https://dhp.uz/fhir/core/sid/pid/ae "Root identifier for personal identification of country United Arab Emirates"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AE
    * #https://dhp.uz/fhir/core/sid/pid/ae/ppn "Passport number of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARE"
    * #https://dhp.uz/fhir/core/sid/pid/ae/ni "National identifier of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AE
    * #https://dhp.uz/fhir/core/sid/pid/ae/cz "ID-card number of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AE
  * #https://dhp.uz/fhir/core/sid/pid/ar "Root identifier for personal identification of country Argentina"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AR
    * #https://dhp.uz/fhir/core/sid/pid/ar/ppn "Passport number of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARG"
    * #https://dhp.uz/fhir/core/sid/pid/ar/ni "National identifier of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AR
    * #https://dhp.uz/fhir/core/sid/pid/ar/dl "Driver's licence number of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AR
  * #https://dhp.uz/fhir/core/sid/pid/am "Root identifier for personal identification of country Armenia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AM
    * #https://dhp.uz/fhir/core/sid/pid/am/ppn "Passport number of Armenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARM"
  * #https://dhp.uz/fhir/core/sid/pid/aw "Root identifier for personal identification of country Aruba"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AW
    * #https://dhp.uz/fhir/core/sid/pid/aw/ppn "Passport number of Aruba"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ABW"
  * #https://dhp.uz/fhir/core/sid/pid/az "Root identifier for personal identification of country Azerbaijan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AZ
    * #https://dhp.uz/fhir/core/sid/pid/az/ppn "Passport number of Azerbaijan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AZE"
  * #https://dhp.uz/fhir/core/sid/pid/au "Root identifier for personal identification of country Australia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AU
    * #https://dhp.uz/fhir/core/sid/pid/au/ppn "Passport number of Australia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUS"
  * #https://dhp.uz/fhir/core/sid/pid/at "Root identifier for personal identification of country Austria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#AT
    * #https://dhp.uz/fhir/core/sid/pid/at/ppn "Passport number of Austria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#AT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUT"
  * #https://dhp.uz/fhir/core/sid/pid/bs "Root identifier for personal identification of country Bahamas"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BS
    * #https://dhp.uz/fhir/core/sid/pid/bs/ppn "Passport number of Bahamas"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHS"
  * #https://dhp.uz/fhir/core/sid/pid/bh "Root identifier for personal identification of country Bahrain"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BH
    * #https://dhp.uz/fhir/core/sid/pid/bh/ppn "Passport number of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHR"
    * #https://dhp.uz/fhir/core/sid/pid/bh/ni "National identifier of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BH
    * #https://dhp.uz/fhir/core/sid/pid/bh/cz "ID-card number of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BH
  * #https://dhp.uz/fhir/core/sid/pid/bd "Root identifier for personal identification of country Bangladesh"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BD
    * #https://dhp.uz/fhir/core/sid/pid/bd/ppn "Passport number of Bangladesh"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGD"
    * #https://dhp.uz/fhir/core/sid/pid/bd/ni "National identifier of Bangladesh"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BD
  * #https://dhp.uz/fhir/core/sid/pid/bb "Root identifier for personal identification of country Barbados"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BB
    * #https://dhp.uz/fhir/core/sid/pid/bb/ppn "Passport number of Barbados"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRB"
  * #https://dhp.uz/fhir/core/sid/pid/pw "Root identifier for personal identification of country Palau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PW
    * #https://dhp.uz/fhir/core/sid/pid/pw/ppn "Passport number of Palau"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PLW"
  * #https://dhp.uz/fhir/core/sid/pid/be "Root identifier for personal identification of country Belgium"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BE
    * #https://dhp.uz/fhir/core/sid/pid/be/ppn "Passport number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEL"
    * #https://dhp.uz/fhir/core/sid/pid/be/ni "National identifier of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BE
    * #https://dhp.uz/fhir/core/sid/pid/be/cz "ID-card number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BE
    * #https://dhp.uz/fhir/core/sid/pid/be/dl "Driver's licence number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BE
  * #https://dhp.uz/fhir/core/sid/pid/bz "Root identifier for personal identification of country Belize"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BZ
    * #https://dhp.uz/fhir/core/sid/pid/bz/ppn "Passport number of Belize"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLZ"
  * #https://dhp.uz/fhir/core/sid/pid/bj "Root identifier for personal identification of country Benin"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BJ
    * #https://dhp.uz/fhir/core/sid/pid/bj/ppn "Passport number of Benin"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEN"
  * #https://dhp.uz/fhir/core/sid/pid/bm "Root identifier for personal identification of country Bermuda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BM
    * #https://dhp.uz/fhir/core/sid/pid/bm/ppn "Passport number of Bermuda"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BMU"
  * #https://dhp.uz/fhir/core/sid/pid/bt "Root identifier for personal identification of country Bhutan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BT
    * #https://dhp.uz/fhir/core/sid/pid/bt/ppn "Passport number of Bhutan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BTN"
  * #https://dhp.uz/fhir/core/sid/pid/bo "Root identifier for personal identification of country Bolivia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BO
    * #https://dhp.uz/fhir/core/sid/pid/bo/ppn "Passport number of Bolivia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BOL"
  * #https://dhp.uz/fhir/core/sid/pid/ba "Root identifier for personal identification of country Bosnia and Hertzegovina"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/ppn "Passport number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BIH"
    * #https://dhp.uz/fhir/core/sid/pid/ba/ni "National identifier of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/cz "ID-card number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/dl "Driver's licence number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BA
  * #https://dhp.uz/fhir/core/sid/pid/bw "Root identifier for personal identification of country Botswana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BW
    * #https://dhp.uz/fhir/core/sid/pid/bw/ppn "Passport number of Botswana"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BWA"
  * #https://dhp.uz/fhir/core/sid/pid/bv "Root identifier for personal identification of country Bouvet Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BV
    * #https://dhp.uz/fhir/core/sid/pid/bv/ppn "Passport number of Bouvet Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BVT"
  * #https://dhp.uz/fhir/core/sid/pid/br "Root identifier for personal identification of country Brazil"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BR
    * #https://dhp.uz/fhir/core/sid/pid/br/ppn "Passport number of Brazil"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRA"
    * #https://dhp.uz/fhir/core/sid/pid/br/ni "National identifier of Brazil"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BR
  * #https://dhp.uz/fhir/core/sid/pid/io "Root identifier for personal identification of country British Indian Ocean Territory"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IO
    * #https://dhp.uz/fhir/core/sid/pid/io/ppn "Passport number of British Indian Ocean Territory"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IOT"
  * #https://dhp.uz/fhir/core/sid/pid/vg "Root identifier for personal identification of country Virgin Islands (British)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VG
    * #https://dhp.uz/fhir/core/sid/pid/vg/ppn "Passport number of Virgin Islands (British)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VGB"
  * #https://dhp.uz/fhir/core/sid/pid/bn "Root identifier for personal identification of country Brunei Darussalam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BN
    * #https://dhp.uz/fhir/core/sid/pid/bn/ppn "Passport number of Brunei Darussalam"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRN"
  * #https://dhp.uz/fhir/core/sid/pid/bg "Root identifier for personal identification of country Bulgaria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/ppn "Passport number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGR"
    * #https://dhp.uz/fhir/core/sid/pid/bg/ni "National identifier of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/cz "ID-card number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/dl "Driver's licence number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BG
  * #https://dhp.uz/fhir/core/sid/pid/bf "Root identifier for personal identification of country Burkina Faso"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BF
    * #https://dhp.uz/fhir/core/sid/pid/bf/ppn "Passport number of Burkina Faso"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BFA"
  * #https://dhp.uz/fhir/core/sid/pid/bi "Root identifier for personal identification of country Burundi"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BI
    * #https://dhp.uz/fhir/core/sid/pid/bi/ppn "Passport number of Burundi"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BDI"
  * #https://dhp.uz/fhir/core/sid/pid/cv "Root identifier for personal identification of country Cape Verde"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CV
    * #https://dhp.uz/fhir/core/sid/pid/cv/ppn "Passport number of Cape Verde"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CPV"
  * #https://dhp.uz/fhir/core/sid/pid/co "Root identifier for personal identification of country Colombia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CO
    * #https://dhp.uz/fhir/core/sid/pid/co/ppn "Passport number of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COL"
    * #https://dhp.uz/fhir/core/sid/pid/co/ni "National identifier of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CO
    * #https://dhp.uz/fhir/core/sid/pid/co/dl "Driver's licence number of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CO
  * #https://dhp.uz/fhir/core/sid/pid/ck "Root identifier for personal identification of country Cook Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CK
    * #https://dhp.uz/fhir/core/sid/pid/ck/ppn "Passport number of Cook Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COK"
  * #https://dhp.uz/fhir/core/sid/pid/cr "Root identifier for personal identification of country Costa Rica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CR
    * #https://dhp.uz/fhir/core/sid/pid/cr/ppn "Passport number of Costa Rica"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CRI"
  * #https://dhp.uz/fhir/core/sid/pid/ci "Root identifier for personal identification of country Cote d'Ivoire"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CI
    * #https://dhp.uz/fhir/core/sid/pid/ci/ppn "Passport number of Cote d'Ivoire"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CIV"
  * #https://dhp.uz/fhir/core/sid/pid/dj "Root identifier for personal identification of country Djibouti"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DJ
    * #https://dhp.uz/fhir/core/sid/pid/dj/ppn "Passport number of Djibouti"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DJI"
  * #https://dhp.uz/fhir/core/sid/pid/dm "Root identifier for personal identification of country Dominica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DM
    * #https://dhp.uz/fhir/core/sid/pid/dm/ppn "Passport number of Dominica"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DMA"
  * #https://dhp.uz/fhir/core/sid/pid/do "Root identifier for personal identification of country Dominican Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DO
    * #https://dhp.uz/fhir/core/sid/pid/do/ppn "Passport number of Dominican Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DOM"
  * #https://dhp.uz/fhir/core/sid/pid/ec "Root identifier for personal identification of country Ecuador"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#EC
    * #https://dhp.uz/fhir/core/sid/pid/ec/ppn "Passport number of Ecuador"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#EC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ECU"
  * #https://dhp.uz/fhir/core/sid/pid/eg "Root identifier for personal identification of country Egypt"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#EG
    * #https://dhp.uz/fhir/core/sid/pid/eg/ppn "Passport number of Egypt"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#EG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EGY"
  * #https://dhp.uz/fhir/core/sid/pid/ee "Root identifier for personal identification of country Estonia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#EE
    * #https://dhp.uz/fhir/core/sid/pid/ee/ppn "Passport number of Estonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#EE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EST"
  * #https://dhp.uz/fhir/core/sid/pid/gq "Root identifier for personal identification of country Equatorial Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GQ
    * #https://dhp.uz/fhir/core/sid/pid/gq/ppn "Passport number of Equatorial Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNQ"
  * #https://dhp.uz/fhir/core/sid/pid/sv "Root identifier for personal identification of country El Salvador"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SV
    * #https://dhp.uz/fhir/core/sid/pid/sv/ppn "Passport number of El Salvador"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLV"
  * #https://dhp.uz/fhir/core/sid/pid/er "Root identifier for personal identification of country Eritrea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ER
    * #https://dhp.uz/fhir/core/sid/pid/er/ppn "Passport number of Eritrea"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ER
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ERI"
  * #https://dhp.uz/fhir/core/sid/pid/et "Root identifier for personal identification of country Ethiopia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ET
    * #https://dhp.uz/fhir/core/sid/pid/et/ppn "Passport number of Ethiopia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ET
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ETH"
  * #https://dhp.uz/fhir/core/sid/pid/fk "Root identifier for personal identification of country Falkland Islands (Malvinas)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FK
    * #https://dhp.uz/fhir/core/sid/pid/fk/ppn "Passport number of Falkland Islands (Malvinas)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FLK"
  * #https://dhp.uz/fhir/core/sid/pid/fj "Root identifier for personal identification of country Fiji"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FJ
    * #https://dhp.uz/fhir/core/sid/pid/fj/ppn "Passport number of Fiji"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FJI"
  * #https://dhp.uz/fhir/core/sid/pid/ph "Root identifier for personal identification of country Philippines"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PH
    * #https://dhp.uz/fhir/core/sid/pid/ph/ppn "Passport number of Philippines"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PHL"
  * #https://dhp.uz/fhir/core/sid/pid/fo "Root identifier for personal identification of country Faroe Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FO
    * #https://dhp.uz/fhir/core/sid/pid/fo/ppn "Passport number of Faroe Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRO"
  * #https://dhp.uz/fhir/core/sid/pid/ga "Root identifier for personal identification of country Gabon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GA
    * #https://dhp.uz/fhir/core/sid/pid/ga/ppn "Passport number of Gabon"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GAB"
  * #https://dhp.uz/fhir/core/sid/pid/gm "Root identifier for personal identification of country Gambia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GM
    * #https://dhp.uz/fhir/core/sid/pid/gm/ppn "Passport number of Gambia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GMB"
  * #https://dhp.uz/fhir/core/sid/pid/gh "Root identifier for personal identification of country Ghana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GH
    * #https://dhp.uz/fhir/core/sid/pid/gh/ppn "Passport number of Ghana"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GHA"
  * #https://dhp.uz/fhir/core/sid/pid/gi "Root identifier for personal identification of country Gibraltar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GI
    * #https://dhp.uz/fhir/core/sid/pid/gi/ppn "Passport number of Gibraltar"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIB"
  * #https://dhp.uz/fhir/core/sid/pid/gd "Root identifier for personal identification of country Grenada"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GD
    * #https://dhp.uz/fhir/core/sid/pid/gd/ppn "Passport number of Grenada"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRD"
  * #https://dhp.uz/fhir/core/sid/pid/ge "Root identifier for personal identification of country Georgia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/ppn "Passport number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GEO"
    * #https://dhp.uz/fhir/core/sid/pid/ge/ni "National identifier of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/cz "ID-card number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/dl "Driver's licence number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GE
  * #https://dhp.uz/fhir/core/sid/pid/gl "Root identifier for personal identification of country Greenland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GL
    * #https://dhp.uz/fhir/core/sid/pid/gl/ppn "Passport number of Greenland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRL"
  * #https://dhp.uz/fhir/core/sid/pid/gp "Root identifier for personal identification of country Guadeloupe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GP
    * #https://dhp.uz/fhir/core/sid/pid/gp/ppn "Passport number of Guadeloupe"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GLP"
  * #https://dhp.uz/fhir/core/sid/pid/gf "Root identifier for personal identification of country French Guiana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GF
    * #https://dhp.uz/fhir/core/sid/pid/gf/ppn "Passport number of French Guiana"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUF"
  * #https://dhp.uz/fhir/core/sid/pid/gu "Root identifier for personal identification of country Guam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GU
    * #https://dhp.uz/fhir/core/sid/pid/gu/ppn "Passport number of Guam"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUM"
  * #https://dhp.uz/fhir/core/sid/pid/gt "Root identifier for personal identification of country Guatemala"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GT
    * #https://dhp.uz/fhir/core/sid/pid/gt/ppn "Passport number of Guatemala"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GTM"
  * #https://dhp.uz/fhir/core/sid/pid/gg "Root identifier for personal identification of country Guernsey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GG
    * #https://dhp.uz/fhir/core/sid/pid/gg/ppn "Passport number of Guernsey"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GGY"
  * #https://dhp.uz/fhir/core/sid/pid/gn "Root identifier for personal identification of country Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GN
    * #https://dhp.uz/fhir/core/sid/pid/gn/ppn "Passport number of Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIN"
  * #https://dhp.uz/fhir/core/sid/pid/gw "Root identifier for personal identification of country Guinea-Bissau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GW
    * #https://dhp.uz/fhir/core/sid/pid/gw/ppn "Passport number of Guinea-Bissau"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNB"
  * #https://dhp.uz/fhir/core/sid/pid/gy "Root identifier for personal identification of country Guyana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GY
    * #https://dhp.uz/fhir/core/sid/pid/gy/ppn "Passport number of Guyana"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUY"
  * #https://dhp.uz/fhir/core/sid/pid/ht "Root identifier for personal identification of country Haiti"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HT
    * #https://dhp.uz/fhir/core/sid/pid/ht/ppn "Passport number of Haiti"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HTI"
  * #https://dhp.uz/fhir/core/sid/pid/hm "Root identifier for personal identification of country Heard and McDonald Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HM
    * #https://dhp.uz/fhir/core/sid/pid/hm/ppn "Passport number of Heard and McDonald Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HMD"
  * #https://dhp.uz/fhir/core/sid/pid/mo "Root identifier for personal identification of country Macao"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MO
    * #https://dhp.uz/fhir/core/sid/pid/mo/ppn "Passport number of Macao"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAC"
    * #https://dhp.uz/fhir/core/sid/pid/mo/ni "National identifier of Macao"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MO
  * #https://dhp.uz/fhir/core/sid/pid/hk "Root identifier for personal identification of country Hong Kong"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HK
    * #https://dhp.uz/fhir/core/sid/pid/hk/ppn "Passport number of Hong Kong"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HKG"
    * #https://dhp.uz/fhir/core/sid/pid/hk/ni "National identifier of Hong Kong"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HK
  * #https://dhp.uz/fhir/core/sid/pid/cn "Root identifier for personal identification of country China"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CN
    * #https://dhp.uz/fhir/core/sid/pid/cn/ppn "Passport number of China"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHN"
    * #https://dhp.uz/fhir/core/sid/pid/cn/ni "National identifier of China"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CN
  * #https://dhp.uz/fhir/core/sid/pid/es "Root identifier for personal identification of country Spain"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ES
    * #https://dhp.uz/fhir/core/sid/pid/es/ppn "Passport number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ES
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESP"
    * #https://dhp.uz/fhir/core/sid/pid/es/ni "National identifier of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ES
    * #https://dhp.uz/fhir/core/sid/pid/es/cz "ID-card number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ES
    * #https://dhp.uz/fhir/core/sid/pid/es/dl "Driver's licence number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ES
  * #https://dhp.uz/fhir/core/sid/pid/bq "Root identifier for personal identification of country Bonaire, Saint Eustatius and Saba"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BQ
    * #https://dhp.uz/fhir/core/sid/pid/bq/ppn "Passport number of Bonaire, Saint Eustatius and Saba"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BES"
  * #https://dhp.uz/fhir/core/sid/pid/cw "Root identifier for personal identification of country Curaçao"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CW
    * #https://dhp.uz/fhir/core/sid/pid/cw/ppn "Passport number of Curaçao"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CUW"
  * #https://dhp.uz/fhir/core/sid/pid/sx "Root identifier for personal identification of country Sint Maarten (Dutch part)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SX
    * #https://dhp.uz/fhir/core/sid/pid/sx/ppn "Passport number of Sint Maarten (Dutch part)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SXM"
  * #https://dhp.uz/fhir/core/sid/pid/hn "Root identifier for personal identification of country Honduras"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HN
    * #https://dhp.uz/fhir/core/sid/pid/hn/ppn "Passport number of Honduras"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HND"
  * #https://dhp.uz/fhir/core/sid/pid/hr "Root identifier for personal identification of country Croatia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/ppn "Passport number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HRV"
    * #https://dhp.uz/fhir/core/sid/pid/hr/ni "National identifier of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/cz "ID-card number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/dl "Driver's licence number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HR
  * #https://dhp.uz/fhir/core/sid/pid/ie "Root identifier for personal identification of country Ireland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IE
    * #https://dhp.uz/fhir/core/sid/pid/ie/ppn "Passport number of Ireland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRL"
  * #https://dhp.uz/fhir/core/sid/pid/il "Root identifier for personal identification of country Israel"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IL
    * #https://dhp.uz/fhir/core/sid/pid/il/ppn "Passport number of Israel"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISR"
    * #https://dhp.uz/fhir/core/sid/pid/il/ni "National identifier of Israel"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IL
  * #https://dhp.uz/fhir/core/sid/pid/in "Root identifier for personal identification of country India"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IN
    * #https://dhp.uz/fhir/core/sid/pid/in/ppn "Passport number of India"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IND"
  * #https://dhp.uz/fhir/core/sid/pid/id "Root identifier for personal identification of country Indonesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ID
    * #https://dhp.uz/fhir/core/sid/pid/id/ppn "Passport number of Indonesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ID
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IDN"
    * #https://dhp.uz/fhir/core/sid/pid/id/ni "National identifier of Indonesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ID
  * #https://dhp.uz/fhir/core/sid/pid/iq "Root identifier for personal identification of country Iraq"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IQ
    * #https://dhp.uz/fhir/core/sid/pid/iq/ppn "Passport number of Iraq"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRQ"
  * #https://dhp.uz/fhir/core/sid/pid/ir "Root identifier for personal identification of country Iran"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IR
    * #https://dhp.uz/fhir/core/sid/pid/ir/ppn "Passport number of Iran"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRN"
  * #https://dhp.uz/fhir/core/sid/pid/is "Root identifier for personal identification of country Iceland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IS
    * #https://dhp.uz/fhir/core/sid/pid/is/ppn "Passport number of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISL"
    * #https://dhp.uz/fhir/core/sid/pid/is/ni "National identifier of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IS
    * #https://dhp.uz/fhir/core/sid/pid/is/dl "Driver's licence number of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IS
  * #https://dhp.uz/fhir/core/sid/pid/it "Root identifier for personal identification of country Italy"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IT
    * #https://dhp.uz/fhir/core/sid/pid/it/ppn "Passport number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ITA"
    * #https://dhp.uz/fhir/core/sid/pid/it/ni "National identifier of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IT
    * #https://dhp.uz/fhir/core/sid/pid/it/cz "ID-card number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IT
    * #https://dhp.uz/fhir/core/sid/pid/it/dl "Driver's licence number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IT
  * #https://dhp.uz/fhir/core/sid/pid/jp "Root identifier for personal identification of country Japan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#JP
    * #https://dhp.uz/fhir/core/sid/pid/jp/ppn "Passport number of Japan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#JP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JPN"
  * #https://dhp.uz/fhir/core/sid/pid/jm "Root identifier for personal identification of country Jamaica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#JM
    * #https://dhp.uz/fhir/core/sid/pid/jm/ppn "Passport number of Jamaica"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#JM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JAM"
  * #https://dhp.uz/fhir/core/sid/pid/ye "Root identifier for personal identification of country Yemen"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#YE
    * #https://dhp.uz/fhir/core/sid/pid/ye/ppn "Passport number of Yemen"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#YE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-YEM"
  * #https://dhp.uz/fhir/core/sid/pid/je "Root identifier for personal identification of country Jersey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#JE
    * #https://dhp.uz/fhir/core/sid/pid/je/ppn "Passport number of Jersey"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#JE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JEY"
  * #https://dhp.uz/fhir/core/sid/pid/jo "Root identifier for personal identification of country Jordan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#JO
    * #https://dhp.uz/fhir/core/sid/pid/jo/ppn "Passport number of Jordan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#JO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JOR"
  * #https://dhp.uz/fhir/core/sid/pid/cx "Root identifier for personal identification of country Christmas Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CX
    * #https://dhp.uz/fhir/core/sid/pid/cx/ppn "Passport number of Christmas Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CXR"
  * #https://dhp.uz/fhir/core/sid/pid/ky "Root identifier for personal identification of country Cayman Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KY
    * #https://dhp.uz/fhir/core/sid/pid/ky/ppn "Passport number of Cayman Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYM"
  * #https://dhp.uz/fhir/core/sid/pid/kh "Root identifier for personal identification of country Cambodia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KH
    * #https://dhp.uz/fhir/core/sid/pid/kh/ppn "Passport number of Cambodia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KHM"
  * #https://dhp.uz/fhir/core/sid/pid/cm "Root identifier for personal identification of country Cameroon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CM
    * #https://dhp.uz/fhir/core/sid/pid/cm/ppn "Passport number of Cameroon"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CMR"
  * #https://dhp.uz/fhir/core/sid/pid/ca "Root identifier for personal identification of country Canada"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CA
    * #https://dhp.uz/fhir/core/sid/pid/ca/ppn "Passport number of Canada"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAN"
  * #https://dhp.uz/fhir/core/sid/pid/kz "Root identifier for personal identification of country Kazakhstan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/ppn "Passport number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KAZ"
    * #https://dhp.uz/fhir/core/sid/pid/kz/ni "National identifier of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/cz "ID-card number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/dl "Driver's licence number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KZ
  * #https://dhp.uz/fhir/core/sid/pid/qa "Root identifier for personal identification of country Qatar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#QA
    * #https://dhp.uz/fhir/core/sid/pid/qa/ppn "Passport number of Qatar"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#QA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-QAT"
  * #https://dhp.uz/fhir/core/sid/pid/ke "Root identifier for personal identification of country Kenya"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KE
    * #https://dhp.uz/fhir/core/sid/pid/ke/ppn "Passport number of Kenya"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KEN"
  * #https://dhp.uz/fhir/core/sid/pid/cf "Root identifier for personal identification of country Central African Republik"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CF
    * #https://dhp.uz/fhir/core/sid/pid/cf/ppn "Passport number of Central African Republik"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAF"
  * #https://dhp.uz/fhir/core/sid/pid/kg "Root identifier for personal identification of country Kyrgyzstan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KG
    * #https://dhp.uz/fhir/core/sid/pid/kg/ppn "Passport number of Kyrgyzstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KGZ"
  * #https://dhp.uz/fhir/core/sid/pid/ki "Root identifier for personal identification of country Kiribati"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KI
    * #https://dhp.uz/fhir/core/sid/pid/ki/ppn "Passport number of Kiribati"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KIR"
  * #https://dhp.uz/fhir/core/sid/pid/km "Root identifier for personal identification of country Comoros"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KM
    * #https://dhp.uz/fhir/core/sid/pid/km/ppn "Passport number of Comoros"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COM"
  * #https://dhp.uz/fhir/core/sid/pid/cd "Root identifier for personal identification of country Congo, the Democratic Republik of the"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CD
    * #https://dhp.uz/fhir/core/sid/pid/cd/ppn "Passport number of Congo, the Democratic Republik of the"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COD"
  * #https://dhp.uz/fhir/core/sid/pid/cg "Root identifier for personal identification of country Congo"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CG
    * #https://dhp.uz/fhir/core/sid/pid/cg/ppn "Passport number of Congo"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COG"
  * #https://dhp.uz/fhir/core/sid/pid/cc "Root identifier for personal identification of country Cocos (Keeling) Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CC
    * #https://dhp.uz/fhir/core/sid/pid/cc/ppn "Passport number of Cocos (Keeling) Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CCK"
  * #https://dhp.uz/fhir/core/sid/pid/kp "Root identifier for personal identification of country Korea, Democratic People's Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KP
    * #https://dhp.uz/fhir/core/sid/pid/kp/ppn "Passport number of Korea, Democratic People's Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRK"
  * #https://dhp.uz/fhir/core/sid/pid/kr "Root identifier for personal identification of country Korea, Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KR
    * #https://dhp.uz/fhir/core/sid/pid/kr/ppn "Passport number of Korea, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KOR"
  * #https://dhp.uz/fhir/core/sid/pid/gr "Root identifier for personal identification of country Greece"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GR
    * #https://dhp.uz/fhir/core/sid/pid/gr/ppn "Passport number of Greece"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRC"
  * #https://dhp.uz/fhir/core/sid/pid/cu "Root identifier for personal identification of country Cuba"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CU
    * #https://dhp.uz/fhir/core/sid/pid/cu/ppn "Passport number of Cuba"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CUB"
  * #https://dhp.uz/fhir/core/sid/pid/kw "Root identifier for personal identification of country Kuwait"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KW
    * #https://dhp.uz/fhir/core/sid/pid/kw/ppn "Passport number of Kuwait"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KWT"
    * #https://dhp.uz/fhir/core/sid/pid/kw/ni "National identifier of Kuwait"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KW
  * #https://dhp.uz/fhir/core/sid/pid/cy "Root identifier for personal identification of country Cyprus"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CY
    * #https://dhp.uz/fhir/core/sid/pid/cy/ppn "Passport number of Cyprus"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYP"
  * #https://dhp.uz/fhir/core/sid/pid/la "Root identifier for personal identification of country Lao People's Democratic Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LA
    * #https://dhp.uz/fhir/core/sid/pid/la/ppn "Passport number of Lao People's Democratic Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LAO"
  * #https://dhp.uz/fhir/core/sid/pid/lt "Root identifier for personal identification of country Lithuania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/ppn "Passport number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LTU"
    * #https://dhp.uz/fhir/core/sid/pid/lt/ni "National identifier of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/cz "ID-card number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/dl "Driver's licence number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LT
  * #https://dhp.uz/fhir/core/sid/pid/ls "Root identifier for personal identification of country Lesotho"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LS
    * #https://dhp.uz/fhir/core/sid/pid/ls/ppn "Passport number of Lesotho"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LSO"
  * #https://dhp.uz/fhir/core/sid/pid/lr "Root identifier for personal identification of country Liberia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LR
    * #https://dhp.uz/fhir/core/sid/pid/lr/ppn "Passport number of Liberia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBR"
  * #https://dhp.uz/fhir/core/sid/pid/li "Root identifier for personal identification of country Liechtenstein"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LI
    * #https://dhp.uz/fhir/core/sid/pid/li/ppn "Passport number of Liechtenstein"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LIE"
  * #https://dhp.uz/fhir/core/sid/pid/lb "Root identifier for personal identification of country Lebanon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LB
    * #https://dhp.uz/fhir/core/sid/pid/lb/ppn "Passport number of Lebanon"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBN"
  * #https://dhp.uz/fhir/core/sid/pid/lu "Root identifier for personal identification of country Luxembourg"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LU
    * #https://dhp.uz/fhir/core/sid/pid/lu/ppn "Passport number of Luxembourg"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LUX"
  * #https://dhp.uz/fhir/core/sid/pid/za "Root identifier for personal identification of country South Africa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ZA
    * #https://dhp.uz/fhir/core/sid/pid/za/ppn "Passport number of South Africa"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ZA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZAF"
    * #https://dhp.uz/fhir/core/sid/pid/za/ni "National identifier of South Africa"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ZA
  * #https://dhp.uz/fhir/core/sid/pid/gs "Root identifier for personal identification of country South Georgia and the South Sandwich Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GS
    * #https://dhp.uz/fhir/core/sid/pid/gs/ppn "Passport number of South Georgia and the South Sandwich Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGS"
  * #https://dhp.uz/fhir/core/sid/pid/lv "Root identifier for personal identification of country Latvia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/ppn "Passport number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LVA"
    * #https://dhp.uz/fhir/core/sid/pid/lv/ni "National identifier of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/cz "ID-card number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/dl "Driver's licence number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LV
  * #https://dhp.uz/fhir/core/sid/pid/eh "Root identifier for personal identification of country Western Sahara"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#EH
    * #https://dhp.uz/fhir/core/sid/pid/eh/ppn "Passport number of Western Sahara"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#EH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESH"
  * #https://dhp.uz/fhir/core/sid/pid/mg "Root identifier for personal identification of country Madagascar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MG
    * #https://dhp.uz/fhir/core/sid/pid/mg/ppn "Passport number of Madagascar"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDG"
  * #https://dhp.uz/fhir/core/sid/pid/nl "Root identifier for personal identification of country Netherlands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/ppn "Passport number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NLD"
    * #https://dhp.uz/fhir/core/sid/pid/nl/ni "National identifier of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/cz "ID-card number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/dl "Driver's licence number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NL
  * #https://dhp.uz/fhir/core/sid/pid/mk "Root identifier for personal identification of country Macedonia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/ppn "Passport number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MKD"
    * #https://dhp.uz/fhir/core/sid/pid/mk/ni "National identifier of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/cz "ID-card number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/dl "Driver's licence number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MK
  * #https://dhp.uz/fhir/core/sid/pid/my "Root identifier for personal identification of country Malaysia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MY
    * #https://dhp.uz/fhir/core/sid/pid/my/ppn "Passport number of Malaysia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYS"
    * #https://dhp.uz/fhir/core/sid/pid/my/ni "National identifier of Malaysia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MY
  * #https://dhp.uz/fhir/core/sid/pid/mw "Root identifier for personal identification of country Malawi"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MW
    * #https://dhp.uz/fhir/core/sid/pid/mw/ppn "Passport number of Malawi"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MWI"
  * #https://dhp.uz/fhir/core/sid/pid/mv "Root identifier for personal identification of country Maldives"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MV
    * #https://dhp.uz/fhir/core/sid/pid/mv/ppn "Passport number of Maldives"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDV"
  * #https://dhp.uz/fhir/core/sid/pid/ml "Root identifier for personal identification of country Mali"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ML
    * #https://dhp.uz/fhir/core/sid/pid/ml/ppn "Passport number of Mali"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ML
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLI"
  * #https://dhp.uz/fhir/core/sid/pid/mt "Root identifier for personal identification of country Malta"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/ppn "Passport number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLT"
    * #https://dhp.uz/fhir/core/sid/pid/mt/ni "National identifier of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/cz "ID-card number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/dl "Driver's licence number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MT
  * #https://dhp.uz/fhir/core/sid/pid/im "Root identifier for personal identification of country Isle of Man"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#IM
    * #https://dhp.uz/fhir/core/sid/pid/im/ppn "Passport number of Isle of Man"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#IM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IMM"
  * #https://dhp.uz/fhir/core/sid/pid/ma "Root identifier for personal identification of country Morocco"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MA
    * #https://dhp.uz/fhir/core/sid/pid/ma/ppn "Passport number of Morocco"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAR"
  * #https://dhp.uz/fhir/core/sid/pid/mh "Root identifier for personal identification of country Marshall Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MH
    * #https://dhp.uz/fhir/core/sid/pid/mh/ppn "Passport number of Marshall Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MHL"
  * #https://dhp.uz/fhir/core/sid/pid/mq "Root identifier for personal identification of country Martinique"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MQ
    * #https://dhp.uz/fhir/core/sid/pid/mq/ppn "Passport number of Martinique"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MTQ"
  * #https://dhp.uz/fhir/core/sid/pid/mr "Root identifier for personal identification of country Mauritania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MR
    * #https://dhp.uz/fhir/core/sid/pid/mr/ppn "Passport number of Mauritania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MRT"
  * #https://dhp.uz/fhir/core/sid/pid/mu "Root identifier for personal identification of country Mauritius"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MU
    * #https://dhp.uz/fhir/core/sid/pid/mu/ppn "Passport number of Mauritius"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MUS"
  * #https://dhp.uz/fhir/core/sid/pid/yt "Root identifier for personal identification of country Mayotte"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#YT
    * #https://dhp.uz/fhir/core/sid/pid/yt/ppn "Passport number of Mayotte"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#YT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYT"
  * #https://dhp.uz/fhir/core/sid/pid/mx "Root identifier for personal identification of country Mexico"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MX
    * #https://dhp.uz/fhir/core/sid/pid/mx/ppn "Passport number of Mexico"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MEX"
    * #https://dhp.uz/fhir/core/sid/pid/mx/ni "National identifier of Mexico"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MX
  * #https://dhp.uz/fhir/core/sid/pid/fm "Root identifier for personal identification of country Micronesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FM
    * #https://dhp.uz/fhir/core/sid/pid/fm/ppn "Passport number of Micronesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FSM"
  * #https://dhp.uz/fhir/core/sid/pid/md "Root identifier for personal identification of country Moldova, Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MD
    * #https://dhp.uz/fhir/core/sid/pid/md/ppn "Passport number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDA"
    * #https://dhp.uz/fhir/core/sid/pid/md/ni "National identifier of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MD
    * #https://dhp.uz/fhir/core/sid/pid/md/cz "ID-card number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MD
    * #https://dhp.uz/fhir/core/sid/pid/md/dl "Driver's licence number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MD
  * #https://dhp.uz/fhir/core/sid/pid/mc "Root identifier for personal identification of country Monaco"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MC
    * #https://dhp.uz/fhir/core/sid/pid/mc/ppn "Passport number of Monaco"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MCO"
  * #https://dhp.uz/fhir/core/sid/pid/mn "Root identifier for personal identification of country Mongolia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MN
    * #https://dhp.uz/fhir/core/sid/pid/mn/ppn "Passport number of Mongolia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNG"
  * #https://dhp.uz/fhir/core/sid/pid/me "Root identifier for personal identification of country Montenegro"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ME
    * #https://dhp.uz/fhir/core/sid/pid/me/ppn "Passport number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ME
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNE"
    * #https://dhp.uz/fhir/core/sid/pid/me/ni "National identifier of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ME
    * #https://dhp.uz/fhir/core/sid/pid/me/cz "ID-card number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ME
    * #https://dhp.uz/fhir/core/sid/pid/me/dl "Driver's licence number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ME
  * #https://dhp.uz/fhir/core/sid/pid/ms "Root identifier for personal identification of country Montserrat"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MS
    * #https://dhp.uz/fhir/core/sid/pid/ms/ppn "Passport number of Montserrat"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MSR"
  * #https://dhp.uz/fhir/core/sid/pid/mz "Root identifier for personal identification of country Mozambique"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MZ
    * #https://dhp.uz/fhir/core/sid/pid/mz/ppn "Passport number of Mozambique"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MOZ"
  * #https://dhp.uz/fhir/core/sid/pid/xy "Root identifier for personal identification of country Areas not elsewhere specified"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#XY
    * #https://dhp.uz/fhir/core/sid/pid/xy/ppn "Passport number of Areas not elsewhere specified"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#XY
  * #https://dhp.uz/fhir/core/sid/pid/xx "Root identifier for personal identification of country Not specified"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#XX
    * #https://dhp.uz/fhir/core/sid/pid/xx/ppn "Passport number of Not specified"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#XX
  * #https://dhp.uz/fhir/core/sid/pid/mm "Root identifier for personal identification of country Myanmar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MM
    * #https://dhp.uz/fhir/core/sid/pid/mm/ppn "Passport number of Myanmar"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MMR"
  * #https://dhp.uz/fhir/core/sid/pid/na "Root identifier for personal identification of country Namibia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NA
    * #https://dhp.uz/fhir/core/sid/pid/na/ppn "Passport number of Namibia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NAM"
  * #https://dhp.uz/fhir/core/sid/pid/nr "Root identifier for personal identification of country Nauru"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NR
    * #https://dhp.uz/fhir/core/sid/pid/nr/ppn "Passport number of Nauru"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NRU"
  * #https://dhp.uz/fhir/core/sid/pid/np "Root identifier for personal identification of country Nepal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NP
    * #https://dhp.uz/fhir/core/sid/pid/np/ppn "Passport number of Nepal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NPL"
    * #https://dhp.uz/fhir/core/sid/pid/np/ni "National identifier of Nepal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NP
  * #https://dhp.uz/fhir/core/sid/pid/ni "Root identifier for personal identification of country Nicaragua"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NI
    * #https://dhp.uz/fhir/core/sid/pid/ni/ppn "Passport number of Nicaragua"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIC"
  * #https://dhp.uz/fhir/core/sid/pid/ng "Root identifier for personal identification of country Nigeria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NG
    * #https://dhp.uz/fhir/core/sid/pid/ng/ppn "Passport number of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NGA"
    * #https://dhp.uz/fhir/core/sid/pid/ng/ni "National identifier of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NG
    * #https://dhp.uz/fhir/core/sid/pid/ng/dl "Driver's licence number of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NG
  * #https://dhp.uz/fhir/core/sid/pid/ne "Root identifier for personal identification of country Niger"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NE
    * #https://dhp.uz/fhir/core/sid/pid/ne/ppn "Passport number of Niger"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NER"
  * #https://dhp.uz/fhir/core/sid/pid/nu "Root identifier for personal identification of country Niue"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NU
    * #https://dhp.uz/fhir/core/sid/pid/nu/ppn "Passport number of Niue"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIU"
  * #https://dhp.uz/fhir/core/sid/pid/nf "Root identifier for personal identification of country Norfolk Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NF
    * #https://dhp.uz/fhir/core/sid/pid/nf/ppn "Passport number of Norfolk Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NFK"
  * #https://dhp.uz/fhir/core/sid/pid/no "Root identifier for personal identification of country Norway"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NO
    * #https://dhp.uz/fhir/core/sid/pid/no/ppn "Passport number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NOR"
    * #https://dhp.uz/fhir/core/sid/pid/no/ni "National identifier of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NO
    * #https://dhp.uz/fhir/core/sid/pid/no/cz "ID-card number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NO
    * #https://dhp.uz/fhir/core/sid/pid/no/dl "Driver's licence number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NO
  * #https://dhp.uz/fhir/core/sid/pid/om "Root identifier for personal identification of country Oman"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#OM
    * #https://dhp.uz/fhir/core/sid/pid/om/ppn "Passport number of Oman"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#OM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-OMN"
  * #https://dhp.uz/fhir/core/sid/pid/pg "Root identifier for personal identification of country Papua New Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PG
    * #https://dhp.uz/fhir/core/sid/pid/pg/ppn "Passport number of Papua New Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PNG"
  * #https://dhp.uz/fhir/core/sid/pid/pk "Root identifier for personal identification of country Pakistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PK
    * #https://dhp.uz/fhir/core/sid/pid/pk/ppn "Passport number of Pakistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAK"
    * #https://dhp.uz/fhir/core/sid/pid/pk/ni "National identifier of Pakistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PK
  * #https://dhp.uz/fhir/core/sid/pid/ps "Root identifier for personal identification of country Palestinian Territory, Occupied"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PS
    * #https://dhp.uz/fhir/core/sid/pid/ps/ppn "Passport number of Palestinian Territory, Occupied"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PSE"
  * #https://dhp.uz/fhir/core/sid/pid/pa "Root identifier for personal identification of country Panama"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PA
    * #https://dhp.uz/fhir/core/sid/pid/pa/ppn "Passport number of Panama"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAN"
  * #https://dhp.uz/fhir/core/sid/pid/py "Root identifier for personal identification of country Paraguay"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PY
    * #https://dhp.uz/fhir/core/sid/pid/py/ppn "Passport number of Paraguay"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRY"
  * #https://dhp.uz/fhir/core/sid/pid/pe "Root identifier for personal identification of country Peru"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PE
    * #https://dhp.uz/fhir/core/sid/pid/pe/ppn "Passport number of Peru"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PER"
  * #https://dhp.uz/fhir/core/sid/pid/pn "Root identifier for personal identification of country Pitcairn"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PN
    * #https://dhp.uz/fhir/core/sid/pid/pn/ppn "Passport number of Pitcairn"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PCN"
  * #https://dhp.uz/fhir/core/sid/pid/pl "Root identifier for personal identification of country Poland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/ppn "Passport number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-POL"
    * #https://dhp.uz/fhir/core/sid/pid/pl/ni "National identifier of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/cz "ID-card number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/dl "Driver's licence number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PL
  * #https://dhp.uz/fhir/core/sid/pid/pt "Root identifier for personal identification of country Portugal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/ppn "Passport number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRT"
    * #https://dhp.uz/fhir/core/sid/pid/pt/ni "National identifier of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/cz "ID-card number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/dl "Driver's licence number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PT
  * #https://dhp.uz/fhir/core/sid/pid/tf "Root identifier for personal identification of country French Southern Territories"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TF
    * #https://dhp.uz/fhir/core/sid/pid/tf/ppn "Passport number of French Southern Territories"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATF"
  * #https://dhp.uz/fhir/core/sid/pid/pf "Root identifier for personal identification of country French Polynesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PF
    * #https://dhp.uz/fhir/core/sid/pid/pf/ppn "Passport number of French Polynesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PYF"
  * #https://dhp.uz/fhir/core/sid/pid/fr "Root identifier for personal identification of country France"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FR
    * #https://dhp.uz/fhir/core/sid/pid/fr/ppn "Passport number of France"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRA"
  * #https://dhp.uz/fhir/core/sid/pid/pr "Root identifier for personal identification of country Puerto Rico"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PR
    * #https://dhp.uz/fhir/core/sid/pid/pr/ppn "Passport number of Puerto Rico"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRI"
  * #https://dhp.uz/fhir/core/sid/pid/mp "Root identifier for personal identification of country Northern Mariana Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#MP
    * #https://dhp.uz/fhir/core/sid/pid/mp/ppn "Passport number of Northern Mariana Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#MP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNP"
  * #https://dhp.uz/fhir/core/sid/pid/va "Root identifier for personal identification of country Holy See (Vatican City State)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VA
    * #https://dhp.uz/fhir/core/sid/pid/va/ppn "Passport number of Holy See (Vatican City State)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VAT"
  * #https://dhp.uz/fhir/core/sid/pid/re "Root identifier for personal identification of country Réunion"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#RE
    * #https://dhp.uz/fhir/core/sid/pid/re/ppn "Passport number of Réunion"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-REU"
  * #https://dhp.uz/fhir/core/sid/pid/se "Root identifier for personal identification of country Sweden"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SE
    * #https://dhp.uz/fhir/core/sid/pid/se/ppn "Passport number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWE"
    * #https://dhp.uz/fhir/core/sid/pid/se/ni "National identifier of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SE
    * #https://dhp.uz/fhir/core/sid/pid/se/cz "ID-card number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SE
    * #https://dhp.uz/fhir/core/sid/pid/se/dl "Driver's licence number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SE
  * #https://dhp.uz/fhir/core/sid/pid/ro "Root identifier for personal identification of country Romania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/ppn "Passport number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ROU"
    * #https://dhp.uz/fhir/core/sid/pid/ro/ni "National identifier of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/cz "ID-card number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/dl "Driver's licence number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RO
  * #https://dhp.uz/fhir/core/sid/pid/rw "Root identifier for personal identification of country Rwanda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#RW
    * #https://dhp.uz/fhir/core/sid/pid/rw/ppn "Passport number of Rwanda"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RWA"
  * #https://dhp.uz/fhir/core/sid/pid/sb "Root identifier for personal identification of country Solomon Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SB
    * #https://dhp.uz/fhir/core/sid/pid/sb/ppn "Passport number of Solomon Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLB"
  * #https://dhp.uz/fhir/core/sid/pid/kn "Root identifier for personal identification of country Saint Kitts and Nevis"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#KN
    * #https://dhp.uz/fhir/core/sid/pid/kn/ppn "Passport number of Saint Kitts and Nevis"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#KN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KNA"
  * #https://dhp.uz/fhir/core/sid/pid/sh "Root identifier for personal identification of country Saint Helena"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SH
    * #https://dhp.uz/fhir/core/sid/pid/sh/ppn "Passport number of Saint Helena"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SHN"
  * #https://dhp.uz/fhir/core/sid/pid/lc "Root identifier for personal identification of country Saint Lucia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LC
    * #https://dhp.uz/fhir/core/sid/pid/lc/ppn "Passport number of Saint Lucia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LCA"
  * #https://dhp.uz/fhir/core/sid/pid/pm "Root identifier for personal identification of country Saint Pierre and Miquelon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#PM
    * #https://dhp.uz/fhir/core/sid/pid/pm/ppn "Passport number of Saint Pierre and Miquelon"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#PM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SPM"
  * #https://dhp.uz/fhir/core/sid/pid/vc "Root identifier for personal identification of country Saint Vincent and the Grenadines"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VC
    * #https://dhp.uz/fhir/core/sid/pid/vc/ppn "Passport number of Saint Vincent and the Grenadines"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VCT"
  * #https://dhp.uz/fhir/core/sid/pid/de "Root identifier for personal identification of country Germany"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DE
    * #https://dhp.uz/fhir/core/sid/pid/de/ppn "Passport number of Germany"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DEU"
  * #https://dhp.uz/fhir/core/sid/pid/zm "Root identifier for personal identification of country Zambia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ZM
    * #https://dhp.uz/fhir/core/sid/pid/zm/ppn "Passport number of Zambia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ZM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZMB"
  * #https://dhp.uz/fhir/core/sid/pid/ws "Root identifier for personal identification of country Samoa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#WS
    * #https://dhp.uz/fhir/core/sid/pid/ws/ppn "Passport number of Samoa"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#WS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WSM"
  * #https://dhp.uz/fhir/core/sid/pid/sm "Root identifier for personal identification of country San Marino"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/ppn "Passport number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SMR"
    * #https://dhp.uz/fhir/core/sid/pid/sm/ni "National identifier of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/cz "ID-card number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/dl "Driver's licence number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SM
  * #https://dhp.uz/fhir/core/sid/pid/st "Root identifier for personal identification of country Sao Tome and Principe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ST
    * #https://dhp.uz/fhir/core/sid/pid/st/ppn "Passport number of Sao Tome and Principe"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ST
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-STP"
  * #https://dhp.uz/fhir/core/sid/pid/sa "Root identifier for personal identification of country Saudi Arabia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SA
    * #https://dhp.uz/fhir/core/sid/pid/sa/ppn "Passport number of Saudi Arabia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SAU"
  * #https://dhp.uz/fhir/core/sid/pid/sc "Root identifier for personal identification of country Seychelles"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SC
    * #https://dhp.uz/fhir/core/sid/pid/sc/ppn "Passport number of Seychelles"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYC"
  * #https://dhp.uz/fhir/core/sid/pid/sn "Root identifier for personal identification of country Senegal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SN
    * #https://dhp.uz/fhir/core/sid/pid/sn/ppn "Passport number of Senegal"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SEN"
  * #https://dhp.uz/fhir/core/sid/pid/rs "Root identifier for personal identification of country Serbia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/ppn "Passport number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SRB"
    * #https://dhp.uz/fhir/core/sid/pid/rs/ni "National identifier of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/cz "ID-card number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/dl "Driver's licence number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RS
  * #https://dhp.uz/fhir/core/sid/pid/sl "Root identifier for personal identification of country Sierra Leone"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SL
    * #https://dhp.uz/fhir/core/sid/pid/sl/ppn "Passport number of Sierra Leone"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLE"
  * #https://dhp.uz/fhir/core/sid/pid/sg "Root identifier for personal identification of country Singapore"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SG
    * #https://dhp.uz/fhir/core/sid/pid/sg/ppn "Passport number of Singapore"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGP"
    * #https://dhp.uz/fhir/core/sid/pid/sg/ni "National identifier of Singapore"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SG
  * #https://dhp.uz/fhir/core/sid/pid/sk "Root identifier for personal identification of country Slovakia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/ppn "Passport number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVK"
    * #https://dhp.uz/fhir/core/sid/pid/sk/ni "National identifier of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/cz "ID-card number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/dl "Driver's licence number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SK
  * #https://dhp.uz/fhir/core/sid/pid/si "Root identifier for personal identification of country Slovenia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SI
    * #https://dhp.uz/fhir/core/sid/pid/si/ppn "Passport number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVN"
    * #https://dhp.uz/fhir/core/sid/pid/si/ni "National identifier of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SI
    * #https://dhp.uz/fhir/core/sid/pid/si/cz "ID-card number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SI
    * #https://dhp.uz/fhir/core/sid/pid/si/dl "Driver's licence number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SI
  * #https://dhp.uz/fhir/core/sid/pid/so "Root identifier for personal identification of country Somalia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SO
    * #https://dhp.uz/fhir/core/sid/pid/so/ppn "Passport number of Somalia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SOM"
  * #https://dhp.uz/fhir/core/sid/pid/fi "Root identifier for personal identification of country Finland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/ppn "Passport number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FIN"
    * #https://dhp.uz/fhir/core/sid/pid/fi/ni "National identifier of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/cz "ID-card number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/dl "Driver's licence number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#FI
  * #https://dhp.uz/fhir/core/sid/pid/lk "Root identifier for personal identification of country Sri Lanka"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LK
    * #https://dhp.uz/fhir/core/sid/pid/lk/ppn "Passport number of Sri Lanka"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LKA"
    * #https://dhp.uz/fhir/core/sid/pid/lk/ni "National identifier of Sri Lanka"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LK
  * #https://dhp.uz/fhir/core/sid/pid/sd "Root identifier for personal identification of country Sudan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SD
    * #https://dhp.uz/fhir/core/sid/pid/sd/ppn "Passport number of Sudan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SDN"
  * #https://dhp.uz/fhir/core/sid/pid/sr "Root identifier for personal identification of country Suriname"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SR
    * #https://dhp.uz/fhir/core/sid/pid/sr/ppn "Passport number of Suriname"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SUR"
  * #https://dhp.uz/fhir/core/sid/pid/ly "Root identifier for personal identification of country Libyan Arab Jamahiriya"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#LY
    * #https://dhp.uz/fhir/core/sid/pid/ly/ppn "Passport number of Libyan Arab Jamahiriya"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#LY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBY"
  * #https://dhp.uz/fhir/core/sid/pid/gb "Root identifier for personal identification of country United Kingdom"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#GB
    * #https://dhp.uz/fhir/core/sid/pid/gb/ppn "Passport number of United Kingdom"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GBR"
    * #https://dhp.uz/fhir/core/sid/pid/gb/dl "Driver's licence number of United Kingdom"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#GB
  * #https://dhp.uz/fhir/core/sid/pid/sz "Root identifier for personal identification of country Swaziland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SZ
    * #https://dhp.uz/fhir/core/sid/pid/sz/ppn "Passport number of Swaziland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWZ"
  * #https://dhp.uz/fhir/core/sid/pid/sj "Root identifier for personal identification of country Svalbard and Jan Mayen"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SJ
    * #https://dhp.uz/fhir/core/sid/pid/sj/ppn "Passport number of Svalbard and Jan Mayen"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SJM"
  * #https://dhp.uz/fhir/core/sid/pid/sy "Root identifier for personal identification of country Syrian Arab Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#SY
    * #https://dhp.uz/fhir/core/sid/pid/sy/ppn "Passport number of Syrian Arab Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#SY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYR"
  * #https://dhp.uz/fhir/core/sid/pid/ch "Root identifier for personal identification of country Switzerland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CH
    * #https://dhp.uz/fhir/core/sid/pid/ch/ppn "Passport number of Switzerland"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHE"
  * #https://dhp.uz/fhir/core/sid/pid/zw "Root identifier for personal identification of country Zimbabwe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#ZW
    * #https://dhp.uz/fhir/core/sid/pid/zw/ppn "Passport number of Zimbabwe"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ZW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZWE"
    * #https://dhp.uz/fhir/core/sid/pid/zw/ni "National identifier of Zimbabwe"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#ZW
  * #https://dhp.uz/fhir/core/sid/pid/dk "Root identifier for personal identification of country Denmark"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#DK
    * #https://dhp.uz/fhir/core/sid/pid/dk/ppn "Passport number of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DNK"
    * #https://dhp.uz/fhir/core/sid/pid/dk/ni "National identifier of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DK
    * #https://dhp.uz/fhir/core/sid/pid/dk/dl "Driver's licence number of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#DK
  * #https://dhp.uz/fhir/core/sid/pid/tj "Root identifier for personal identification of country Tajikistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TJ
    * #https://dhp.uz/fhir/core/sid/pid/tj/ppn "Passport number of Tajikistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TJK"
  * #https://dhp.uz/fhir/core/sid/pid/th "Root identifier for personal identification of country Thailand"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TH
    * #https://dhp.uz/fhir/core/sid/pid/th/ppn "Passport number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-THA"
    * #https://dhp.uz/fhir/core/sid/pid/th/ni "National identifier of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TH
    * #https://dhp.uz/fhir/core/sid/pid/th/cz "ID-card number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TH
    * #https://dhp.uz/fhir/core/sid/pid/th/dl "Driver's licence number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TH
  * #https://dhp.uz/fhir/core/sid/pid/tw "Root identifier for personal identification of country Taiwan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TW
    * #https://dhp.uz/fhir/core/sid/pid/tw/ppn "Passport number of Taiwan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TWN"
    * #https://dhp.uz/fhir/core/sid/pid/tw/ni "National identifier of Taiwan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TW
  * #https://dhp.uz/fhir/core/sid/pid/tz "Root identifier for personal identification of country Tanzania, United Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TZ
    * #https://dhp.uz/fhir/core/sid/pid/tz/ppn "Passport number of Tanzania, United Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TZA"
  * #https://dhp.uz/fhir/core/sid/pid/tl "Root identifier for personal identification of country Timor-Leste"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TL
    * #https://dhp.uz/fhir/core/sid/pid/tl/ppn "Passport number of Timor-Leste"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TLS"
  * #https://dhp.uz/fhir/core/sid/pid/tg "Root identifier for personal identification of country Togo"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TG
    * #https://dhp.uz/fhir/core/sid/pid/tg/ppn "Passport number of Togo"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TGO"
  * #https://dhp.uz/fhir/core/sid/pid/tk "Root identifier for personal identification of country Tokelau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TK
    * #https://dhp.uz/fhir/core/sid/pid/tk/ppn "Passport number of Tokelau"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKL"
  * #https://dhp.uz/fhir/core/sid/pid/to "Root identifier for personal identification of country Tonga"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TO
    * #https://dhp.uz/fhir/core/sid/pid/to/ppn "Passport number of Tonga"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TON"
  * #https://dhp.uz/fhir/core/sid/pid/tt "Root identifier for personal identification of country Trinidad and Tobago"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TT
    * #https://dhp.uz/fhir/core/sid/pid/tt/ppn "Passport number of Trinidad and Tobago"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TTO"
  * #https://dhp.uz/fhir/core/sid/pid/td "Root identifier for personal identification of country Chad"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TD
    * #https://dhp.uz/fhir/core/sid/pid/td/ppn "Passport number of Chad"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCD"
  * #https://dhp.uz/fhir/core/sid/pid/cz "Root identifier for personal identification of country Czech Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/ppn "Passport number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CZE"
    * #https://dhp.uz/fhir/core/sid/pid/cz/ni "National identifier of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/cz "ID-card number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/dl "Driver's licence number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CZ
  * #https://dhp.uz/fhir/core/sid/pid/cl "Root identifier for personal identification of country Chile"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/ppn "Passport number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHL"
    * #https://dhp.uz/fhir/core/sid/pid/cl/ni "National identifier of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/cz "ID-card number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/dl "Driver's licence number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#CL
  * #https://dhp.uz/fhir/core/sid/pid/tn "Root identifier for personal identification of country Tunisia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TN
    * #https://dhp.uz/fhir/core/sid/pid/tn/ppn "Passport number of Tunisia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUN"
  * #https://dhp.uz/fhir/core/sid/pid/tc "Root identifier for personal identification of country Turks and Caicos Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TC
    * #https://dhp.uz/fhir/core/sid/pid/tc/ppn "Passport number of Turks and Caicos Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCA"
  * #https://dhp.uz/fhir/core/sid/pid/tv "Root identifier for personal identification of country Tuvalu"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TV
    * #https://dhp.uz/fhir/core/sid/pid/tv/ppn "Passport number of Tuvalu"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUV"
  * #https://dhp.uz/fhir/core/sid/pid/tr "Root identifier for personal identification of country Turkey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TR
    * #https://dhp.uz/fhir/core/sid/pid/tr/ppn "Passport number of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUR"
    * #https://dhp.uz/fhir/core/sid/pid/tr/ni "National identifier of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TR
    * #https://dhp.uz/fhir/core/sid/pid/tr/dl "Driver's licence number of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TR
  * #https://dhp.uz/fhir/core/sid/pid/tm "Root identifier for personal identification of country Turkmenistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#TM
    * #https://dhp.uz/fhir/core/sid/pid/tm/ppn "Passport number of Turkmenistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#TM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKM"
  * #https://dhp.uz/fhir/core/sid/pid/ug "Root identifier for personal identification of country Uganda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UG
    * #https://dhp.uz/fhir/core/sid/pid/ug/ppn "Passport number of Uganda"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UGA"
  * #https://dhp.uz/fhir/core/sid/pid/ua "Root identifier for personal identification of country Ukraine"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/ppn "Passport number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UKR"
    * #https://dhp.uz/fhir/core/sid/pid/ua/ni "National identifier of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/cz "ID-card number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/dl "Driver's licence number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UA
  * #https://dhp.uz/fhir/core/sid/pid/hu "Root identifier for personal identification of country Hungary"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#HU
    * #https://dhp.uz/fhir/core/sid/pid/hu/ppn "Passport number of Hungary"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#HU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HUN"
  * #https://dhp.uz/fhir/core/sid/pid/uy "Root identifier for personal identification of country Uruguay"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UY
    * #https://dhp.uz/fhir/core/sid/pid/uy/ppn "Passport number of Uruguay"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-URY"
  * #https://dhp.uz/fhir/core/sid/pid/nc "Root identifier for personal identification of country New Caledonia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NC
    * #https://dhp.uz/fhir/core/sid/pid/nc/ppn "Passport number of New Caledonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NCL"
  * #https://dhp.uz/fhir/core/sid/pid/nz "Root identifier for personal identification of country New Zealand"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#NZ
    * #https://dhp.uz/fhir/core/sid/pid/nz/ppn "Passport number of New Zealand"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#NZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NZL"
  * #https://dhp.uz/fhir/core/sid/pid/by "Root identifier for personal identification of country Belarus"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#BY
    * #https://dhp.uz/fhir/core/sid/pid/by/ppn "Passport number of Belarus"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#BY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLR"
  * #https://dhp.uz/fhir/core/sid/pid/wf "Root identifier for personal identification of country Wallis and Futuna Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#WF
    * #https://dhp.uz/fhir/core/sid/pid/wf/ppn "Passport number of Wallis and Futuna Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#WF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WLF"
  * #https://dhp.uz/fhir/core/sid/pid/vu "Root identifier for personal identification of country Vanuatu"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VU
    * #https://dhp.uz/fhir/core/sid/pid/vu/ppn "Passport number of Vanuatu"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VUT"
  * #https://dhp.uz/fhir/core/sid/pid/ru "Root identifier for personal identification of country Russian Federation"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#RU
    * #https://dhp.uz/fhir/core/sid/pid/ru/ppn "Passport number of Russian Federation"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#RU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RUS"
  * #https://dhp.uz/fhir/core/sid/pid/ve "Root identifier for personal identification of country Venezuela"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VE
    * #https://dhp.uz/fhir/core/sid/pid/ve/ppn "Passport number of Venezuela"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VEN"
    * #https://dhp.uz/fhir/core/sid/pid/ve/ni "National identifier of Venezuela"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VE
  * #https://dhp.uz/fhir/core/sid/pid/vn "Root identifier for personal identification of country Viet Nam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VN
    * #https://dhp.uz/fhir/core/sid/pid/vn/ppn "Passport number of Viet Nam"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VNM"
  * #https://dhp.uz/fhir/core/sid/pid/vi "Root identifier for personal identification of country Virgin Islands (U.S.)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#VI
    * #https://dhp.uz/fhir/core/sid/pid/vi/ppn "Passport number of Virgin Islands (U.S.)"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#VI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VIR"
  * #https://dhp.uz/fhir/core/sid/pid/um "Root identifier for personal identification of country United States Minor Outlying Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCoding = $iso-3166#UM
    * #https://dhp.uz/fhir/core/sid/pid/um/ppn "Passport number of United States Minor Outlying Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCoding = $identifier-type#PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCoding = $iso-3166#UM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UMI"
