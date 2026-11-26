Instance: dispensary-deregistration-reason-to-dhp-sct-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DHP dispensary deregistration reasons to SNOMED CT"
Description: "ConceptMap for mapping DHP dispensary deregistration reason codes to SNOMED CT."
* name = "DispensaryDeregistrationReasonToSNOMEDCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dispensary-deregistration-reason-to-dhp-sct-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DispensaryDeregistrationReasonCS)
* group.target = $sct

* sourceScopeCanonical = Canonical(DispensaryDeregistrationReasonVS)
* targetScopeCanonical = $sct-vs

// "Not stated" carries no clinical meaning of its own: leave the target unpopulated
// rather than asserting an unknown-value code.
* group[=].element[+].code = #chr-0129-0001
* group[=].element[=].display = "Ko'rsatilmagan"
* group[=].element[=].noMap = true

// The DHP code covers recovery and sustained improvement alike, so it is the broader of the two.
* group[=].element[+].code = #chr-0129-0002
* group[=].element[=].display = "Tasdiqlangan sog'ayish yoki barqaror yaxshilanish"
* group[=].element[=].target[+].code = #723506003
* group[=].element[=].target[=].display = "Resolved (qualifier value)"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

// SNOMED says follow-up was declined; the DHP code names dispensary
// observation as what was declined.
* group[=].element[+].code = #chr-0129-0003
* group[=].element[=].display = "Bemorning dispanser kuzatuvidan bosh tortishi"
* group[=].element[=].target[+].code = #763079000
* group[=].element[=].target[=].display = "Follow-up encounter declined (situation)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
