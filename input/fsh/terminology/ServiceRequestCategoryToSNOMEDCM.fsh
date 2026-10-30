Instance: service-request-category-to-snomed-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Service Request Category Codes To SNOMED CT Specialty Codes"
Description: "ConceptMap for mapping local Service Request Category codes to SNOMED CT specialty codes"
* name = "ServiceRequestCategoryToSNOMEDCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/service-request-category-to-snomed-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ServiceRequestCategoryCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group[=].element[+].code = #serv-0001-00001
* group[=].element[=].display = "Urologiya"
* group[=].element[=].target[+].code = #394612005
* group[=].element[=].target[=].display = "Urology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00002
* group[=].element[=].display = "Travmatologiya va ortopediya yo'nalishi"
* group[=].element[=].target[+].code = #394801008
* group[=].element[=].target[=].display = "Trauma and orthopedics"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00003
* group[=].element[=].display = "Ftiziatriya yo'nalishi"
* group[=].element[=].target[+].code = #394807007
* group[=].element[=].target[=].display = "Infectious diseases specialty"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00004
* group[=].element[=].display = "Pulmonologiya yo'nalishi"
* group[=].element[=].target[+].code = #418112009
* group[=].element[=].target[=].display = "Pulmonary medicine"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00005
* group[=].element[=].display = "Nefrologiya yo'nalishi"
* group[=].element[=].target[+].code = #394589003
* group[=].element[=].target[=].display = "Nephrology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00006
* group[=].element[=].display = "Allergologiya yo'nalishi"
* group[=].element[=].target[+].code = #394805004
* group[=].element[=].target[=].display = "Clinical immunology/allergy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00007
* group[=].element[=].display = "Onkologiya yo'nalishi"
* group[=].element[=].target[+].code = #394592004
* group[=].element[=].target[=].display = "Clinical oncology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00008
* group[=].element[=].display = "Endokrinologiya yo'nalishi"
* group[=].element[=].target[+].code = #394583002
* group[=].element[=].target[=].display = "Endocrinology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00009
* group[=].element[=].display = "Oftalmologiya va ko'z mikroxirurgiya yo'nalishi"
* group[=].element[=].target[+].code = #394594003
* group[=].element[=].target[=].display = "Ophthalmology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00010
* group[=].element[=].display = "Kardiologiya yo'nalishi"
* group[=].element[=].target[+].code = #394579002
* group[=].element[=].target[=].display = "Cardiology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00011
* group[=].element[=].display = "Gastroenterologiya yo'nalishi"
* group[=].element[=].target[+].code = #394584008
* group[=].element[=].target[=].display = "Gastroenterology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00012
* group[=].element[=].display = "Gematologiya yo'nalishi"
* group[=].element[=].target[+].code = #394803006
* group[=].element[=].target[=].display = "Clinical hematology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00013
* group[=].element[=].display = "Revmatologiya yo'nalishi"
* group[=].element[=].target[+].code = #394810000
* group[=].element[=].target[=].display = "Rheumatology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00014
* group[=].element[=].display = "Neyroxirurgiya yo'nalishi"
* group[=].element[=].target[+].code = #394610002
* group[=].element[=].target[=].display = "Neurosurgery"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00015
* group[=].element[=].display = "Koloproktologiya yo'nalishi"
* group[=].element[=].target[+].code = #408464004
* group[=].element[=].target[=].display = "Colorectal surgery"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00016
* group[=].element[=].display = "Dermatologiya yo'nalishi"
* group[=].element[=].target[+].code = #394582007
* group[=].element[=].target[=].display = "Dermatology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00017
* group[=].element[=].display = "Xirurgiya yo'nalishi"
* group[=].element[=].target[+].code = #394609007
* group[=].element[=].target[=].display = "General surgery"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00018
* group[=].element[=].display = "Pediatriya yo'nalishi"
* group[=].element[=].target[+].code = #394537008
* group[=].element[=].target[=].display = "Pediatrics"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00019
* group[=].element[=].display = "Otorinolaringologiya va yuz-jag' jarrohlik yo'nalishi"
* group[=].element[=].target[+].code = #418960008
* group[=].element[=].target[=].display = "Otolaryngology"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00019
* group[=].element[=].display = "Otorinolaringologiya va yuz-jag' jarrohlik yo'nalishi"
* group[=].element[=].target[+].code = #408457001
* group[=].element[=].target[=].display = "Maxillofacial surgery"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00020
* group[=].element[=].display = "Nevrologiya yo'nalishi"
* group[=].element[=].target[+].code = #394591006
* group[=].element[=].target[=].display = "Neurology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00021
* group[=].element[=].display = "Akusherlik va ginekologiya yo'nalishi"
* group[=].element[=].target[+].code = #394585009
* group[=].element[=].target[=].display = "Obstetrics and gynecology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00022
* group[=].element[=].display = "Angiologiya yo'nalishi"
* group[=].element[=].target[+].code = #722414000
* group[=].element[=].target[=].display = "Vascular medicine"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00023
* group[=].element[=].display = "Stomatologiya va yuz-jag' jarrohlik yo'nalishi"
* group[=].element[=].target[+].code = #722163006
* group[=].element[=].target[=].display = "Dentistry"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00023
* group[=].element[=].display = "Stomatologiya va yuz-jag' jarrohlik yo'nalishi"
* group[=].element[=].target[+].code = #408465003
* group[=].element[=].target[=].display = "Oral and maxillofacial surgery"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00024
* group[=].element[=].display = "Oftalmologiya"
* group[=].element[=].target[+].code = #394594003
* group[=].element[=].target[=].display = "Ophthalmology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00025
* group[=].element[=].display = "Travmatologiya"
* group[=].element[=].target[+].code = #310166001
* group[=].element[=].target[=].display = "Trauma surgery service"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00026
* group[=].element[=].display = "Kattalar travmatologiyasi"
* group[=].element[=].target[+].code = #310166001
* group[=].element[=].target[=].display = "Trauma surgery service"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00027
* group[=].element[=].display = "Intensiv davolash va reanimatsiya"
* group[=].element[=].target[+].code = #408478003
* group[=].element[=].target[=].display = "Critical care medicine"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00028
* group[=].element[=].display = "Toksikologiya"
* group[=].element[=].target[+].code = #409967009
* group[=].element[=].target[=].display = "Toxicology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00029
* group[=].element[=].display = "Terapiya"
* group[=].element[=].target[+].code = #419192003
* group[=].element[=].target[=].display = "Internal medicine"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00030
* group[=].element[=].display = "Torakal jarrohlik"
* group[=].element[=].target[+].code = #408456005
* group[=].element[=].target[=].display = "Thoracic surgery"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00031
* group[=].element[=].display = "Qon-tomir jarrohligi va mikrojarrohlik"
* group[=].element[=].target[+].code = #408463005
* group[=].element[=].target[=].display = "Vascular surgery"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00032
* group[=].element[=].display = "Kombustiologiya"
* group[=].element[=].target[+].code = #408462000
* group[=].element[=].target[=].display = "Burns care"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00033
* group[=].element[=].display = "Gemodializ"
* group[=].element[=].target[+].code = #431051000124102
* group[=].element[=].target[=].display = "Dialysis service"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00034
* group[=].element[=].display = "Bolalar xirurgiyasi"
* group[=].element[=].target[+].code = #394539006
* group[=].element[=].target[=].display = "Paediatric surgery"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00035
* group[=].element[=].display = "Tug'uruqxona"
* group[=].element[=].target[+].code = #408470005
* group[=].element[=].target[=].display = "Obstetrics"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00036
* group[=].element[=].display = "Homilador ayollar patologiyasi"
* group[=].element[=].target[+].code = #408470005
* group[=].element[=].target[=].display = "Obstetrics"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #serv-0001-00037
* group[=].element[=].display = "Ginekologiya"
* group[=].element[=].target[+].code = #394586005
* group[=].element[=].target[=].display = "Gynecology"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00038
* group[=].element[=].display = "Yuqumli kasalliklar"
* group[=].element[=].target[+].code = #394807007
* group[=].element[=].target[=].display = "Infectious diseases specialty"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00039
* group[=].element[=].display = "Bolalar kasalliklari"
* group[=].element[=].target[+].code = #394537008
* group[=].element[=].target[=].display = "Pediatrics"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #serv-0001-00040
* group[=].element[=].display = "Tibbiy genetika yo'nalishi (18 yoshgacha bo'lgan bolalar uchun)"
* group[=].element[=].target[+].code = #420208008
* group[=].element[=].target[=].display = "Pediatric genetics"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target