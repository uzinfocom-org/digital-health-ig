CodeSystem: AuditEventDetailTypeCS
Id: audit-event-detail-type-cs
Title: "Types of audit event details"
Description: "Types of sudit event details in Uzbekistan"
* insert OriginalCodeSystemDraft(audit-event-detail-type-cs)

* #auth-method "Autentifikatsiya usuli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Метод аутентификации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Authentication Method"

* #auth-failure-reason "Autentifikatsiya xatosi sababi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Причина сбоя аутентификации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Authentication Failure Reason"

* #auth-sso-provider "SSO provayderi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поставщик SSO"
  * ^designation[+].language = #en
  * ^designation[=].value = "SSO Provider"

* #client-user-agent "Mijoz foydalanuvchi agenti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Агент пользователя клиента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Client User Agent"

* #client-geo-location "Mijozning geografik joylashuvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Географическое местоположение клиента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Client Geographic Location"

* #search-resource-type "Qidirilgan resurs turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип искомого ресурса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Searched Resource Type"

* #search-query-string "Qidiruv so'rovi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Строка поискового запроса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Search Query String"

* #search-result-count "Qidiruv natijalari soni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество результатов поиска"
  * ^designation[+].language = #en
  * ^designation[=].value = "Search Result Count"

* #resource-version-previous "Oldingi resurs versiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предыдущая версия ресурса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Previous Resource Version"

* #resource-version-new "Yangi resurs versiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Новая версия ресурса"
  * ^designation[+].language = #en
  * ^designation[=].value = "New Resource Version"

* #sync-record-count-success "Muvaffaqiyatli sinxronlashtirilgan yozuvlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Записи успешно синхронизированы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Successfully Synced Records"

* #sync-record-count-failed "Sinxronlash muvaffaqiyatsiz yakunlandi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не удалось синхронизировать записи."
  * ^designation[+].language = #en
  * ^designation[=].value = "Failed Synced Records"

* #sync-error-summary "Sinxronizatsiya xatosi xulosasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сводка ошибок синхронизации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Synchronization Error Summary"