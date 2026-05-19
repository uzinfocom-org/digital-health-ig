Instance: vaccine-code-to-cvx-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Vaccine codes to CVX"
Description: "Maps local UZ vaccine codes to standard CVX vaccine codes."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/vaccine-code-to-cvx-cm"
* name = "VaccineCodeToCVX"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = Canonical(VaccineCodeCS)
* sourceScopeCanonical = Canonical(VaccineCodeVS)
* group[=].target = $cvx
* targetScopeCanonical = $cvx-vs

* group[=].element[+].code = #immun-116
* group[=].element[=].display = "varikella-zoster vaktsinasi"
* group[=].element[=].target[+].code = #21
* group[=].element[=].target[=].display = "varicella"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #immun-130
* group[=].element[=].display = "meningokokk oligosakkarid (A, C, Y va W-135 guruhlari) difteriya toksoid konjugat vaktsinasi (MCV4O)"
* group[=].element[=].target[+].code = #136
* group[=].element[=].target[=].display = "Meningococcal MCV4O"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #immun-123
* group[=].element[=].display = "zoster vaktsinasi, jonli"
* group[=].element[=].target[+].code = #121
* group[=].element[=].target[=].display = "zoster vaccine, live"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #immun-131
* group[=].element[=].display = "Gripp, yuqori dozali, split virus, trivalent, in'ektsion, konservantsiz"
* group[=].element[=].target[+].code = #135
* group[=].element[=].target[=].display = "Influenza, high-dose, trivalent, PF"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #immun-254
* group[=].element[=].display = "IPOL (poliomielitga qarshi emlash, poliomielitga qarshi vaktsinalar)"
* group[=].element[=].target[+].code = #10
* group[=].element[=].target[=].display = "IPV"
* group[=].element[=].target[=].relationship = #related-to
