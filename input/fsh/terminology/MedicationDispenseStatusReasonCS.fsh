CodeSystem: MedicationDispenseStatusReasonCS
Id: medicationdispense-status-reason-cs
Title: "MedicationDispense Status Reason (UZ supplement)"
Description: "Uzbek and Russian display translations for HL7 MedicationDispense status reason codes"
* insert SupplementCodeSystemDraft(medicationdispense-status-reason-cs, $medicationdispense-status-reason, 5.0.0)
* ^language = #uz

* #frr01 "Buyurtma to‘xtatildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение отменено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Order Stopped"

* #frr02 "Muddati o‘tgan buyurtma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Просроченное назначение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stale-dated Order"

* #frr03 "Ma'lumotlar to‘liq emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неполные данные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Incomplete data"

* #frr04 "Mahsulot mavjud emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продукт недоступен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Product unavailable"

* #frr05 "Axloqiy/diniy sabablar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этические/религиозные причины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ethical/religious"

* #frr06 "Xizmat ko‘rsatish imkonsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Невозможность оказать помощь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unable to provide care"

* #altchoice "Avval boshqa davolashni sinab ko‘ring"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сначала попробовать другое лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Try another treatment first"

* #clarif "Retsept/So‘rov aniqlashtirishni talab qiladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рецепт/Запрос требует уточнения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prescription/Request requires clarification"

* #drughigh "Dori darajasi juda yuqori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уровень препарата слишком высок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug level too high"

* #hospadm "Kasalxonaga yotqizish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Госпитализация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Admission to hospital"

* #labint "Laboratoriya ko‘rsatkichlariga ta'sir qilish muammolari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проблемы с лабораторными показателями"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lab interference issues"

* #non-avail "Bemor mavjud emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент недоступен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient not available"

* #preg "Bemor homilador yoki emizikli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациентка беременна или кормит грудью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient is pregnant or breastfeeding"

* #saig "Allergiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аллергия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Allergy"

* #sddi "Dori vositalarining o‘zaro ta'siri"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лекарственное взаимодействие"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug interacts with another drug"

* #sdupther "Takroriy terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дублирование терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Duplicate therapy"

* #sintol "Dori ko‘tara olmaslikka shubha"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подозрение на непереносимость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Suspected intolerance"

* #surg "Bemor operatsiyaga rejalashtirilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент записан на операцию"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient scheduled for surgery"

* #washout "Organizmdan chiqarilish davri (Washout)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Период выведения (Washout)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Washout"

* #outofstock "Dori mavjud emas - omborda yo‘q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат недоступен - нет на складе"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug not available - out of stock"

* #offmarket "Dori mavjud emas - sotuvdan olingan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат недоступен - снят с продажи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug not available - off market"