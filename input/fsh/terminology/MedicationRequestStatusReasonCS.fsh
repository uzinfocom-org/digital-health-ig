CodeSystem: MedicationRequestStatusReasonCS
Id: medicationrequest-status-reason-cs
Title: "MedicationRequest Status Reason translations"
Description: "Uzbek and Russian translations for the standard HL7 MedicationRequest status reason codes."
* insert SupplementCodeSystemDraft(medicationrequest-status-reason-cs, $medicationrequest-status-reason, 5.0.0)

* #altchoice
  * ^designation[0].language = #uz
  * ^designation[=].value = "Avval boshqa davolash usulini sinab ko‘ring"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сначала попробуйте другое лечение"

* #clarif
  * ^designation[0].language = #uz
  * ^designation[=].value = "Retseptni aniqlashtirish talab etiladi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Требуется уточнение рецепта"

* #drughigh
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dori vositasining darajasi juda yuqori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Слишком высокий уровень лекарственного средства"

* #hospadm
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shifoxonaga yotqizish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Госпитализация"

* #labint
  * ^designation[0].language = #uz
  * ^designation[=].value = "Laboratoriya xatoliklari bilan bog‘liq muammolar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Проблемы с лабораторными помехами"

* #non-avail
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor bilan bog‘lanib bo‘lmaydi / Bemor mavjud emas"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациент недоступен"

* #preg
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ona homilador/bola emizmoqda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родительница беременна/кормит грудью"

* #salg
  * ^designation[0].language = #uz
  * ^designation[=].value = "Allergiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аллергия"

* #sddi
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dori boshqa dori bilan o‘zaro ta’sirga kirishmoqda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лекарство взаимодействует с другим лекарством"

* #sdupther
  * ^designation[0].language = #uz
  * ^designation[=].value = "Takroriy (dublikat) terapiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дублирующая терапия"

* #sintol
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taxminiy toqatsizlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Подозреваемая непереносимость"

* #surg
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemorga operatsiya belgilangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пациенту назначена операция"

* #washout
  * ^designation[0].language = #uz
  * ^designation[=].value = "Avvalgi dori organizmdan chiqib ketishini kutish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ожидание выведения старого препарата из организма"