ValueSet: EventTimingVS
Id: event-timing-vs
Title: "Event Timing ValueSet"
Description: "A value set defining when an event occurs (Morning, Evening, Before Meal, etc.), combining codes from standard FHIR EventTiming and v3-TimingEvent systems with UZ/RU translations."
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(EventTimingCS)
* ^extension[1].url = $valueset-supplement
* ^extension[1].valueCanonical = Canonical(TimingEventCS)

// Включаем коды из ОБЕИХ систем
* include codes from system $event-timing
* include codes from system $v3-TimingEvent