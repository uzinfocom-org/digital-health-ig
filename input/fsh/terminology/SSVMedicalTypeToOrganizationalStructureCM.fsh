Instance: ssv-medical-type-to-organizational-structure-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "SSV Medical Type to Organizational Structure"
Description: "Maps SSV medical type codes to UZ Core Organizational Structure codes. SSV classifies healthcare facilities into 45 medical types, while OrganizationalStructureCS provides the Ministry of Health's detailed classification of institution types."
* name = "SSVMedicalTypeToOrganizationalStructureCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/ssv-medical-type-to-organizational-structure-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

// Group 1: SSV mapping to OrganizationalStructureCS
* group[+].source = $ssv-organization-type-medical
* group[=].target = Canonical(OrganizationalStructureCS)
* group[=].element[+].code = #1
* group[=].element[=].display = "Pharmacy" // uz: Dorixona, ru: Аптека
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #2
* group[=].element[=].display = "Social Pharmacy" // uz: Ijtimoiy dorixona, ru: Социальная аптека
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #3
* group[=].element[=].display = "Hospital" // uz: Shifoxona, ru: Больница
* group[=].element[=].target[+].code = #146
* group[=].element[=].target[=].display = "Hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "Pediatric Hospital" // uz: Bolalar shifoxonasi, ru: Детская больница
* group[=].element[=].target[+].code = #146
* group[=].element[=].target[=].display = "Hospital"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #5
* group[=].element[=].display = "Pediatric Multidisciplinary Hospital" // uz: Ko'p tarmoqli bolalar shifoxonasi, ru: Детская многопрофильная больница
* group[=].element[=].target[+].code = #134
* group[=].element[=].target[=].display = "Children's multidisciplinary medical center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #6
* group[=].element[=].display = "Psychoneurological Hospital" // uz: Psixo-narkologik shifoxona, ru: Психо-наркологическая больница
* group[=].element[=].target[+].code = #142
* group[=].element[=].target[=].display = "Specialized hospital"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #7
* group[=].element[=].display = "Emergency Hospital" // uz: Tez yordam shifoxonasi, ru: Больница скорой помощи
* group[=].element[=].target[+].code = #126
* group[=].element[=].target[=].display = "Emergency medical care scientific center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #8
* group[=].element[=].display = "Specialized Hospital" // uz: Ixtisoslashgan shifoxona, ru: Специализированная больница
* group[=].element[=].target[+].code = #142
* group[=].element[=].target[=].display = "Specialized hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #10
* group[=].element[=].display = "Dispensary" // uz: Dispanser, ru: Диспансер
* group[=].element[=].target[+].code = #150
* group[=].element[=].target[=].display = "Specialized dispensary"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #11
* group[=].element[=].display = "Nursing home" // uz: Internat uylari, ru: Дом-интернат
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #12
* group[=].element[=].display = "Institute of Advanced Training" // uz: Malaka oshirish institutlari, ru: Институт повышения квалификации
* group[=].element[=].target[+].code = #917
* group[=].element[=].target[=].display = "Institutions for professional qualification development of medical workers"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #13
* group[=].element[=].display = "Clinic at an educational institution" // uz: Ta'lim muassasalari klinikalari, ru: Клиника при образовательном учреждении
* group[=].element[=].target[+].code = #130
* group[=].element[=].target[=].display = "Clinics (at higher medical institutions and research institutes)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #14
* group[=].element[=].display = "Maternity complex" // uz: Tug'ruq kompleksi, ru: Родильный комплекс
* group[=].element[=].target[+].code = #124
* group[=].element[=].target[=].display = "City (district) maternity complex"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #15
* group[=].element[=].display = "Leprosarium" // uz: Leprozoriy, ru: Лепрозорий
* group[=].element[=].target[+].code = #144
* group[=].element[=].target[=].display = "Leprosy hospital"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #16
* group[=].element[=].display = "Medical Association" // uz: Tibbiyot birlashmasi, ru: Медицинское объединение
* group[=].element[=].target[+].code = #148
* group[=].element[=].target[=].display = "Medical association"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #17
* group[=].element[=].display = "Scientific and Production Association" // uz: Ilmiy-ishlab chiqarish birlashmasi, ru: Научно-производственное объединение
* group[=].element[=].target[+].code = #110
* group[=].element[=].target[=].display = "Specialized scientific and practical medical center"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #18
* group[=].element[=].display = "Boarding house" // uz: Pansionat, ru: Пансионат
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #20
* group[=].element[=].display = "Multidisciplinary polyclinic" // uz: Ko'p tarmoqli poliklinika, ru: Многопрофильная поликлиника
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #21
* group[=].element[=].display = "Family polyclinic" // uz: Oilaviy poliklinika, ru: Семейная поликлиника
* group[=].element[=].target[+].code = #351
* group[=].element[=].target[=].display = "Family polyclinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #22
* group[=].element[=].display = "Dental polyclinic" // uz: Stomatologiya poliklinikasi, ru: Стоматологическая поликлиника
* group[=].element[=].target[+].code = #341
* group[=].element[=].target[=].display = "Dental polyclinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #23
* group[=].element[=].display = "Family physicians point" // uz: Oilaviy shifokor punkti, ru: Пункт семейного врача
* group[=].element[=].target[+].code = #355
* group[=].element[=].target[=].display = "Family doctor point"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #26
* group[=].element[=].display = "Ambulance station" // uz: Tez yordam stansiyasi, ru: Станция скорой помощи
* group[=].element[=].target[+].code = #211
* group[=].element[=].target[=].display = "Emergency medical service station"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #27
* group[=].element[=].display = "Health Department" // uz: Sog'liqni saqlash boshqarmasi, ru: Управление здравоохранения
* group[=].element[=].target[+].code = #911
* group[=].element[=].target[=].display = "Health administration (ministry)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #28
* group[=].element[=].display = "Educational institution" // uz: Ta'lim muassasalari, ru: Образовательное учреждение
* group[=].element[=].target[+].code = #919
* group[=].element[=].target[=].display = "Medical institute"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #30
* group[=].element[=].display = "Sanitary and educational institution" // uz: Sanitariya va ta'lim muassasalari, ru: Санитарно-просветительное учреждение
* group[=].element[=].target[+].code = #999
* group[=].element[=].target[=].display = "Other organizations within the healthcare system"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #32
* group[=].element[=].display = "Center of Hemostasiology" // uz: Gemastaziologiya markazi, ru: Центр гемастазиологии
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #33
* group[=].element[=].display = "Diagnostic Center" // uz: Diagnostika markazi, ru: Диагностический центр
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #34
* group[=].element[=].display = "Pediatric diagnostic center" // uz: Bolalar diagnostika markazi, ru: Диагностический детский центр
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #35
* group[=].element[=].display = "Scientific and Practical Center" // uz: Ilmiy-amaliyot markazi, ru: Научно-практический центр
* group[=].element[=].target[+].code = #110
* group[=].element[=].target[=].display = "Specialized scientific and practical medical center"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #37
* group[=].element[=].display = "Perinatal Center" // uz: Perinatal markaz, ru: Перинатальный центр
* group[=].element[=].target[+].code = #120
* group[=].element[=].target[=].display = "Perinatal center"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #38
* group[=].element[=].display = "Rehabilitation center" // uz: Reabilitatsiya markazi, ru: Реабилитационный центр
* group[=].element[=].target[+].code = #118
* group[=].element[=].target[=].display = "Rehabilitation center"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #39
* group[=].element[=].display = "Reproductive Health Center" // uz: Reproduktiv salomatlik markazi, ru: Центр репродуктивного здоровья
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #40
* group[=].element[=].display = "Screening Center" // uz: Skrining markazi, ru: Скрининг центр
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #41
* group[=].element[=].display = "AIDS Center" // uz: OITS markazi, ru: СПИД центр
* group[=].element[=].target[+].code = #114
* group[=].element[=].target[=].display = "Specialized center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #42
* group[=].element[=].display = "Central multidisciplinary polyclinic" // uz: Ko'p tarmoqli markaziy poliklinika, ru: Центральная многопрофильная поликлиника
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #43
* group[=].element[=].display = "Central multidisciplinary polyclinic (branch)" // uz: Ko'p tarmoqli markaziy poliklinika (filial), ru: Центральная многопрофильная поликлиника (филиал)
* group[=].element[=].target[+].code = #138
* group[=].element[=].target[=].display = "Multidisciplinary clinic"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #44
* group[=].element[=].display = "Family polyclinic (branch)" // uz: Oilaviy poliklinika (filial), ru: Поликлиника семейная (филиал)
* group[=].element[=].target[+].code = #158
* group[=].element[=].target[=].display = "Rural district hospital"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #45
* group[=].element[=].display = "Family physicians point (branch)" // uz: Oilaviy shifokor punkti (filial), ru: Пункт семейного врача (филиал)
* group[=].element[=].target[+].code = #355
* group[=].element[=].target[=].display = "Family doctor point"
* group[=].element[=].target[=].relationship = #related-to

// Group 2: SSV mapping to NomenclatureGroupCS
* group[+].source = $ssv-organization-type-medical
* group[=].target = Canonical(NomenclatureGroupCS)
* group[=].element[+].code = #9
* group[=].element[=].display = "Disinfection station" // uz: Dezinfektsiya stantsiyasi, ru: Дезинфекционная станция
* group[=].element[=].target[+].code = #II_800
* group[=].element[=].target[=].display = "Sanitary and epidemiological welfare and health of the population"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #19
* group[=].element[=].display = "Pathoanatomic Service" // uz: Patologik xizmat, ru: Патологоанатомическая служба
* group[=].element[=].target[+].code = #II_600
* group[=].element[=].target[=].display = "Pathological anatomy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #24
* group[=].element[=].display = "Sanatorium" // uz: Sanatoriya, ru: Санаторий
* group[=].element[=].target[+].code = #II_400
* group[=].element[=].target[=].display = "Resorts"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #25
* group[=].element[=].display = "Blood Transfusion station" // uz: Qon quyish stansiyasi, ru: Станция переливания крови
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #29
* group[=].element[=].display = "Blood transfusion facility" // uz: Qon quyish muassasalari, ru: Учреждение переливания крови
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #31
* group[=].element[=].display = "Establishment of sanitary and epidemiological service" // uz: Sanepidxizmati muassasalari, ru: Учреждение санитарно-эпидемиологической службы
* group[=].element[=].target[+].code = #II_800
* group[=].element[=].target[=].display = "Sanitary and epidemiological welfare and health of the population"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #36
* group[=].element[=].display = "Blood Transfusion Center" // uz: Qon quyish markazi, ru: Центр переливания крови
* group[=].element[=].target[+].code = #II_700
* group[=].element[=].target[=].display = "Blood transfusion center"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
