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
* ^property[=].type = #code
* ^property[+].code = #country
* ^property[=].uri = $iso-3166
* ^property[=].description = "ISO 3166-1 two letter country code"
* ^property[=].type = #code
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
    * ^property[=].valueCode = #UZ
    * #https://dhp.uz/fhir/core/sid/org/uz/soliq "Tax identification numbers and other identifiers assigned by the Uzbekistan Tax Authority (Soliq)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #TAX
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = Canonical(uzb-soliq)
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
    * #https://dhp.uz/fhir/core/sid/org/uz/argos "Healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #FI
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
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
    * ^property[=].valueCode = #UZ
    * #https://dhp.uz/fhir/core/sid/pro/uz/argos "Healthcare professional official ID provided by HRM Argos."
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = Canonical(uzb-hrm-argos-practitioner)
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
* #https://dhp.uz/fhir/core/sid/pid "Root of identifiers for personal identification"
  * ^property[0].code = #notSelectable
  * ^property[=].valueBoolean = true
  * #https://dhp.uz/fhir/core/sid/pid/uzb "Root of Uzbekistan identifiers for personal identification"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #UZ
    * #https://dhp.uz/fhir/core/sid/pid/uz/ppn "Passport number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = true
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/local "Local (internal) passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCode = #PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCode = #UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-local"
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/intl "International passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCode = #PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCode = #UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-international"
      * #https://dhp.uz/fhir/core/sid/pid/uz/ppn/dp "Diplomatic passport of Uzbekistan"
        * ^property[0].code = #idtype
        * ^property[=].valueCode = #PPN
        * ^property[+].code = #notSelectable
        * ^property[=].valueBoolean = false
        * ^property[+].code = #country
        * ^property[=].valueCode = #UZ
        * ^property[+].code = #naming-system
        * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-diplomatic"
    * #https://dhp.uz/fhir/core/sid/pid/uz/ni "National unique individual identifier of Uzbekistan (PINFL)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-national-id"
    * #https://dhp.uz/fhir/core/sid/pid/uz/bct "Birth certificate of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #BCT
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-birth-certificate"
    * #https://dhp.uz/fhir/core/sid/pid/uz/dl "Driver's license of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-drivers-license"
    * #https://dhp.uz/fhir/core/sid/pid/uz/hc "Health card number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #HC
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-health-card"
    * #https://dhp.uz/fhir/core/sid/pid/uz/mi "Military ID number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #MI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-military-id"
    * #https://dhp.uz/fhir/core/sid/pid/uz/pcn "Penitentiary/correctional institution number of Uzbekistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PCN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-penitentiary-number"
    * #https://dhp.uz/fhir/core/sid/pid/uz/prn "Provider-assigned patient identifiers (organization-specific namespace)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PRN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = true
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-provider-assigned"
    * #https://dhp.uz/fhir/core/sid/pid/uz/mrt "Unknown patient code generated by healthcare provider, used when the organization's tax ID is not available. Prefer `https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt` when possible."
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #MR
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-unknown-patient"
  * #https://dhp.uz/fhir/core/sid/pid/afg "Root identifier for personal identification of country Afghanistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AF
    * #https://dhp.uz/fhir/core/sid/pid/af/ppn "Passport number of Afghanistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AFG"
  * #https://dhp.uz/fhir/core/sid/pid/ala "Root identifier for personal identification of country Åland Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AX
    * #https://dhp.uz/fhir/core/sid/pid/ax/ppn "Passport number of Åland Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALA"
  * #https://dhp.uz/fhir/core/sid/pid/alb "Root identifier for personal identification of country Albania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AL
    * #https://dhp.uz/fhir/core/sid/pid/al/ppn "Passport number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ALB"
    * #https://dhp.uz/fhir/core/sid/pid/al/ni "National identifier of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AL
    * #https://dhp.uz/fhir/core/sid/pid/al/cz "ID-card number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AL
    * #https://dhp.uz/fhir/core/sid/pid/al/dl "Driver's licence number of Albania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AL
  * #https://dhp.uz/fhir/core/sid/pid/dza "Root identifier for personal identification of country Algeria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DZ
    * #https://dhp.uz/fhir/core/sid/pid/dz/ppn "Passport number of Algeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DZA"
  * #https://dhp.uz/fhir/core/sid/pid/asm "Root identifier for personal identification of country American Samoa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AS
    * #https://dhp.uz/fhir/core/sid/pid/as/ppn "Passport number of American Samoa"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ASM"
  * #https://dhp.uz/fhir/core/sid/pid/usa "Root identifier for personal identification of country United States of America"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #US
    * #https://dhp.uz/fhir/core/sid/pid/us/ppn "Passport number of United States of America"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #US
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-USA"
  * #https://dhp.uz/fhir/core/sid/pid/and "Root identifier for personal identification of country Andorra"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AD
    * #https://dhp.uz/fhir/core/sid/pid/ad/ppn "Passport number of Andorra"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AND"
  * #https://dhp.uz/fhir/core/sid/pid/ago "Root identifier for personal identification of country Angola"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AO
    * #https://dhp.uz/fhir/core/sid/pid/ao/ppn "Passport number of Angola"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AGO"
  * #https://dhp.uz/fhir/core/sid/pid/aia "Root identifier for personal identification of country Anguilla"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AI
    * #https://dhp.uz/fhir/core/sid/pid/ai/ppn "Passport number of Anguilla"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AIA"
  * #https://dhp.uz/fhir/core/sid/pid/ata "Root identifier for personal identification of country Antarctica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AQ
    * #https://dhp.uz/fhir/core/sid/pid/aq/ppn "Passport number of Antarctica"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATA"
  * #https://dhp.uz/fhir/core/sid/pid/atg "Root identifier for personal identification of country Antigua and Barbuda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AG
    * #https://dhp.uz/fhir/core/sid/pid/ag/ppn "Passport number of Antigua and Barbuda"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATG"
  * #https://dhp.uz/fhir/core/sid/pid/are "Root identifier for personal identification of country United Arab Emirates"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AE
    * #https://dhp.uz/fhir/core/sid/pid/ae/ppn "Passport number of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARE"
    * #https://dhp.uz/fhir/core/sid/pid/ae/ni "National identifier of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AE
    * #https://dhp.uz/fhir/core/sid/pid/ae/cz "ID-card number of United Arab Emirates"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AE
  * #https://dhp.uz/fhir/core/sid/pid/arg "Root identifier for personal identification of country Argentina"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AR
    * #https://dhp.uz/fhir/core/sid/pid/ar/ppn "Passport number of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARG"
    * #https://dhp.uz/fhir/core/sid/pid/ar/ni "National identifier of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AR
    * #https://dhp.uz/fhir/core/sid/pid/ar/dl "Driver's licence number of Argentina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AR
  * #https://dhp.uz/fhir/core/sid/pid/arm "Root identifier for personal identification of country Armenia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AM
    * #https://dhp.uz/fhir/core/sid/pid/am/ppn "Passport number of Armenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ARM"
  * #https://dhp.uz/fhir/core/sid/pid/abw "Root identifier for personal identification of country Aruba"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AW
    * #https://dhp.uz/fhir/core/sid/pid/aw/ppn "Passport number of Aruba"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ABW"
  * #https://dhp.uz/fhir/core/sid/pid/aze "Root identifier for personal identification of country Azerbaijan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AZ
    * #https://dhp.uz/fhir/core/sid/pid/az/ppn "Passport number of Azerbaijan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AZE"
  * #https://dhp.uz/fhir/core/sid/pid/aus "Root identifier for personal identification of country Australia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AU
    * #https://dhp.uz/fhir/core/sid/pid/au/ppn "Passport number of Australia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUS"
  * #https://dhp.uz/fhir/core/sid/pid/aut "Root identifier for personal identification of country Austria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AT
    * #https://dhp.uz/fhir/core/sid/pid/at/ppn "Passport number of Austria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-AUT"
  * #https://dhp.uz/fhir/core/sid/pid/bhs "Root identifier for personal identification of country Bahamas"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BS
    * #https://dhp.uz/fhir/core/sid/pid/bs/ppn "Passport number of Bahamas"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHS"
  * #https://dhp.uz/fhir/core/sid/pid/bhr "Root identifier for personal identification of country Bahrain"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BH
    * #https://dhp.uz/fhir/core/sid/pid/bh/ppn "Passport number of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BHR"
    * #https://dhp.uz/fhir/core/sid/pid/bh/ni "National identifier of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BH
    * #https://dhp.uz/fhir/core/sid/pid/bh/cz "ID-card number of Bahrain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BH
  * #https://dhp.uz/fhir/core/sid/pid/bgd "Root identifier for personal identification of country Bangladesh"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BD
    * #https://dhp.uz/fhir/core/sid/pid/bd/ppn "Passport number of Bangladesh"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGD"
    * #https://dhp.uz/fhir/core/sid/pid/bd/ni "National identifier of Bangladesh"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BD
  * #https://dhp.uz/fhir/core/sid/pid/brb "Root identifier for personal identification of country Barbados"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BB
    * #https://dhp.uz/fhir/core/sid/pid/bb/ppn "Passport number of Barbados"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRB"
  * #https://dhp.uz/fhir/core/sid/pid/plw "Root identifier for personal identification of country Palau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PW
    * #https://dhp.uz/fhir/core/sid/pid/pw/ppn "Passport number of Palau"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PLW"
  * #https://dhp.uz/fhir/core/sid/pid/bel "Root identifier for personal identification of country Belgium"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BE
    * #https://dhp.uz/fhir/core/sid/pid/be/ppn "Passport number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEL"
    * #https://dhp.uz/fhir/core/sid/pid/be/ni "National identifier of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BE
    * #https://dhp.uz/fhir/core/sid/pid/be/cz "ID-card number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BE
    * #https://dhp.uz/fhir/core/sid/pid/be/dl "Driver's licence number of Belgium"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BE
  * #https://dhp.uz/fhir/core/sid/pid/blz "Root identifier for personal identification of country Belize"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BZ
    * #https://dhp.uz/fhir/core/sid/pid/bz/ppn "Passport number of Belize"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLZ"
  * #https://dhp.uz/fhir/core/sid/pid/ben "Root identifier for personal identification of country Benin"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BJ
    * #https://dhp.uz/fhir/core/sid/pid/bj/ppn "Passport number of Benin"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BEN"
  * #https://dhp.uz/fhir/core/sid/pid/bmu "Root identifier for personal identification of country Bermuda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BM
    * #https://dhp.uz/fhir/core/sid/pid/bm/ppn "Passport number of Bermuda"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BMU"
  * #https://dhp.uz/fhir/core/sid/pid/btn "Root identifier for personal identification of country Bhutan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BT
    * #https://dhp.uz/fhir/core/sid/pid/bt/ppn "Passport number of Bhutan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BTN"
  * #https://dhp.uz/fhir/core/sid/pid/bol "Root identifier for personal identification of country Bolivia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BO
    * #https://dhp.uz/fhir/core/sid/pid/bo/ppn "Passport number of Bolivia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BOL"
  * #https://dhp.uz/fhir/core/sid/pid/bih "Root identifier for personal identification of country Bosnia and Hertzegovina"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/ppn "Passport number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BIH"
    * #https://dhp.uz/fhir/core/sid/pid/ba/ni "National identifier of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/cz "ID-card number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BA
    * #https://dhp.uz/fhir/core/sid/pid/ba/dl "Driver's licence number of Bosnia and Hertzegovina"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BA
  * #https://dhp.uz/fhir/core/sid/pid/bwa "Root identifier for personal identification of country Botswana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BW
    * #https://dhp.uz/fhir/core/sid/pid/bw/ppn "Passport number of Botswana"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BWA"
  * #https://dhp.uz/fhir/core/sid/pid/bvt "Root identifier for personal identification of country Bouvet Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BV
    * #https://dhp.uz/fhir/core/sid/pid/bv/ppn "Passport number of Bouvet Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BVT"
  * #https://dhp.uz/fhir/core/sid/pid/bra "Root identifier for personal identification of country Brazil"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BR
    * #https://dhp.uz/fhir/core/sid/pid/br/ppn "Passport number of Brazil"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRA"
    * #https://dhp.uz/fhir/core/sid/pid/br/ni "National identifier of Brazil"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BR
  * #https://dhp.uz/fhir/core/sid/pid/iot "Root identifier for personal identification of country British Indian Ocean Territory"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IO
    * #https://dhp.uz/fhir/core/sid/pid/io/ppn "Passport number of British Indian Ocean Territory"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IOT"
  * #https://dhp.uz/fhir/core/sid/pid/vgb "Root identifier for personal identification of country Virgin Islands (British)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VG
    * #https://dhp.uz/fhir/core/sid/pid/vg/ppn "Passport number of Virgin Islands (British)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VGB"
  * #https://dhp.uz/fhir/core/sid/pid/brn "Root identifier for personal identification of country Brunei Darussalam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BN
    * #https://dhp.uz/fhir/core/sid/pid/bn/ppn "Passport number of Brunei Darussalam"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BRN"
  * #https://dhp.uz/fhir/core/sid/pid/bgr "Root identifier for personal identification of country Bulgaria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/ppn "Passport number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BGR"
    * #https://dhp.uz/fhir/core/sid/pid/bg/ni "National identifier of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/cz "ID-card number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BG
    * #https://dhp.uz/fhir/core/sid/pid/bg/dl "Driver's licence number of Bulgaria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BG
  * #https://dhp.uz/fhir/core/sid/pid/bfa "Root identifier for personal identification of country Burkina Faso"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BF
    * #https://dhp.uz/fhir/core/sid/pid/bf/ppn "Passport number of Burkina Faso"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BFA"
  * #https://dhp.uz/fhir/core/sid/pid/bdi "Root identifier for personal identification of country Burundi"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BI
    * #https://dhp.uz/fhir/core/sid/pid/bi/ppn "Passport number of Burundi"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BDI"
  * #https://dhp.uz/fhir/core/sid/pid/cpv "Root identifier for personal identification of country Cape Verde"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CV
    * #https://dhp.uz/fhir/core/sid/pid/cv/ppn "Passport number of Cape Verde"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CPV"
  * #https://dhp.uz/fhir/core/sid/pid/col "Root identifier for personal identification of country Colombia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CO
    * #https://dhp.uz/fhir/core/sid/pid/co/ppn "Passport number of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COL"
    * #https://dhp.uz/fhir/core/sid/pid/co/ni "National identifier of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CO
    * #https://dhp.uz/fhir/core/sid/pid/co/dl "Driver's licence number of Colombia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CO
  * #https://dhp.uz/fhir/core/sid/pid/cok "Root identifier for personal identification of country Cook Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CK
    * #https://dhp.uz/fhir/core/sid/pid/ck/ppn "Passport number of Cook Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COK"
  * #https://dhp.uz/fhir/core/sid/pid/cri "Root identifier for personal identification of country Costa Rica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CR
    * #https://dhp.uz/fhir/core/sid/pid/cr/ppn "Passport number of Costa Rica"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CRI"
  * #https://dhp.uz/fhir/core/sid/pid/civ "Root identifier for personal identification of country Cote d'Ivoire"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CI
    * #https://dhp.uz/fhir/core/sid/pid/ci/ppn "Passport number of Cote d'Ivoire"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CIV"
  * #https://dhp.uz/fhir/core/sid/pid/dji "Root identifier for personal identification of country Djibouti"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DJ
    * #https://dhp.uz/fhir/core/sid/pid/dj/ppn "Passport number of Djibouti"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DJI"
  * #https://dhp.uz/fhir/core/sid/pid/dma "Root identifier for personal identification of country Dominica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DM
    * #https://dhp.uz/fhir/core/sid/pid/dm/ppn "Passport number of Dominica"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DMA"
  * #https://dhp.uz/fhir/core/sid/pid/dom "Root identifier for personal identification of country Dominican Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DO
    * #https://dhp.uz/fhir/core/sid/pid/do/ppn "Passport number of Dominican Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DOM"
  * #https://dhp.uz/fhir/core/sid/pid/ecu "Root identifier for personal identification of country Ecuador"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #EC
    * #https://dhp.uz/fhir/core/sid/pid/ec/ppn "Passport number of Ecuador"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #EC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ECU"
  * #https://dhp.uz/fhir/core/sid/pid/egy "Root identifier for personal identification of country Egypt"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #EG
    * #https://dhp.uz/fhir/core/sid/pid/eg/ppn "Passport number of Egypt"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #EG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-EGY"
  * #https://dhp.uz/fhir/core/sid/pid/gnq "Root identifier for personal identification of country Equatorial Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GQ
    * #https://dhp.uz/fhir/core/sid/pid/gq/ppn "Passport number of Equatorial Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNQ"
  * #https://dhp.uz/fhir/core/sid/pid/slv "Root identifier for personal identification of country El Salvador"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SV
    * #https://dhp.uz/fhir/core/sid/pid/sv/ppn "Passport number of El Salvador"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLV"
  * #https://dhp.uz/fhir/core/sid/pid/eri "Root identifier for personal identification of country Eritrea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ER
    * #https://dhp.uz/fhir/core/sid/pid/er/ppn "Passport number of Eritrea"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ER
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ERI"
  * #https://dhp.uz/fhir/core/sid/pid/eth "Root identifier for personal identification of country Ethiopia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ET
    * #https://dhp.uz/fhir/core/sid/pid/et/ppn "Passport number of Ethiopia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ET
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ETH"
  * #https://dhp.uz/fhir/core/sid/pid/flk "Root identifier for personal identification of country Falkland Islands (Malvinas)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FK
    * #https://dhp.uz/fhir/core/sid/pid/fk/ppn "Passport number of Falkland Islands (Malvinas)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FLK"
  * #https://dhp.uz/fhir/core/sid/pid/fji "Root identifier for personal identification of country Fiji"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FJ
    * #https://dhp.uz/fhir/core/sid/pid/fj/ppn "Passport number of Fiji"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FJI"
  * #https://dhp.uz/fhir/core/sid/pid/phl "Root identifier for personal identification of country Philippines"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PH
    * #https://dhp.uz/fhir/core/sid/pid/ph/ppn "Passport number of Philippines"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PHL"
  * #https://dhp.uz/fhir/core/sid/pid/fro "Root identifier for personal identification of country Faroe Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FO
    * #https://dhp.uz/fhir/core/sid/pid/fo/ppn "Passport number of Faroe Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRO"
  * #https://dhp.uz/fhir/core/sid/pid/gab "Root identifier for personal identification of country Gabon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GA
    * #https://dhp.uz/fhir/core/sid/pid/ga/ppn "Passport number of Gabon"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GAB"
  * #https://dhp.uz/fhir/core/sid/pid/gmb "Root identifier for personal identification of country Gambia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GM
    * #https://dhp.uz/fhir/core/sid/pid/gm/ppn "Passport number of Gambia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GMB"
  * #https://dhp.uz/fhir/core/sid/pid/gha "Root identifier for personal identification of country Ghana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GH
    * #https://dhp.uz/fhir/core/sid/pid/gh/ppn "Passport number of Ghana"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GHA"
  * #https://dhp.uz/fhir/core/sid/pid/gib "Root identifier for personal identification of country Gibraltar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GI
    * #https://dhp.uz/fhir/core/sid/pid/gi/ppn "Passport number of Gibraltar"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIB"
  * #https://dhp.uz/fhir/core/sid/pid/grd "Root identifier for personal identification of country Grenada"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GD
    * #https://dhp.uz/fhir/core/sid/pid/gd/ppn "Passport number of Grenada"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRD"
  * #https://dhp.uz/fhir/core/sid/pid/geo "Root identifier for personal identification of country Georgia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/ppn "Passport number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GEO"
    * #https://dhp.uz/fhir/core/sid/pid/ge/ni "National identifier of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/cz "ID-card number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GE
    * #https://dhp.uz/fhir/core/sid/pid/ge/dl "Driver's licence number of Georgia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GE
  * #https://dhp.uz/fhir/core/sid/pid/grl "Root identifier for personal identification of country Greenland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GL
    * #https://dhp.uz/fhir/core/sid/pid/gl/ppn "Passport number of Greenland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRL"
  * #https://dhp.uz/fhir/core/sid/pid/glp "Root identifier for personal identification of country Guadeloupe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GP
    * #https://dhp.uz/fhir/core/sid/pid/gp/ppn "Passport number of Guadeloupe"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GLP"
  * #https://dhp.uz/fhir/core/sid/pid/guf "Root identifier for personal identification of country French Guiana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GF
    * #https://dhp.uz/fhir/core/sid/pid/gf/ppn "Passport number of French Guiana"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUF"
  * #https://dhp.uz/fhir/core/sid/pid/gum "Root identifier for personal identification of country Guam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GU
    * #https://dhp.uz/fhir/core/sid/pid/gu/ppn "Passport number of Guam"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUM"
  * #https://dhp.uz/fhir/core/sid/pid/gtm "Root identifier for personal identification of country Guatemala"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GT
    * #https://dhp.uz/fhir/core/sid/pid/gt/ppn "Passport number of Guatemala"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GTM"
  * #https://dhp.uz/fhir/core/sid/pid/ggy "Root identifier for personal identification of country Guernsey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GG
    * #https://dhp.uz/fhir/core/sid/pid/gg/ppn "Passport number of Guernsey"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GGY"
  * #https://dhp.uz/fhir/core/sid/pid/gin "Root identifier for personal identification of country Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GN
    * #https://dhp.uz/fhir/core/sid/pid/gn/ppn "Passport number of Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GIN"
  * #https://dhp.uz/fhir/core/sid/pid/gnb "Root identifier for personal identification of country Guinea-Bissau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GW
    * #https://dhp.uz/fhir/core/sid/pid/gw/ppn "Passport number of Guinea-Bissau"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GNB"
  * #https://dhp.uz/fhir/core/sid/pid/guy "Root identifier for personal identification of country Guyana"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GY
    * #https://dhp.uz/fhir/core/sid/pid/gy/ppn "Passport number of Guyana"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GUY"
  * #https://dhp.uz/fhir/core/sid/pid/hti "Root identifier for personal identification of country Haiti"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HT
    * #https://dhp.uz/fhir/core/sid/pid/ht/ppn "Passport number of Haiti"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HTI"
  * #https://dhp.uz/fhir/core/sid/pid/hmd "Root identifier for personal identification of country Heard and McDonald Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HM
    * #https://dhp.uz/fhir/core/sid/pid/hm/ppn "Passport number of Heard and McDonald Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HMD"
  * #https://dhp.uz/fhir/core/sid/pid/mac "Root identifier for personal identification of country Macao"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MO
    * #https://dhp.uz/fhir/core/sid/pid/mo/ppn "Passport number of Macao"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAC"
    * #https://dhp.uz/fhir/core/sid/pid/mo/ni "National identifier of Macao"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MO
  * #https://dhp.uz/fhir/core/sid/pid/hkg "Root identifier for personal identification of country Hong Kong"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HK
    * #https://dhp.uz/fhir/core/sid/pid/hk/ppn "Passport number of Hong Kong"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HKG"
    * #https://dhp.uz/fhir/core/sid/pid/hk/ni "National identifier of Hong Kong"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HK
  * #https://dhp.uz/fhir/core/sid/pid/chn "Root identifier for personal identification of country China"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CN
    * #https://dhp.uz/fhir/core/sid/pid/cn/ppn "Passport number of China"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHN"
    * #https://dhp.uz/fhir/core/sid/pid/cn/ni "National identifier of China"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CN
  * #https://dhp.uz/fhir/core/sid/pid/esp "Root identifier for personal identification of country Spain"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ES
    * #https://dhp.uz/fhir/core/sid/pid/es/ppn "Passport number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ES
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESP"
    * #https://dhp.uz/fhir/core/sid/pid/es/ni "National identifier of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ES
    * #https://dhp.uz/fhir/core/sid/pid/es/cz "ID-card number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ES
    * #https://dhp.uz/fhir/core/sid/pid/es/dl "Driver's licence number of Spain"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ES
  * #https://dhp.uz/fhir/core/sid/pid/ant "Root identifier for personal identification of country Netherlands Antilles"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #AN
    * #https://dhp.uz/fhir/core/sid/pid/an/ppn "Passport number of Netherlands Antilles"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #AN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ANT"
  * #https://dhp.uz/fhir/core/sid/pid/hnd "Root identifier for personal identification of country Honduras"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HN
    * #https://dhp.uz/fhir/core/sid/pid/hn/ppn "Passport number of Honduras"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HND"
  * #https://dhp.uz/fhir/core/sid/pid/hrv "Root identifier for personal identification of country Croatia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/ppn "Passport number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HRV"
    * #https://dhp.uz/fhir/core/sid/pid/hr/ni "National identifier of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/cz "ID-card number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HR
    * #https://dhp.uz/fhir/core/sid/pid/hr/dl "Driver's licence number of Croatia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HR
  * #https://dhp.uz/fhir/core/sid/pid/irl "Root identifier for personal identification of country Ireland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IE
    * #https://dhp.uz/fhir/core/sid/pid/ie/ppn "Passport number of Ireland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRL"
  * #https://dhp.uz/fhir/core/sid/pid/isr "Root identifier for personal identification of country Israel"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IL
    * #https://dhp.uz/fhir/core/sid/pid/il/ppn "Passport number of Israel"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISR"
    * #https://dhp.uz/fhir/core/sid/pid/il/ni "National identifier of Israel"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IL
  * #https://dhp.uz/fhir/core/sid/pid/ind "Root identifier for personal identification of country India"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IN
    * #https://dhp.uz/fhir/core/sid/pid/in/ppn "Passport number of India"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IND"
  * #https://dhp.uz/fhir/core/sid/pid/idn "Root identifier for personal identification of country Indonesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ID
    * #https://dhp.uz/fhir/core/sid/pid/id/ppn "Passport number of Indonesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ID
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IDN"
    * #https://dhp.uz/fhir/core/sid/pid/id/ni "National identifier of Indonesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ID
  * #https://dhp.uz/fhir/core/sid/pid/irq "Root identifier for personal identification of country Iraq"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IQ
    * #https://dhp.uz/fhir/core/sid/pid/iq/ppn "Passport number of Iraq"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRQ"
  * #https://dhp.uz/fhir/core/sid/pid/irn "Root identifier for personal identification of country Iran"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IR
    * #https://dhp.uz/fhir/core/sid/pid/ir/ppn "Passport number of Iran"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IRN"
  * #https://dhp.uz/fhir/core/sid/pid/isl "Root identifier for personal identification of country Iceland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IS
    * #https://dhp.uz/fhir/core/sid/pid/is/ppn "Passport number of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ISL"
    * #https://dhp.uz/fhir/core/sid/pid/is/ni "National identifier of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IS
    * #https://dhp.uz/fhir/core/sid/pid/is/dl "Driver's licence number of Iceland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IS
  * #https://dhp.uz/fhir/core/sid/pid/ita "Root identifier for personal identification of country Italy"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IT
    * #https://dhp.uz/fhir/core/sid/pid/it/ppn "Passport number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ITA"
    * #https://dhp.uz/fhir/core/sid/pid/it/ni "National identifier of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IT
    * #https://dhp.uz/fhir/core/sid/pid/it/cz "ID-card number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IT
    * #https://dhp.uz/fhir/core/sid/pid/it/dl "Driver's licence number of Italy"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IT
  * #https://dhp.uz/fhir/core/sid/pid/jpn "Root identifier for personal identification of country Japan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #JP
    * #https://dhp.uz/fhir/core/sid/pid/jp/ppn "Passport number of Japan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #JP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JPN"
  * #https://dhp.uz/fhir/core/sid/pid/jam "Root identifier for personal identification of country Jamaica"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #JM
    * #https://dhp.uz/fhir/core/sid/pid/jm/ppn "Passport number of Jamaica"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #JM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JAM"
  * #https://dhp.uz/fhir/core/sid/pid/yem "Root identifier for personal identification of country Yemen"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #YE
    * #https://dhp.uz/fhir/core/sid/pid/ye/ppn "Passport number of Yemen"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #YE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-YEM"
  * #https://dhp.uz/fhir/core/sid/pid/jey "Root identifier for personal identification of country Jersey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #JE
    * #https://dhp.uz/fhir/core/sid/pid/je/ppn "Passport number of Jersey"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #JE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JEY"
  * #https://dhp.uz/fhir/core/sid/pid/jor "Root identifier for personal identification of country Jordan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #JO
    * #https://dhp.uz/fhir/core/sid/pid/jo/ppn "Passport number of Jordan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #JO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-JOR"
  * #https://dhp.uz/fhir/core/sid/pid/cxr "Root identifier for personal identification of country Christmas Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CX
    * #https://dhp.uz/fhir/core/sid/pid/cx/ppn "Passport number of Christmas Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CXR"
  * #https://dhp.uz/fhir/core/sid/pid/cym "Root identifier for personal identification of country Cayman Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KY
    * #https://dhp.uz/fhir/core/sid/pid/ky/ppn "Passport number of Cayman Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYM"
  * #https://dhp.uz/fhir/core/sid/pid/khm "Root identifier for personal identification of country Cambodia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KH
    * #https://dhp.uz/fhir/core/sid/pid/kh/ppn "Passport number of Cambodia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KHM"
  * #https://dhp.uz/fhir/core/sid/pid/cmr "Root identifier for personal identification of country Cameroon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CM
    * #https://dhp.uz/fhir/core/sid/pid/cm/ppn "Passport number of Cameroon"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CMR"
  * #https://dhp.uz/fhir/core/sid/pid/can "Root identifier for personal identification of country Canada"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CA
    * #https://dhp.uz/fhir/core/sid/pid/ca/ppn "Passport number of Canada"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAN"
  * #https://dhp.uz/fhir/core/sid/pid/kaz "Root identifier for personal identification of country Kazakhstan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/ppn "Passport number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KAZ"
    * #https://dhp.uz/fhir/core/sid/pid/kz/ni "National identifier of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/cz "ID-card number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KZ
    * #https://dhp.uz/fhir/core/sid/pid/kz/dl "Driver's licence number of Kazakhstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KZ
  * #https://dhp.uz/fhir/core/sid/pid/qat "Root identifier for personal identification of country Qatar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #QA
    * #https://dhp.uz/fhir/core/sid/pid/qa/ppn "Passport number of Qatar"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #QA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-QAT"
  * #https://dhp.uz/fhir/core/sid/pid/ken "Root identifier for personal identification of country Kenya"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KE
    * #https://dhp.uz/fhir/core/sid/pid/ke/ppn "Passport number of Kenya"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KEN"
  * #https://dhp.uz/fhir/core/sid/pid/caf "Root identifier for personal identification of country Central African Republik"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CF
    * #https://dhp.uz/fhir/core/sid/pid/cf/ppn "Passport number of Central African Republik"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CAF"
  * #https://dhp.uz/fhir/core/sid/pid/kgz "Root identifier for personal identification of country Kyrgyzstan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KG
    * #https://dhp.uz/fhir/core/sid/pid/kg/ppn "Passport number of Kyrgyzstan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KGZ"
  * #https://dhp.uz/fhir/core/sid/pid/kir "Root identifier for personal identification of country Kiribati"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KI
    * #https://dhp.uz/fhir/core/sid/pid/ki/ppn "Passport number of Kiribati"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KIR"
  * #https://dhp.uz/fhir/core/sid/pid/com "Root identifier for personal identification of country Comoros"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KM
    * #https://dhp.uz/fhir/core/sid/pid/km/ppn "Passport number of Comoros"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COM"
  * #https://dhp.uz/fhir/core/sid/pid/cod "Root identifier for personal identification of country Congo, the Democratic Republik of the"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CD
    * #https://dhp.uz/fhir/core/sid/pid/cd/ppn "Passport number of Congo, the Democratic Republik of the"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COD"
  * #https://dhp.uz/fhir/core/sid/pid/cog "Root identifier for personal identification of country Congo"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CG
    * #https://dhp.uz/fhir/core/sid/pid/cg/ppn "Passport number of Congo"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-COG"
  * #https://dhp.uz/fhir/core/sid/pid/cck "Root identifier for personal identification of country Cocos (Keeling) Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CC
    * #https://dhp.uz/fhir/core/sid/pid/cc/ppn "Passport number of Cocos (Keeling) Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CCK"
  * #https://dhp.uz/fhir/core/sid/pid/prk "Root identifier for personal identification of country Korea, Democratic People's Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KP
    * #https://dhp.uz/fhir/core/sid/pid/kp/ppn "Passport number of Korea, Democratic People's Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRK"
  * #https://dhp.uz/fhir/core/sid/pid/kor "Root identifier for personal identification of country Korea, Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KR
    * #https://dhp.uz/fhir/core/sid/pid/kr/ppn "Passport number of Korea, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KOR"
  * #https://dhp.uz/fhir/core/sid/pid/grc "Root identifier for personal identification of country Greece"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GR
    * #https://dhp.uz/fhir/core/sid/pid/gr/ppn "Passport number of Greece"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GRC"
  * #https://dhp.uz/fhir/core/sid/pid/cub "Root identifier for personal identification of country Cuba"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CU
    * #https://dhp.uz/fhir/core/sid/pid/cu/ppn "Passport number of Cuba"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CUB"
  * #https://dhp.uz/fhir/core/sid/pid/kwt "Root identifier for personal identification of country Kuwait"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KW
    * #https://dhp.uz/fhir/core/sid/pid/kw/ppn "Passport number of Kuwait"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KWT"
    * #https://dhp.uz/fhir/core/sid/pid/kw/ni "National identifier of Kuwait"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KW
  * #https://dhp.uz/fhir/core/sid/pid/cyp "Root identifier for personal identification of country Cyprus"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CY
    * #https://dhp.uz/fhir/core/sid/pid/cy/ppn "Passport number of Cyprus"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CYP"
  * #https://dhp.uz/fhir/core/sid/pid/lao "Root identifier for personal identification of country Lao People's Democratic Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LA
    * #https://dhp.uz/fhir/core/sid/pid/la/ppn "Passport number of Lao People's Democratic Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LAO"
  * #https://dhp.uz/fhir/core/sid/pid/ltu "Root identifier for personal identification of country Lithuania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/ppn "Passport number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LTU"
    * #https://dhp.uz/fhir/core/sid/pid/lt/ni "National identifier of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/cz "ID-card number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LT
    * #https://dhp.uz/fhir/core/sid/pid/lt/dl "Driver's licence number of Lithuania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LT
  * #https://dhp.uz/fhir/core/sid/pid/lso "Root identifier for personal identification of country Lesotho"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LS
    * #https://dhp.uz/fhir/core/sid/pid/ls/ppn "Passport number of Lesotho"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LSO"
  * #https://dhp.uz/fhir/core/sid/pid/lbr "Root identifier for personal identification of country Liberia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LR
    * #https://dhp.uz/fhir/core/sid/pid/lr/ppn "Passport number of Liberia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBR"
  * #https://dhp.uz/fhir/core/sid/pid/lie "Root identifier for personal identification of country Liechtenstein"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LI
    * #https://dhp.uz/fhir/core/sid/pid/li/ppn "Passport number of Liechtenstein"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LIE"
  * #https://dhp.uz/fhir/core/sid/pid/lbn "Root identifier for personal identification of country Lebanon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LB
    * #https://dhp.uz/fhir/core/sid/pid/lb/ppn "Passport number of Lebanon"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBN"
  * #https://dhp.uz/fhir/core/sid/pid/lux "Root identifier for personal identification of country Luxembourg"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LU
    * #https://dhp.uz/fhir/core/sid/pid/lu/ppn "Passport number of Luxembourg"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LUX"
  * #https://dhp.uz/fhir/core/sid/pid/zaf "Root identifier for personal identification of country South Africa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ZA
    * #https://dhp.uz/fhir/core/sid/pid/za/ppn "Passport number of South Africa"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ZA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZAF"
    * #https://dhp.uz/fhir/core/sid/pid/za/ni "National identifier of South Africa"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ZA
  * #https://dhp.uz/fhir/core/sid/pid/sgs "Root identifier for personal identification of country South Georgia and the South Sandwich Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GS
    * #https://dhp.uz/fhir/core/sid/pid/gs/ppn "Passport number of South Georgia and the South Sandwich Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGS"
  * #https://dhp.uz/fhir/core/sid/pid/lva "Root identifier for personal identification of country Latvia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/ppn "Passport number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LVA"
    * #https://dhp.uz/fhir/core/sid/pid/lv/ni "National identifier of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/cz "ID-card number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LV
    * #https://dhp.uz/fhir/core/sid/pid/lv/dl "Driver's licence number of Latvia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LV
  * #https://dhp.uz/fhir/core/sid/pid/esh "Root identifier for personal identification of country Western Sahara"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #EH
    * #https://dhp.uz/fhir/core/sid/pid/eh/ppn "Passport number of Western Sahara"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #EH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ESH"
  * #https://dhp.uz/fhir/core/sid/pid/mdg "Root identifier for personal identification of country Madagascar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MG
    * #https://dhp.uz/fhir/core/sid/pid/mg/ppn "Passport number of Madagascar"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDG"
  * #https://dhp.uz/fhir/core/sid/pid/nld "Root identifier for personal identification of country Netherlands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/ppn "Passport number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NLD"
    * #https://dhp.uz/fhir/core/sid/pid/nl/ni "National identifier of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/cz "ID-card number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NL
    * #https://dhp.uz/fhir/core/sid/pid/nl/dl "Driver's licence number of Netherlands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NL
  * #https://dhp.uz/fhir/core/sid/pid/mkd "Root identifier for personal identification of country Macedonia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/ppn "Passport number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MKD"
    * #https://dhp.uz/fhir/core/sid/pid/mk/ni "National identifier of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/cz "ID-card number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MK
    * #https://dhp.uz/fhir/core/sid/pid/mk/dl "Driver's licence number of Macedonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MK
  * #https://dhp.uz/fhir/core/sid/pid/mys "Root identifier for personal identification of country Malaysia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MY
    * #https://dhp.uz/fhir/core/sid/pid/my/ppn "Passport number of Malaysia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYS"
    * #https://dhp.uz/fhir/core/sid/pid/my/ni "National identifier of Malaysia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MY
  * #https://dhp.uz/fhir/core/sid/pid/mwi "Root identifier for personal identification of country Malawi"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MW
    * #https://dhp.uz/fhir/core/sid/pid/mw/ppn "Passport number of Malawi"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MWI"
  * #https://dhp.uz/fhir/core/sid/pid/mdv "Root identifier for personal identification of country Maldives"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MV
    * #https://dhp.uz/fhir/core/sid/pid/mv/ppn "Passport number of Maldives"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDV"
  * #https://dhp.uz/fhir/core/sid/pid/mli "Root identifier for personal identification of country Mali"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ML
    * #https://dhp.uz/fhir/core/sid/pid/ml/ppn "Passport number of Mali"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ML
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLI"
  * #https://dhp.uz/fhir/core/sid/pid/mlt "Root identifier for personal identification of country Malta"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/ppn "Passport number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MLT"
    * #https://dhp.uz/fhir/core/sid/pid/mt/ni "National identifier of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/cz "ID-card number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MT
    * #https://dhp.uz/fhir/core/sid/pid/mt/dl "Driver's licence number of Malta"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MT
  * #https://dhp.uz/fhir/core/sid/pid/imn "Root identifier for personal identification of country Isle of Man"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #IM
    * #https://dhp.uz/fhir/core/sid/pid/im/ppn "Passport number of Isle of Man"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #IM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-IMM"
  * #https://dhp.uz/fhir/core/sid/pid/mar "Root identifier for personal identification of country Morocco"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MA
    * #https://dhp.uz/fhir/core/sid/pid/ma/ppn "Passport number of Morocco"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MAR"
  * #https://dhp.uz/fhir/core/sid/pid/mhl "Root identifier for personal identification of country Marshall Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MH
    * #https://dhp.uz/fhir/core/sid/pid/mh/ppn "Passport number of Marshall Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MHL"
  * #https://dhp.uz/fhir/core/sid/pid/mtq "Root identifier for personal identification of country Martinique"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MQ
    * #https://dhp.uz/fhir/core/sid/pid/mq/ppn "Passport number of Martinique"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MQ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MTQ"
  * #https://dhp.uz/fhir/core/sid/pid/mrt "Root identifier for personal identification of country Mauritania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MR
    * #https://dhp.uz/fhir/core/sid/pid/mr/ppn "Passport number of Mauritania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MRT"
  * #https://dhp.uz/fhir/core/sid/pid/mus "Root identifier for personal identification of country Mauritius"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MU
    * #https://dhp.uz/fhir/core/sid/pid/mu/ppn "Passport number of Mauritius"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MUS"
  * #https://dhp.uz/fhir/core/sid/pid/myt "Root identifier for personal identification of country Mayotte"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #YT
    * #https://dhp.uz/fhir/core/sid/pid/yt/ppn "Passport number of Mayotte"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #YT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MYT"
  * #https://dhp.uz/fhir/core/sid/pid/mex "Root identifier for personal identification of country Mexico"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MX
    * #https://dhp.uz/fhir/core/sid/pid/mx/ppn "Passport number of Mexico"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MX
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MEX"
    * #https://dhp.uz/fhir/core/sid/pid/mx/ni "National identifier of Mexico"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MX
  * #https://dhp.uz/fhir/core/sid/pid/fsm "Root identifier for personal identification of country Micronesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FM
    * #https://dhp.uz/fhir/core/sid/pid/fm/ppn "Passport number of Micronesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FSM"
  * #https://dhp.uz/fhir/core/sid/pid/mda "Root identifier for personal identification of country Moldova, Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MD
    * #https://dhp.uz/fhir/core/sid/pid/md/ppn "Passport number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MDA"
    * #https://dhp.uz/fhir/core/sid/pid/md/ni "National identifier of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MD
    * #https://dhp.uz/fhir/core/sid/pid/md/cz "ID-card number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MD
    * #https://dhp.uz/fhir/core/sid/pid/md/dl "Driver's licence number of Moldova, Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MD
  * #https://dhp.uz/fhir/core/sid/pid/mco "Root identifier for personal identification of country Monaco"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MC
    * #https://dhp.uz/fhir/core/sid/pid/mc/ppn "Passport number of Monaco"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MCO"
  * #https://dhp.uz/fhir/core/sid/pid/mng "Root identifier for personal identification of country Mongolia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MN
    * #https://dhp.uz/fhir/core/sid/pid/mn/ppn "Passport number of Mongolia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNG"
  * #https://dhp.uz/fhir/core/sid/pid/mne "Root identifier for personal identification of country Montenegro"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ME
    * #https://dhp.uz/fhir/core/sid/pid/me/ppn "Passport number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ME
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNE"
    * #https://dhp.uz/fhir/core/sid/pid/me/ni "National identifier of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ME
    * #https://dhp.uz/fhir/core/sid/pid/me/cz "ID-card number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ME
    * #https://dhp.uz/fhir/core/sid/pid/me/dl "Driver's licence number of Montenegro"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ME
  * #https://dhp.uz/fhir/core/sid/pid/msr "Root identifier for personal identification of country Montserrat"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MS
    * #https://dhp.uz/fhir/core/sid/pid/ms/ppn "Passport number of Montserrat"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MSR"
  * #https://dhp.uz/fhir/core/sid/pid/moz "Root identifier for personal identification of country Mozambique"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MZ
    * #https://dhp.uz/fhir/core/sid/pid/mz/ppn "Passport number of Mozambique"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MOZ"
  * #https://dhp.uz/fhir/core/sid/pid/xyy "Root identifier for personal identification of country Areas not elsewhere specified"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #XY
    * #https://dhp.uz/fhir/core/sid/pid/xy/ppn "Passport number of Areas not elsewhere specified"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #XY
  * #https://dhp.uz/fhir/core/sid/pid/xxx "Root identifier for personal identification of country Not specified"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #XX
    * #https://dhp.uz/fhir/core/sid/pid/xx/ppn "Passport number of Not specified"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #XX
  * #https://dhp.uz/fhir/core/sid/pid/mmr "Root identifier for personal identification of country Myanmar"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MM
    * #https://dhp.uz/fhir/core/sid/pid/mm/ppn "Passport number of Myanmar"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MMR"
  * #https://dhp.uz/fhir/core/sid/pid/nam "Root identifier for personal identification of country Namibia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NA
    * #https://dhp.uz/fhir/core/sid/pid/na/ppn "Passport number of Namibia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NAM"
  * #https://dhp.uz/fhir/core/sid/pid/nru "Root identifier for personal identification of country Nauru"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NR
    * #https://dhp.uz/fhir/core/sid/pid/nr/ppn "Passport number of Nauru"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NRU"
  * #https://dhp.uz/fhir/core/sid/pid/npl "Root identifier for personal identification of country Nepal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NP
    * #https://dhp.uz/fhir/core/sid/pid/np/ppn "Passport number of Nepal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NPL"
    * #https://dhp.uz/fhir/core/sid/pid/np/ni "National identifier of Nepal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NP
  * #https://dhp.uz/fhir/core/sid/pid/nic "Root identifier for personal identification of country Nicaragua"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NI
    * #https://dhp.uz/fhir/core/sid/pid/ni/ppn "Passport number of Nicaragua"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIC"
  * #https://dhp.uz/fhir/core/sid/pid/nga "Root identifier for personal identification of country Nigeria"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NG
    * #https://dhp.uz/fhir/core/sid/pid/ng/ppn "Passport number of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NGA"
    * #https://dhp.uz/fhir/core/sid/pid/ng/ni "National identifier of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NG
    * #https://dhp.uz/fhir/core/sid/pid/ng/dl "Driver's licence number of Nigeria"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NG
  * #https://dhp.uz/fhir/core/sid/pid/ner "Root identifier for personal identification of country Niger"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NE
    * #https://dhp.uz/fhir/core/sid/pid/ne/ppn "Passport number of Niger"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NER"
  * #https://dhp.uz/fhir/core/sid/pid/niu "Root identifier for personal identification of country Niue"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NU
    * #https://dhp.uz/fhir/core/sid/pid/nu/ppn "Passport number of Niue"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NIU"
  * #https://dhp.uz/fhir/core/sid/pid/nfk "Root identifier for personal identification of country Norfolk Island"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NF
    * #https://dhp.uz/fhir/core/sid/pid/nf/ppn "Passport number of Norfolk Island"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NFK"
  * #https://dhp.uz/fhir/core/sid/pid/nor "Root identifier for personal identification of country Norway"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NO
    * #https://dhp.uz/fhir/core/sid/pid/no/ppn "Passport number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NOR"
    * #https://dhp.uz/fhir/core/sid/pid/no/ni "National identifier of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NO
    * #https://dhp.uz/fhir/core/sid/pid/no/cz "ID-card number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NO
    * #https://dhp.uz/fhir/core/sid/pid/no/dl "Driver's licence number of Norway"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NO
  * #https://dhp.uz/fhir/core/sid/pid/omn "Root identifier for personal identification of country Oman"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #OM
    * #https://dhp.uz/fhir/core/sid/pid/om/ppn "Passport number of Oman"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #OM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-OMN"
  * #https://dhp.uz/fhir/core/sid/pid/png "Root identifier for personal identification of country Papua New Guinea"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PG
    * #https://dhp.uz/fhir/core/sid/pid/pg/ppn "Passport number of Papua New Guinea"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PNG"
  * #https://dhp.uz/fhir/core/sid/pid/pak "Root identifier for personal identification of country Pakistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PK
    * #https://dhp.uz/fhir/core/sid/pid/pk/ppn "Passport number of Pakistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAK"
    * #https://dhp.uz/fhir/core/sid/pid/pk/ni "National identifier of Pakistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PK
  * #https://dhp.uz/fhir/core/sid/pid/pse "Root identifier for personal identification of country Palestinian Territory, Occupied"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PS
    * #https://dhp.uz/fhir/core/sid/pid/ps/ppn "Passport number of Palestinian Territory, Occupied"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PSE"
  * #https://dhp.uz/fhir/core/sid/pid/pan "Root identifier for personal identification of country Panama"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PA
    * #https://dhp.uz/fhir/core/sid/pid/pa/ppn "Passport number of Panama"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PAN"
  * #https://dhp.uz/fhir/core/sid/pid/pry "Root identifier for personal identification of country Paraguay"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PY
    * #https://dhp.uz/fhir/core/sid/pid/py/ppn "Passport number of Paraguay"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRY"
  * #https://dhp.uz/fhir/core/sid/pid/per "Root identifier for personal identification of country Peru"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PE
    * #https://dhp.uz/fhir/core/sid/pid/pe/ppn "Passport number of Peru"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PER"
  * #https://dhp.uz/fhir/core/sid/pid/pcn "Root identifier for personal identification of country Pitcairn"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PN
    * #https://dhp.uz/fhir/core/sid/pid/pn/ppn "Passport number of Pitcairn"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PCN"
  * #https://dhp.uz/fhir/core/sid/pid/pol "Root identifier for personal identification of country Poland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/ppn "Passport number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-POL"
    * #https://dhp.uz/fhir/core/sid/pid/pl/ni "National identifier of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/cz "ID-card number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PL
    * #https://dhp.uz/fhir/core/sid/pid/pl/dl "Driver's licence number of Poland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PL
  * #https://dhp.uz/fhir/core/sid/pid/prt "Root identifier for personal identification of country Portugal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/ppn "Passport number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRT"
    * #https://dhp.uz/fhir/core/sid/pid/pt/ni "National identifier of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/cz "ID-card number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PT
    * #https://dhp.uz/fhir/core/sid/pid/pt/dl "Driver's licence number of Portugal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PT
  * #https://dhp.uz/fhir/core/sid/pid/atf "Root identifier for personal identification of country French Southern Territories"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TF
    * #https://dhp.uz/fhir/core/sid/pid/tf/ppn "Passport number of French Southern Territories"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ATF"
  * #https://dhp.uz/fhir/core/sid/pid/pyf "Root identifier for personal identification of country French Polynesia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PF
    * #https://dhp.uz/fhir/core/sid/pid/pf/ppn "Passport number of French Polynesia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PYF"
  * #https://dhp.uz/fhir/core/sid/pid/fra "Root identifier for personal identification of country France"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FR
    * #https://dhp.uz/fhir/core/sid/pid/fr/ppn "Passport number of France"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FRA"
  * #https://dhp.uz/fhir/core/sid/pid/pri "Root identifier for personal identification of country Puerto Rico"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PR
    * #https://dhp.uz/fhir/core/sid/pid/pr/ppn "Passport number of Puerto Rico"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-PRI"
  * #https://dhp.uz/fhir/core/sid/pid/mnp "Root identifier for personal identification of country Northern Mariana Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #MP
    * #https://dhp.uz/fhir/core/sid/pid/mp/ppn "Passport number of Northern Mariana Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #MP
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-MNP"
  * #https://dhp.uz/fhir/core/sid/pid/vat "Root identifier for personal identification of country Holy See (Vatican City State)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VA
    * #https://dhp.uz/fhir/core/sid/pid/va/ppn "Passport number of Holy See (Vatican City State)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VAT"
  * #https://dhp.uz/fhir/core/sid/pid/reu "Root identifier for personal identification of country Réunion"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #RE
    * #https://dhp.uz/fhir/core/sid/pid/re/ppn "Passport number of Réunion"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-REU"
  * #https://dhp.uz/fhir/core/sid/pid/swe "Root identifier for personal identification of country Sweden"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SE
    * #https://dhp.uz/fhir/core/sid/pid/se/ppn "Passport number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWE"
    * #https://dhp.uz/fhir/core/sid/pid/se/ni "National identifier of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SE
    * #https://dhp.uz/fhir/core/sid/pid/se/cz "ID-card number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SE
    * #https://dhp.uz/fhir/core/sid/pid/se/dl "Driver's licence number of Sweden"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SE
  * #https://dhp.uz/fhir/core/sid/pid/rou "Root identifier for personal identification of country Romania"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/ppn "Passport number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ROU"
    * #https://dhp.uz/fhir/core/sid/pid/ro/ni "National identifier of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/cz "ID-card number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RO
    * #https://dhp.uz/fhir/core/sid/pid/ro/dl "Driver's licence number of Romania"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RO
  * #https://dhp.uz/fhir/core/sid/pid/rwa "Root identifier for personal identification of country Rwanda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #RW
    * #https://dhp.uz/fhir/core/sid/pid/rw/ppn "Passport number of Rwanda"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RWA"
  * #https://dhp.uz/fhir/core/sid/pid/slb "Root identifier for personal identification of country Solomon Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SB
    * #https://dhp.uz/fhir/core/sid/pid/sb/ppn "Passport number of Solomon Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLB"
  * #https://dhp.uz/fhir/core/sid/pid/kna "Root identifier for personal identification of country Saint Kitts and Nevis"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #KN
    * #https://dhp.uz/fhir/core/sid/pid/kn/ppn "Passport number of Saint Kitts and Nevis"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #KN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-KNA"
  * #https://dhp.uz/fhir/core/sid/pid/shn "Root identifier for personal identification of country Saint Helena"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SH
    * #https://dhp.uz/fhir/core/sid/pid/sh/ppn "Passport number of Saint Helena"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SHN"
  * #https://dhp.uz/fhir/core/sid/pid/lca "Root identifier for personal identification of country Saint Lucia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LC
    * #https://dhp.uz/fhir/core/sid/pid/lc/ppn "Passport number of Saint Lucia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LCA"
  * #https://dhp.uz/fhir/core/sid/pid/spm "Root identifier for personal identification of country Saint Pierre and Miquelon"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #PM
    * #https://dhp.uz/fhir/core/sid/pid/pm/ppn "Passport number of Saint Pierre and Miquelon"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #PM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SPM"
  * #https://dhp.uz/fhir/core/sid/pid/vct "Root identifier for personal identification of country Saint Vincent and the Grenadines"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VC
    * #https://dhp.uz/fhir/core/sid/pid/vc/ppn "Passport number of Saint Vincent and the Grenadines"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VCT"
  * #https://dhp.uz/fhir/core/sid/pid/deu "Root identifier for personal identification of country Germany"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DE
    * #https://dhp.uz/fhir/core/sid/pid/de/ppn "Passport number of Germany"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DEU"
  * #https://dhp.uz/fhir/core/sid/pid/zmb "Root identifier for personal identification of country Zambia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ZM
    * #https://dhp.uz/fhir/core/sid/pid/zm/ppn "Passport number of Zambia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ZM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZMB"
  * #https://dhp.uz/fhir/core/sid/pid/wsm "Root identifier for personal identification of country Samoa"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #WS
    * #https://dhp.uz/fhir/core/sid/pid/ws/ppn "Passport number of Samoa"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #WS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WSM"
  * #https://dhp.uz/fhir/core/sid/pid/smr "Root identifier for personal identification of country San Marino"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/ppn "Passport number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SMR"
    * #https://dhp.uz/fhir/core/sid/pid/sm/ni "National identifier of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/cz "ID-card number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SM
    * #https://dhp.uz/fhir/core/sid/pid/sm/dl "Driver's licence number of San Marino"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SM
  * #https://dhp.uz/fhir/core/sid/pid/stp "Root identifier for personal identification of country Sao Tome and Principe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ST
    * #https://dhp.uz/fhir/core/sid/pid/st/ppn "Passport number of Sao Tome and Principe"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ST
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-STP"
  * #https://dhp.uz/fhir/core/sid/pid/sau "Root identifier for personal identification of country Saudi Arabia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SA
    * #https://dhp.uz/fhir/core/sid/pid/sa/ppn "Passport number of Saudi Arabia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SAU"
  * #https://dhp.uz/fhir/core/sid/pid/syc "Root identifier for personal identification of country Seychelles"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SC
    * #https://dhp.uz/fhir/core/sid/pid/sc/ppn "Passport number of Seychelles"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYC"
  * #https://dhp.uz/fhir/core/sid/pid/sen "Root identifier for personal identification of country Senegal"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SN
    * #https://dhp.uz/fhir/core/sid/pid/sn/ppn "Passport number of Senegal"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SEN"
  * #https://dhp.uz/fhir/core/sid/pid/srb "Root identifier for personal identification of country Serbia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/ppn "Passport number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RS
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SRB"
    * #https://dhp.uz/fhir/core/sid/pid/rs/ni "National identifier of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/cz "ID-card number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RS
    * #https://dhp.uz/fhir/core/sid/pid/rs/dl "Driver's licence number of Serbia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RS
  * #https://dhp.uz/fhir/core/sid/pid/sle "Root identifier for personal identification of country Sierra Leone"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SL
    * #https://dhp.uz/fhir/core/sid/pid/sl/ppn "Passport number of Sierra Leone"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SLE"
  * #https://dhp.uz/fhir/core/sid/pid/sgp "Root identifier for personal identification of country Singapore"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SG
    * #https://dhp.uz/fhir/core/sid/pid/sg/ppn "Passport number of Singapore"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SGP"
    * #https://dhp.uz/fhir/core/sid/pid/sg/ni "National identifier of Singapore"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SG
  * #https://dhp.uz/fhir/core/sid/pid/svk "Root identifier for personal identification of country Slovakia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/ppn "Passport number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVK"
    * #https://dhp.uz/fhir/core/sid/pid/sk/ni "National identifier of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/cz "ID-card number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SK
    * #https://dhp.uz/fhir/core/sid/pid/sk/dl "Driver's licence number of Slovakia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SK
  * #https://dhp.uz/fhir/core/sid/pid/svn "Root identifier for personal identification of country Slovenia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SI
    * #https://dhp.uz/fhir/core/sid/pid/si/ppn "Passport number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVN"
    * #https://dhp.uz/fhir/core/sid/pid/si/ni "National identifier of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SI
    * #https://dhp.uz/fhir/core/sid/pid/si/cz "ID-card number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SI
    * #https://dhp.uz/fhir/core/sid/pid/si/dl "Driver's licence number of Slovenia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SI
  * #https://dhp.uz/fhir/core/sid/pid/som "Root identifier for personal identification of country Somalia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SO
    * #https://dhp.uz/fhir/core/sid/pid/so/ppn "Passport number of Somalia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SOM"
  * #https://dhp.uz/fhir/core/sid/pid/fin "Root identifier for personal identification of country Finland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/ppn "Passport number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-FIN"
    * #https://dhp.uz/fhir/core/sid/pid/fi/ni "National identifier of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/cz "ID-card number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FI
    * #https://dhp.uz/fhir/core/sid/pid/fi/dl "Driver's licence number of Finland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #FI
  * #https://dhp.uz/fhir/core/sid/pid/lka "Root identifier for personal identification of country Sri Lanka"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LK
    * #https://dhp.uz/fhir/core/sid/pid/lk/ppn "Passport number of Sri Lanka"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LKA"
    * #https://dhp.uz/fhir/core/sid/pid/lk/ni "National identifier of Sri Lanka"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LK
  * #https://dhp.uz/fhir/core/sid/pid/sdn "Root identifier for personal identification of country Sudan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SD
    * #https://dhp.uz/fhir/core/sid/pid/sd/ppn "Passport number of Sudan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SDN"
  * #https://dhp.uz/fhir/core/sid/pid/sur "Root identifier for personal identification of country Suriname"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SR
    * #https://dhp.uz/fhir/core/sid/pid/sr/ppn "Passport number of Suriname"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SUR"
  * #https://dhp.uz/fhir/core/sid/pid/lby "Root identifier for personal identification of country Libyan Arab Jamahiriya"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #LY
    * #https://dhp.uz/fhir/core/sid/pid/ly/ppn "Passport number of Libyan Arab Jamahiriya"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #LY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-LBY"
  * #https://dhp.uz/fhir/core/sid/pid/gbr "Root identifier for personal identification of country United Kingdom"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #GB
    * #https://dhp.uz/fhir/core/sid/pid/gb/ppn "Passport number of United Kingdom"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #GB
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-GBR"
  * #https://dhp.uz/fhir/core/sid/pid/swz "Root identifier for personal identification of country Swaziland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SZ
    * #https://dhp.uz/fhir/core/sid/pid/sz/ppn "Passport number of Swaziland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SWZ"
  * #https://dhp.uz/fhir/core/sid/pid/sjm "Root identifier for personal identification of country Svalbard and Jan Mayen"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SJ
    * #https://dhp.uz/fhir/core/sid/pid/sj/ppn "Passport number of Svalbard and Jan Mayen"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SJM"
  * #https://dhp.uz/fhir/core/sid/pid/syr "Root identifier for personal identification of country Syrian Arab Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #SY
    * #https://dhp.uz/fhir/core/sid/pid/sy/ppn "Passport number of Syrian Arab Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #SY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-SYR"
  * #https://dhp.uz/fhir/core/sid/pid/che "Root identifier for personal identification of country Switzerland"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CH
    * #https://dhp.uz/fhir/core/sid/pid/ch/ppn "Passport number of Switzerland"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHE"
  * #https://dhp.uz/fhir/core/sid/pid/zwe "Root identifier for personal identification of country Zimbabwe"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #ZW
    * #https://dhp.uz/fhir/core/sid/pid/zw/ppn "Passport number of Zimbabwe"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ZW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-ZWE"
    * #https://dhp.uz/fhir/core/sid/pid/zw/ni "National identifier of Zimbabwe"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #ZW
  * #https://dhp.uz/fhir/core/sid/pid/dnk "Root identifier for personal identification of country Denmark"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #DK
    * #https://dhp.uz/fhir/core/sid/pid/dk/ppn "Passport number of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-DNK"
    * #https://dhp.uz/fhir/core/sid/pid/dk/ni "National identifier of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DK
    * #https://dhp.uz/fhir/core/sid/pid/dk/dl "Driver's licence number of Denmark"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #DK
  * #https://dhp.uz/fhir/core/sid/pid/tjk "Root identifier for personal identification of country Tajikistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TJ
    * #https://dhp.uz/fhir/core/sid/pid/tj/ppn "Passport number of Tajikistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TJ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TJK"
  * #https://dhp.uz/fhir/core/sid/pid/tha "Root identifier for personal identification of country Thailand"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TH
    * #https://dhp.uz/fhir/core/sid/pid/th/ppn "Passport number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TH
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-THA"
    * #https://dhp.uz/fhir/core/sid/pid/th/ni "National identifier of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TH
    * #https://dhp.uz/fhir/core/sid/pid/th/cz "ID-card number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TH
    * #https://dhp.uz/fhir/core/sid/pid/th/dl "Driver's licence number of Thailand"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TH
  * #https://dhp.uz/fhir/core/sid/pid/twn "Root identifier for personal identification of country Taiwan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TW
    * #https://dhp.uz/fhir/core/sid/pid/tw/ppn "Passport number of Taiwan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TW
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TWN"
    * #https://dhp.uz/fhir/core/sid/pid/tw/ni "National identifier of Taiwan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TW
  * #https://dhp.uz/fhir/core/sid/pid/tza "Root identifier for personal identification of country Tanzania, United Republic of"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TZ
    * #https://dhp.uz/fhir/core/sid/pid/tz/ppn "Passport number of Tanzania, United Republic of"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TZA"
  * #https://dhp.uz/fhir/core/sid/pid/tls "Root identifier for personal identification of country Timor-Leste"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TL
    * #https://dhp.uz/fhir/core/sid/pid/tl/ppn "Passport number of Timor-Leste"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TLS"
  * #https://dhp.uz/fhir/core/sid/pid/tgo "Root identifier for personal identification of country Togo"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TG
    * #https://dhp.uz/fhir/core/sid/pid/tg/ppn "Passport number of Togo"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TGO"
  * #https://dhp.uz/fhir/core/sid/pid/tkl "Root identifier for personal identification of country Tokelau"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TK
    * #https://dhp.uz/fhir/core/sid/pid/tk/ppn "Passport number of Tokelau"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TK
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKL"
  * #https://dhp.uz/fhir/core/sid/pid/ton "Root identifier for personal identification of country Tonga"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TO
    * #https://dhp.uz/fhir/core/sid/pid/to/ppn "Passport number of Tonga"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TO
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TON"
  * #https://dhp.uz/fhir/core/sid/pid/tto "Root identifier for personal identification of country Trinidad and Tobago"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TT
    * #https://dhp.uz/fhir/core/sid/pid/tt/ppn "Passport number of Trinidad and Tobago"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TT
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TTO"
  * #https://dhp.uz/fhir/core/sid/pid/tcd "Root identifier for personal identification of country Chad"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TD
    * #https://dhp.uz/fhir/core/sid/pid/td/ppn "Passport number of Chad"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TD
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCD"
  * #https://dhp.uz/fhir/core/sid/pid/cze "Root identifier for personal identification of country Czech Republic"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/ppn "Passport number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CZE"
    * #https://dhp.uz/fhir/core/sid/pid/cz/ni "National identifier of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/cz "ID-card number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CZ
    * #https://dhp.uz/fhir/core/sid/pid/cz/dl "Driver's licence number of Czech Republic"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CZ
  * #https://dhp.uz/fhir/core/sid/pid/chl "Root identifier for personal identification of country Chile"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/ppn "Passport number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CL
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-CHL"
    * #https://dhp.uz/fhir/core/sid/pid/cl/ni "National identifier of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/cz "ID-card number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CL
    * #https://dhp.uz/fhir/core/sid/pid/cl/dl "Driver's licence number of Chile"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #CL
  * #https://dhp.uz/fhir/core/sid/pid/tun "Root identifier for personal identification of country Tunisia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TN
    * #https://dhp.uz/fhir/core/sid/pid/tn/ppn "Passport number of Tunisia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUN"
  * #https://dhp.uz/fhir/core/sid/pid/tca "Root identifier for personal identification of country Turks and Caicos Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TC
    * #https://dhp.uz/fhir/core/sid/pid/tc/ppn "Passport number of Turks and Caicos Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TCA"
  * #https://dhp.uz/fhir/core/sid/pid/tuv "Root identifier for personal identification of country Tuvalu"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TV
    * #https://dhp.uz/fhir/core/sid/pid/tv/ppn "Passport number of Tuvalu"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TV
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUV"
  * #https://dhp.uz/fhir/core/sid/pid/tur "Root identifier for personal identification of country Turkey"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TR
    * #https://dhp.uz/fhir/core/sid/pid/tr/ppn "Passport number of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TR
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TUR"
    * #https://dhp.uz/fhir/core/sid/pid/tr/ni "National identifier of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TR
    * #https://dhp.uz/fhir/core/sid/pid/tr/dl "Driver's licence number of Turkey"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TR
  * #https://dhp.uz/fhir/core/sid/pid/tkm "Root identifier for personal identification of country Turkmenistan"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #TM
    * #https://dhp.uz/fhir/core/sid/pid/tm/ppn "Passport number of Turkmenistan"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #TM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-TKM"
  * #https://dhp.uz/fhir/core/sid/pid/uga "Root identifier for personal identification of country Uganda"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #UG
    * #https://dhp.uz/fhir/core/sid/pid/ug/ppn "Passport number of Uganda"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UG
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UGA"
  * #https://dhp.uz/fhir/core/sid/pid/ukr "Root identifier for personal identification of country Ukraine"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/ppn "Passport number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UA
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UKR"
    * #https://dhp.uz/fhir/core/sid/pid/ua/ni "National identifier of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/cz "ID-card number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #CZ
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UA
    * #https://dhp.uz/fhir/core/sid/pid/ua/dl "Driver's licence number of Ukraine"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #DL
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UA
  * #https://dhp.uz/fhir/core/sid/pid/hun "Root identifier for personal identification of country Hungary"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #HU
    * #https://dhp.uz/fhir/core/sid/pid/hu/ppn "Passport number of Hungary"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #HU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-HUN"
  * #https://dhp.uz/fhir/core/sid/pid/ury "Root identifier for personal identification of country Uruguay"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #UY
    * #https://dhp.uz/fhir/core/sid/pid/uy/ppn "Passport number of Uruguay"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-URY"
  * #https://dhp.uz/fhir/core/sid/pid/ncl "Root identifier for personal identification of country New Caledonia"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NC
    * #https://dhp.uz/fhir/core/sid/pid/nc/ppn "Passport number of New Caledonia"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NC
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NCL"
  * #https://dhp.uz/fhir/core/sid/pid/nzl "Root identifier for personal identification of country New Zealand"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #NZ
    * #https://dhp.uz/fhir/core/sid/pid/nz/ppn "Passport number of New Zealand"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #NZ
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-NZL"
  * #https://dhp.uz/fhir/core/sid/pid/blr "Root identifier for personal identification of country Belarus"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #BY
    * #https://dhp.uz/fhir/core/sid/pid/by/ppn "Passport number of Belarus"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #BY
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-BLR"
  * #https://dhp.uz/fhir/core/sid/pid/wlf "Root identifier for personal identification of country Wallis and Futuna Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #WF
    * #https://dhp.uz/fhir/core/sid/pid/wf/ppn "Passport number of Wallis and Futuna Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #WF
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-WLF"
  * #https://dhp.uz/fhir/core/sid/pid/vut "Root identifier for personal identification of country Vanuatu"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VU
    * #https://dhp.uz/fhir/core/sid/pid/vu/ppn "Passport number of Vanuatu"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VUT"
  * #https://dhp.uz/fhir/core/sid/pid/rus "Root identifier for personal identification of country Russian Federation"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #RU
    * #https://dhp.uz/fhir/core/sid/pid/ru/ppn "Passport number of Russian Federation"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #RU
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-RUS"
  * #https://dhp.uz/fhir/core/sid/pid/ven "Root identifier for personal identification of country Venezuela"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VE
    * #https://dhp.uz/fhir/core/sid/pid/ve/ppn "Passport number of Venezuela"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VE
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VEN"
    * #https://dhp.uz/fhir/core/sid/pid/ve/ni "National identifier of Venezuela"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #NI
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VE
  * #https://dhp.uz/fhir/core/sid/pid/vnm "Root identifier for personal identification of country Viet Nam"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VN
    * #https://dhp.uz/fhir/core/sid/pid/vn/ppn "Passport number of Viet Nam"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VN
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VNM"
  * #https://dhp.uz/fhir/core/sid/pid/vir "Root identifier for personal identification of country Virgin Islands (U.S.)"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #VI
    * #https://dhp.uz/fhir/core/sid/pid/vi/ppn "Passport number of Virgin Islands (U.S.)"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #VI
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-VIR"
  * #https://dhp.uz/fhir/core/sid/pid/umi "Root identifier for personal identification of country United States Minor Outlying Islands"
    * ^property[0].code = #notSelectable
    * ^property[=].valueBoolean = true
    * ^property[+].code = #country
    * ^property[=].valueCode = #UM
    * #https://dhp.uz/fhir/core/sid/pid/um/ppn "Passport number of United States Minor Outlying Islands"
      * ^property[0].code = #idtype
      * ^property[=].valueCode = #PPN
      * ^property[+].code = #notSelectable
      * ^property[=].valueBoolean = false
      * ^property[+].code = #country
      * ^property[=].valueCode = #UM
      * ^property[+].code = #naming-system
      * ^property[=].valueString = "http://terminology.hl7.org/NamingSystem/passportNumNS-UMI"
