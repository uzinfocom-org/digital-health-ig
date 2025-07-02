ValueSet: AuditEventSubTypeVS
Id: audit-event-subtype-vs
Title: "Audit event subtype"
Description: "Defines the subtype of event that is being recorded in Uzbek and Russian"
* ^experimental = true
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-subtype-vs"
* ^language = #uz
* $dicom-dcm#110122
* $dicom-dcm#110122 ^designation[0].language = #ru
* $dicom-dcm#110122 ^designation[=].value = "Попытка входа пользователя в систему"
* $dicom-dcm#110122 ^designation[+].language = #uz
* $dicom-dcm#110122 ^designation[=].value = "Foydalanuvchiga kirishga urinish"
* $dicom-dcm#110123
* $dicom-dcm#110123 ^designation[0].language = #ru
* $dicom-dcm#110123 ^designation[=].value = "Попытка выхода пользователя из системы"
* $dicom-dcm#110123 ^designation[+].language = #uz
* $dicom-dcm#110123 ^designation[=].value = "Foydalanuvchini tizimdan chiqishga urinish"
* $http-interaction#read
* $http-interaction#read ^designation[0].language = #ru
* $http-interaction#read ^designation[=].value = "Чтение"
* $http-interaction#read ^designation[+].language = #uz
* $http-interaction#read ^designation[=].value = "O'qish"
* $http-interaction#update
* $http-interaction#update ^designation[0].language = #ru
* $http-interaction#update ^designation[=].value = "Обновление"
* $http-interaction#update ^designation[+].language = #uz
* $http-interaction#update ^designation[=].value = "Yangilash"
* $http-interaction#create
* $http-interaction#create ^designation[0].language = #ru
* $http-interaction#create ^designation[=].value = "Создание"
* $http-interaction#create ^designation[+].language = #uz
* $http-interaction#create ^designation[=].value = "Yaratilish"
* $http-interaction#delete
* $http-interaction#delete ^designation[0].language = #ru
* $http-interaction#delete ^designation[=].value = "Удаление"
* $http-interaction#delete ^designation[+].language = #uz
* $http-interaction#delete ^designation[=].value = "Olib tashlash"
* $http-interaction#search
* $http-interaction#search ^designation[0].language = #ru
* $http-interaction#search ^designation[=].value = "Поиск"
* $http-interaction#search ^designation[+].language = #uz
* $http-interaction#search ^designation[=].value = "Qidiruv"
