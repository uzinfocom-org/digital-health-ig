CodeSystem: TaskStatusReasonCS
Id: task-status-reason-cs
Title: "Task Status Reason"
Description: "Task status reason codes in Uzbekistan"
* insert OriginalCodeSystemDraft(task-status-reason-cs)
* #reason-0001-00001 "Tasdiqlovchi hujjat mavjud emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсутствует подтверждающий документ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Supporting document is missing"
* #reason-0001-00002 "Imtiyozli tashxis noto'g'ri ko'rsatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Льготный диагноз указан неверно"
  * ^designation[+].language = #en
  * ^designation[=].value = "The diagnosis qualifying for benefits is specified incorrectly"
* #reason-0001-00003 "Gospitalizatsiya uchun asos noto'g'ri ko'rsatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Основание госпитализации указано неверно"
  * ^designation[+].language = #en
  * ^designation[=].value = "The reason for hospitalization is specified incorrectly"
* #reason-0001-00004 "Qabul qiluvchi muassasa noto'g'ri ko'rsatilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принимающее учреждение указано неверно"
  * ^designation[+].language = #en
  * ^designation[=].value = "The receiving institution is specified incorrectly"
* #reason-0001-00005 "Qo'shimcha tekshiruvlar talab etiladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Требуются дополнительные обследования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Additional examinations are required"
* #reason-0001-00006 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"