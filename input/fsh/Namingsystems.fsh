// This file contains definitions of our internally-defined naming systems
// Updated to follow Estonian identifier domain pattern (https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type})

Instance: uzb-hrm-argos
InstanceOf: NamingSystem
Description: "Healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/uzb-hrm-argos"
* name = "UzbekistanHrmArgosSystem"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Agency for the Development of Public Service of Uzbekistan"
* date = "2025-11-06"
* type = $identifier-type#NPI "National provider identifier"
* description = "Naming system for healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying healthcare providers, facilities, and resources within the Uzbekistan healthcare system"
* uniqueId[0].type = #uri
* uniqueId[=].value = $organization-argos-id-system
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan HRM Argos system"

Instance: uzb-soliq
InstanceOf: NamingSystem
Description: "Tax identification numbers and other identifiers assigned by the Uzbekistan Tax Authority (Soliq)"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/uzb-soliq"
* name = "UzbekistanSoliqSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "State Tax Committee of the Republic of Uzbekistan"
* type = $identifier-type#TAX "Tax ID number"
* description = "Naming system for tax identification numbers and other identifiers assigned by the Uzbekistan Tax Authority (Soliq)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals, organizations, and entities for tax purposes within Uzbekistan."
* uniqueId[0].type = #uri
* uniqueId[=].value = $organization-tax-id-system
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan Tax Authority (Soliq) system"

Instance: pid-uzb-ppn-local
InstanceOf: NamingSystem
Description: "Local (internal) passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-ppn-local"
* name = "UzbekistanPassportLocalSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#PPN "Passport number"
* description = "Naming system for local (internal) passport identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/NaN/document/1628 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their local passport numbers within the Uzbekistan identification system. Local passports are used for domestic identification."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/ppn/local"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-ppn-intl
InstanceOf: NamingSystem
Description: "International passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-ppn-intl"
* name = "UzbekistanPassportInternationalSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#PPN "Passport number"
* description = "Naming system for international passport identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/NaN/document/1628 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their international passport numbers within the Uzbekistan identification system. International passports are used for travel abroad."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/ppn/intl"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-ppn-dp
InstanceOf: NamingSystem
Description: "Diplomatic passport identifiers assigned by the Uzbekistan Ministry of Foreign Affairs"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-ppn-dp"
* name = "UzbekistanPassportDiplomaticSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Ministry of Foreign Affairs of the Republic of Uzbekistan"
* type = $identifier-type#PPN "Passport number"
* description = "Naming system for diplomatic passport identifiers assigned by the Ministry of Foreign Affairs of the Republic of Uzbekistan. Diplomatic passports are issued to government officials and diplomats for official travel."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their diplomatic passport numbers within the Uzbekistan identification system. Diplomatic passports are issued to diplomats and government officials for official international travel."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/ppn/dp"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-ni
InstanceOf: NamingSystem
Description: "National unique identifiers (PINFL) assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-ni"
* name = "UzbekistanNationalUniqueIdSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#NI "National unique individual identifier"
* description = "Naming system for national unique identifiers (PINFL - Personal Identification Number for Foreign and Local citizens) assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://legal-force.uz/pinfl and https://lex.uz/docs/444922#444943 for more information."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for uniquely identifying individuals (citizens and residents) within the Uzbekistan national identification system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/ni"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-bct
InstanceOf: NamingSystem
Description: "Birth certificate identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-bct"
* name = "UzbekistanBirthCertificateSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#BCT "Birth Certificate"
* description = "Naming system for birth certificate identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/58/document/1444 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their birth certificate numbers within the Uzbekistan civil registration system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/bct"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-dl
InstanceOf: NamingSystem
Description: "Driver's license identifiers assigned by the Uzbekistan Ministry of Internal Affairs"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-dl"
* name = "UzbekistanDriversLicenseSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Ministry of Internal Affairs of the Republic of Uzbekistan"
* type = $identifier-type#DL "Driver's license number"
* description = "Naming system for driver's license identifiers assigned by the Ministry of Internal Affairs of the Republic of Uzbekistan. See https://lex.uz/docs/3127705 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their driver's license numbers within the Uzbekistan transportation system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/dl"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-cz
InstanceOf: NamingSystem
Description: "ID card identifiers for Uzbekistan"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-cz"
* name = "UzbekistanIdCardSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#CZ "Citizenship Card"
* description = "Naming system for ID card identifiers in Uzbekistan."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their ID card numbers within the Uzbekistan identification system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/cz"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-hc
InstanceOf: NamingSystem
Description: "Health card number identifiers assigned by the Uzbekistan Ministry of Health"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-hc"
* name = "UzbekistanHealthCardNumberSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* type = $identifier-type#HC "Health card number"
* description = "Naming system for health card number identifiers assigned by the Ministry of Health of the Republic of Uzbekistan. See https://yuz.uz/ru/news/elektronne-meditsinskie-kart-prosto-sovremenno-i-kachestvennofor legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their health card numbers within the Uzbekistan healthcare system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/hc"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-mi
InstanceOf: NamingSystem
Description: "Military ID number identifiers assigned by the Uzbekistan Ministry of Defense"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-mi"
* name = "UzbekistanMilitaryIdNumberSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Ministry of Defense of the Republic of Uzbekistan"
* type = $identifier-type#MI "Military ID number"
* description = "Naming system for military ID number identifiers assigned by the Ministry of Defense of the Republic of Uzbekistan. See https://www.lex.uz/acts/249045 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying military personnel through their military ID numbers within the Uzbekistan defense system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/mi"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: pid-uzb-pcn
InstanceOf: NamingSystem
Description: "Penitentiary institution number identifiers assigned by the Uzbekistan correctional system"
Usage: #definition
* url = "https://dhp.uz/fhir/core/NamingSystem/pid-uzb-pcn"
* name = "UzbekistanPenitentiaryInstitutionNumberSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "TBD - Responsible authority to be determined"
* type = $identifier-type#PCN "Penitentiary/correctional institution Number"
* description = "Naming system for penitentiary/correctional institution number identifiers assigned within the Uzbekistan correctional system. Responsible authority and legal justification to be determined."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals within the Uzbekistan penitentiary/correctional institution system."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uzb/pcn"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI following the Estonian identifier domain pattern"

Instance: location-unit
InstanceOf: NamingSystem
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/location-unit"
* name = "UzDhpLocationUnitSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* type = $identifier-type#FI "Facility ID"
* description = "Naming system for unique identifiers assigned to location units such as branches, wards, and beds within healthcare facilities in the Uzbekistan Digital Health Platform"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying specific units within healthcare locations, such as branches, departments, wards, and beds."
* uniqueId.type = #uri
* uniqueId.value = "https://dhp.uz/fhir/core/NamingSystem/location-unit"
* uniqueId.preferred = true
* uniqueId.comment = "This is the canonical URI for the Uzbekistan DHP Location Unit identifier system"

Instance: episodeofcare-identifier
InstanceOf: NamingSystem
Usage: #definition
Description: "Identifier system used for EpisodeOfCare resources within the Uzbekistan DHP context."
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/episodeofcare-identifier"
* name = "UzDhpEpisodeOfCareIdentifier"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* type = http://terminology.hl7.org/CodeSystem/v2-0203#VN "Visit number"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://dhp.uz/ids/episode-of-care"
* uniqueId[0].preferred = true
