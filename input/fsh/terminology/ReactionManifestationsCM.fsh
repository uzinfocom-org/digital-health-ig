Instance: manifestations-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Allergy manifestations to SNOMED CT"
Description: "Maps local UZ ReactionManifestationCS codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/manifestations-to-snomed"
* name = "AllergyManifestationsToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ReactionManifestationCS)
* sourceScopeCanonical = Canonical(ReactionManifestationVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #aller-0004-00001
* group.element[=].display = "Aksirish"
* group.element[=].target[+].code = #76067001
* group.element[=].target[=].display = "Sneezing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0004-00002
* group.element[=].display = "Burun oqishi"
* group.element[=].target[+].code = #64531003
* group.element[=].target[=].display = "Nasal discharge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0004-00003
* group.element[=].display = "Burun qichishishi"
* group.element[=].target[+].code = #301194006
* group.element[=].target[=].display = "Finding of sensation of nose"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0004-00004
* group.element[=].display = "Burunda polip borligi"
* group.element[=].target[+].code = #1332435005
* group.element[=].target[=].display = "The presence of polyps in the nose (Nasal polyposis)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0004-00005
* group.element[=].display = "Burundan toza rangsiz suyuqlik kelishi"
* group.element[=].target[+].code = #277233008
* group.element[=].target[=].display = "Anterior rhinorrhea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #aller-0004-00006
* group.element[=].display = "Xurrak otish"
* group.element[=].target[+].code = #72863001
* group.element[=].target[=].display = "Snoring"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0004-00007
* group.element[=].display = "Xid bilishning pasayishi"
* group.element[=].target[+].code = #83156004
* group.element[=].target[=].display = "Sense of smell impaired"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0004-00008
* group.element[=].display = "Yuz, soxasida og'riq"
* group.element[=].target[+].code = #95668009
* group.element[=].target[=].display = "Pain in face"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00001
* group.element[=].display = "Tomoqda og'riq, achishish"
* group.element[=].target[+].code = #162397003
* group.element[=].target[=].display = "Sore throat; Pain in throat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00002
* group.element[=].display = "Tomoq qichishish"
* group.element[=].target[+].code = #1137376007
* group.element[=].target[=].display = "Itching of oral soft tissues"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #aller-0005-00003
* group.element[=].display = "Og'iz bo'shlig'i yumshoq to'qimalarining qichishi"
* group.element[=].target[+].code = #1137376007
* group.element[=].target[=].display = "Pruritus of oral soft tissues"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00004
* group.element[=].display = "Ovoz bo'g'ilishi"
* group.element[=].target[+].code = #249489001
* group.element[=].target[=].display = "Choking"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00005
* group.element[=].display = "Yo'tal"
* group.element[=].target[+].code = #263731006
* group.element[=].target[=].display = "Coughing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00006
* group.element[=].display = "Burindan tomog'iga suyuqlik Oqishi"
* group.element[=].target[+].code = #75803007
* group.element[=].target[=].display = "Posterior rhinorrhea"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00007
* group.element[=].display = "Tomoq qurib ketishi"
* group.element[=].target[+].code = #102618009
* group.element[=].target[=].display = "Dry throat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00008
* group.element[=].display = "Tomoqning tiqilishi"
* group.element[=].target[+].code = #102617004
* group.element[=].target[=].display = "Congestion of throat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0005-00009
* group.element[=].display = "Tomoqning shishishi"
* group.element[=].target[+].code = #421581006
* group.element[=].target[=].display = "Swelling of throat; Pharyngeal swelling"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0006-00001
* group.element[=].display = "Tomoq qizarishi"
* group.element[=].target[+].code = #126662008
* group.element[=].target[=].display = "Redness of throat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0006-00002
* group.element[=].display = "Shovqinli nafas ( xirillashlar )"
* group.element[=].target[+].code = #248573009
* group.element[=].target[=].display = "Noisy breathing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0006-00003
* group.element[=].display = "Nafas siqishi"
* group.element[=].target[+].code = #267036007
* group.element[=].target[=].display = "Shortness of breath (Dyspnea)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0006-00004
* group.element[=].display = "Xavo yetishmasligi"
* group.element[=].target[+].code = #267036007
* group.element[=].target[=].display = "Dyspnea"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0006-00006
* group.element[=].display = "Ko'krak qafasida siqilish"
* group.element[=].target[+].code = #23924001
* group.element[=].target[=].display = "Chest tightness"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0007-00001
* group.element[=].display = "Balg'am ajralishi"
* group.element[=].target[+].code = #45710003
* group.element[=].target[=].display = "Sputum (Expectoration)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0007-00002
* group.element[=].display = "Quloq qichishi"
* group.element[=].target[+].code = #699392007
* group.element[=].target[=].display = "Itching of ear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0007-00003
* group.element[=].display = "Eshitishning pasayishi"
* group.element[=].target[+].code = #15188001
* group.element[=].target[=].display = "Hearing loss"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0007-00004
* group.element[=].display = "Quloq shangillashi"
* group.element[=].target[+].code = #60862001
* group.element[=].target[=].display = "Ringing in ears"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0007-00005
* group.element[=].display = "Quloq bitib qolishi"
* group.element[=].target[+].code = #103281005
* group.element[=].target[=].display = "Sensation of blocked ear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0008-00001
* group.element[=].display = "Kulodqan suyuqlik kelishi"
* group.element[=].target[+].code = #65668001
* group.element[=].target[=].display = "Otorrhea, discharge of ear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0008-00002
* group.element[=].display = "Ko'zda qichishish"
* group.element[=].target[+].code = #74776002
* group.element[=].target[=].display = "Itchy eyes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0008-00003
* group.element[=].display = "Ko'z qizarishi"
* group.element[=].target[+].code = #703630003
* group.element[=].target[=].display = "Redness of the eyes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0008-00004
* group.element[=].display = "Ko'z atrofi shishi"
* group.element[=].target[+].code = #49563000
* group.element[=].target[=].display = "Edema of eyelid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0008-00005
* group.element[=].display = "Ko'zning tez qurib qolishi"
* group.element[=].target[+].code = #162290004
* group.element[=].target[=].display = "Rapid drying of the eyes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0009-00001
* group.element[=].display = "Ko'z yoshlanishi"
* group.element[=].target[+].code = #193982009
* group.element[=].target[=].display = "Tearing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0009-00002
* group.element[=].display = "Terisida toshmalar toshishi"
* group.element[=].target[+].code = #271807003
* group.element[=].target[=].display = "Skin rash"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0009-00003
* group.element[=].display = "Terisida qichishish"
* group.element[=].target[+].code = #64144002
* group.element[=].target[=].display = "Itchy skin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0009-00004
* group.element[=].display = "Terining qurib ketishi"
* group.element[=].target[+].code = #52475004
* group.element[=].target[=].display = "Dry skin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #aller-0009-00005
* group.element[=].display = "Barmorlar kaft soxasida shish"
* group.element[=].target[+].code = #443339000
* group.element[=].target[=].display = "Edema of palm of hand"
* group.element[=].target[=].relationship = #equivalent
