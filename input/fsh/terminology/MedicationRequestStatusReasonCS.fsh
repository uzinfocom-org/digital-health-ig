CodeSystem: MedicationRequestStatusReasonCS
Id: medicationrequest-status-reason-cs
Title: "Medication Request Status Reason - UZ/RU Translations"
Description: "Uzbek and Russian translations for the standard HL7 MedicationRequest status reason codes."
* insert SupplementCodeSystemDraft(medicationrequest-status-reason-cs, $medicationrequest-status-reason, 5.0.0)

* #altchoice
  * ^designation[0].language = #uz
  * ^designation[0].value = "Avval boshqa davolash usulini sinab ko‘ring"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Сначала попробуйте другое лечение"

* #clarif
  * ^designation[0].language = #uz
  * ^designation[0].value = "Retseptni aniqlashtirish talab etiladi"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Требуется уточнение рецепта"

* #drughigh
  * ^designation[0].language = #uz
  * ^designation[0].value = "Dori vositasining darajasi juda yuqori"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Слишком высокий уровень лекарственного средства"

* #hospadm
  * ^designation[0].language = #uz
  * ^designation[0].value = "Shifoxonaga yotqizish"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Госпитализация"

* #labint
  * ^designation[0].language = #uz
  * ^designation[0].value = "Laboratoriya xatoliklari bilan bog‘liq muammolar"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Проблемы с лабораторными помехами"

* #non-avail
  * ^designation[0].language = #uz
  * ^designation[0].value = "Bemor bilan bog‘lanib bo‘lmaydi / Bemor mavjud emas"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Пациент недоступен"

* #preg
  * ^designation[0].language = #uz
  * ^designation[0].value = "Ona homilador/bola emizmoqda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Родительница беременна/кормит грудью"

* #salg
  * ^designation[0].language = #uz
  * ^designation[0].value = "Allergiya"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Аллергия"

* #sddi
  * ^designation[0].language = #uz
  * ^designation[0].value = "Dori boshqa dori bilan o‘zaro ta’sirga kirishmoqda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Лекарство взаимодействует с другим лекарством"

* #sdupther
  * ^designation[0].language = #uz
  * ^designation[0].value = "Takroriy (dublikat) terapiya"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Дублирующая терапия"

* #sintol
  * ^designation[0].language = #uz
  * ^designation[0].value = "Taxminiy toqatsizlik"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Подозреваемая непереносимость"

* #surg
  * ^designation[0].language = #uz
  * ^designation[0].value = "Bemorga operatsiya belgilangan"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Пациенту назначена операция"

* #washout
  * ^designation[0].language = #uz
  * ^designation[0].value = "Avvalgi dori organizmdan chiqib ketishini kutish"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Ожидание выведения старого препарата из организма"