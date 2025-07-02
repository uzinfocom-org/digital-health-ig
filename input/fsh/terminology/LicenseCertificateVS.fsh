ValueSet: LicenseCertificateVS
Id: license-certificate-vs
Title: "License, certificate, degree"
Description: "Defines the type of license, certificate, degree in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/license-certificate-vs"
* ^experimental = true
* include $qualification-codes#PN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медсестра высшей квалификации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ilg'or amaliyot hamshirasi"

* include $qualification-codes#BBA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бакалавр делового администрирования"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biznes boshqaruvi bakalavri"

* include $qualification-codes#BN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бакалавр сестринского дела"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hamshiralik ishi bakalavri"

* include $qualification-codes#BS
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бакалавр"
  * ^designation[+].language = #uz
  * ^designation[=].value = "fanlar bo'yicha bakalavr"

* include $qualification-codes#BSN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бакалавр наук - сестринское дело"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Fan bo'yicha bakalavr - Hamshiralik ishi"

* include $qualification-codes#CER
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертификат"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikat"

* include $qualification-codes#CANP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированный практикующий врач-медсестра для взрослых"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan kattalar hamshirasi"

* include $qualification-codes#CMA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированный медицинский ассистент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan tibbiy yordamchi"

* include $qualification-codes#CNP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированная практикующая медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan hamshira amaliyotchisi"

* include $qualification-codes#CNM
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированная медсестра-акушерка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan hamshira doya"

* include $qualification-codes#CRN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированная медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan ro'yxatdan o'tgan hamshira"

* include $qualification-codes#CNS
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированный специалист по медсестринскому делу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan hamshira mutaxassisi"

* include $qualification-codes#CPNP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированный детский практикующий врач-медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan pediatriya hamshirasi"

* include $qualification-codes#CTR
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сертифицированный регистратор опухолей"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sertifikatlangan o'smalarni ro'yxatga oluvchi"

* include $qualification-codes#DIP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диплом"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Diplom"

* include $qualification-codes#PharmD
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доктор фармацевтических наук"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Farmatsevtika fanlari doktori"

* include $qualification-codes#PHE
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доктор технических наук"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muhandislik fanlari doktori"

* include $qualification-codes#PHS
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доктор наук"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Fan doktori"

* include $qualification-codes#MD
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доктор медицины"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiyot fanlari doktori"

* include $qualification-codes#DO
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доктор остеопатии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Osteopatiya doktori"

* include $qualification-codes#EMT
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач скорой медицинской помощи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch tibbiy yordam bo'yicha mutaxassis"

* include $qualification-codes#EMTP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Врач скорой медицинской помощи - фельдшер"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch tibbiy yordam bo'yicha texnik - feldsher"

* include $qualification-codes#FPNP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Практикующая медсестра семейной практики"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oilaviy amaliyot hamshirasi"

* include $qualification-codes#HS
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выпускник средней школы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oliy maktab bitiruvchisi"

* include $qualification-codes#MBA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр делового администрирования"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biznes boshqaruvi magistri"

* include $qualification-codes#MED
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр образования"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ta'lim magistri"

* include $qualification-codes#MEE
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр электротехники"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Elektr texnikasi magistri"

* include $qualification-codes#ME
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр инженерных наук"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muhandislik magistri"

* include $qualification-codes#MFA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр изящных искусств"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasviriy san'at magistri"

* include $qualification-codes#MSN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магистр наук по сестринскому делу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Fan magistri - hamshiralik ishi"

* include $qualification-codes#MDA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский ассистент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy yordamchi"

* include $qualification-codes#MT
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинский техник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiyot texnik"

* include $qualification-codes#NP
  * ^designation[0].language = #ru
  * ^designation[=].value = "Практикующая медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Amaliyotchi hamshira"

* include $qualification-codes#PA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Помощник врача"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifokor yordamchisi"

* include $qualification-codes#RMA
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрированный медицинский ассистент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan tibbiy yordamchi"

* include $qualification-codes#RN
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дипломированная медсестра"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan hamshira"

* include $qualification-codes#RPH
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрированный фармацевт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan farmatsevt"

* include $qualification-codes#SEC
  * ^designation[0].language = #ru
  * ^designation[=].value = "Секретарский сертификат"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kotiblik guvohnomasi"

* include $qualification-codes#TS
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выпускник профессионального училища"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Savdo maktabi bitiruvchisi"
