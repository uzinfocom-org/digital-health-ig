CodeSystem: MedicationDispenseStatusReasonCS
Id: medicationdispense-status-reason-cs
Title: "MedicationDispense Status Reason (UZ supplement)"
Description: "Uzbek and Russian display translations for HL7 MedicationDispense status reason codes"
* insert SupplementCodeSystemDraft(medicationdispense-status-reason-cs, $medicationdispense-status-reason, 5.0.0)

* #frr01
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение отменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Buyurtma to‘xtatildi"

* #frr02
  * ^designation[0].language = #ru
  * ^designation[=].value = "Просроченное назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muddati o‘tgan buyurtma"

* #frr03
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неполные данные"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'lumotlar to‘liq emas"

* #frr04
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продукт недоступен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mahsulot mavjud emas"

* #frr05
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этические/религиозные причины"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Axloqiy/diniy sabablar"

* #frr06
  * ^designation[0].language = #ru
  * ^designation[=].value = "Невозможность оказать помощь"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xizmat ko‘rsatish imkonsiz"

* #altchoice
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сначала попробовать другое лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Avval boshqa davolashni sinab ko‘ring"

* #clarif
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рецепт/Запрос требует уточнения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retsept/So‘rov aniqlashtirishni talab qiladi"

* #drughigh
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уровень препарата слишком высок"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori darajasi juda yuqori"

* #hospadm
  * ^designation[0].language = #ru
  * ^designation[=].value = "Госпитализация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kasalxonaga yotqizish"

* #labint
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проблемы с лабораторными показателями"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Laboratoriya ko‘rsatkichlariga ta'sir qilish muammolari"

* #non-avail
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент недоступен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor mavjud emas"

* #preg
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациентка беременна или кормит грудью"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor homilador yoki emizikli"

* #saig
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аллергия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Allergiya"

* #sddi
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лекарственное взаимодействие"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositalarining o‘zaro ta'siri"

* #sdupther
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дублирование терапии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takroriy terapiya"

* #sintol
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подозрение на непереносимость"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori ko‘tara olmaslikka shubha"

* #surg
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент записан на операцию"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor operatsiyaga rejalashtirilgan"

* #washout
  * ^designation[0].language = #ru
  * ^designation[=].value = "Период выведения (Washout)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Organizmdan chiqarilish davri (Washout)"

* #outofstock
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат недоступен - нет на складе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori mavjud emas - omborda yo‘q"

* #offmarket
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат недоступен - снят с продажи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori mavjud emas - sotuvdan olingan"