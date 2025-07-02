ValueSet: LocationTypesVS
Id: location-types-vs
Title: "Location types"
Description: "Location types defined by the Ministry of Health of the Republic of Uzbekistan"
* ^url = "https://terminology.medcore.uz/ValueSet/location-types-vs"
* ^experimental = true
* ^language = #uz
* include codes from system location-types-cs

* include $v3-RoleCode#ACC
* $v3-RoleCode#ACC ^designation[0].language = #ru
* $v3-RoleCode#ACC ^designation[=].value = "Место происшествия"
* $v3-RoleCode#ACC ^designation[+].language = #uz
* $v3-RoleCode#ACC ^designation[=].value = "Voqea joyi"
* include $v3-RoleCode#ALL
* $v3-RoleCode#ALL ^designation[0].language = #ru
* $v3-RoleCode#ALL ^designation[=].value = "клиника аллергии"
* $v3-RoleCode#ALL ^designation[+].language = #uz
* $v3-RoleCode#ALL ^designation[=].value = "allergiya klinikasi"
* include $v3-RoleCode#AMB
* $v3-RoleCode#AMB ^designation[0].language = #ru
* $v3-RoleCode#AMB ^designation[=].value = "Скорая помощь"
* $v3-RoleCode#AMB ^designation[+].language = #uz
* $v3-RoleCode#AMB ^designation[=].value = "Tez yordam mashinasi"
* include $v3-RoleCode#BMTC
* $v3-RoleCode#BMTC ^designation[0].language = #ru
* $v3-RoleCode#BMTC ^designation[=].value = "клиника трансплантации костного мозга"
* $v3-RoleCode#BMTC ^designation[+].language = #uz
* $v3-RoleCode#BMTC ^designation[=].value = "suyak iligi transplantatsiyasi klinikasi"
* include $v3-RoleCode#BMTU
* $v3-RoleCode#BMTU ^designation[0].language = #ru
* $v3-RoleCode#BMTU ^designation[=].value = "Отделение трансплантации костного мозга"
* $v3-RoleCode#BMTU ^designation[+].language = #uz
* $v3-RoleCode#BMTU ^designation[=].value = "Suyak iligi transplantatsiyasi bo'limi"
* include $v3-RoleCode#BREAST
* $v3-RoleCode#BREAST ^designation[0].language = #ru
* $v3-RoleCode#BREAST ^designation[=].value = "клиника молочной железы"
* $v3-RoleCode#BREAST ^designation[+].language = #uz
* $v3-RoleCode#BREAST ^designation[=].value = "ko'krak klinikasi"
* include $v3-RoleCode#CANC
* $v3-RoleCode#CANC ^designation[0].language = #ru
* $v3-RoleCode#CANC ^designation[=].value = "детская и подростковая неврологическая клиника"
* $v3-RoleCode#CANC ^designation[+].language = #uz
* $v3-RoleCode#CANC ^designation[=].value = "bolalar va o'smirlar nevrologik klinikasi"
* include $v3-RoleCode#CAPC
* $v3-RoleCode#CAPC ^designation[0].language = #ru
* $v3-RoleCode#CAPC ^designation[=].value = "детская и подростковая психиатрическая клиника"
* $v3-RoleCode#CAPC ^designation[+].language = #uz
* $v3-RoleCode#CAPC ^designation[=].value = "bolalar va o'smirlar psixiatriya klinikasi"
* include $v3-RoleCode#CARD
* $v3-RoleCode#CARD ^designation[0].language = #ru
* $v3-RoleCode#CARD ^designation[=].value = "амбулаторные медицинские учреждения; клиника/центр; Реабилитация: Кардиологические учреждения"
* $v3-RoleCode#CARD ^designation[+].language = #uz
* $v3-RoleCode#CARD ^designation[=].value = "ambulatoriya tibbiyot muassasalari; klinika/markaz; Reabilitatsiya: Kardiologiya muassasalari"
* include $v3-RoleCode#CATH
* $v3-RoleCode#CATH ^designation[0].language = #ru
* $v3-RoleCode#CATH ^designation[=].value = "Лаборатория катетеризации сердца"
* $v3-RoleCode#CATH ^designation[+].language = #uz
* $v3-RoleCode#CATH ^designation[=].value = "Yurak kateterizatsiyasi laboratoriyasi"
* include $v3-RoleCode#CCU
* $v3-RoleCode#CCU ^designation[0].language = #ru
* $v3-RoleCode#CCU ^designation[=].value = "Отделение коронарной терапии"
* $v3-RoleCode#CCU ^designation[+].language = #uz
* $v3-RoleCode#CCU ^designation[=].value = "Koronar terapiya bo'limi"
* include $v3-RoleCode#CHEST
* $v3-RoleCode#CHEST ^designation[0].language = #ru
* $v3-RoleCode#CHEST ^designation[=].value = "Отделение грудной клетки"
* $v3-RoleCode#CHEST ^designation[+].language = #uz
* $v3-RoleCode#CHEST ^designation[=].value = "Ko'krak qismi"
* include $v3-RoleCode#COAG
* $v3-RoleCode#COAG ^designation[0].language = #ru
* $v3-RoleCode#COAG ^designation[=].value = "Клиника коагуляции"
* $v3-RoleCode#COAG ^designation[+].language = #uz
* $v3-RoleCode#COAG ^designation[=].value = "Koagulyatsiya klinikasi"
* include $v3-RoleCode#CRS
* $v3-RoleCode#CRS ^designation[0].language = #ru
* $v3-RoleCode#CRS ^designation[=].value = "Клиника колоректальной хирургии"
* $v3-RoleCode#CRS ^designation[+].language = #uz
* $v3-RoleCode#CRS ^designation[=].value = "Kolorektal jarrohlik klinikasi"
* include $v3-RoleCode#CVDX
* $v3-RoleCode#CVDX ^designation[0].language = #ru
* $v3-RoleCode#CVDX ^designation[=].value = "Сердечно-сосудистое диагностическое или терапевтическое отделение"
* $v3-RoleCode#CVDX ^designation[+].language = #uz
* $v3-RoleCode#CVDX ^designation[=].value = "Yurak-qon tomir diagnostikasi yoki terapevtik bo'limi"
* include $v3-RoleCode#DADDR
* $v3-RoleCode#DADDR ^designation[0].language = #ru
* $v3-RoleCode#DADDR ^designation[=].value = "Адрес доставки"
* $v3-RoleCode#DADDR ^designation[+].language = #uz
* $v3-RoleCode#DADDR ^designation[=].value = "Yetkazib berish manzili"
* include $v3-RoleCode#DERM
* $v3-RoleCode#DERM ^designation[0].language = #ru
* $v3-RoleCode#DERM ^designation[=].value = "Дерматологическая клиника"
* $v3-RoleCode#DERM ^designation[+].language = #uz
* $v3-RoleCode#DERM ^designation[=].value = "Dermatologiya klinikasi"
* include $v3-RoleCode#DX
* $v3-RoleCode#DX ^designation[0].language = #ru
* $v3-RoleCode#DX ^designation[=].value = "Диагностическое или терапевтическое отделение"
* $v3-RoleCode#DX ^designation[+].language = #uz
* $v3-RoleCode#DX ^designation[=].value = "Diagnostika yoki terapevtik bo'lim"
* include $v3-RoleCode#ECHO
* $v3-RoleCode#ECHO ^designation[0].language = #ru
* $v3-RoleCode#ECHO ^designation[=].value = "Эхокардиографическая лаборатория"
* $v3-RoleCode#ECHO ^designation[+].language = #uz
* $v3-RoleCode#ECHO ^designation[=].value = "Ekokardiyografiya laboratoriyasi"
* include $v3-RoleCode#ENDO
* $v3-RoleCode#ENDO ^designation[0].language = #ru
* $v3-RoleCode#ENDO ^designation[=].value = "Эндокринологическая клиника"
* $v3-RoleCode#ENDO ^designation[+].language = #uz
* $v3-RoleCode#ENDO ^designation[=].value = "Endokrinologiya klinikasi"
* include $v3-RoleCode#ENDOS
* $v3-RoleCode#ENDOS ^designation[0].language = #ru
* $v3-RoleCode#ENDOS ^designation[=].value = "Эндоскопическая лаборатория"
* $v3-RoleCode#ENDOS ^designation[+].language = #uz
* $v3-RoleCode#ENDOS ^designation[=].value = "Endoskopiya laboratoriyasi"
* include $v3-RoleCode#EPIL
* $v3-RoleCode#EPIL ^designation[0].language = #ru
* $v3-RoleCode#EPIL ^designation[=].value = "Отделение эпилепсии"
* $v3-RoleCode#EPIL ^designation[+].language = #uz
* $v3-RoleCode#EPIL ^designation[=].value = "Epilepsiya bo'limi"
* include $v3-RoleCode#ER
* $v3-RoleCode#ER ^designation[0].language = #ru
* $v3-RoleCode#ER ^designation[=].value = "Отделение неотложной помощи"
* $v3-RoleCode#ER ^designation[+].language = #uz
* $v3-RoleCode#ER ^designation[=].value = "Favqulodda vaziyatlar bo'limi"
* include $v3-RoleCode#ETU
* $v3-RoleCode#ETU ^designation[0].language = #ru
* $v3-RoleCode#ETU ^designation[=].value = "Отделение неотложной помощи при травмах"
* $v3-RoleCode#ETU ^designation[+].language = #uz
* $v3-RoleCode#ETU ^designation[=].value = "Travmatik shoshilinch yordam bo'limi"
* include $v3-RoleCode#FMC
* $v3-RoleCode#FMC ^designation[0].language = #ru
* $v3-RoleCode#FMC ^designation[=].value = "Семейная медицинская клиника"
* $v3-RoleCode#FMC ^designation[+].language = #uz
* $v3-RoleCode#FMC ^designation[=].value = "Oilaviy tibbiy poliklinika"
* include $v3-RoleCode#GACH
* $v3-RoleCode#GACH ^designation[0].language = #ru
* $v3-RoleCode#GACH ^designation[=].value = "Больницы; Больница общей неотложной помощи"
* $v3-RoleCode#GACH ^designation[+].language = #uz
* $v3-RoleCode#GACH ^designation[=].value = "Kasalxonalar; Umumiy shoshilinch tibbiy yordam shifoxonasi"
* include $v3-RoleCode#GI
* $v3-RoleCode#GI ^designation[0].language = #ru
* $v3-RoleCode#GI ^designation[=].value = "Гастроэнтерологическая клиника"
* $v3-RoleCode#GI ^designation[+].language = #uz
* $v3-RoleCode#GI ^designation[=].value = "Gastroenterologiya klinikasi"
* include $v3-RoleCode#GIDX
* $v3-RoleCode#GIDX ^designation[0].language = #ru
* $v3-RoleCode#GIDX ^designation[=].value = "Гастроэнтерологическая диагностическая или терапевтическая лаборатория"
* $v3-RoleCode#GIDX ^designation[+].language = #uz
* $v3-RoleCode#GIDX ^designation[=].value = "Gastroenterologik diagnostika yoki terapevtik laboratoriya"
* include $v3-RoleCode#GYN
* $v3-RoleCode#GYN ^designation[0].language = #ru
* $v3-RoleCode#GYN ^designation[=].value = "Гинекологическая клиника"
* $v3-RoleCode#GYN ^designation[+].language = #uz
* $v3-RoleCode#GYN ^designation[=].value = "Ginekologik klinika"
* include $v3-RoleCode#HD
* $v3-RoleCode#HD ^designation[0].language = #ru
* $v3-RoleCode#HD ^designation[=].value = "Отделение гемодиализа"
* $v3-RoleCode#HD ^designation[+].language = #uz
* $v3-RoleCode#HD ^designation[=].value = "Gemodializ bo'limi"
* include $v3-RoleCode#HEM
* $v3-RoleCode#HEM ^designation[0].language = #ru
* $v3-RoleCode#HEM ^designation[=].value = "Гематологическая клиника"
* $v3-RoleCode#HEM ^designation[+].language = #uz
* $v3-RoleCode#HEM ^designation[=].value = "Gematologiya klinikasi"
* include $v3-RoleCode#HLAB
* $v3-RoleCode#HLAB ^designation[0].language = #ru
* $v3-RoleCode#HLAB ^designation[=].value = "Больничная лаборатория"
* $v3-RoleCode#HLAB ^designation[+].language = #uz
* $v3-RoleCode#HLAB ^designation[=].value = "Kasalxona laboratoriyasi"
* include $v3-RoleCode#HOSP
* $v3-RoleCode#HOSP ^designation[0].language = #ru
* $v3-RoleCode#HOSP ^designation[=].value = "Больница"
* $v3-RoleCode#HOSP ^designation[+].language = #uz
* $v3-RoleCode#HOSP ^designation[=].value = "Kasalxona"
* include $v3-RoleCode#HRAD
* $v3-RoleCode#HRAD ^designation[0].language = #ru
* $v3-RoleCode#HRAD ^designation[=].value = "Отделение радиологии"
* $v3-RoleCode#HRAD ^designation[+].language = #uz
* $v3-RoleCode#HRAD ^designation[=].value = "Radiologiya bo'limi"
* include $v3-RoleCode#HTN
* $v3-RoleCode#HTN ^designation[0].language = #ru
* $v3-RoleCode#HTN ^designation[=].value = "Гипертоническая клиника"
* $v3-RoleCode#HTN ^designation[+].language = #uz
* $v3-RoleCode#HTN ^designation[=].value = "Gipertenziya klinikasi"
* include $v3-RoleCode#HU
* $v3-RoleCode#HU ^designation[0].language = #ru
* $v3-RoleCode#HU ^designation[=].value = "Больничное отделение"
* $v3-RoleCode#HU ^designation[+].language = #uz
* $v3-RoleCode#HU ^designation[=].value = "Kasalxona bo'limi"
* include $v3-RoleCode#HUSCS
* $v3-RoleCode#HUSCS ^designation[0].language = #ru
* $v3-RoleCode#HUSCS ^designation[=].value = "Место забора образцов"
* $v3-RoleCode#HUSCS ^designation[+].language = #uz
* $v3-RoleCode#HUSCS ^designation[=].value = "Namuna yig'ish joyi"
* include $v3-RoleCode#ICU
* $v3-RoleCode#ICU ^designation[0].language = #ru
* $v3-RoleCode#ICU ^designation[=].value = "Отделение интенсивной терапии"
* $v3-RoleCode#ICU ^designation[+].language = #uz
* $v3-RoleCode#ICU ^designation[=].value = "Reanimatsiya bo'limi"
* include $v3-RoleCode#INFD
* $v3-RoleCode#INFD ^designation[0].language = #ru
* $v3-RoleCode#INFD ^designation[=].value = "Инфекционная клиника"
* $v3-RoleCode#INFD ^designation[+].language = #uz
* $v3-RoleCode#INFD ^designation[=].value = "Yuqumli kasalliklar klinikasi"
* include $v3-RoleCode#INLAB
* $v3-RoleCode#INLAB ^designation[0].language = #ru
* $v3-RoleCode#INLAB ^designation[=].value = "Стационарная лаборатория"
* $v3-RoleCode#INLAB ^designation[+].language = #uz
* $v3-RoleCode#INLAB ^designation[=].value = "Statsionar laboratoriya"
* include $v3-RoleCode#INPHARM
* $v3-RoleCode#INPHARM ^designation[0].language = #ru
* $v3-RoleCode#INPHARM ^designation[=].value = "Стационарная аптека"
* $v3-RoleCode#INPHARM ^designation[+].language = #uz
* $v3-RoleCode#INPHARM ^designation[=].value = "Statsionar dorixona"
* include $v3-RoleCode#INV
* $v3-RoleCode#INV ^designation[0].language = #ru
* $v3-RoleCode#INV ^designation[=].value = "Клиника бесплодия"
* $v3-RoleCode#INV ^designation[+].language = #uz
* $v3-RoleCode#INV ^designation[=].value = "Bepushtlik klinikasi"
* include $v3-RoleCode#MBL
* $v3-RoleCode#MBL ^designation[0].language = #ru
* $v3-RoleCode#MBL ^designation[=].value = "Медицинская лаборатория"
* $v3-RoleCode#MBL ^designation[+].language = #uz
* $v3-RoleCode#MBL ^designation[=].value = "Tibbiy laboratoriya"
* include $v3-RoleCode#MGEN
* $v3-RoleCode#MGEN ^designation[0].language = #ru
* $v3-RoleCode#MGEN ^designation[=].value = "Клиника медицинской генетики"
* $v3-RoleCode#MGEN ^designation[+].language = #uz
* $v3-RoleCode#MGEN ^designation[=].value = "Tibbiy genetika klinikasi"
* include $v3-RoleCode#MHSP
* $v3-RoleCode#MHSP ^designation[0].language = #ru
* $v3-RoleCode#MHSP ^designation[=].value = "Военный госпиталь"
* $v3-RoleCode#MHSP ^designation[+].language = #uz
* $v3-RoleCode#MHSP ^designation[=].value = "Harbiy kasalxona"
* include $v3-RoleCode#MOBL
* $v3-RoleCode#MOBL ^designation[0].language = #ru
* $v3-RoleCode#MOBL ^designation[=].value = "Мобильное подразделение"
* $v3-RoleCode#MOBL ^designation[+].language = #uz
* $v3-RoleCode#MOBL ^designation[=].value = "Mobil qurilma"
* include $v3-RoleCode#NCCS
* $v3-RoleCode#NCCS ^designation[0].language = #ru
* $v3-RoleCode#NCCS ^designation[=].value = "Отделение неврологической интенсивной терапии и инсульта"
* $v3-RoleCode#NCCS ^designation[+].language = #uz
* $v3-RoleCode#NCCS ^designation[=].value = "Nevrologik intensiv terapiya va insult bo'limi"
* include $v3-RoleCode#NEPH
* $v3-RoleCode#NEPH ^designation[0].language = #ru
* $v3-RoleCode#NEPH ^designation[=].value = "Клиника нефрологии"
* $v3-RoleCode#NEPH ^designation[+].language = #uz
* $v3-RoleCode#NEPH ^designation[=].value = "Nefrologiya klinikasi"
* include $v3-RoleCode#NEUR
* $v3-RoleCode#NEUR ^designation[0].language = #ru
* $v3-RoleCode#NEUR ^designation[=].value = "Клиника неврологии"
* $v3-RoleCode#NEUR ^designation[+].language = #uz
* $v3-RoleCode#NEUR ^designation[=].value = "Nevrologiya klinikasi"
* include $v3-RoleCode#NS
* $v3-RoleCode#NS ^designation[0].language = #ru
* $v3-RoleCode#NS ^designation[=].value = "Отделение нейрохирургии"
* $v3-RoleCode#NS ^designation[+].language = #uz
* $v3-RoleCode#NS ^designation[=].value = "Neyroxirurgiya kafedrasi"
* include $v3-RoleCode#OB
* $v3-RoleCode#OB ^designation[0].language = #ru
* $v3-RoleCode#OB ^designation[=].value = "Клиника акушерства"
* $v3-RoleCode#OB ^designation[+].language = #uz
* $v3-RoleCode#OB ^designation[=].value = "Akusherlik klinikasi"
* include $v3-RoleCode#OF
* $v3-RoleCode#OF ^designation[0].language = #ru
* $v3-RoleCode#OF ^designation[=].value = "амбулаторное учреждение"
* $v3-RoleCode#OF ^designation[+].language = #uz
* $v3-RoleCode#OF ^designation[=].value = "ambulatoriya muassasasi"
* include $v3-RoleCode#OMS
* $v3-RoleCode#OMS ^designation[0].language = #ru
* $v3-RoleCode#OMS ^designation[=].value = "Клиника челюстно-лицевой хирургии"
* $v3-RoleCode#OMS ^designation[+].language = #uz
* $v3-RoleCode#OMS ^designation[=].value = "Maksillofasiyal jarrohlik klinikasi"
* include $v3-RoleCode#ONCL
* $v3-RoleCode#ONCL ^designation[0].language = #ru
* $v3-RoleCode#ONCL ^designation[=].value = "Клиника медицинской онкологии"
* $v3-RoleCode#ONCL ^designation[+].language = #uz
* $v3-RoleCode#ONCL ^designation[=].value = "Tibbiy onkologiya klinikasi"
* include $v3-RoleCode#OPH
* $v3-RoleCode#OPH ^designation[0].language = #ru
* $v3-RoleCode#OPH ^designation[=].value = "Клиника офтальмологии"
* $v3-RoleCode#OPH ^designation[+].language = #uz
* $v3-RoleCode#OPH ^designation[=].value = "Oftalmologiya klinikasi"
* include $v3-RoleCode#OPTC
* $v3-RoleCode#OPTC ^designation[0].language = #ru
* $v3-RoleCode#OPTC ^designation[=].value = "Клиника оптометрии"
* $v3-RoleCode#OPTC ^designation[+].language = #uz
* $v3-RoleCode#OPTC ^designation[=].value = "Optometriya klinikasi"
* include $v3-RoleCode#ORTHO
* $v3-RoleCode#ORTHO ^designation[0].language = #ru
* $v3-RoleCode#ORTHO ^designation[=].value = "Клиника ортопедии"
* $v3-RoleCode#ORTHO ^designation[+].language = #uz
* $v3-RoleCode#ORTHO ^designation[=].value = "Ortopediya klinikasi"
* include $v3-RoleCode#OUTLAB
* $v3-RoleCode#OUTLAB ^designation[0].language = #ru
* $v3-RoleCode#OUTLAB ^designation[=].value = "Амбулаторная лаборатория"
* $v3-RoleCode#OUTLAB ^designation[+].language = #uz
* $v3-RoleCode#OUTLAB ^designation[=].value = "Ambulatoriya laboratoriyasi"
* include $v3-RoleCode#OUTPHARM
* $v3-RoleCode#OUTPHARM ^designation[0].language = #ru
* $v3-RoleCode#OUTPHARM ^designation[=].value = "Амбулаторная аптека"
* $v3-RoleCode#OUTPHARM ^designation[+].language = #uz
* $v3-RoleCode#OUTPHARM ^designation[=].value = "Ambulator dorixona"
* include $v3-RoleCode#PC
* $v3-RoleCode#PC ^designation[0].language = #ru
* $v3-RoleCode#PC ^designation[=].value = "Клиника первичной медико-санитарной помощи"
* $v3-RoleCode#PC ^designation[+].language = #uz
* $v3-RoleCode#PC ^designation[=].value = "Birlamchi tibbiy yordam klinikasi"
* include $v3-RoleCode#PEDC
* $v3-RoleCode#PEDC ^designation[0].language = #ru
* $v3-RoleCode#PEDC ^designation[=].value = "Клиника педиатрии"
* $v3-RoleCode#PEDC ^designation[+].language = #uz
* $v3-RoleCode#PEDC ^designation[=].value = "Pediatriya klinikasi"
* include $v3-RoleCode#PEDCARD
* $v3-RoleCode#PEDCARD ^designation[0].language = #ru
* $v3-RoleCode#PEDCARD ^designation[=].value = "Детская кардиологическая клиника"
* $v3-RoleCode#PEDCARD ^designation[+].language = #uz
* $v3-RoleCode#PEDCARD ^designation[=].value = "Bolalar kardiologiya klinikasi"
* include $v3-RoleCode#PEDE
* $v3-RoleCode#PEDE ^designation[0].language = #ru
* $v3-RoleCode#PEDE ^designation[=].value = "Детская эндокринологическая клиника"
* $v3-RoleCode#PEDE ^designation[+].language = #uz
* $v3-RoleCode#PEDE ^designation[=].value = "Bolalar endokrinologiya klinikasi"
* include $v3-RoleCode#PEDGI
* $v3-RoleCode#PEDGI ^designation[0].language = #ru
* $v3-RoleCode#PEDGI ^designation[=].value = "Детская гастроэнтерологическая клиника"
* $v3-RoleCode#PEDGI ^designation[+].language = #uz
* $v3-RoleCode#PEDGI ^designation[=].value = "Bolalar gastroenterologiya klinikasi"
* include $v3-RoleCode#PEDHEM
* $v3-RoleCode#PEDHEM ^designation[0].language = #ru
* $v3-RoleCode#PEDHEM ^designation[=].value = "Детская гематологическая клиника"
* $v3-RoleCode#PEDHEM ^designation[+].language = #uz
* $v3-RoleCode#PEDHEM ^designation[=].value = "Bolalar gematologiya klinikasi"
* include $v3-RoleCode#PEDHO
* $v3-RoleCode#PEDHO ^designation[0].language = #ru
* $v3-RoleCode#PEDHO ^designation[=].value = "Клиника детской онкологии"
* $v3-RoleCode#PEDHO ^designation[+].language = #uz
* $v3-RoleCode#PEDHO ^designation[=].value = "Bolalar onkologiyasi klinikasi"
* include $v3-RoleCode#PEDICU
* $v3-RoleCode#PEDICU ^designation[0].language = #ru
* $v3-RoleCode#PEDICU ^designation[=].value = "Отделение детской интенсивной терапии"
* $v3-RoleCode#PEDICU ^designation[+].language = #uz
* $v3-RoleCode#PEDICU ^designation[=].value = "Bolalar intensiv terapiya bo'limi"
* include $v3-RoleCode#PEDID
* $v3-RoleCode#PEDID ^designation[0].language = #ru
* $v3-RoleCode#PEDID ^designation[=].value = "Детская инфекционная клиника"
* $v3-RoleCode#PEDID ^designation[+].language = #uz
* $v3-RoleCode#PEDID ^designation[=].value = "Bolalar yuqumli kasalliklar klinikasi"
* include $v3-RoleCode#PEDNEPH
* $v3-RoleCode#PEDNEPH ^designation[0].language = #ru
* $v3-RoleCode#PEDNEPH ^designation[=].value = "Клиника детской нефрологии"
* $v3-RoleCode#PEDNEPH ^designation[+].language = #uz
* $v3-RoleCode#PEDNEPH ^designation[=].value = "Bolalar nefrologiyasi klinikasi"
* include $v3-RoleCode#PEDNICU
* $v3-RoleCode#PEDNICU ^designation[0].language = #ru
* $v3-RoleCode#PEDNICU ^designation[=].value = "Отделение интенсивной терапии новорожденных"
* $v3-RoleCode#PEDNICU ^designation[+].language = #uz
* $v3-RoleCode#PEDNICU ^designation[=].value = "Neonatal intensiv terapiya bo'limi"
* include $v3-RoleCode#PEDRHEUM
* $v3-RoleCode#PEDRHEUM ^designation[0].language = #ru
* $v3-RoleCode#PEDRHEUM ^designation[=].value = "Клиника детской ревматологии"
* $v3-RoleCode#PEDRHEUM ^designation[+].language = #uz
* $v3-RoleCode#PEDRHEUM ^designation[=].value = "Bolalar revmatologiyasi klinikasi"
* include $v3-RoleCode#PEDU
* $v3-RoleCode#PEDU ^designation[0].language = #ru
* $v3-RoleCode#PEDU ^designation[=].value = "Детское отделение"
* $v3-RoleCode#PEDU ^designation[+].language = #uz
* $v3-RoleCode#PEDU ^designation[=].value = "Bolalar bo'limi"
* include $v3-RoleCode#PHARM
* $v3-RoleCode#PHARM ^designation[0].language = #ru
* $v3-RoleCode#PHARM ^designation[=].value = "Аптека"
* $v3-RoleCode#PHARM ^designation[+].language = #uz
* $v3-RoleCode#PHARM ^designation[=].value = "Dorixona"
* include $v3-RoleCode#PHU
* $v3-RoleCode#PHU ^designation[0].language = #ru
* $v3-RoleCode#PHU ^designation[=].value = "Отделение психиатрической больницы"
* $v3-RoleCode#PHU ^designation[+].language = #uz
* $v3-RoleCode#PHU ^designation[=].value = "Psixiatriya shifoxonasi bo'limi"
* include $v3-RoleCode#PLS
* $v3-RoleCode#PLS ^designation[0].language = #ru
* $v3-RoleCode#PLS ^designation[=].value = "Клиника пластической хирургии"
* $v3-RoleCode#PLS ^designation[+].language = #uz
* $v3-RoleCode#PLS ^designation[=].value = "Plastik jarrohlik klinikasi"
* include $v3-RoleCode#PREV
* $v3-RoleCode#PREV ^designation[0].language = #ru
* $v3-RoleCode#PREV ^designation[=].value = "Клиника профилактической медицины"
* $v3-RoleCode#PREV ^designation[+].language = #uz
* $v3-RoleCode#PREV ^designation[=].value = "Tibbiyot profilaktikasi klinikasi"
* include $v3-RoleCode#PROCTO
* $v3-RoleCode#PROCTO ^designation[0].language = #ru
* $v3-RoleCode#PROCTO ^designation[=].value = "Клиника проктологии"
* $v3-RoleCode#PROCTO ^designation[+].language = #uz
* $v3-RoleCode#PROCTO ^designation[=].value = "Proktologiya klinikasi"
* include $v3-RoleCode#PROFF
* $v3-RoleCode#PROFF ^designation[0].language = #ru
* $v3-RoleCode#PROFF ^designation[=].value = "Офис поставщика услуг"
* $v3-RoleCode#PROFF ^designation[+].language = #uz
* $v3-RoleCode#PROFF ^designation[=].value = "Xizmat ko'rsatuvchi provayder idorasi"
* include $v3-RoleCode#PROS
* $v3-RoleCode#PROS ^designation[0].language = #ru
* $v3-RoleCode#PROS ^designation[=].value = "Клиника протезирования"
* $v3-RoleCode#PROS ^designation[+].language = #uz
* $v3-RoleCode#PROS ^designation[=].value = "Protezlar klinikasi"
* include $v3-RoleCode#PSI
* $v3-RoleCode#PSI ^designation[0].language = #ru
* $v3-RoleCode#PSI ^designation[=].value = "Клиника психологии"
* $v3-RoleCode#PSI ^designation[+].language = #uz
* $v3-RoleCode#PSI ^designation[=].value = "Psixologiya klinikasi"
* include $v3-RoleCode#PSY
* $v3-RoleCode#PSY ^designation[0].language = #ru
* $v3-RoleCode#PSY ^designation[=].value = "Клиника психиатрии"
* $v3-RoleCode#PSY ^designation[+].language = #uz
* $v3-RoleCode#PSY ^designation[=].value = "Psixiatriya klinikasi"
* include $v3-RoleCode#PSYCHF
* $v3-RoleCode#PSYCHF ^designation[0].language = #ru
* $v3-RoleCode#PSYCHF ^designation[=].value = "Психиатрическое отделение"
* $v3-RoleCode#PSYCHF ^designation[+].language = #uz
* $v3-RoleCode#PSYCHF ^designation[=].value = "Psixiatriya bo'limi"
* include $v3-RoleCode#PTRES
* $v3-RoleCode#PTRES ^designation[0].language = #ru
* $v3-RoleCode#PTRES ^designation[=].value = "Место жительства пациента"
* $v3-RoleCode#PTRES ^designation[+].language = #uz
* $v3-RoleCode#PTRES ^designation[=].value = "Bemorning yashash joyi"
* include $v3-RoleCode#RADDX
* $v3-RoleCode#RADDX ^designation[0].language = #ru
* $v3-RoleCode#RADDX ^designation[=].value = "Рентгенологическое диагностическое или терапевтическое отделение"
* $v3-RoleCode#RADDX ^designation[+].language = #uz
* $v3-RoleCode#RADDX ^designation[=].value = "Rentgen diagnostikasi yoki terapevtik bo'limi"
* include $v3-RoleCode#RADO
* $v3-RoleCode#RADO ^designation[0].language = #ru
* $v3-RoleCode#RADO ^designation[=].value = "Отделение радиационной онкологии"
* $v3-RoleCode#RADO ^designation[+].language = #uz
* $v3-RoleCode#RADO ^designation[=].value = "Radiatsion onkologiya kafedrasi"
* include $v3-RoleCode#RHAT
* $v3-RoleCode#RHAT ^designation[0].language = #ru
* $v3-RoleCode#RHAT ^designation[=].value = "центр лечения наркомании"
* $v3-RoleCode#RHAT ^designation[+].language = #uz
* $v3-RoleCode#RHAT ^designation[=].value = "giyohvandlikni davolash markazi"
* include $v3-RoleCode#RHEUM
* $v3-RoleCode#RHEUM ^designation[0].language = #ru
* $v3-RoleCode#RHEUM ^designation[=].value = "Клиника ревматологии"
* $v3-RoleCode#RHEUM ^designation[+].language = #uz
* $v3-RoleCode#RHEUM ^designation[=].value = "Revmatologiya klinikasi"
* include $v3-RoleCode#RHU
* $v3-RoleCode#RHU ^designation[0].language = #ru
* $v3-RoleCode#RHU ^designation[=].value = "Отделение реабилитации"
* $v3-RoleCode#RHU ^designation[+].language = #uz
* $v3-RoleCode#RHU ^designation[=].value = "Reabilitatsiya bo'limi"
* include $v3-RoleCode#RNEU
* $v3-RoleCode#RNEU ^designation[0].language = #ru
* $v3-RoleCode#RNEU ^designation[=].value = "Нейрорадиологическое отделение"
* $v3-RoleCode#RNEU ^designation[+].language = #uz
* $v3-RoleCode#RNEU ^designation[=].value = "Neyroradiologiya bo'limi"
* include $v3-RoleCode#SCHOOL
* $v3-RoleCode#SCHOOL ^designation[0].language = #ru
* $v3-RoleCode#SCHOOL ^designation[=].value = "Школа"
* $v3-RoleCode#SCHOOL ^designation[+].language = #uz
* $v3-RoleCode#SCHOOL ^designation[=].value = "Maktab"
* include $v3-RoleCode#SLEEP
* $v3-RoleCode#SLEEP ^designation[0].language = #ru
* $v3-RoleCode#SLEEP ^designation[=].value = "Отделение расстройств сна"
* $v3-RoleCode#SLEEP ^designation[+].language = #uz
* $v3-RoleCode#SLEEP ^designation[=].value = "Uyqu buzilishi bo'limi"
* include $v3-RoleCode#SPMED
* $v3-RoleCode#SPMED ^designation[0].language = #ru
* $v3-RoleCode#SPMED ^designation[=].value = "Клиника спортивной медицины"
* $v3-RoleCode#SPMED ^designation[+].language = #uz
* $v3-RoleCode#SPMED ^designation[=].value = "Sport tibbiyoti klinikasi"
* include $v3-RoleCode#SU
* $v3-RoleCode#SU ^designation[0].language = #ru
* $v3-RoleCode#SU ^designation[=].value = "Клиника хирургии"
* $v3-RoleCode#SU ^designation[+].language = #uz
* $v3-RoleCode#SU ^designation[=].value = "Jarrohlik klinikasi"
* include $v3-RoleCode#SURF
* $v3-RoleCode#SURF ^designation[0].language = #ru
* $v3-RoleCode#SURF ^designation[=].value = "Реабилитация от употребления психоактивных веществ"
* $v3-RoleCode#SURF ^designation[+].language = #uz
* $v3-RoleCode#SURF ^designation[=].value = "Giyohvand moddalarni suiiste'mol qilishni reabilitatsiya qilish"
* include $v3-RoleCode#TR
* $v3-RoleCode#TR ^designation[0].language = #ru
* $v3-RoleCode#TR ^designation[=].value = "Клиника трансплантации"
* $v3-RoleCode#TR ^designation[+].language = #uz
* $v3-RoleCode#TR ^designation[=].value = "Transplantatsiya klinikasi"
* include $v3-RoleCode#URO
* $v3-RoleCode#URO ^designation[0].language = #ru
* $v3-RoleCode#URO ^designation[=].value = "Клиника урологии"
* $v3-RoleCode#URO ^designation[+].language = #uz
* $v3-RoleCode#URO ^designation[=].value = "Urologiya klinikasi"
* include $v3-RoleCode#WORK
* $v3-RoleCode#WORK ^designation[0].language = #ru
* $v3-RoleCode#WORK ^designation[=].value = "Рабочее место"
* $v3-RoleCode#WORK ^designation[+].language = #uz
* $v3-RoleCode#WORK ^designation[=].value = "Ish joyi"
