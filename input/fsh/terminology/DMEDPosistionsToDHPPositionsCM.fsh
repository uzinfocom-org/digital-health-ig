Instance: dmed-position-to-dhp-position-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Position To DHP Position"
Description: "DMED Position and Professions to DHP Position and Professions ConceptMap"
* name = "DMEDPositionToDHPPositionCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-dhp-position-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDProfessionsVS)
* targetScopeCanonical = Canonical(PositionAndProfessionVS)

// Group 1: DMEDProfessionsCS to PositionAndProfessionCS
* group[+].source = Canonical(DMEDProfessionsCS)
* group[=].target = Canonical(PositionAndProfessionCS)

* group[=].element[+].code = #1033
* group[=].element[=].display = "Karlar o'qituvchisi" // ru: Сурдопедагог
* group[=].element[=].target[+].code = #2266.7
* group[=].element[=].target[=].display = "O'qituvchi-defektolog (o'qituvchi-logoped, tiflopedogog, surdopedogog, oligofrenopedogog)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #365
* group[=].element[=].display = "Manual terapevt" // ru: Мануальный терапевт
* group[=].element[=].target[+].code = #2212.59
* group[=].element[=].target[=].display = "Manual terapiya vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #425
* group[=].element[=].display = "Radiatsiya terapevti" // ru: Лучевой терапевт
* group[=].element[=].target[+].code = #2212.163
* group[=].element[=].target[=].display = "Radiatsion gigiena sanitariya vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #996
* group[=].element[=].display = "Feldsher" // ru: Фельдшер
* group[=].element[=].target[+].code = #3252.5
* group[=].element[=].target[=].display = "Felьdsher"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #388
* group[=].element[=].display = "Bolalar tish shifokori" // ru: Детский стоматолог
* group[=].element[=].target[+].code = #2261.1
* group[=].element[=].target[=].display = "Bolalar terapevti-stomatolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #284
* group[=].element[=].display = "Hamshira" // ru: Медсестра
* group[=].element[=].target[+].code = #3221.2
* group[=].element[=].target[=].display = "Tibbiyot hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #375
* group[=].element[=].display = "Biolog" // ru: Биолог
* group[=].element[=].target[+].code = #2131.2
* group[=].element[=].target[=].display = "Biolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #400
* group[=].element[=].display = "Bolalar ortopedi" // ru: Детский ортопед
* group[=].element[=].target[+].code = #2212.30
* group[=].element[=].target[=].display = "Bolalar travmatolog-ortoped vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #929
* group[=].element[=].display = "Virusolog" // ru: Врач вирусолог
* group[=].element[=].target[+].code = #1342.5
* group[=].element[=].target[=].display = "Bosh mutaxassis-virusolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #205
* group[=].element[=].display = "Urolog" // ru: Уролог
* group[=].element[=].target[+].code = #2212.122
* group[=].element[=].target[=].display = "Vrach urolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #412
* group[=].element[=].display = "O'smirlar shifokori" // ru: Подростковый врач
* group[=].element[=].target[+].code = #2212.158
* group[=].element[=].target[=].display = "O'smirlar vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #419
* group[=].element[=].display = "Ginekolog hamshirasi" // ru: Медсестра-гинеколог
* group[=].element[=].target[+].code = #2212.14
* group[=].element[=].target[=].display = "Vrach ginekolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #265
* group[=].element[=].display = "Revmatolog" // ru: Ревматолог
* group[=].element[=].target[+].code = #2212.100
* group[=].element[=].target[=].display = "Vrach revmatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #416
* group[=].element[=].display = "Travmatolog" // ru: Травматолог
* group[=].element[=].target[+].code = #2212.118
* group[=].element[=].target[=].display = "Vrach travmatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #250
* group[=].element[=].display = "Ambulator jarroh" // ru: Амбулаторный хирург
* group[=].element[=].target[+].code = #2212.133
* group[=].element[=].target[=].display = "Favqulodda yordam bo'linmasi vrach jarrohi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #450
* group[=].element[=].display = "Onkurolog" // ru: Онкоуролог
* group[=].element[=].target[+].code = #2212.77
* group[=].element[=].target[=].display = "Vrach onkourolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #443
* group[=].element[=].display = "Bolalar anesteziolog-reanimatologi" // ru: Детский анестезиолог-реаниматолог
* group[=].element[=].target[+].code = #2212.19
* group[=].element[=].target[=].display = "Bolalar anesteziolog-reanimatolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #444
* group[=].element[=].display = "Sitolog" // ru: Цитолог
* group[=].element[=].target[+].code = #2212.136
* group[=].element[=].target[=].display = "Vrach sitolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #294
* group[=].element[=].display = "Genetik" // ru: Генетик
* group[=].element[=].target[+].code = #2131.9
* group[=].element[=].target[=].display = "Genetik"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #372
* group[=].element[=].display = "Rabiolog" // ru: Рабиолог
* group[=].element[=].target[+].code = #2212.97
* group[=].element[=].target[=].display = "Vrach rabiolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #376
* group[=].element[=].display = "Bakteriolog" // ru: Бактериолог
* group[=].element[=].target[+].code = #2131.1
* group[=].element[=].target[=].display = "Bakteriolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #381
* group[=].element[=].display = "Ma'muriy xodim" // ru: Административный персонал
* group[=].element[=].target[+].code = #4120.5
* group[=].element[=].target[=].display = "Ma'muriy kotib"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #385
* group[=].element[=].display = "Bolalar kardiorevmatologi" // ru: Детский кардиоревматолог
* group[=].element[=].target[+].code = #2212.23
* group[=].element[=].target[=].display = "Bolalar kardiorevmatolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #389
* group[=].element[=].display = "Dorixona ma'muri" // ru: Администратор Аптеки
* group[=].element[=].target[+].code = #1420.6
* group[=].element[=].target[=].display = "Dorixona (dorixona muassasasi) mudiri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #417
* group[=].element[=].display = "Jarroh-stomatolog" // ru: Хирург-стоматолог
* group[=].element[=].target[+].code = #2261.9
* group[=].element[=].target[=].display = "Tish jarrohi (og'iz qismida)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #452
* group[=].element[=].display = "Bolalar onkologi" // ru: Детский онколог
* group[=].element[=].target[+].code = #2212.27
* group[=].element[=].target[=].display = "Bolalar onkolog kimyoterapevt vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #453
* group[=].element[=].display = "Bolalar mikroxirurg" // ru: Детский микрохирург
* group[=].element[=].target[+].code = #2212.33
* group[=].element[=].target[=].display = "Bolalar xirurg vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #420
* group[=].element[=].display = "Jismoniy terapiya hamshirasi" // ru: Физиотерапевтическая медсестра
* group[=].element[=].target[+].code = #3221.9
* group[=].element[=].target[=].display = "Fizioterapevtik (massaj) xonalari xamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #422
* group[=].element[=].display = "Intensiv terapevt" // ru: Интенсивный терапевт
* group[=].element[=].target[+].code = #2212.5
* group[=].element[=].target[=].display = "Vrach anesteziolog-reanimatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #426
* group[=].element[=].display = "Patolog" // ru: Патологоанатом
* group[=].element[=].target[+].code = #2212.88
* group[=].element[=].target[=].display = "Vrach patologoanatom"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #454
* group[=].element[=].display = "Bolalar nefrologi" // ru: Детский нефролог
* group[=].element[=].target[+].code = #2212.26
* group[=].element[=].target[=].display = "Bolalar nefrolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #373
* group[=].element[=].display = "Sud tibbiy ekspert" // ru: Судмедэксперт
* group[=].element[=].target[+].code = #2212.110
* group[=].element[=].target[=].display = "Sud tibbiy ekspertizasi vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #344
* group[=].element[=].display = "Oilaviy shifokor" // ru: Семейный врач
* group[=].element[=].target[+].code = #2212.165
* group[=].element[=].target[=].display = "Oila vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #200
* group[=].element[=].display = "Nevrolog" // ru: Невролог
* group[=].element[=].target[+].code = #2212.67
* group[=].element[=].target[=].display = "Vrach nevrolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #192
* group[=].element[=].display = "Terapevt" // ru: Терапевт
* group[=].element[=].target[+].code = #2212.113
* group[=].element[=].target[=].display = "Vrach terapevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #367
* group[=].element[=].display = "Ftiziatr" // ru: Врач фтизиатр
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #345
* group[=].element[=].display = "Akusher" // ru: Акушер
* group[=].element[=].target[+].code = #3222.1
* group[=].element[=].target[=].display = "Аkusherka"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #210
* group[=].element[=].display = "Kardiolog" // ru: Кардиолог
* group[=].element[=].target[+].code = #2212.45
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #997
* group[=].element[=].display = "Endourolog" // ru: Эндоуролог
* group[=].element[=].target[+].code = #2212.140
* group[=].element[=].target[=].display = "Vrach endourolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #273
* group[=].element[=].display = "Psixolog" // ru: Психолог
* group[=].element[=].target[+].code = #2634.5
* group[=].element[=].target[=].display = "Psixolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #197
* group[=].element[=].display = "Okulist" // ru: Окулист
* group[=].element[=].target[+].code = #1342.2
* group[=].element[=].target[=].display = "Bosh okulist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #215
* group[=].element[=].display = "Iglorefleksoterapevt" // ru: Иглорефлексотерапевт
* group[=].element[=].target[+].code = #2212.37
* group[=].element[=].target[=].display = "Vrach iglorefleksoterapevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #418
* group[=].element[=].display = "Statist" // ru: Статист
* group[=].element[=].target[+].code = #2212.62
* group[=].element[=].target[=].display = "Tibbiy statistika vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #270
* group[=].element[=].display = "Ortoped" // ru: Ортопед
* group[=].element[=].target[+].code = #2212.78
* group[=].element[=].target[=].display = "Vrach ortoped"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #441
* group[=].element[=].display = "Hamshira endoskopisti" // ru: Медсестра эндоскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Vrach endoskopist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #257
* group[=].element[=].display = "Mammolog" // ru: Маммолог
* group[=].element[=].target[+].code = #2212.58
* group[=].element[=].target[=].display = "Vrach mammolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #234
* group[=].element[=].display = "Implantolog-ortoped" // ru: Имплантолог-ортопед
* group[=].element[=].target[+].code = #2261.6
* group[=].element[=].target[=].display = "Ortoped-stomatolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #249
* group[=].element[=].display = "Otorinolaringolog" // ru: Отоларинголог
* group[=].element[=].target[+].code = #2212.84
* group[=].element[=].target[=].display = "Vrach otorinolaringolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #414
* group[=].element[=].display = "Immunolog" // ru: Иммунолог
* group[=].element[=].target[+].code = #2212.38
* group[=].element[=].target[=].display = "Vrach immunolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #260
* group[=].element[=].display = "Neyrofiziolog" // ru: Нейрофизиолог
* group[=].element[=].target[+].code = #2212.68
* group[=].element[=].target[=].display = "Vrach neyrofiziolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #251
* group[=].element[=].display = "Radiolog" // ru: Радиолог
* group[=].element[=].target[+].code = #2131.28
* group[=].element[=].target[=].display = "Radiologist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #261
* group[=].element[=].display = "Biokimyogar" // ru: Биохимик
* group[=].element[=].target[+].code = #2131.7
* group[=].element[=].target[=].display = "Biokimyogar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #458
* group[=].element[=].display = "Qorin bo'shlig'i jarrohi" // ru: Абдоминальный хирург
* group[=].element[=].target[+].code = #2212.3
* group[=].element[=].target[=].display = "Аbdominal bo'yicha vrach onkoxirurg (ixtisoslashgan muassasalarda)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #199
* group[=].element[=].display = "Kosmetolog" // ru: Косметолог
* group[=].element[=].target[+].code = #2212.51
* group[=].element[=].target[=].display = "Vrach kosmetolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #201
* group[=].element[=].display = "Allergist-immunolog" // ru: Аллерголог-иммунолог
* group[=].element[=].target[+].code = #2212.4
* group[=].element[=].target[=].display = "Vrach allergolog-immunolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #229
* group[=].element[=].display = "Neyrohirurg" // ru: Нейрохирург
* group[=].element[=].target[+].code = #2212.69
* group[=].element[=].target[=].display = "Vrach neyroxirurg"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #238
* group[=].element[=].display = "Plastik jarroh" // ru: Пластический хирург
* group[=].element[=].target[+].code = #2212.90
* group[=].element[=].target[=].display = "Plastik jarrohlik vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #223
* group[=].element[=].display = "Oftalmolog" // ru: Офтальмолог
* group[=].element[=].target[+].code = #2267.3
* group[=].element[=].target[=].display = "Vrach oftalьmolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #242
* group[=].element[=].display = "Logoped" // ru: Логопед
* group[=].element[=].target[+].code = #2352.3
* group[=].element[=].target[=].display = "Logoped"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #240
* group[=].element[=].display = "Tomir jarroh" // ru: Сосудистый хирург
* group[=].element[=].target[+].code = #2212.106
* group[=].element[=].target[=].display = "Qon tomir jarroh vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #819
* group[=].element[=].display = "Ilmiy kotib" // ru: Ученый секретарь
* group[=].element[=].target[+].code = #1223.66
* group[=].element[=].target[=].display = "Ilmiy kotib"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #222
* group[=].element[=].display = "Onkolog" // ru: Онколог
* group[=].element[=].target[+].code = #2211.3
* group[=].element[=].target[=].display = "Onkologiya umumiy vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #193
* group[=].element[=].display = "Ginekolog" // ru: Гинеколог
* group[=].element[=].target[+].code = #2212.14
* group[=].element[=].target[=].display = "Vrach ginekolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #268
* group[=].element[=].display = "Kardiojarroh" // ru: Кардиохирург
* group[=].element[=].target[+].code = #2212.46
* group[=].element[=].target[=].display = "Vrach kardioxirurg"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #279
* group[=].element[=].display = "Xoreograf" // ru: Хореограф
* group[=].element[=].target[+].code = #2653.7
* group[=].element[=].target[=].display = "Xoreograf"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #263
* group[=].element[=].display = "Reanimatolog" // ru: Реаниматолог
* group[=].element[=].target[+].code = #2212.159
* group[=].element[=].target[=].display = "Reanimatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #235
* group[=].element[=].display = "Pediatr" // ru: Педиатр
* group[=].element[=].target[+].code = #2212.89
* group[=].element[=].target[=].display = "Vrach pediatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #225
* group[=].element[=].display = "Onkoginekolog" // ru: Онкогинеколог
* group[=].element[=].target[+].code = #2212.75
* group[=].element[=].target[=].display = "Vrach onkoginekolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #352
* group[=].element[=].display = "Bo'lim mudiri" // ru: Заведующий отделением
* group[=].element[=].target[+].code = #1213.11
* group[=].element[=].target[=].display = "Bo'lim mudiri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #353
* group[=].element[=].display = "Epidemiolog" // ru: Эпидемиолог
* group[=].element[=].target[+].code = #2212.142
* group[=].element[=].target[=].display = "Vrach epidemiolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #354
* group[=].element[=].display = "Funktsional diagnostika" // ru: Функциональный диагност
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #290
* group[=].element[=].display = "Dietolog" // ru: Диетолог
* group[=].element[=].target[+].code = #2265.1
* group[=].element[=].target[=].display = "Vrach dietolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #347
* group[=].element[=].display = "Profpatolog" // ru: Профпатолог
* group[=].element[=].target[+].code = #2212.92
* group[=].element[=].target[=].display = "Vrach profpatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #349
* group[=].element[=].display = "Bosh shifokor" // ru: Главный врач
* group[=].element[=].target[+].code = #1120.18
* group[=].element[=].target[=].display = "Sog'liqni saqlash tashkiloti bosh vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #350
* group[=].element[=].display = "Bosh shifokor o'rinbosari" // ru: Замглавврача
* group[=].element[=].target[+].code = #1120.185
* group[=].element[=].target[=].display = "Bosh vrach o'rinbosari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #293
* group[=].element[=].display = "Bolalar nevrologi" // ru: Детский Невролог
* group[=].element[=].target[+].code = #2212.25
* group[=].element[=].target[=].display = "Bolalar nevrolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #355
* group[=].element[=].display = "Narkolog" // ru: Нарколог
* group[=].element[=].target[+].code = #2212.66
* group[=].element[=].target[=].display = "Vrach narkolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #403
* group[=].element[=].display = "Bolalar ginekologi" // ru: Детский Гинеколог
* group[=].element[=].target[+].code = #2212.14
* group[=].element[=].target[=].display = "Vrach ginekolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #361
* group[=].element[=].display = "Muolaja hamshirasi" // ru: Процедурная медсестра
* group[=].element[=].target[+].code = #5321.2
* group[=].element[=].target[=].display = "Bemorga qarash bo'yicha kichik tibbiy hamshira"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #374
* group[=].element[=].display = "Farmasevt" // ru: Фармацевт
* group[=].element[=].target[+].code = #2262.13
* group[=].element[=].target[=].display = "Farmatsevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #448
* group[=].element[=].display = "Terapevt-nefrolog" // ru: Терапевт-нефролог
* group[=].element[=].target[+].code = #2212.74
* group[=].element[=].target[=].display = "Vrach nefrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #346
* group[=].element[=].display = "Valeolog" // ru: Врач валеолог
* group[=].element[=].target[+].code = #2221.2
* group[=].element[=].target[=].display = "Vrach valeolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #820
* group[=].element[=].display = "Ilmiy ishlar bo'yicha direktor o'rinbosari yordamchisi" // ru: Помощник зам.директора по научной работе
* group[=].element[=].target[+].code = #1120.194
* group[=].element[=].target[=].display = "Ilmiy tadqiqot instituti direktorining ilmiy ishlar bo'yicha o'rinbosari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #424
* group[=].element[=].display = "Radioterapevt" // ru: Радиотерапевт
* group[=].element[=].target[+].code = #2212.98
* group[=].element[=].target[=].display = "Vrach radioterapevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #429
* group[=].element[=].display = "Kombustiolog" // ru: Комбустиолог
* group[=].element[=].target[+].code = #2212.49
* group[=].element[=].target[=].display = "Vrach kombustiolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #449
* group[=].element[=].display = "Ftiziopedatr" // ru: Фтизиопедиатр
* group[=].element[=].target[+].code = #2212.32
* group[=].element[=].target[=].display = "Bolalar ftiziatr vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #456
* group[=].element[=].display = "Transplantolog" // ru: Трансплантолог
* group[=].element[=].target[+].code = #2212.120
* group[=].element[=].target[=].display = "Transplantolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #460
* group[=].element[=].display = "Onkodermatolog" // ru: Онкодерматолог
* group[=].element[=].target[+].code = #2211.3
* group[=].element[=].target[=].display = "Onkologiya umumiy vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #494
* group[=].element[=].display = "Elektroneuromiyografiya" // ru: Электронейромиография
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #528
* group[=].element[=].display = "Bolalar tarbiyachisi" // ru: Детский воспитатель
* group[=].element[=].target[+].code = #2342.7
* group[=].element[=].target[=].display = "Maktabgacha ta'lim tashkiloti tarbiyachisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #594
* group[=].element[=].display = "Ortodontist" // ru: Ортодонт
* group[=].element[=].target[+].code = #2261.5
* group[=].element[=].target[=].display = "Ortodont-stomatolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #595
* group[=].element[=].display = "Tish shifokori" // ru: Стоматолог-терапевт
* group[=].element[=].target[+].code = #2261.7
* group[=].element[=].target[=].display = "Terapevt stomatolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #282
* group[=].element[=].display = "Psixiatr" // ru: Психиатр
* group[=].element[=].target[+].code = #2212.93
* group[=].element[=].target[=].display = "Vrach psixiatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #262
* group[=].element[=].display = "Gematolog" // ru: Гематолог
* group[=].element[=].target[+].code = #2212.12
* group[=].element[=].target[=].display = "Vrach gematolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #281
* group[=].element[=].display = "Psixoterapevt" // ru: Психотерапевт
* group[=].element[=].target[+].code = #2212.95
* group[=].element[=].target[=].display = "Vrach psixoterapevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #271
* group[=].element[=].display = "Nefrolog" // ru: Нефролог
* group[=].element[=].target[+].code = #2212.74
* group[=].element[=].target[=].display = "Vrach nefrolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #297
* group[=].element[=].display = "Dermatovenerolog" // ru: Дерматовенеролог
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #255
* group[=].element[=].display = "Fizioterapevt" // ru: Физиотерапевт
* group[=].element[=].target[+].code = #2212.124
* group[=].element[=].target[=].display = "Vrach fizioterapevt"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #357
* group[=].element[=].display = "Koordinator" // ru: Координатор
* group[=].element[=].target[+].code = #3153.23
* group[=].element[=].target[=].display = "Koordinator"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #437
* group[=].element[=].display = "Emlash hamshirasi" // ru: Медсестра вакцинации
* group[=].element[=].target[+].code = #3221.6
* group[=].element[=].target[=].display = "Emlash xonasi hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #206
* group[=].element[=].display = "Gastroenterolog" // ru: Гастроэнтеролог
* group[=].element[=].target[+].code = #2212.11
* group[=].element[=].target[=].display = "Gastroenterologist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #442
* group[=].element[=].display = "Anesteziolog-reanimatolog" // ru: Анестезиолог-реаниматолог
* group[=].element[=].target[+].code = #2212.5
* group[=].element[=].target[=].display = "Vrach anesteziolog-reanimatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #359
* group[=].element[=].display = "Neonatolog" // ru: Неонатолог
* group[=].element[=].target[+].code = #2212.71
* group[=].element[=].target[=].display = "Vrach neonatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #760
* group[=].element[=].display = "Bolalar pediatri" // ru: Детский педиатр
* group[=].element[=].target[+].code = #2212.89
* group[=].element[=].target[=].display = "Vrach pediatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #599
* group[=].element[=].display = "Bo'lim boshlig'i" // ru: Руководитель отделения
* group[=].element[=].target[+].code = #1112.142
* group[=].element[=].target[=].display = "Bo'lim boshlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #632
* group[=].element[=].display = "ftiziatriya bo'limi shifokori" // ru: врач фтизиатрического отделения
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #635
* group[=].element[=].display = "Torokal jarrohlik bo'limi shifokori" // ru: Врач отделения торакальной хирургии
* group[=].element[=].target[+].code = #2212.130
* group[=].element[=].target[=].display = "Vrach xirurg"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #636
* group[=].element[=].display = "Torokal jarroh" // ru: Торакальный хирург
* group[=].element[=].target[+].code = #2212.130
* group[=].element[=].target[=].display = "Vrach xirurg"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #638
* group[=].element[=].display = "Interventsion kardiolog" // ru: Интервенцион кардиолог
* group[=].element[=].target[+].code = #2212.39
* group[=].element[=].target[=].display = "Interventsion kardiologiya vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #407
* group[=].element[=].display = "VEM shifokori" // ru: Врач ВЭМ
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #561
* group[=].element[=].display = "Ортодонт" // ru: Ортодонт
* group[=].element[=].target[+].code = #2261.5
* group[=].element[=].target[=].display = "Ortodont-stomatolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #633
* group[=].element[=].display = "ftiziatriya bo'limi mudiri" // ru: заведующий отделением фтизиатрии
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #683
* group[=].element[=].display = "Hamshira sterilizatsiyasi" // ru: Медсестра стерилизации
* group[=].element[=].target[+].code = #3221.7
* group[=].element[=].target[=].display = "Sterilizatsiya bo'limi hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #716
* group[=].element[=].display = "Suicidolog" // ru: Суицидолог
* group[=].element[=].target[+].code = #2212.94
* group[=].element[=].target[=].display = "Psixiatr-suitsidolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #821
* group[=].element[=].display = "Qabul bo'limi shifokori" // ru: Врач приемного отделения
* group[=].element[=].target[+].code = #2212.50
* group[=].element[=].target[=].display = "Qabul bo'limining shifokor koordinatori (shoshilinch tibbiy yordam muassasalari)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #781
* group[=].element[=].display = "Bolalar gastroenterologi" // ru: Детский гастроэнтеролог
* group[=].element[=].target[+].code = #2212.20
* group[=].element[=].target[=].display = "Bolalar gastroenterolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #749
* group[=].element[=].display = "Vertebrolog" // ru: Вертебролог
* group[=].element[=].target[+].code = #2212.8
* group[=].element[=].target[=].display = "Vrach vertebrolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #750
* group[=].element[=].display = "Bolalar pulmonologi" // ru: Детский пульмонолог
* group[=].element[=].target[+].code = #2212.29
* group[=].element[=].target[=].display = "Bolalar pulьmonolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #761
* group[=].element[=].display = "Bolalar kardiologi" // ru: Детский кардиолог
* group[=].element[=].target[+].code = #2212.45
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #763
* group[=].element[=].display = "Bolalar kardiojarrox" // ru: Детский кардиохирург
* group[=].element[=].target[+].code = #2212.24
* group[=].element[=].target[=].display = "Bolalar kardioxirurg vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #767
* group[=].element[=].display = "Bolalar radiologi" // ru: Детский радиолог
* group[=].element[=].target[+].code = #2131.28
* group[=].element[=].target[=].display = "Radiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #770
* group[=].element[=].display = "Bolalar sistoskopisti" // ru: Детский цистоскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Vrach endoskopist"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #772
* group[=].element[=].display = "Bolalar neyrohirurgi" // ru: Детский нейрохирург
* group[=].element[=].target[+].code = #2212.69
* group[=].element[=].target[=].display = "Vrach neyroxirurg"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #774
* group[=].element[=].display = "Bolalar metodisti" // ru: Детский методист
* group[=].element[=].target[+].code = #2351.7
* group[=].element[=].target[=].display = "Davolash jismoniy tarbiyasi bo'yicha yo'riqchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #776
* group[=].element[=].display = "Неонатаолог-хирург" // ru: Неонатаолог-хирург
* group[=].element[=].target[+].code = #2212.71
* group[=].element[=].target[=].display = "Vrach neonatolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #777
* group[=].element[=].display = "Неонатал-Хирург" // ru: Неонатал-Хирург
* group[=].element[=].target[+].code = #2212.70
* group[=].element[=].target[=].display = "Vrach neonatal jarroh"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #243
* group[=].element[=].display = "Endoskopist" // ru: Врач Эндоскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Endoscopic doctor"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #765
* group[=].element[=].display = "Bolalar gemato-onkologi" // ru: Детский гемато-онколог
* group[=].element[=].target[+].code = #2212.27
* group[=].element[=].target[=].display = "Bolalar onkolog kimyoterapevt vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #827
* group[=].element[=].display = "Врач бактериолог" // ru: Врач бактериолог
* group[=].element[=].target[+].code = #2131.1
* group[=].element[=].target[=].display = "Bakteriolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #832
* group[=].element[=].display = "Ofis hamshirasi" // ru: Медсестра  кабинета
* group[=].element[=].target[+].code = #3221.6
* group[=].element[=].target[=].display = "Emlash xonasi hamshirasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #834
* group[=].element[=].display = "Boshliq.laboratoriya tomonidan" // ru: Завед.лабораторией
* group[=].element[=].target[+].code = #1321.154
* group[=].element[=].target[=].display = "Laboratoriya boshlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #831
* group[=].element[=].display = "Boglov hamshirasi" // ru: Медсестра перевязочная
* group[=].element[=].target[+].code = #8151.58
* group[=].element[=].target[=].display = "Bog'lovchi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #348
* group[=].element[=].display = "Rentgenolaborant" // ru: Рентгенолаборант
* group[=].element[=].target[+].code = #3211.1
* group[=].element[=].target[=].display = "Rentgenolaborant"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #755
* group[=].element[=].display = "Bolalar infektsionisti" // ru: Детский инфекционист
* group[=].element[=].target[+].code = #2212.22
* group[=].element[=].target[=].display = "Bolalar infektsionist vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #637
* group[=].element[=].display = "ftiziatriya bo'limi hamshirasi" // ru: медсестра фтизиатрического отделения
* group[=].element[=].target[+].code = #3221.2
* group[=].element[=].target[=].display = "Tibbiyot hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #639
* group[=].element[=].display = "Yiringli septik jarroh" // ru: Гнойно-септический хирург
* group[=].element[=].target[+].code = #2212.80
* group[=].element[=].target[=].display = "Yiringli jarrohlik bo'linmasi vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #642
* group[=].element[=].display = "Бронхоскопист" // ru: Бронхоскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Vrach endoskopist"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #679
* group[=].element[=].display = "Ftiziojarrox" // ru: Фтизиохирург
* group[=].element[=].target[+].code = #2212.134
* group[=].element[=].target[=].display = "Vrach xirurg-ftiziatr"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #461
* group[=].element[=].display = "Onkoproktologiya" // ru: Онколопроктология
* group[=].element[=].target[+].code = #2211.3
* group[=].element[=].target[=].display = "Onkologiya umumiy vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #495
* group[=].element[=].display = "Дезинфектор хамшираси" // ru: Медсестра дезинфекции
* group[=].element[=].target[+].code = #3257.32
* group[=].element[=].target[=].display = "Dezinfektor-yo'riqchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #681
* group[=].element[=].display = "Serolog" // ru: Серолог
* group[=].element[=].target[+].code = #2212.53
* group[=].element[=].target[=].display = "Biokimyoviy-klinik laboratoriya vrach laboranti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #825
* group[=].element[=].display = "Pediatrik dermatovenerolog" // ru: Врач детский дерматовенеролог
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Dermatovenereologist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #634
* group[=].element[=].display = "Pulmonologiya bo'limi shifokori" // ru: Врач отделения пульмонологии
* group[=].element[=].target[+].code = #2212.29
* group[=].element[=].target[=].display = "Bolalar pulьmonolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #764
* group[=].element[=].display = "Bolalar angiografi" // ru: Детский ангиограф
* group[=].element[=].target[+].code = #2212.130
* group[=].element[=].target[=].display = "Vrach xirurg"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #640
* group[=].element[=].display = "Ekstrakorporeal detoksifikatsiya va gemodializ" // ru: Экстракорпорал детоксикация и гемадиализ
* group[=].element[=].target[+].code = #2212.74
* group[=].element[=].target[=].display = "Vrach nefrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #643
* group[=].element[=].display = "Direktor O'rinbosari" // ru: Заместитель Директора
* group[=].element[=].target[+].code = #1120.188
* group[=].element[=].target[=].display = "Direktor o'rinbosari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #644
* group[=].element[=].display = "Parazitolog" // ru: Паразитолог
* group[=].element[=].target[+].code = #2212.87
* group[=].element[=].target[=].display = "Vrach parazitolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #680
* group[=].element[=].display = "Ftizioortoped" // ru: Фтизиоортопед
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #287
* group[=].element[=].display = "Kimyoterapevt" // ru: Химиотерапевт
* group[=].element[=].target[+].code = #2212.27
* group[=].element[=].target[=].display = "Bolalar onkolog kimyoterapevt vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #751
* group[=].element[=].display = "Podiatrist" // ru: Подиатрист
* group[=].element[=].target[+].code = #2212.30
* group[=].element[=].target[=].display = "Bolalar travmatolog-ortoped vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #754
* group[=].element[=].display = "Bolalar allergologi" // ru: Детский аллерголог
* group[=].element[=].target[+].code = #2212.18
* group[=].element[=].target[=].display = "Doctor of child allergy"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #757
* group[=].element[=].display = "Ftiziourolog" // ru: Фтизиоуролог
* group[=].element[=].target[+].code = #2212.126
* group[=].element[=].target[=].display = "Vrach ftiziourolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #758
* group[=].element[=].display = "Kolonoskopist" // ru: Колоноскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Vrach endoskopist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #783
* group[=].element[=].display = "Bolalar dermatologi" // ru: Детский дерматолог
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #759
* group[=].element[=].display = "Bolalar neonatologi" // ru: Детский неонатолог
* group[=].element[=].target[+].code = #2212.71
* group[=].element[=].target[=].display = "Vrach neonatolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #769
* group[=].element[=].display = "Bolalar rentgenolog" // ru: Детский рентгенолог
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #771
* group[=].element[=].display = "Bolalar nefrolog gemodializa" // ru: Детский нефролог-гемодиализ
* group[=].element[=].target[+].code = #2212.26
* group[=].element[=].target[=].display = "Bolalar nefrolog vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #773
* group[=].element[=].display = "Bolalar epidemiolog" // ru: Детский эпидемиолог
* group[=].element[=].target[+].code = #2212.142
* group[=].element[=].target[=].display = "Vrach epidemiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #775
* group[=].element[=].display = "Bolalar dietologi" // ru: Детский диетолог
* group[=].element[=].target[+].code = #2265.1
* group[=].element[=].target[=].display = "Vrach dietolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #823
* group[=].element[=].display = "Dermatovenerolog-moxov shifokori" // ru: Врач дерматовенеролог-лепролог
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #762
* group[=].element[=].display = "Bolalar urologi" // ru: Детский уролог
* group[=].element[=].target[+].code = #2212.31
* group[=].element[=].target[=].display = "Pediatric urologist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #833
* group[=].element[=].display = "Farmatsevt yordamchisi" // ru: Ассистент  фармацевта
* group[=].element[=].target[+].code = #3213.4
* group[=].element[=].target[=].display = "Farmatsevt assistenti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #394
* group[=].element[=].display = "Laborant" // ru: Лаборант
* group[=].element[=].target[+].code = #2145.16
* group[=].element[=].target[=].display = "Laborant"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #858
* group[=].element[=].display = "Professor" // ru: Профессор
* group[=].element[=].target[+].code = #2310.12
* group[=].element[=].target[=].display = "Professor"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #859
* group[=].element[=].display = "Anestezist" // ru: Анестезист
* group[=].element[=].target[+].code = #3221.11
* group[=].element[=].target[=].display = "Anesthetist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #962
* group[=].element[=].display = "Хирург-трансплантолог" // ru: Хирург-трансплантолог
* group[=].element[=].target[+].code = #2212.120
* group[=].element[=].target[=].display = "Transplantolog vrach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #391
* group[=].element[=].display = "Akusher-ginekolog" // ru: Акушер-Гинеколог
* group[=].element[=].target[+].code = #2222.2
* group[=].element[=].target[=].display = "Tug'ruqxona akusher-ginekologi / perinatal markazi (tug'ruqxona, uchastka, homiladorlik patologiyasi, shoshilinch ginekologiya va boshqalar.) vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #835
* group[=].element[=].display = "Ilmiy laboratoriya mudiri" // ru: Заведующий научной лабораторией
* group[=].element[=].target[+].code = #1345.14
* group[=].element[=].target[=].display = "Laboratoriya mudiri"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #999
* group[=].element[=].display = "Kardiolog (PhD)" // ru: Кардиолог (PhD)
* group[=].element[=].target[+].code = #2212.45
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #256
* group[=].element[=].display = "Rentgenolog" // ru: Рентгенолог
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #779
* group[=].element[=].display = "Bolalar psixoterapevti" // ru: Детский психотерапевт
* group[=].element[=].target[+].code = #2212.95
* group[=].element[=].target[=].display = "Vrach psixoterapevt"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #782
* group[=].element[=].display = "Bolalar genetiki" // ru: Детский генетик
* group[=].element[=].target[+].code = #2131.9
* group[=].element[=].target[=].display = "Genetik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #784
* group[=].element[=].display = "Bolalar plastik jarrohi" // ru: Детский пластический хирург
* group[=].element[=].target[+].code = #2212.90
* group[=].element[=].target[=].display = "Plastik jarrohlik vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #780
* group[=].element[=].display = "Bolalar defektologi" // ru: Детский дефэктолог
* group[=].element[=].target[+].code = #3259.2
* group[=].element[=].target[=].display = "Defektolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #785
* group[=].element[=].display = "Tibbiy psixolog" // ru: Медицинский психолог
* group[=].element[=].target[+].code = #2212.61
* group[=].element[=].target[=].display = "Tibbiy psixologiya vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #862
* group[=].element[=].display = "Markazlashtirilgan sterilizatsiya bo‘limi xodimi" // ru: Сотрудник отделения централизованной стерилизации
* group[=].element[=].target[+].code = #3221.7
* group[=].element[=].target[=].display = "Sterilizatsiya bo'limi hamshirasi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #392
* group[=].element[=].display = "Patronaj Hamshirasi" // ru: Патронажная Медсестра
* group[=].element[=].target[+].code = #3221.15
* group[=].element[=].target[=].display = "Patronaj hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #830
* group[=].element[=].display = "Navbatchi hamshira" // ru: Медсестра  постовая
* group[=].element[=].target[+].code = #8350.5
* group[=].element[=].target[=].display = "Navbatchi"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #451
* group[=].element[=].display = "Patolog" // ru: Патоморфолог
* group[=].element[=].target[+].code = #2212.88
* group[=].element[=].target[=].display = "Vrach patologoanatom"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #380
* group[=].element[=].display = "Ro'yxatxona" // ru: Регистратура
* group[=].element[=].target[+].code = #4224.17
* group[=].element[=].target[=].display = "Kotib-resepshionist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #404
* group[=].element[=].display = "Elektron retseptlar sharhlovchisi" // ru: Рецензент электронных рецептов
* group[=].element[=].target[+].code = #2262.13
* group[=].element[=].target[=].display = "Farmatsevt"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #382
* group[=].element[=].display = "Xodimlar bo'limi xodimi" // ru: Сотрудник Отдела Кадров
* group[=].element[=].target[+].code = #1219.74
* group[=].element[=].target[=].display = "Inson resurslari bo'yicha menejer (xodimlarni rivojlantirish bo'yicha)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #766
* group[=].element[=].display = "Bolalar reanimatolog-neanotologi" // ru: Детский реаниматолог-неонатолог
* group[=].element[=].target[+].code = #2212.71
* group[=].element[=].target[=].display = "Vrach neonatolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #768
* group[=].element[=].display = "Bolalar bronxoskopisti" // ru: Детский бронхоскопист
* group[=].element[=].target[+].code = #2212.139
* group[=].element[=].target[=].display = "Vrach endoskopist"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #826
* group[=].element[=].display = "Врач методист" // ru: Врач методист
* group[=].element[=].target[+].code = #2212.109
* group[=].element[=].target[=].display = "Vrach statistik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #393
* group[=].element[=].display = "EXO KG shifokori" // ru: Врач ЭХО КГ
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #408
* group[=].element[=].display = "Exo-EG shifokori" // ru: Врач Эхо-ЭГ
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #362
* group[=].element[=].display = "EEG shifokori" // ru: Врач ЭЭГ
* group[=].element[=].target[+].code = #2212.127
* group[=].element[=].target[=].display = "Funktsional diagnostika (FD) (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #998
* group[=].element[=].display = "Ftizioftalmolog" // ru: Фтизиоофтальмолог
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #596
* group[=].element[=].display = "Фтизиатр-пульмонолог" // ru: Фтизиатр-пульмонолог
* group[=].element[=].target[+].code = #2212.125
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #195
* group[=].element[=].display = "LOR (otolaringolog)" // ru: ЛОР (Отоларинголог)
* group[=].element[=].target[+].code = #2212.84
* group[=].element[=].target[=].display = "Vrach otorinolaringolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #836
* group[=].element[=].display = "Ilmiy laboratoriya laboratoriya yordamchisi" // ru: Лаборант научной лаборатории
* group[=].element[=].target[+].code = #8131.490
* group[=].element[=].target[=].display = "Laborant polyarografist"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #194
* group[=].element[=].display = "Tish shifokori" // ru: Стоматолог
* group[=].element[=].target[+].code = #2261.4
* group[=].element[=].target[=].display = "Umumiy amaliyot stomatolog vrach"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #863
* group[=].element[=].display = "LFK (terapevtik jismoniy tarbiya)" // ru: ЛФК (лечебная физкультура)
* group[=].element[=].target[+].code = #2351.7
* group[=].element[=].target[=].display = "Davolash jismoniy tarbiyasi bo'yicha yo'riqchi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #896
* group[=].element[=].display = "Инновация кабинети дерматовенеролог врачи" // ru: Врач дерматовенеролог инновационного кабинета
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #824
* group[=].element[=].display = "Врач дерматовенеролог-сифилидолог" // ru: Врач дерматовенеролог-сифилидолог
* group[=].element[=].target[+].code = #2212.17
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #405
* group[=].element[=].display = "MedHub administratori" // ru: Администратор MedHub
* group[=].element[=].target[+].code = #3341.1
* group[=].element[=].target[=].display = "Ma'mur"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #446
* group[=].element[=].display = "Bolalar reanimatologi" // ru: Детский реаниматолог
* group[=].element[=].target[+].code = #2212.19
* group[=].element[=].target[=].display = "Bolalar anesteziolog-reanimatolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #303
* group[=].element[=].display = "Ekokardiyograf" // ru: Эхокардиографист
* group[=].element[=].target[+].code = #2212.45
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #641
* group[=].element[=].display = "Bolalar surdologi" // ru: Детский сурдолог
* group[=].element[=].target[+].code = #2212.84
* group[=].element[=].target[=].display = "Vrach otorinolaringolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #213
* group[=].element[=].display = "UTT shifokori" // ru: Врач УЗИ
* group[=].element[=].target[+].code = #2212.121
* group[=].element[=].target[=].display = "Ultratovush diagnostikasi vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #366
* group[=].element[=].display = "Kolposkopist" // ru: Кольпоскопист
* group[=].element[=].target[+].code = #2212.14
* group[=].element[=].target[=].display = "Vrach ginekolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #398
* group[=].element[=].display = "Bolalar Oftalmologi" // ru: Детский Офтальмолог
* group[=].element[=].target[+].code = #2267
* group[=].element[=].target[=].display = "Vrach-oftalmologlar, optiklar va optometristlar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #440
* group[=].element[=].display = "Audiolog" // ru: Аудиолог
* group[=].element[=].target[+].code = #2266
* group[=].element[=].target[=].display = "Vrach-audiologlar va nutqni rivojlantirish va tiklash bo'yicha mutaxassislar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #291
* group[=].element[=].display = "Reabilitatsiya shifokori" // ru: Врач реабилитолог
* group[=].element[=].target[+].code = #2264
* group[=].element[=].target[=].display = "Vrach-fizioterapevt va jismoniy reabilitatsiya bo'yicha mutaxassislar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #409
* group[=].element[=].display = "Sudrologist" // ru: Врач реабилитолог
* group[=].element[=].target[+].code = #2266
* group[=].element[=].target[=].display = "Vrach-audiologlar va nutqni rivojlantirish va tiklash bo'yicha mutaxassislar"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #828
* group[=].element[=].display = "Information Service Specialist" // ru: Врач реабилитолог
* group[=].element[=].target[+].code = #2431
* group[=].element[=].target[=].display = "Jamoatchilik bilan aloqalar, mahsulotlar va xizmatlarni sotish va marketingi bo'yicha professional-mutaxassislar. Reklama va marketing bo'yicha professional-mutaxassislar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #356
* group[=].element[=].display = "Metodist" // ru: Методист
* group[=].element[=].target[+].code = #2212
* group[=].element[=].target[=].display = "Vrach-mutaxasislar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #358
* group[=].element[=].display = "VKK shifokori" // ru: врач ВКК
* group[=].element[=].target[+].code = #2212
* group[=].element[=].target[=].display = "Vrach-mutaxasislar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #411
* group[=].element[=].display = "TMEK shifokori (tibbiy mehnat ekspert komissiyasi)" // ru: Врач ВТЭК (врачебно-трудовая экспертная комиссия)
* group[=].element[=].target[+].code = #2212
* group[=].element[=].target[=].display = "Vrach-mutaxasislar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #459
* group[=].element[=].display = "Torakal jarroh" // ru: Торакальный хирург
* group[=].element[=].target[+].code = #2212
* group[=].element[=].target[=].display = "Vrach-mutaxasislar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #383
* group[=].element[=].display = "MedHub Integratori" // ru: Интегратор MedHub
* group[=].element[=].target[+].code = #2511
* group[=].element[=].target[=].display = "Axborot kommunikatsiya texnologiyalari bo'yicha professional-mutaxassislar. Dastur ta'minoti va ilovalar ishlab chiquvchilar va tahlilchilar. Tizim tahlilchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target


* group[+].source = Canonical(DMEDProfessionsCS)
* group[=].target = Canonical(PositionAndProfessionCS_2)
// Continuation: more DMEDProfessionsCS to PositionAndProfessionCS_2 mappings
* group[=].element[+].code = #384
* group[=].element[=].display = "Psixonevrolog" // ru: Психоневролог
* group[=].element[=].target[+].code = #2212-157
* group[=].element[=].target[=].display = "Psixonevrolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #818
* group[=].element[=].display = "Ilmiy ishlar bo'yicha direktor o'rinbosari"
* group[=].element[=].target[+].code = #1120-025
* group[=].element[=].target[=].display = "Ilmiy muassasa filiali direktorining ilmiy ishlar boʻyicha oʻrinbosari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #397
* group[=].element[=].display = "Bolalar Jarrohi" // ru: Детский Хирург
* group[=].element[=].target[+].code = #2212-002
* group[=].element[=].target[=].display = "Bolalar jarroh vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #401
* group[=].element[=].display = "Bolalar psixonevrologi" // ru: Детский психоневролог
* group[=].element[=].target[+].code = #2212-157
* group[=].element[=].target[=].display = "Psixonevrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #430
* group[=].element[=].display = "Mikrojarroh" // ru: Микрохирург
* group[=].element[=].target[+].code = #2212-046
* group[=].element[=].target[=].display = "Vrach jarroh"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #455
* group[=].element[=].display = "Morfologiya" // ru: Морфология
* group[=].element[=].target[+].code = #2250-007
* group[=].element[=].target[=].display = "Hayvonlar patologiyasi, onkologiyasi va morfologiyasi veterinari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #410
* group[=].element[=].display = "Spirograf" // ru: Врач Спирограф
* group[=].element[=].target[+].code = #2212-184
* group[=].element[=].target[=].display = "Funksional tashxis (bajaradigan vazifalarga qarab) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #378
* group[=].element[=].display = "Mammograf" // ru: Маммограф
* group[=].element[=].target[+].code = #2212-090
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #402
* group[=].element[=].display = "Allergolog" // ru: Аллерголог
* group[=].element[=].target[+].code = #2212-034
* group[=].element[=].target[=].display = "Vrach allergolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #236
* group[=].element[=].display = "Pulmonolog" // ru: Пульмонолог
* group[=].element[=].target[+].code = #2212-086
* group[=].element[=].target[=].display = "Vrach pulmonolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #211
* group[=].element[=].display = "Nevropatolog" // ru: Невропатолог
* group[=].element[=].target[+].code = #2212-065
* group[=].element[=].target[=].display = "Vrach nevrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #390
* group[=].element[=].display = "Fond byudjeti ma'muri" // ru: Администратор Бюджета Фонда
* group[=].element[=].target[+].code = #2631-010
* group[=].element[=].target[=].display = "Iqtisodchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #1000
* group[=].element[=].display = "Ftizioginekolog" // ru: Фтизиогинеколог
* group[=].element[=].target[+].code = #2212-103
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #239
* group[=].element[=].display = "UTT mutahassisi" // ru: Врач УЗД
* group[=].element[=].target[+].code = #3221-016
* group[=].element[=].target[=].display = "Radiolog-laborant (UTT xonasida, KT xonasida, MRT xonasida, Rentgen xonasida, Yadroviy tibbiyot boʻlimi hamshirasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #245
* group[=].element[=].display = "Androlog" // ru: Андролог
* group[=].element[=].target[+].code = #2212-099
* group[=].element[=].target[=].display = "Vrach urolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #248
* group[=].element[=].display = "Jinsiy terapevt" // ru: Сексопатолог
* group[=].element[=].target[+].code = #2212-084
* group[=].element[=].target[=].display = "Vrach psixiatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #598
* group[=].element[=].display = "Sitogenetik" // ru: Цитогенетик
* group[=].element[=].target[+].code = #2212-171
* group[=].element[=].target[=].display = "Tibbiy genetik vrach"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #434
* group[=].element[=].display = "Onkopediatr" // ru: Онкопедиатр
* group[=].element[=].target[+].code = #2212-081
* group[=].element[=].target[=].display = "Vrach pediatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #778
* group[=].element[=].display = "Гинеколог-эндокринолог" // ru: Гинеколог-эндокринолог
* group[=].element[=].target[+].code = #2222-001
* group[=].element[=].target[=].display = "Akusher-ginekolog (konsalting / diagnostika / oilaviy poliklinika, dispanser va boshqalar.) vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #435
* group[=].element[=].display = "Taksikolog" // ru: Таксиколог
* group[=].element[=].target[+].code = #2131-027
* group[=].element[=].target[=].display = "Toksikolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #421
* group[=].element[=].display = "IT operator" // ru: ИТ Оператор
* group[=].element[=].target[+].code = #3252-001
* group[=].element[=].target[=].display = "IT operator-hamshira"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #423
* group[=].element[=].display = "Onkomammolog" // ru: Онкомаммолог
* group[=].element[=].target[+].code = #2212-074
* group[=].element[=].target[=].display = "Vrach onkolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #427
* group[=].element[=].display = "Rentgen jarrohi" // ru: Рентгенхирург
* group[=].element[=].target[+].code = #2212-090
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #431
* group[=].element[=].display = "Kardioreanimatolog" // ru: Кардиореаниматолог
* group[=].element[=].target[+].code = #2212-036
* group[=].element[=].target[=].display = "Vrach anesteziolog-reanimatolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #438
* group[=].element[=].display = "Operatsion hamshira" // ru: Операционная медсестра
* group[=].element[=].target[+].code = #2221-008
* group[=].element[=].target[=].display = "Operatsion blok hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #439
* group[=].element[=].display = "Spermatolog" // ru: Сперматолог
* group[=].element[=].target[+].code = #2212-099
* group[=].element[=].target[=].display = "Vrach urolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #269
* group[=].element[=].display = "Nevropsixolog" // ru: Нейропсихолог
* group[=].element[=].target[+].code = #2212-085
* group[=].element[=].target[=].display = "Vrach psixoterapevt"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #217
* group[=].element[=].display = "Gepatolog" // ru: Гепатолог
* group[=].element[=].target[+].code = #2212-040
* group[=].element[=].target[=].display = "Vrach gastroenterolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #231
* group[=].element[=].display = "Kineziterapevt" // ru: Кинезитерапевт
* group[=].element[=].target[+].code = #2212-159
* group[=].element[=].target[=].display = "Reabilitolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #252
* group[=].element[=].display = "Tricholog" // ru: Трихолог
* group[=].element[=].target[+].code = #2212-045
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #259
* group[=].element[=].display = "Proktolog" // ru: Проктолог
* group[=].element[=].target[+].code = #2212-057
* group[=].element[=].target[=].display = "Vrach koloproktolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #267
* group[=].element[=].display = "Flebolog" // ru: Флеболог
* group[=].element[=].target[+].code = #2212-139
* group[=].element[=].target[=].display = "Qon tomir jarroh vrachi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #214
* group[=].element[=].display = "Girudoterapevt" // ru: Гирудотерапевт
* group[=].element[=].target[+].code = #3230-004
* group[=].element[=].target[=].display = "Xalq tabobati boʻyicha mutaxassis"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #221
* group[=].element[=].display = "Kardionevrolog" // ru: Кардионевролог
* group[=].element[=].target[+].code = #2212-065
* group[=].element[=].target[=].display = "Vrach nevrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #286
* group[=].element[=].display = "Gigienist" // ru: Гигиенист
* group[=].element[=].target[+].code = #2212-164
* group[=].element[=].target[=].display = "Stomatologiya gigiyenisti (ogʻiz boʻshligʻi gigiyenisti)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #274
* group[=].element[=].display = "Vestibulolog" // ru: Вестибулолог
* group[=].element[=].target[+].code = #2212-077
* group[=].element[=].target[=].display = "Vrach otorinolaringolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #208
* group[=].element[=].display = "Venereolog" // ru: Венеролог
* group[=].element[=].target[+].code = #2212-045
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #232
* group[=].element[=].display = "Logoped-defektolog" // ru: Логопед-дефектолог
* group[=].element[=].target[+].code = #2352-012
* group[=].element[=].target[=].display = "Oʻqituvchi-defektolog (oʻqituvchi-logoped, tiflopedagog, surdopedagog, oligofrenopedagog)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #237
* group[=].element[=].display = "Anesteziolog" // ru: Анестезиолог
* group[=].element[=].target[+].code = #2212-019
* group[=].element[=].target[=].display = "Anesteziolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #244
* group[=].element[=].display = "Reabilitolog" // ru: Реабилитолог
* group[=].element[=].target[+].code = #2212-159
* group[=].element[=].target[=].display = "Reabilitolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #224
* group[=].element[=].display = "Infeksionist" // ru: Инфекционист
* group[=].element[=].target[+].code = #2212-051
* group[=].element[=].target[=].display = "Vrach infeksionist"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #202
* group[=].element[=].display = "Dermatolog" // ru: Дерматолог
* group[=].element[=].target[+].code = #3221-004
* group[=].element[=].target[=].display = "Dermatologiya va kosmetologiya hamshirasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #227
* group[=].element[=].display = "Kardiorevmatolog" // ru: Кардиоревматолог
* group[=].element[=].target[+].code = #2212-053
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #207
* group[=].element[=].display = "Endokrinolog" // ru: Эндокринолог
* group[=].element[=].target[+].code = #2212-106
* group[=].element[=].target[=].display = "Vrach endokrinolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #241
* group[=].element[=].display = "Jarroh" // ru: Хирург
* group[=].element[=].target[+].code = #2212-046
* group[=].element[=].target[=].display = "Vrach jarroh"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #860
* group[=].element[=].display = "Патогистолог" // ru: Патогистолог
* group[=].element[=].target[+].code = #2212-080
* group[=].element[=].target[=].display = "Vrach patologoanatom"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #246
* group[=].element[=].display = "KLD mutahasissi" // ru: Врач КЛД
* group[=].element[=].target[+].code = #2212-060
* group[=].element[=].target[=].display = "Vrach laborant"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #272
* group[=].element[=].display = "Afaziolog" // ru: Афазиолог
* group[=].element[=].target[+].code = #2352-012
* group[=].element[=].target[=].display = "Oʻqituvchi-defektolog (oʻqituvchi-logoped, tiflopedagog, surdopedagog, oligofrenopedagog)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #275
* group[=].element[=].display = "Aritmolog" // ru: Аритмолог
* group[=].element[=].target[+].code = #2212-053
* group[=].element[=].target[=].display = "Vrach kardiolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #285
* group[=].element[=].display = "Reproduktolog" // ru: Репродуктолог
* group[=].element[=].target[+].code = #2212-091
* group[=].element[=].target[=].display = "Vrach reproduktolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #288
* group[=].element[=].display = "Kinesiolog" // ru: Кинезиолог
* group[=].element[=].target[+].code = #2212-159
* group[=].element[=].target[=].display = "Reabilitolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #299
* group[=].element[=].display = "Rinoxirurg" // ru: Ринохирург
* group[=].element[=].target[+].code = #2212-077
* group[=].element[=].target[=].display = "Vrach otorinolaringolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #301
* group[=].element[=].display = "Embriolog" // ru: Эмбриолог
* group[=].element[=].target[+].code = #2212-060
* group[=].element[=].target[=].display = "Vrach laborant"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #311
* group[=].element[=].display = "Tibbiyot xodimi" // ru: Медбрат
* group[=].element[=].target[+].code = #3221-001
* group[=].element[=].target[=].display = "Barcha nomdagi tibbiyot hamshirasi (barcha nomdagi medbrat)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #253
* group[=].element[=].display = "Massajchi" // ru: Массажист
* group[=].element[=].target[+].code = #3255-001
* group[=].element[=].target[=].display = "Massajchi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #264
* group[=].element[=].display = "onkojarroh" // ru: Онкохирург
* group[=].element[=].target[+].code = #2212-074
* group[=].element[=].target[=].display = "Vrach onkolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #258
* group[=].element[=].display = "Jarroh proktolog" // ru: Хирург-проктолог
* group[=].element[=].target[+].code = #2212-057
* group[=].element[=].target[=].display = "Vrach koloproktolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #280
* group[=].element[=].display = "Kosmetolog-estetist" // ru: Косметолог-эстетист
* group[=].element[=].target[+].code = #5141-002
* group[=].element[=].target[=].display = "Vizajist (vizajist-stilist-kosmetolog)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #283
* group[=].element[=].display = "Kosmetolog-dermatolog" // ru: Косметолог-дерматолог
* group[=].element[=].target[+].code = #2212-045
* group[=].element[=].target[=].display = "Vrach dermatovenerolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #289
* group[=].element[=].display = "Visseral terapevt" // ru: Висцеральный терапевт
* group[=].element[=].target[+].code = #2212-159
* group[=].element[=].target[=].display = "Reabilitolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #292
* group[=].element[=].display = "UTDG mutahasissi" // ru: Врач УЗДГ
* group[=].element[=].target[+].code = #2212-090
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #296
* group[=].element[=].display = "Vertebronevrolog" // ru: Вертеброневролог
* group[=].element[=].target[+].code = #2212-065
* group[=].element[=].target[=].display = "Vrach nevrolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #298
* group[=].element[=].display = "Jag'-yuz jarrohi" // ru: Челюстно-лицевой хирург
* group[=].element[=].target[+].code = #2212-189
* group[=].element[=].target[=].display = "Yuz-jagʻ jarroh vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #198
* group[=].element[=].display = "Travmatolog-ortoped" // ru: Травматолог-ортопед
* group[=].element[=].target[+].code = #2212-097
* group[=].element[=].target[=].display = "Vrach travmatolog-ortoped"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #351
* group[=].element[=].display = "Tez yordam shifokori" // ru: Врач СМП
* group[=].element[=].target[+].code = #2212-169
* group[=].element[=].target[=].display = "Tez tibbiy yordam katta vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #387
* group[=].element[=].display = "Fond ma'muri" // ru: Администратор Фонда
* group[=].element[=].target[+].code = #1211-013
* group[=].element[=].target[=].display = "Investitsiya menejeri"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #432
* group[=].element[=].display = "Transfuziolog shifokor" // ru: Врач трансфузиолог
* group[=].element[=].target[+].code = #2212-098
* group[=].element[=].target[=].display = "Vrach transfuziolog"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #247
* group[=].element[=].display = "MSKT mutaxassisi" // ru: Врач МСКТ
* group[=].element[=].target[+].code = #2212-090
* group[=].element[=].target[=].display = "Vrach rentgenolog"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #395
* group[=].element[=].display = "Ftiziopulmonolog" // ru: Фтизиопульмонолог
* group[=].element[=].target[+].code = #2212-103
* group[=].element[=].target[=].display = "Vrach ftiziatr"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #415
* group[=].element[=].display = "Bolalar nevropatologi" // ru: Детский Невропатолог
* group[=].element[=].target[+].code = #2212-006
* group[=].element[=].target[=].display = "Bolalar nevrolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #399
* group[=].element[=].display = "Bolalar Endokrinologi" // ru: Детский Эндокринолог
* group[=].element[=].target[+].code = #2212-014
* group[=].element[=].target[=].display = "Bolalar endokrinolog vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #447
* group[=].element[=].display = "Bosh hamshira" // ru: Старшая медсестра
* group[=].element[=].target[+].code = #2221-002
* group[=].element[=].target[=].display = "Bosh hamshira"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #597
* group[=].element[=].display = "Xalq tabobati shifokori" // ru: Врач традиционной медицины
* group[=].element[=].target[+].code = #3230-004
* group[=].element[=].target[=].display = "Xalq tabobati boʻyicha mutaxassis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #360
* group[=].element[=].display = "Amaliyotchi hamshira" // ru: Практикующая Медсестра
* group[=].element[=].target[+].code = #3221-023
* group[=].element[=].target[=].display = "Tibbiy brigada hamshirasi (amaliyotchi hamshira, patronaj hamshirasi, patronaj doya hamshirasi)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #254
* group[=].element[=].display = "Osteopat" // ru: Остеопат
* group[=].element[=].target[+].code = #3230-004
* group[=].element[=].target[=].display = "Xalq tabobati boʻyicha mutaxassis"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #682
* group[=].element[=].display = "EKG hamshira" // ru: ЭКГ медсестра
* group[=].element[=].target[+].code = #3221-026
* group[=].element[=].target[=].display = "Funksional diagnostika hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #386
* group[=].element[=].display = "UTT shifokori (skrining)" // ru: Врач УЗИ (скрининг)
* group[=].element[=].target[+].code = #2212-177
* group[=].element[=].target[=].display = "Ultratovush tashxis vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #822
* group[=].element[=].display = "Врач верификатор" // ru: Врач верификатор
* group[=].element[=].target[+].code = #8219-039
* group[=].element[=].target[=].display = "Tekshiruvchi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #995
* group[=].element[=].display = "Qabul bo`limi hamshirasi" // ru: Медсестра приёмного отделения
* group[=].element[=].target[+].code = #2212-135
* group[=].element[=].target[=].display = "Qabul boʻlimi (boʻlinmasi) vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #829
* group[=].element[=].display = "Hamshira palatasi" // ru: Медсестра палатная
* group[=].element[=].target[+].code = #3221-013
* group[=].element[=].target[=].display = "Palata hamshirasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #406
* group[=].element[=].display = "EKG shifokori" // ru: Врач ЭКГ
* group[=].element[=].target[+].code = #2212-188
* group[=].element[=].target[=].display = "EKG (elektrokardiogramma) vrachi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #861
* group[=].element[=].display = "Xalq Tabobati mutaxassisi" // ru: Специалист народной медицины
* group[=].element[=].target[+].code = #3230-004
* group[=].element[=].target[=].display = "Xalq tabobati boʻyicha mutaxassis"
* group[=].element[=].target[=].relationship = #equivalent
