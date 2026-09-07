CodeSystem: DocumentCategoryCS
Id: document-category-cs
Title: "Document Category"
Description: "Categories for clinical documents and other knowledge resources in Uzbekistan. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(document-category-cs)

// 1.0 Hospital forms (first 20 from Order 399)
* #form-001 "Tibbiy muassasaga qabul qilingan yoki rad etilganlarni hisobga olish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Registration of patients admitted or refused to medical facility"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Учет принятых или отказанных в медицинское учреждение"

* #form-002 "Chaqaloqlar bo'limi (xona)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Newborn department (room)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отделение (палата) новорожденных"

* #form-003 "Bemorning tibbiy kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Patient medical record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская карта больного"

* #form-003-1 "Homiladorlikni vaqtidan oldin tugatish tibbiy kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical record for early termination of pregnancy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская карта прерывания беременности"

* #form-004 "O'tkazilgan narkozlarni qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Anesthesia registration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация проведенных наркозов"

* #form-005 "Narkoz varaqasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Anesthesia record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наркозный лист"

* #form-006 "Reanimatsiya (xona) va intensiv terapiya bo'limidagi bemorni dinamik kuzatuv"
  * ^designation[0].language = #en
  * ^designation[=].value = "Dynamic observation of patient in ICU"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Динамическое наблюдение больного в реанимации и интенсивной терапии"

* #form-007 "Bemorning kelib ketishi va shifoxonaning o'rin fondini hisobga olib borish varaqasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Patient movement and hospital bed capacity record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Листок учета движения больных и коечного фонда больницы"

* #form-008 "Shifoxonadagi jarrohlik muolajalarni yozish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospital surgical procedures record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запись хирургических процедур в стационаре"

* #form-009 "Qon tarkibiy qismlari va preparatlari quyishni qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Blood components and products transfusion registration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация переливания компонентов и препаратов крови"

* #form-009-1 "Qon quyish komissiyasining xulosasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Blood transfusion commission conclusion"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заключение комиссии по переливанию крови"

* #form-009-2 "Gemo (plazma) transfuziya bayonnomasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hemo (plasma) transfusion protocol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Протокол гемо (плазма) трансфузии"

* #form-009-3 "Ortib qolgan qon va qon tarkibiy qismlarini yo'qotish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Disposal of remaining blood and blood components"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уничтожение остатков крови и компонентов крови"

* #form-009-4 "Yaroqsiz qon komponentlarini yo'q qilishni qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Registration of disposal of unsuitable blood components"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация уничтожения непригодных компонентов крови"

* #form-010 "Tug'ruq bo'limlarida tug'ishlarni qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Birth registration in maternity departments"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация родов в родильных отделениях"

* #form-011 "Gemodializ seansi yozuvi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hemodialysis session record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запись сеанса гемодиализа"

* #form-096 "Tug'ruq tibbiy kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Birth medical record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская карта родов"

* #form-097 "Chaqaloqning rivojlanish tibbiy kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Newborn development medical record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская карта развития новорожденного"

* #form-103 "Tug'ilganlik haqida ma'lumotnomani qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Birth certificate registration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация справки о рождении"

* #form-106 "O'lim ma'lumotnomasini qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Death certificate registration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация свидетельства о смерти"

* #form-106-2 "Perinatal o'lim ma'lumotnomasini qayd etish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Perinatal death certificate registration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Регистрация свидетельства о перинатальной смерти"

// Additional forms
* #form-053 "Harbiy xizmatga chaqiriluvchilarning tibbiy kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Military conscript medical record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская карта призывника"

* #form-086 "Abituriyentlar, sportchilar va ish izlovchilar uchun tibbiy ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical certificate for applicants, athletes and job seekers"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская справка для абитуриентов, спортсменов и соискателей"

* #form-086-1 "Sudyalik lavozimiga nomzodlar uchun tibbiy ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical certificate for judicial candidates"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская справка для соискателей на должность судьи"

* #form-086-2 "Keksa yoshdagi va nogironlarni parvarish uylariga yo'naltirish uchun tibbiy ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical certificate for referral of elderly and disabled to care homes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская справка для направления пожилых людей в пансионат и инвалидов"

* #form-094 "Mast holati sababli mehnatga layoqatsizlik to'g'risida ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Certificate of disability due to intoxication"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Справка о нетрудоспособности вследствие опьянения"

* #form-095 "Ta'lim oluvchilar uchun mehnatga layoqatsizlik ma'lumotnomasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Disability certificate for students"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Справка нетрудоспособности для лиц, получающих образование"

* #form-138 "Kasal bolaga parvarish bo'yicha mehnatga layoqatsizlik ma'lumotnomasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Disability certificate for caring for a sick child"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Справка нетрудоспособности по уходу за больным ребенком"

* #sick-leave "Mehnatga layoqatsizlik varaqasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sick leave certificate"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лист нетрудоспособности"

* #form-066-1 "Psixiatrik/narkologik chiqarish statistik kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Psychiatric/narcological discharge statistical card"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Психиатрическая/наркологическая статистическая карта выписки"

* #form-066 "Shifoxonadan chiqarilganlarning statistik kartasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospital discharge statistical card"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Статистическая карта выписанного из стационара"

* #form-130 "Laboratoriya tahlil natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Laboratory Test Results"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты лабораторных исследований"
