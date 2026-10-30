### So'rov resurslari turlari

`ActivityDefinition.kind` bilan bog'langan milliy [so'rov turlari ValueSet](ValueSet-request-resource-types-vs.html) to'liq [FHIR R5 Request Resource Types](https://hl7.org/fhir/R5/valueset-request-resource-types.html) ro'yxatini oladi. Supplement ruscha va o'zbekcha tarjimalarni beradi. ServiceRequest va boshqa bazaviy so'rov turlari yangi ActivityDefinition profilisiz qo'llanadi. Observation va QuestionnaireResponse so'rov turlari emas va majburiy bazaviy ro'yxatga kirmaydi.

Taklif shabloni uchun mavjud profil `kind = ServiceRequest`, `intent = plan` va [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga ishora qiluvchi `profile` bilan qo'llanadi. Ilova bemor so'rovini yaratganda bemorni, taklif toifasini, dastur identifikatorini va PlanDefinition ning aniq versiyasiga havolani to'ldiradi. Ta'riflar natijalarni baholamaydi va so'rov holatini o'zgartirmaydi. Skrining misollari va ilova kontrakti Integrations da berilgan.
