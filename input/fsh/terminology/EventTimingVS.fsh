ValueSet: EventTimingVS
Id: event-timing-vs
Title: "Event Timing ValueSet"
Description: "A value set defining when an event occurs (Morning, Evening, Before Meal, etc.), combining codes from standard FHIR EventTiming and v3-TimingEvent systems with UZ/RU translations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/event-timing-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EventTimingCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TimingEventCS)

// Include codes from BOTH systems
* include codes from system $event-timing

* include $v3-timing-event#HS
* include $v3-timing-event#WAKE
* include $v3-timing-event#C
* include $v3-timing-event#CM
* include $v3-timing-event#CD
* include $v3-timing-event#CV
* include $v3-timing-event#AC
* include $v3-timing-event#ACM
* include $v3-timing-event#ACD
* include $v3-timing-event#ACV
* include $v3-timing-event#PC
* include $v3-timing-event#PCM
* include $v3-timing-event#PCD
* include $v3-timing-event#PCV