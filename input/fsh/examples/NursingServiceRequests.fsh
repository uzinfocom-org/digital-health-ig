Instance: example-nursing-home-medication-request
InstanceOf: UZCoreServiceRequest
Title: "Example UZ Core ServiceRequest - Home Medication Delivery"
Description: "A Nursing request to deliver and hand over prescribed medication at home. The service code includes the home setting; this request is not a prescription or a completed MedicationDispense."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">Dori vositalarini uyga yetkazib berish uchun yo'llanma.</div>"
* status = #active
* intent = #order
* category[dhpCategory] = $sct#439708006 "Home visit"
* code.concept = NursingVisitPurposeCS#mserv-0008-00002 "Dori vositalarini uyga yetkazib berish"
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
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">Aholini ro'yxatga olish uchun hamshiralik tashrifiga yo'llanma.</div>"
* status = #active
* intent = #order
* category[dhpCategory] = $sct#439708006 "Home visit"
* code.concept = NursingVisitPurposeCS#mserv-0008-00001 "Aholini ro'yxatga olish"
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
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">60 oylik bolaning profilaktik ko'rigiga yo'llanma.</div>"
* status = #active
* intent = #order
* category[dhpCategory] = $sct#439708006 "Home visit"
* code.concept = $sct#410620009 "Well child visit"
* subject = Reference(Patient/example-jasur)
* authoredOn = "2020-06-19T09:00:00+05:00"
* occurrenceDateTime = "2020-06-20T10:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)

Instance: example-nursing-newborn-home-visit-request
InstanceOf: UZCoreServiceRequest
Title: "Example UZ Core ServiceRequest - Newborn Home Visit on Day 3"
Description: "The first of the early Nursing home patronage visits on days 3, 15 and 30. The schedule day is derived from the child's birth date and the requested occurrence date; the preventive visits from 3 to 60 months use Well child visit instead."
Usage: #example
* language = #uz
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"uz\" xml:lang=\"uz\">Yangi tug'ilgan chaqaloqni 3-kuni uyda patronaj qilish uchun yo'llanma.</div>"
* status = #active
* intent = #order
* category[dhpCategory] = $sct#439708006 "Home visit"
* code.concept = $sct#440068009 "Home visit for newborn care and assessment"
* subject = Reference(Patient/example-jasur)
* authoredOn = "2015-06-22T09:00:00+05:00"
* occurrenceDateTime = "2015-06-23T10:00:00+05:00"
* requester = Reference(Practitioner/example-practitioner)
