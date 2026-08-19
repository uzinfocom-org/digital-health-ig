CodeSystem: EncounterDischargeDispositionHomeCS
Id: encounter-discharge-disposition-home-cs
Title: "Encounter discharge disposition from died"
Description: "Encounter discharge disposition home codes with English and Russian translations"
* insert OriginalCodeSystemDraft(encounter-discharge-disposition-home-cs)  

* #mserv-0004-00001 "Kasalxonaga yotqizildi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospitalized"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Госпитализирован"
* #mserv-0004-00002 "Vafot etdi"
  * ^designation[+].language = #en
  * ^designation[=].value = "Died"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умер"
* #mserv-0004-00003 "O'zi chiqib ketdi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Self letft from hospital"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сам ушел из больницы"
* #mserv-0004-00004 "Chiqarildi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Discharged"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выписан"
* #mserv-0004-00005 "IIV massasasiga o'tkazildi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transferred to Ministry of Internal Affairs facility"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Переведен в учреждение МВД"
* #mserv-0004-00006 "Muruvvat uyiga o'tkazildi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Moved to a charity home (residential care facility)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Переведён(а) в дом милосердия"

// cancer discharge disposition home codesystems
* #cancer-0001-0001 "Tirik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жив"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alive"

* #cancer-0001-0002 "Tashxis tasdiqlanmadi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагноз не подтвердился"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosis not confirmed"

* #cancer-0001-0003 "Kuzatuv muddati tugaganligi sababli hisobdan chiqarilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Снят с учета в связи с истечением сроков наблюдения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Removed from the registry due to completion of the follow-up period"