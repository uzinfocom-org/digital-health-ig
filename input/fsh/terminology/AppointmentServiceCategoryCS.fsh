CodeSystem: AppointmentServiceCategoryCS
Id: appointment-service-category-cs
Title: "Appointment service category"
Description: "Local classifier of the broad categories of services offered for appointment booking in Uzbekistan, such as consultations, diagnostics or laboratory tests"
* insert OriginalCodeSystemDraft(appointment-service-category-cs)
* ^property[0].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

* #265 "Xizmatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Услуги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Services"

* #266 "Diagnostika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностика"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostics"

* #267 "Kosmetologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Косметологические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cosmetic procedures"

* #268 "Jarrohlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgery"

* #269 "Homiladorlik xizmatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Беременным"
  * ^designation[+].language = #en
  * ^designation[=].value = "For pregnant women"

* #270 "Konsultatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консультация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Consultation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #1859

* #272 "MRT 1"
  * ^designation[0].language = #ru
  * ^designation[=].value = "МРТ 1"
  * ^designation[+].language = #en
  * ^designation[=].value = "MRI"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #266

* #274 "Ultratovush tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "УЗИ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #266

* #275 "MSCT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "МСКТ"
  * ^designation[+].language = #en
  * ^designation[=].value = "MSCT (Multislice Computed Tomography)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #266

* #1859 "Alohida konsultatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консультация отдельная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Individual consultation"

* #1869 "Laboratoriya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лаборатория"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory"

* #381 "Fizioterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физиотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Physiotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #572 "Koprologiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Копрология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Coprology (stool analysis)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1384 "Hamshiralik muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уходовая процедура"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nursing procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1408 "Endoskopik xizmatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эндоскопические услуги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoscopic services"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1280 "Otolaringologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отоларингические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Otolaryngological (ENT) procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #445 "Stomatologik muolajalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стоматологические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #458 "Massaj"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Массаж"
  * ^designation[+].language = #en
  * ^designation[=].value = "Massage"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #838 "Muolajalar/Terapiyalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Процедуры / Терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Procedures / Therapies"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1378 "Dermatologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дерматологические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dermatological procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1353 "Travmatologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Травматологические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Traumatological procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1402 "Jarrohlik muolajalari/aralashuvlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хирургические процедуры/вмешательства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical procedures/interventions"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #857 "Oftalmologiya xizmatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Офтальмологические услуги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmological services"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1596 "Nevrologiya xizmatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неврологические услуги"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neurological services"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #1207 "Pulmonologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пульмонологические лечения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary treatments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #635 "Siydik tahlillari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализы мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urinalysis"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #1869

* #1814 "Sitologiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #345 "Urologiya muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Урологические процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urological procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265

* #487 "Statsionar davolanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Inpatient treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #265
