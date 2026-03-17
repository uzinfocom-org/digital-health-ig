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
* targetScopeCanonical = Canonical(OrganizationalStructureVS)
* group.target = Canonical(OrganizationalStructureCS)

* group.element[+].code = #PHARMACY
* group.element[=].display = "Pharmacy"
* group.element[=].noMap = true

* group.element[+].code = #SOCIAL_PHARMACY
* group.element[=].display = "Social Pharmacy"
* group.element[=].noMap = true

* group.element[+].code = #HOSPITAL
* group.element[=].display = "Hospital"
* group.element[=].target[+].code = #146
* group.element[=].target[=].display = "Hospital"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #PEDIATRIC_HOSPITAL
* group.element[=].display = "Pediatric Hospital"
* group.element[=].target[+].code = #146
* group.element[=].target[=].display = "Hospital"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Pediatric hospital is a specialization of the general Hospital type."

* group.element[+].code = #PEDIATRIC_MULTIDISCIPLINARY_HOSPITAL
* group.element[=].display = "Pediatric Multidisciplinary Hospital"
* group.element[=].target[+].code = #134
* group.element[=].target[=].display = "Children's multidisciplinary medical center"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "MIS2 uses 'hospital' while the target is 'medical center', but both refer to pediatric multidisciplinary facilities."

* group.element[+].code = #PSYCHONEUROLOGICAL_HOSPITAL
* group.element[=].display = "Psychoneurological Hospital"
* group.element[=].target[+].code = #142
* group.element[=].target[=].display = "Specialized hospital"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Psychoneurological hospital is a specific type of specialized hospital."

* group.element[+].code = #EMERGENCY_HOSPITAL
* group.element[=].display = "Emergency Hospital"
* group.element[=].target[+].code = #126
* group.element[=].target[=].display = "Emergency medical care scientific center"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Emergency hospital maps to emergency medical care scientific center - both provide emergency care but differ in structure."

* group.element[+].code = #SPECIALIZED_HOSPITAL
* group.element[=].display = "Specialized Hospital"
* group.element[=].target[+].code = #142
* group.element[=].target[=].display = "Specialized hospital"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #DISINFECTION_STATION
* group.element[=].display = "Disinfection station"
* group.element[=].noMap = true

* group.element[+].code = #DISPENSARY
* group.element[=].display = "Dispensary"
* group.element[=].target[+].code = #150
* group.element[=].target[=].display = "Specialized dispensary"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #NURSING_HOME
* group.element[=].display = "Nursing home"
* group.element[=].noMap = true

* group.element[+].code = #ADVANCED_TRAINING_INSTITUTE
* group.element[=].display = "Institute of Advanced Training"
* group.element[=].noMap = true

* group.element[+].code = #EDUCATIONAL_CLINIC
* group.element[=].display = "Clinic at an educational institution"
* group.element[=].target[+].code = #130
* group.element[=].target[=].display = "Clinics (at higher medical institutions and research institutes)"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "MIS2 covers any educational institution; target is specifically at higher medical institutions and research institutes."

* group.element[+].code = #MATERNITY_COMPLEX
* group.element[=].display = "Maternity complex"
* group.element[=].target[+].code = #124
* group.element[=].target[=].display = "City (district) maternity complex"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #LEPROSARIUM
* group.element[=].display = "Leprosarium"
* group.element[=].target[+].code = #144
* group.element[=].target[=].display = "Leprosy hospital"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #MEDICAL_ASSOCIATION
* group.element[=].display = "Medical Association"
* group.element[=].target[+].code = #148
* group.element[=].target[=].display = "Medical association"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #SCIENTIFIC_PRODUCTION_ASSOCIATION
* group.element[=].display = "Scientific and Production Association"
* group.element[=].noMap = true

* group.element[+].code = #BOARDING_HOUSE
* group.element[=].display = "Boarding house"
* group.element[=].noMap = true

* group.element[+].code = #PATHOANATOMIC_SERVICE
* group.element[=].display = "Pathoanatomic Service"
* group.element[=].noMap = true

* group.element[+].code = #MULTIDISCIPLINARY_POLYCLINIC
* group.element[=].display = "Multidisciplinary polyclinic"
* group.element[=].target[+].code = #138
* group.element[=].target[=].display = "Multidisciplinary clinic"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Polyclinic (outpatient-focused) mapped to multidisciplinary clinic."

* group.element[+].code = #FAMILY_POLYCLINIC
* group.element[=].display = "Family polyclinic"
* group.element[=].noMap = true

* group.element[+].code = #DENTAL_POLYCLINIC
* group.element[=].display = "Dental polyclinic"
* group.element[=].noMap = true

* group.element[+].code = #FAMILY_PHYSICIAN_POINT
* group.element[=].display = "Family physicians point"
* group.element[=].noMap = true

* group.element[+].code = #SANATORIUM
* group.element[=].display = "Sanatorium"
* group.element[=].noMap = true

* group.element[+].code = #BLOOD_TRANSFUSION_STATION
* group.element[=].display = "Blood Transfusion station"
* group.element[=].noMap = true

* group.element[+].code = #AMBULANCE_STATION
* group.element[=].display = "Ambulance station"
* group.element[=].noMap = true

* group.element[+].code = #HEALTH_DEPARTMENT
* group.element[=].display = "Health Department"
* group.element[=].noMap = true

* group.element[+].code = #EDUCATIONAL_INSTITUTION
* group.element[=].display = "Educational institution"
* group.element[=].noMap = true

* group.element[+].code = #BLOOD_TRANSFUSION_FACILITY
* group.element[=].display = "Blood transfusion facility"
* group.element[=].noMap = true

* group.element[+].code = #SANITARY_EDUCATIONAL_INSTITUTION
* group.element[=].display = "Sanitary and educational institution"
* group.element[=].noMap = true

* group.element[+].code = #SANEPID_SERVICE
* group.element[=].display = "Establishment of sanitary and epidemiological service"
* group.element[=].noMap = true

* group.element[+].code = #HEMOSTASIOLOGY_CENTER
* group.element[=].display = "Center of Hemostasiology"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Hemostasiology center is a specific type of specialized center."

* group.element[+].code = #DIAGNOSTIC_CENTER
* group.element[=].display = "Diagnostic Center"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Diagnostic center is a specific type of specialized center."

* group.element[+].code = #PEDIATRIC_DIAGNOSTIC_CENTER
* group.element[=].display = "Pediatric diagnostic center"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Pediatric diagnostic center is a specific type of specialized center."

* group.element[+].code = #SCIENTIFIC_PRACTICAL_CENTER
* group.element[=].display = "Scientific and Practical Center"
* group.element[=].target[+].code = #110
* group.element[=].target[=].display = "Specialized scientific and practical medical center"
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[=].comment = "Generic scientific-practical center maps to specialized scientific-practical medical center."

* group.element[+].code = #BLOOD_TRANSFUSION_CENTER
* group.element[=].display = "Blood Transfusion Center"
* group.element[=].noMap = true

* group.element[+].code = #PERINATAL_CENTER
* group.element[=].display = "Perinatal Center"
* group.element[=].target[+].code = #120
* group.element[=].target[=].display = "Perinatal center"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #REHABILITATION_CENTER
* group.element[=].display = "Rehabilitation center"
* group.element[=].target[+].code = #118
* group.element[=].target[=].display = "Rehabilitation center"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #REPRODUCTIVE_HEALTH_CENTER
* group.element[=].display = "Reproductive Health Center"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Reproductive health center is a specific type of specialized center."

* group.element[+].code = #SCREENING_CENTER
* group.element[=].display = "Screening Center"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Screening center is a specific type of specialized center."

* group.element[+].code = #AIDS_CENTER
* group.element[=].display = "AIDS Center"
* group.element[=].target[+].code = #114
* group.element[=].target[=].display = "Specialized center"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "AIDS center is a specific type of specialized center."

* group.element[+].code = #CENTRAL_MULTIDISCIPLINARY_POLYCLINIC
* group.element[=].display = "Central multidisciplinary polyclinic"
* group.element[=].target[+].code = #138
* group.element[=].target[=].display = "Multidisciplinary clinic"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Central polyclinic (outpatient-focused) mapped to multidisciplinary clinic."

* group.element[+].code = #CENTRAL_MULTIDISCIPLINARY_POLYCLINIC_BRANCH
* group.element[=].display = "Central multidisciplinary polyclinic (branch)"
* group.element[=].target[+].code = #138
* group.element[=].target[=].display = "Multidisciplinary clinic"
* group.element[=].target[=].relationship = #related-to
* group.element[=].target[=].comment = "Branch of central polyclinic mapped to multidisciplinary clinic."

* group.element[+].code = #FAMILY_POLYCLINIC_BRANCH
* group.element[=].display = "Family polyclinic (branch)"
* group.element[=].noMap = true

* group.element[+].code = #FAMILY_PHYSICIAN_POINT_BRANCH
* group.element[=].display = "Family physicians point (branch)"
* group.element[=].noMap = true

* group.element[+].code = #UNKNOWN
* group.element[=].display = "Unknown"
* group.element[=].noMap = true
