// This file contains definitions of our internally-defined naming systems

Instance: uzb-hrm-argoz
InstanceOf: NamingSystem
Description: "Healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
Usage: #definition
* name = "Uzbekistan_HRM_Argoz_System"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Agency for the Development of Public Service of Uzbekistan"
* date = "2025-04-16"
* type = $identifier-type#NPI "National provider identifier"
* description = "Naming system for healthcare provider identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying healthcare providers, facilities, and resources within the Uzbekistan healthcare system"
* uniqueId[0].type = #uri
* uniqueId[=].value = $organization-argoz-id-system
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan HRM Argoz system"

Instance: uzb-soliq
InstanceOf: NamingSystem
Description: "Tax identification numbers and other identifiers assigned by the Uzbekistan Tax Authority (Soliq)"
Usage: #definition
* name = "Uzbekistan_Soliq_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
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

Instance: uzb-national-unique-id
InstanceOf: NamingSystem
Description: "National unique identifiers (PINFL) assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* name = "Uzbekistan_National_Unique_ID_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#NI "National unique individual identifier"
* description = "Naming system for national unique identifiers (PINFL - Personal Identification Number for Foreign and Local citizens) assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://legal-force.uz/pinfl and https://lex.uz/docs/444922#444943 for more information."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for uniquely identifying individuals (citizens and residents) within the Uzbekistan national identification system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $nationaluniqueID
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan National Unique ID (PINFL) system"

Instance: uzb-passport-local
InstanceOf: NamingSystem
Description: "Local passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* name = "Uzbekistan_Passport_Local_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#PPN "Passport number"
* description = "Naming system for local passport identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/NaN/document/1628 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their local passport numbers within the Uzbekistan identification system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $passport-local
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan local passport system"

Instance: uzb-passport-international
InstanceOf: NamingSystem
Description: "International passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* name = "Uzbekistan_Passport_International_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#PPN "Passport number"
* description = "Naming system for international passport identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/NaN/document/1628 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their international passport numbers within the Uzbekistan identification system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $passport-international
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan international passport system"

Instance: uzb-birth-certificate
InstanceOf: NamingSystem
Description: "Birth certificate identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* name = "Uzbekistan_Birth_Certificate_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan"
* type = $identifier-type#BCT "Birth Certificate"
* description = "Naming system for birth certificate identifiers assigned by the Personalization Agency under the Ministry of Justice of the Republic of Uzbekistan. See https://gov.uz/ru/advice/58/document/1444 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their birth certificate numbers within the Uzbekistan civil registration system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $birthcertificate
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan birth certificate system"

Instance: uzb-drivers-license
InstanceOf: NamingSystem
Description: "Driver's license identifiers assigned by the Uzbekistan Ministry of Internal Affairs"
Usage: #definition
* name = "Uzbekistan_Drivers_License_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Ministry of Internal Affairs of the Republic of Uzbekistan"
* type = $identifier-type#DL "Driver's license number"
* description = "Naming system for driver's license identifiers assigned by the Ministry of Internal Affairs of the Republic of Uzbekistan. See https://gov.uz/ru/advice/616/document/2507 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their driver's license numbers within the Uzbekistan transportation system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $driverslicense
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan driver's license system"

Instance: uzb-diplomatic-passport
InstanceOf: NamingSystem
Description: "Diplomatic passport identifiers assigned by the Uzbekistan Ministry of Foreign Affairs"
Usage: #definition
* name = "Uzbekistan_Diplomatic_Passport_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Ministry of Foreign Affairs of the Republic of Uzbekistan"
* type = $identifier-type#DP "Diplomatic Passport"
* description = "Naming system for diplomatic passport identifiers assigned by the Ministry of Foreign Affairs of the Republic of Uzbekistan. See http://fmc.uz/legisl.php?id=dippassport and https://www.lex.uz/acts/670451 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying diplomatic personnel through their diplomatic passport numbers within the Uzbekistan diplomatic system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $diplomaticpassport
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan diplomatic passport system"

Instance: uzb-health-card-number
InstanceOf: NamingSystem
Description: "Health card number identifiers assigned by the Uzbekistan Ministry of Health"
Usage: #definition
* name = "Uzbekistan_Health_Card_Number_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* type = $identifier-type#HC "Health card number"
* description = "Naming system for health card number identifiers assigned by the Ministry of Health of the Republic of Uzbekistan. See https://yuz.uz/ru/news/elektronne-meditsinskie-kart-prosto-sovremenno-i-kachestvenno and http://old.reestr.uz/view/gir?id=909 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals through their health card numbers within the Uzbekistan healthcare system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $healthcard
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan health card number system"

Instance: uzb-military-id-number
InstanceOf: NamingSystem
Description: "Military ID number identifiers assigned by the Uzbekistan Ministry of Defense"
Usage: #definition
* name = "Uzbekistan_Military_ID_Number_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Ministry of Defense of the Republic of Uzbekistan"
* type = $identifier-type#MI "Military ID number"
* description = "Naming system for military ID number identifiers assigned by the Ministry of Defense of the Republic of Uzbekistan. See https://www.lex.uz/acts/249045 for legal justification."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying military personnel through their military ID numbers within the Uzbekistan defense system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $militaryID
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan military ID number system"

Instance: uzb-penitentiary-institution-number
InstanceOf: NamingSystem
Description: "Penitentiary institution number identifiers assigned by the Uzbekistan correctional system"
Usage: #definition
* name = "Uzbekistan_Penitentiary_Institution_Number_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "TBD - Responsible authority to be determined"
* type = $identifier-type#PCN "Penitentiary/correctional institution Number"
* description = "Naming system for penitentiary/correctional institution number identifiers assigned within the Uzbekistan correctional system. Responsible authority and legal justification to be determined."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying individuals within the Uzbekistan penitentiary/correctional institution system."
* uniqueId[0].type = #uri
* uniqueId[=].value = $penitentiaryinstitution
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan penitentiary institution number system"

Instance: location-unit
InstanceOf: NamingSystem
Usage: #definition
* name = "Uzbekistan_DHP_Location_Unit_System"
* status = #active
* kind = #identifier
* date = "2025-04-16"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* type = $identifier-type#FI "Facility ID"
* description = "Naming system for unique identifiers assigned to location units such as branches, wards, and beds within healthcare facilities in the Uzbekistan Digital Health Platform"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying specific units within healthcare locations, such as branches, departments, wards, and beds."
* uniqueId.type = #uri
* uniqueId.value = "http://medcore.uz/NamingSystem/location-unit"
* uniqueId.preferred = true
* uniqueId.comment = "This is the canonical URI for the Uzbekistan DHP Location Unit identifier system"
