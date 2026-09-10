Instance: dispensary-deregistration-reason-to-dhp-sct-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DHP dispensary deregistration reasons To SNOMED CT"
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

* group[=].element[+].code = #chr-0129-0003
* group[=].element[=].display = "Bemorning vafoti"
* group[=].element[=].target[+].code = #419099009
* group[=].element[=].target[=].display = "Dead (finding)"
* group[=].element[=].target[=].relationship = #equivalent

// SNOMED records only that residence changed; the DHP code additionally requires
// the move to leave the served territory.
* group[=].element[+].code = #chr-0129-0004
* group[=].element[=].display = "Doimiy yashash joyining xizmat ko'rsatiladigan hudud tashqarisiga o'zgarishi"
* group[=].element[=].target[+].code = #360885002
* group[=].element[=].target[=].display = "Change of residence status (finding)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// SNOMED does not qualify the sentence length; the DHP code requires more than a year.
* group[=].element[+].code = #chr-0129-0005
* group[=].element[=].display = "Bir yildan ortiq muddatga ozodlikdan mahrum qilish"
* group[=].element[=].target[+].code = #45361006
* group[=].element[=].target[=].display = "Imprisonment (finding)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// SNOMED says only that something was declined; the DHP code names dispensary
// observation as what was declined.
* group[=].element[+].code = #chr-0129-0006
* group[=].element[=].display = "Bemorning dispanser kuzatuvidan bosh tortishi"
* group[=].element[=].target[+].code = #443390004
* group[=].element[=].target[=].display = "Declined (qualifier value)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #chr-0129-0007
* group[=].element[=].display = "Boshqa"
* group[=].element[=].target[+].code = #74964007
* group[=].element[=].target[=].display = "Other (qualifier value)"
* group[=].element[=].target[=].relationship = #equivalent
