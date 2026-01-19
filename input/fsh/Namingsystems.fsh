// This file contains definitions of our internally-defined naming systems

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

Instance: uzb-hrm-argos-practitioner
InstanceOf: NamingSystem
Description: "Healthcare professional identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/uzb-hrm-argos-practitioner"
* name = "UzbekistanHrmArgosPractitionerSystem"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Agency for the Development of Public Service of Uzbekistan"
* date = "2025-11-12"
* type = $identifier-type#NI "National unique individual identifier"
* description = "Naming system for healthcare professional identifiers assigned by the Uzbekistan Human Resource Management (HRM) system"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying healthcare professionals within the Uzbekistan healthcare system"
* uniqueId[0].type = #uri
* uniqueId[=].value = $practitioner-argos-id-system
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan HRM Argos practitioner system"

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

Instance: patient-id-uzb-passport-local
InstanceOf: NamingSystem
Description: "Local (internal) passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-local"
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
* uniqueId[=].value = $passport-local
* uniqueId[=].preferred = true

Instance: patient-id-uzb-passport-international
InstanceOf: NamingSystem
Description: "International passport identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-international"
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
* uniqueId[=].value = $passport-international
* uniqueId[=].preferred = true

Instance: patient-id-uzb-passport-diplomatic
InstanceOf: NamingSystem
Description: "Diplomatic passport identifiers assigned by the Uzbekistan Ministry of Foreign Affairs"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-passport-diplomatic"
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
* uniqueId[=].value = $diplomaticpassport
* uniqueId[=].preferred = true

Instance: patient-id-uzb-national-id
InstanceOf: NamingSystem
Description: "National unique identifiers (PINFL) assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-national-id"
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
* uniqueId[=].value = $nationaluniqueID
* uniqueId[=].preferred = true

Instance: patient-id-uzb-birth-certificate
InstanceOf: NamingSystem
Description: "Birth certificate identifiers assigned by the Uzbekistan Personalization Agency"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-birth-certificate"
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
* uniqueId[=].value = $birthcertificate
* uniqueId[=].preferred = true

Instance: patient-id-uzb-drivers-license
InstanceOf: NamingSystem
Description: "Driver's license identifiers assigned by the Uzbekistan Ministry of Internal Affairs"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-drivers-license"
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
* uniqueId[=].value = $driverslicense
* uniqueId[=].preferred = true

Instance: patient-id-uzb-health-card
InstanceOf: NamingSystem
Description: "Health card number identifiers assigned by the Uzbekistan Ministry of Health"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-health-card"
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
* uniqueId[=].value = $healthcard
* uniqueId[=].preferred = true

Instance: patient-id-uzb-military-id
InstanceOf: NamingSystem
Description: "Military ID number identifiers assigned by the Uzbekistan Ministry of Defense"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-military-id"
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
* uniqueId[=].value = $militaryID
* uniqueId[=].preferred = true

Instance: patient-id-uzb-penitentiary-number
InstanceOf: NamingSystem
Description: "Penitentiary institution number identifiers assigned by the Uzbekistan correctional system"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-penitentiary-number"
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
* uniqueId[=].value = $penitentiaryinstitution
* uniqueId[=].preferred = true

Instance: patient-id-uzb-unknown-patient
InstanceOf: NamingSystem
Description: "Identifiers for unidentified patients when receiving organization is unknown (fallback)"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-unknown-patient"
* name = "UzbekistanUnknownPatientCodeSystem"
* status = #active
* kind = #identifier
* date = "2025-11-06"
* publisher = "Uzinfocom"
* responsible = "Healthcare providers in Uzbekistan"
* type = $identifier-type#MR "Medical record number"
* description = "Naming system for identifiers assigned to unidentified patients (e.g., unconscious patients who cannot provide identification) when the receiving healthcare organization is unknown or its tax ID (Soliq) is not available. This is a fallback; the preferred approach is to use organization-specific temporary medical record numbers (https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt) when the organization is known."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for temporarily identifying unidentified patients (e.g., unconscious patients) when the receiving healthcare organization is unknown or its tax ID is not available. Prefer using the organization-scoped temporary medical record number system when the organization is known (e.g., https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/mrt for an organization with tax ID 200935935)."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/pid/uz/mrt"
* uniqueId[=].preferred = true

Instance: patient-id-uzb-provider-assigned
InstanceOf: NamingSystem
Description: "Provider-assigned patient identifiers issued by healthcare organizations for unidentified patients"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-provider-assigned"
* name = "UzbekistanProviderAssignedIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2025-11-13"
* publisher = "Uzinfocom"
* responsible = "Healthcare providers in Uzbekistan"
* type = $identifier-type#PRN "Provider number"
* description = "Naming system for patient identifiers assigned by individual healthcare organizations for unidentified patients. The system URI includes the organization's tax ID (Soliq) to scope identifiers to the issuing organization. Format: https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for identifying patients with organization-specific identifiers. Each organization uses their tax ID to create a unique identifier namespace."
* uniqueId[0].type = #uri
* uniqueId[=].value = $provider-number
* uniqueId[=].preferred = false
* uniqueId[=].comment = "This is the base URI pattern. In practice, append the organization's tax ID: https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}"

Instance: patient-id-uzb-temp-medical-record
InstanceOf: NamingSystem
Description: "Temporary medical record numbers for unidentified patients (preferred approach)"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-temp-medical-record"
* name = "UzbekistanTempMedicalRecordSystem"
* status = #active
* kind = #identifier
* date = "2025-11-13"
* publisher = "Uzinfocom"
* responsible = "Healthcare providers in Uzbekistan"
* type = $identifier-type#MRT "Temporary Medical Record Number"
* description = "Naming system for temporary medical record numbers assigned to unidentified patients (e.g., unconscious patients who cannot provide identification) by healthcare organizations. This is the preferred approach when the receiving organization is known. The system URI includes the organization's tax ID (Soliq) to scope identifiers to the issuing organization. Format: https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used for temporarily identifying unidentified patients (e.g., unconscious patients) with organization-specific medical record numbers when the receiving organization is known. This is preferred over the unknown patient identifier system as it provides traceability to the issuing organization."
* uniqueId[0].type = #uri
* uniqueId[=].value = $temp-medical-record-pattern
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the URI pattern placeholder (000000000 represents the organization's tax ID). In practice, replace 000000000 with the actual organization's tax ID: https://dhp.uz/fhir/core/sid/pid/uz/prn/{soliq-id}/mrt"

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
* uniqueId.value = $location-unit
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

Instance: patient-id-uzb-pension-number
InstanceOf: NamingSystem
Description: "The pension number identifier is used to determine whether a patient is registered in the pension system and to identify the type of pension received." 
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/core/NamingSystem/patient-id-uzb-pension-number"
* name = "UzbekistanPensionNumberSystem"
* status = #active
* kind = #identifier
* date = "2026-01-08"
* publisher = "Uzinfocom"
* responsible = "Ministry of Finance of the Republic of Uzbekistan (Pension Fund)"
* type = $identifier-type#PEN "Pension number"
* description = "Naming system defining the pension number identifier issued by the Ministry of Finance of the Republic of Uzbekistan (Pension Fund), as referenced by the national identifier system and integrated with the e-government platform (iskm.egov.uz/minfin/services/pension/pinnp). The pension number associated with different pension types, including old-age pension, disability pension, survivor's pension, and other pension categories." 
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used to record and exchange a patient's pension number for administrative and eligibility purposes, including verification of pensioner status and applicable social or healthcare benefits. This identifier is not intended to replace national personal identifiers (such as JShShIR) and should be used only when pension-related identification is required."
* uniqueId[0].type = #uri
* uniqueId[=].value = $pension-number
* uniqueId[=].preferred = true
