Instance: example-nursing-home-medication-request
InstanceOf: UZCoreServiceRequest
Title: "Example UZ Core ServiceRequest - Home Medication Delivery"
Description: "A Nursing request to deliver and hand over prescribed medication at home. The service code includes the home setting; this request is not a prescription or a completed MedicationDispense."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dori vositalarini uyga yetkazib berish uchun yo'llanma.</div>"
* status = #active
* intent = #order
* code.concept = ScreeningCodeCS#mserv-0007-00022 "Dori vositalarini uyga yetkazib berish"
* subject = Reference(Patient/example-salim)
* authoredOn = "2026-10-27T09:00:00+05:00"
* occurrenceDateTime = "2026-10-28T10:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)

Instance: example-nursing-population-enumeration-request
InstanceOf: UZCoreServiceRequest
Title: "Example UZ Core ServiceRequest - Population Enumeration"
Description: "An administrative Nursing home visit to enumerate a resident and verify demographic and household registration details, not a clinical screening result."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Aholini ro'yxatga olish uchun hamshiralik tashrifiga yo'llanma.</div>"
* status = #active
* intent = #order
* code.concept = ScreeningCodeCS#mserv-0007-00021 "Aholini ro'yxatga olish"
* subject = Reference(Patient/example-salim)
* authoredOn = "2026-10-27T09:00:00+05:00"
* occurrenceDateTime = "2026-10-28T11:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)

Instance: example-nursing-well-child-request
InstanceOf: UZCoreServiceRequest
Title: "Example UZ Core ServiceRequest - Five-Year Well Child Visit"
Description: "A preventive child examination at 60 months. The global Well child visit code is not limited to infancy; the child's birth date and requested occurrence date specify the age."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">60 oylik bolaning profilaktik ko'rigiga yo'llanma.</div>"
* status = #active
* intent = #order
* code.concept = $sct#410620009 "Well child visit"
* subject = Reference(Patient/example-jasur)
* authoredOn = "2020-06-19T09:00:00+05:00"
* occurrenceDateTime = "2020-06-20T10:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)
