// Risk groups a vaccine dose can be applicable to, for use on
// PlanDefinition.action.subject in the UZ Core Immunization PlanDefinition.
//
// Immunization schedules express applicability along several axes: age, position
// in the dose series, and "indications" - coded medical, behavioural, occupational
// and exposure conditions that make a vaccine applicable to a person (see CDC ACIP
// "by medical indication" schedule and CDSi indications, and the WHO risk-group
// recommendations). This code system enumerates those named risk groups so a dose
// can declare the population it targets, while the precise eligibility rule is
// carried by PlanDefinition.action.condition (kind = applicability).
//
// The set is a comprehensive starter list synthesised from WHO recommendations,
// the CDC/ACIP medical-indication categories, and Uzbekistan's "by epidemiological
// indications" (по эпидемиологическим показаниям) contingents. Labels should be
// reconciled against the official SanPiN contingent list before the profile leaves
// draft.

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
* #veterinary-workers "Veterinariya xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ветеринарные работники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Veterinary workers"
* #livestock-workers "Chorvachilik va qishloq xo'jaligi xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники животноводства и сельского хозяйства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Livestock and agricultural workers"
* #slaughterhouse-workers "So'yishxona va go'sht qayta ishlash xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники скотобоен и мясопереработки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Slaughterhouse and meat-processing workers"
* #animal-product-workers "Teri, jun va hayvon xom ashyosi bilan ishlovchi xodimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники, контактирующие с кожсырьём, шерстью и животным сырьём"
  * ^designation[+].language = #en
  * ^designation[=].value = "Workers handling hides, wool and animal raw materials"
* #water-sewerage-workers "Suv ta'minoti va kanalizatsiya xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники водоснабжения и канализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water supply and sewerage workers"
* #food-industry-workers "Oziq-ovqat sanoati va umumiy ovqatlanish xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники пищевой промышленности и общественного питания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Food industry and catering workers"
* #education-childcare-workers "Ta'lim va bolalar muassasalari xodimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Работники образования и детских учреждений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Education and childcare workers"
* #military-personnel "Harbiy xizmatchilar va chaqiriluvchilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Военнослужащие и призывники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Military personnel and conscripts"

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
* #outbreak-affected "Kasallik avj olgan o'choqlardagi shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица в очагах вспышек заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons in disease outbreak foci"
* #congregate-settings "Uyushgan jamoalarda yashovchi shaxslar"
  * ^definition = "Residents of congregate settings such as boarding institutions, long-term care facilities and places of detention."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, проживающие в организованных коллективах (интернаты, дома престарелых, места лишения свободы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Residents of congregate settings"
* #people-who-inject-drugs "In'eksion giyohvand moddalarni iste'mol qiluvchilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица, употребляющие инъекционные наркотики"
  * ^designation[+].language = #en
  * ^designation[=].value = "People who inject drugs"
* #high-risk-sexual-behavior "Xavfli jinsiy xulq-atvorli shaxslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лица с рискованным сексуальным поведением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Persons with high-risk sexual behaviour"
