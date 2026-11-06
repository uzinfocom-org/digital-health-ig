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
* #reason-0001-00007 "Belgilangan muddatda shifoxonaga yotish uchun kela olmaydi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не сможет прибыть на госпитализацию в установленный срок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unable to be admitted to the hospital within the scheduled timeframe"

* #reason-0001-00008 "Boshqa tibbiyot tashkilotida davolanishni rejalashtirmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Планирует пройти лечение в другой медицинской организации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plans to receive treatment at another healthcare facility"

* #reason-0001-00009 "Taklif etilgan davolanishga rozi emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не согласен с предложенным лечением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Does not agree with the proposed treatment"

* #reason-0001-00010 "Endi davolanishga ehtiyoji yo‘q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больше не нуждается в лечении"
  * ^designation[+].language = #en
  * ^designation[=].value = "No longer requires treatment"

* #reason-0001-00011 "Davolanishga imkon bermaydigan shaxsiy holatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Личные обстоятельства, не позволяющие пройти лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Personal circumstances preventing treatment"