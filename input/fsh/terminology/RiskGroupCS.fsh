// Provenance - which source provided which codes:
//
// - CDC Child & Adolescent schedule by medical indication
//   (https://www.cdc.gov/vaccines/hcp/imz-schedules/child-adolescent-medical-indication.html):
//   immunocompromised, hiv-infection, asplenia, complement-deficiency, chronic-heart-disease,
//   chronic-lung-disease, chronic-liver-disease, chronic-kidney-disease, diabetes,
//   csf-leak-cochlear-implant
// - WHO Table 1 PDF, Hepatitis B note
//   (https://cdn.who.int/media/docs/default-source/immunization/tables/immunization-routine-table1.pdf):
//   transplant-recipient, high-risk-sexual-behavior, newborn-hbsag-positive-mother, hbv-carrier-contact
// - WHO Table 1 PDF, BCG note (same URL): laboratory-personnel, congregate-settings
// - WHO Table 1 PDF, premature/low-birth-weight note (same URL): preterm-infant
// - WHO Table 1 PDF, "high-risk populations" and regional bands - typhoid/cholera/meningococcal/
//   rabies/hepatitis A/JE/TBE (same URL): animal-exposure, travelers-endemic-area, residents-endemic-area
// - WHO Table 4, Immunization of Health Care Workers
//   (https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables):
//   medical-workers
// - WHO influenza risk-group study, PMC (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8800189/):
//   pregnant-women, older-adults
// - Australian Immunisation Handbook, household contacts
//   (https://immunisationhandbook.health.gov.au/recommendations/healthcare-workers-carers-and-household-contacts-of-people-in-high-risk-groups-are-recommended-to-receive-influenza-vaccine-every-year):
//   household-contact-case

CodeSystem: RiskGroupCS
Id: risk-group-cs
Title: "Immunization Risk Groups"
Description: "Risk groups that an immunization dose can be applicable to, covering occupational, medical-condition, life-stage, and exposure/contact populations used in the national immunization schedule."
* insert OriginalCodeSystemDraft(risk-group-cs)

// ===== Occupational and professional exposure =====

* #medical-workers "Tibbiyot xodimlari"
  * ^definition = "Healthcare workers, in particular those exposed to blood and body fluids."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинские работники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Healthcare workers"
* #laboratory-personnel "Patogenlar bilan ishlovchi laboratoriya xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сотрудники лабораторий, работающие с патогенами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory personnel handling pathogens"

// ===== Medical / host condition =====

* #immunocompromised "Immuniteti susaygan shaxslar"
  * ^definition = "Persons immunocompromised for any reason other than HIV (e.g. malignancy, immunosuppressive therapy, primary immunodeficiency)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с иммунодефицитом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immunocompromised persons"
* #hiv-infection "OIV infeksiyasi bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с ВИЧ-инфекцией"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with HIV infection"
* #asplenia "Talog'i olib tashlangan yoki taloq funksiyasi buzilgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с аспленией или нарушением функции селезёнки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with asplenia or splenic dysfunction"
* #complement-deficiency "Komplement tanqisligi bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с дефицитом комплемента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with complement deficiency"
* #chronic-heart-disease "Surunkali yurak kasalliklari bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с хроническими заболеваниями сердца"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with chronic heart disease"
* #chronic-lung-disease "Surunkali nafas yo'llari kasalliklari bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с хроническими заболеваниями органов дыхания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with chronic respiratory disease"
* #chronic-liver-disease "Surunkali jigar kasalliklari bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с хроническими заболеваниями печени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with chronic liver disease"
* #chronic-kidney-disease "Surunkali buyrak kasalliklari yoki dializdagi shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с хроническими заболеваниями почек или находящиеся на диализе"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with chronic kidney disease or on dialysis"
* #diabetes "Qandli diabetli shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с сахарным диабетом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with diabetes mellitus"
* #csf-leak-cochlear-implant "Likvoreya yoki koxlear implantli shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с ликвореей или кохлеарным имплантом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with a CSF leak or cochlear implant"
* #transplant-recipient "Transplantat oluvchilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реципиенты трансплантатов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Transplant recipients"
* #preterm-infant "Chala tug'ilgan yoki past tana vaznli chaqaloqlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недоношенные дети или дети с низкой массой тела"
  * ^designation[+].language = #en
  * ^designation[=].value = "Preterm or low birth weight infants"

// ===== Life-stage / physiological =====

* #pregnant-women "Homilador ayollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Беременные женщины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pregnant women"
* #newborn-hbsag-positive-mother "HBsAg-musbat onalardan tug'ilgan chaqaloqlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Новорождённые от HBsAg-положительных матерей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Newborns of HBsAg-positive mothers"
* #older-adults "Keksa yoshdagi shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пожилые люди"
  * ^designation[+].language = #en
  * ^designation[=].value = "Older adults"

// ===== Exposure / contact / behavioural / environmental =====

* #household-contact-case "Yuqumli kasallik manbai bilan muloqotda bo'lgan shaxslar"
  * ^definition = "Household and other close contacts of a person with an infectious disease."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, контактировавшие с источником инфекции (контактные)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Household and close contacts of infectious cases"
* #hbv-carrier-contact "Gepatit B virusi tashuvchilari bilan muloqotda bo'lgan shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, контактирующие с носителями вируса гепатита B"
  * ^designation[+].language = #en
  * ^designation[=].value = "Household contacts of hepatitis B carriers"
* #animal-exposure "Hayvonlar tomonidan tishlangan yoki ular bilan muloqotda bo'lgan shaxslar"
  * ^definition = "Persons bitten by or otherwise exposed to animals, e.g. for rabies post-exposure prophylaxis."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, укушенные животными или контактировавшие с ними"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons bitten by or in contact with animals"
* #travelers-endemic-area "Endemik hududlarga sayohat qiluvchilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, выезжающие в эндемичные районы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Travellers to endemic areas"
* #residents-endemic-area "Endemik yoki tabiiy o'choqli hududlar aholisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жители эндемичных или природно-очаговых территорий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Residents of endemic or natural-focus areas"
* #congregate-settings "Uyushgan jamoalarda yashovchi shaxslar"
  * ^definition = "Residents of congregate settings such as boarding institutions, long-term care facilities and places of detention."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, проживающие в организованных коллективах (интернаты, дома престарелых, места лишения свободы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Residents of congregate settings"
* #high-risk-sexual-behavior "Xavfli jinsiy xulq-atvorli shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с рискованным сексуальным поведением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with high-risk sexual behaviour"
