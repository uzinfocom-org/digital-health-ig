Instance: mis2-medical-type-to-organizational-structure-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "MIS2 Medical Type to Organizational Structure"
Description: "Maps MIS2 medical type codes to UZ Core Organizational Structure codes. MIS2 classifies healthcare facilities into 46 medical types, while OrganizationalStructureCS provides the Ministry of Health's detailed classification of institution types. Not all MIS2 types have equivalents in OrganizationalStructureCS - facility types like pharmacies, polyclinics, ambulance stations, and blood transfusion facilities are not represented."
* name = "MIS2MedicalTypeToOrganizationalStructureCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/mis2-medical-type-to-organizational-structure-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

// Group 1: MIS2 mapping to OrganizationalStructureCS
* group[+].source = Canonical(MIS2MedicalTypeCS)
* group[=].target = Canonical(OrganizationalStructureCS)
* group[=].element[+].code = #PHARMACY
* group[=].element[=].display = "Pharmacy"
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #SOCIAL_PHARMACY
* group[=].element[=].display = "Social Pharmacy"
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #HOSPITAL
* group[=].element[=].display = "Hospital"
* group[=].element[=].target[+].code = #146
* group[=].element[=].target[=].display = "Hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #PEDIATRIC_HOSPITAL
* group[=].element[=].display = "Pediatric Hospital"
* group[=].element[=].target[+].code = #146
* group[=].element[=].target[=].display = "Hospital"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #PEDIATRIC_MULTIDISCIPLINARY_HOSPITAL
* group[=].element[=].display = "Pediatric Multidisciplinary Hospital"
* group[=].element[=].target[+].code = #134
* group[=].element[=].target[=].display = "Children's multidisciplinary medical center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #PSYCHONEUROLOGICAL_HOSPITAL
* group[=].element[=].display = "Psychoneurological Hospital"
* group[=].element[=].target[+].code = #142
* group[=].element[=].target[=].display = "Specialized hospital"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #PEMERGENCY_HOSPITAL
* group[=].element[=].display = "Emergency Hospital"
* group[=].element[=].target[+].code = #126
* group[=].element[=].target[=].display = "Emergency medical care scientific center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #SPECIALIZED_HOSPITAL
* group[=].element[=].display = "Specialized Hospital"
* group[=].element[=].target[+].code = #142
* group[=].element[=].target[=].display = "Specialized hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #DISPENSARY
* group[=].element[=].display = "Dispensary"
* group[=].element[=].target[+].code = #150
* group[=].element[=].target[=].display = "Specialized dispensary"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NURSING_HOME
* group[=].element[=].display = "Nursing home"
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #ADVANCED_TRAINING_INSTITUTE
* group[=].element[=].display = "Institute of Advanced Training"
* group[=].element[=].target[+].code = #917
* group[=].element[=].target[=].display = "Institutions for professional qualification development of medical workers"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #EDUCATIONAL_CLINIC
* group[=].element[=].display = "Clinic at an educational institution"
* group[=].element[=].target[+].code = #130
* group[=].element[=].target[=].display = "Clinics (at higher medical institutions and research institutes)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #MATERNITY_COMPLEX
* group[=].element[=].display = "Maternity complex"
* group[=].element[=].target[+].code = #124
* group[=].element[=].target[=].display = "City (district) maternity complex"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #LEPROSARIUM
* group[=].element[=].display = "Leprosy hospital"
* group[=].element[=].target[+].code = #144
* group[=].element[=].target[=].display = "Leprosy hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #MEDICAL_ASSOCIATION
* group[=].element[=].display = "Medical Association"
* group[=].element[=].target[+].code = #148
* group[=].element[=].target[=].display = "Medical association"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SCIENTIFIC_PRODUCTION_ASSOCIATION
* group[=].element[=].display = "Scientific and Production Association"
* group[=].element[=].target[+].code = #110
* group[=].element[=].target[=].display = "Specialized scientific and practical medical center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #BOARDING_HOUSE
* group[=].element[=].display = "Boarding house"
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #MULTIDISCIPLINARY_POLYCLINIC
* group[=].element[=].display = "Multidisciplinary polyclinic"
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #FAMILY_POLYCLINIC
* group[=].element[=].display = "Family polyclinic"
* group[=].element[=].target[+].code = #351
* group[=].element[=].target[=].display = "Family polyclinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #DENTAL_POLYCLINIC
* group[=].element[=].display = "Dental polyclinic"
* group[=].element[=].target[+].code = #341
* group[=].element[=].target[=].display = "Dental polyclinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #FAMILY_PHYSICIAN_POINT
* group[=].element[=].display = "Family physicians point"
* group[=].element[=].target[+].code = #355
* group[=].element[=].target[=].display = "Family doctor point"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #AMBULANCE_STATION
* group[=].element[=].display = "Ambulance station"
* group[=].element[=].target[+].code = #211
* group[=].element[=].target[=].display = "Emergency medical service station"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #HEALTH_DEPARTMENT
* group[=].element[=].display = "Health Department"
* group[=].element[=].target[+].code = #911
* group[=].element[=].target[=].display = "Health administration (ministry)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #EDUCATIONAL_INSTITUTION
* group[=].element[=].display = "Educational institution"
* group[=].element[=].target[+].code = #919
* group[=].element[=].target[=].display = "Medical institute"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #SANITARY_EDUCATIONAL_INSTITUTION
* group[=].element[=].display = "Sanitary and educational institution"
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #HEMOSTASIOLOGY_CENTER
* group[=].element[=].display = "Center of Hemostasiology"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #DIAGNOSTIC_CENTER
* group[=].element[=].display = "Diagnostic Center"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #PEDIATRIC_DIAGNOSTIC_CENTER
* group[=].element[=].display = "Pediatric diagnostic center"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #SCIENTIFIC_PRACTICAL_CENTER
* group[=].element[=].display = "Scientific and Practical Center"
* group[=].element[=].target[+].code = #110
* group[=].element[=].target[=].display = "Specialized scientific and practical medical center"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #PERINATAL_CENTER
* group[=].element[=].display = "Perinatal Center"
* group[=].element[=].target[+].code = #120
* group[=].element[=].target[=].display = "Perinatal center"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #REHABILITATION_CENTER
* group[=].element[=].display = "Rehabilitation center"
* group[=].element[=].target[+].code = #118
* group[=].element[=].target[=].display = "Rehabilitation center"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #REPRODUCTIVE_HEALTH_CENTER
* group[=].element[=].display = "Reproductive Health Center"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #SCREENING_CENTER
* group[=].element[=].display = "Screening Center"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #AIDS_CENTER
* group[=].element[=].display = "AIDS Center"
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #CENTRAL_MULTIDISCIPLINARY_POLYCLINIC
* group[=].element[=].display = "Central multidisciplinary polyclinic"
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #CENTRAL_MULTIDISCIPLINARY_POLYCLINIC_BRANCH
* group[=].element[=].display = "Central multidisciplinary polyclinic (branch)"
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #FAMILY_POLYCLINIC_BRANCH
* group[=].element[=].display = "Family polyclinic (branch)"
* group[=].element[=].target[+].code = #158
* group[=].element[=].target[=].display = "Rural district hospital"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #FAMILY_PHYSICIAN_POINT_BRANCH
* group[=].element[=].display = "Family physicians point (branch)"
* group[=].element[=].target[+].code = #355
* group[=].element[=].target[=].display = "Family doctor point"
* group[=].element[=].target[=].relationship = #related-to

// Group 2: MIS2 mapping to NomenclatureGroupCS
* group[+].source = Canonical(MIS2MedicalTypeCS)
* group[=].target = Canonical(NomenclatureGroupCS)
* group[=].element[+].code = #DISINFECTION_STATION
* group[=].element[=].display = "Disinfection station"
* group[=].element[=].target[+].code = #II_800
* group[=].element[=].target[=].display = "Sanitariya-epidemiologik osoyishtalik va jamoat salomatligi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #PATHOANATOMIC_SERVICE
* group[=].element[=].display = "Pathoanatomic Service"
* group[=].element[=].target[+].code = #II_600
* group[=].element[=].target[=].display = "Pathological anatomy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #SANATORIUM
* group[=].element[=].display = "SANATORIUM"
* group[=].element[=].target[+].code = #II_400
* group[=].element[=].target[=].display = "Resorts"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #BLOOD_TRANSFUSION_STATION
* group[=].element[=].display = "Blood Transfusion station"
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #BLOOD_TRANSFUSION_FACILITY
* group[=].element[=].display = "Blood transfusion facility"
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #BLOOD_TRANSFUSION_CENTER
* group[=].element[=].display = "Blood Transfusion Center"
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #SANEPID_SERVICE
* group[=].element[=].display = "Establishment of sanitary and epidemiological service"
* group[=].element[=].target[+].code = #II_800
* group[=].element[=].target[=].display = "Sanitariya-epidemiologik osoyishtalik va jamoat salomatligi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #UNKNOWN
* group[=].element[=].display = "Unknown"
* group[=].element[=].noMap = true
