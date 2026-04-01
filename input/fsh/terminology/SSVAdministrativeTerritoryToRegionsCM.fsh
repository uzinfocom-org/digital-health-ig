Instance: ssv-administrative-territory-to-regions-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "SSV Administrative Territory to Regions and States"
Description: "Maps SSV administrative territory codes to UZ Core StateCS (for regions) and RegionsCS (for districts). Both systems use NATE codes as their underlying identifiers, making this a direct equivalence mapping. Locality-level codes (9213 entries) from the SSV system have no equivalent in the target and are excluded from this map."
* name = "SSVAdministrativeTerritoryToRegionsCM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/ssv-administrative-territory-to-regions-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

// Group 1: Region-level mapping to StateCS
* group[+].source = Canonical(SSVAdministrativeTerritoryCS)
* group[=].target = Canonical(StateCS)

* group[=].element[+].code = #UZ-AN
* group[=].element[=].display = "Andijon viloyati"
* group[=].element[=].target[+].code = #1703
* group[=].element[=].target[=].display = "Andijan region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-BU
* group[=].element[=].display = "Buxoro viloyati"
* group[=].element[=].target[+].code = #1706
* group[=].element[=].target[=].display = "Bukhara region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-FA
* group[=].element[=].display = "Farg'ona viloyati"
* group[=].element[=].target[+].code = #1730
* group[=].element[=].target[=].display = "Fergana region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-JI
* group[=].element[=].display = "Jizzax viloyati"
* group[=].element[=].target[+].code = #1708
* group[=].element[=].target[=].display = "Jizzakh region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-NG
* group[=].element[=].display = "Namangan viloyati"
* group[=].element[=].target[+].code = #1714
* group[=].element[=].target[=].display = "Namangan region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-NW
* group[=].element[=].display = "Navoiy viloyati"
* group[=].element[=].target[+].code = #1712
* group[=].element[=].target[=].display = "Navoi region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-QA
* group[=].element[=].display = "Qashqadaryo viloyati"
* group[=].element[=].target[+].code = #1710
* group[=].element[=].target[=].display = "Kashkadarya region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-QR
* group[=].element[=].display = "Qoraqalpog'iston Respublikasi"
* group[=].element[=].target[+].code = #1735
* group[=].element[=].target[=].display = "Republic of Karakalpakstan"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-SA
* group[=].element[=].display = "Samarqand viloyati"
* group[=].element[=].target[+].code = #1718
* group[=].element[=].target[=].display = "Samarkand region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-SI
* group[=].element[=].display = "Sirdaryo viloyati"
* group[=].element[=].target[+].code = #1724
* group[=].element[=].target[=].display = "Sirdarya region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-SU
* group[=].element[=].display = "Surxandaryo viloyati"
* group[=].element[=].target[+].code = #1722
* group[=].element[=].target[=].display = "Surkhandarya region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-TK
* group[=].element[=].display = "Toshkent shahri"
* group[=].element[=].target[+].code = #1726
* group[=].element[=].target[=].display = "Tashkent city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-TO
* group[=].element[=].display = "Toshkent viloyati"
* group[=].element[=].target[+].code = #1727
* group[=].element[=].target[=].display = "Tashkent region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #UZ-XO
* group[=].element[=].display = "Xorazm viloyati"
* group[=].element[=].target[+].code = #1733
* group[=].element[=].target[=].display = "Khorezm region"
* group[=].element[=].target[=].relationship = #equivalent

// Group 2: District-level mapping to RegionsCS
* group[+].source = Canonical(SSVAdministrativeTerritoryCS)
* group[=].target = Canonical(RegionsCS)

* group[=].element[+].code = #AN-202
* group[=].element[=].display = "Oltinko‘l tumani"
* group[=].element[=].target[+].code = #1703202
* group[=].element[=].target[=].display = "Altinkul district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-203
* group[=].element[=].display = "Andijon tumani"
* group[=].element[=].target[+].code = #1703203
* group[=].element[=].target[=].display = "Andijan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-206
* group[=].element[=].display = "Baliqchi tumani"
* group[=].element[=].target[+].code = #1703206
* group[=].element[=].target[=].display = "Baliqchi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-209
* group[=].element[=].display = "Bo‘ston tumani"
* group[=].element[=].target[+].code = #1703209
* group[=].element[=].target[=].display = "Boston district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-210
* group[=].element[=].display = "Buloqboshi tumani"
* group[=].element[=].target[+].code = #1703210
* group[=].element[=].target[=].display = "Buloqboshi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-211
* group[=].element[=].display = "Jalaquduq tumani"
* group[=].element[=].target[+].code = #1703211
* group[=].element[=].target[=].display = "Jalaquduk district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-214
* group[=].element[=].display = "Izboskan tumani"
* group[=].element[=].target[+].code = #1703214
* group[=].element[=].target[=].display = "Izboskan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-217
* group[=].element[=].display = "Ulug‘nor tumani"
* group[=].element[=].target[+].code = #1703217
* group[=].element[=].target[=].display = "Ulug'nor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-220
* group[=].element[=].display = "Qo‘rg‘ontepa tumani"
* group[=].element[=].target[+].code = #1703220
* group[=].element[=].target[=].display = "Korgontepa district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-224
* group[=].element[=].display = "Asaka tumani"
* group[=].element[=].target[+].code = #1703224
* group[=].element[=].target[=].display = "Asaka district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-227
* group[=].element[=].display = "Marxamat tumani"
* group[=].element[=].target[+].code = #1703227
* group[=].element[=].target[=].display = "Marhamat district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-230
* group[=].element[=].display = "Shaxrixon tumani"
* group[=].element[=].target[+].code = #1703230
* group[=].element[=].target[=].display = "Shahrikhan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-232
* group[=].element[=].display = "Paxtaobod tumani"
* group[=].element[=].target[+].code = #1703232
* group[=].element[=].target[=].display = "Pakhtaobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-236
* group[=].element[=].display = "Xo‘jaobod tumani"
* group[=].element[=].target[+].code = #1703236
* group[=].element[=].target[=].display = "Khojaobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-401
* group[=].element[=].display = "Andijon shahri"
* group[=].element[=].target[+].code = #1703401
* group[=].element[=].target[=].display = "Andijan city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #AN-408
* group[=].element[=].display = "Xonobod shahri"
* group[=].element[=].target[+].code = #1703408
* group[=].element[=].target[=].display = "Khonobod city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-204
* group[=].element[=].display = "Olot tumani"
* group[=].element[=].target[+].code = #1706204
* group[=].element[=].target[=].display = "Olot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-207
* group[=].element[=].display = "Buxoro tumani"
* group[=].element[=].target[+].code = #1706207
* group[=].element[=].target[=].display = "Bukhara district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-212
* group[=].element[=].display = "Vobkent tumani"
* group[=].element[=].target[+].code = #1706212
* group[=].element[=].target[=].display = "Vobkent district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-215
* group[=].element[=].display = "G‘ijduvon tumani"
* group[=].element[=].target[+].code = #1706215
* group[=].element[=].target[=].display = "Gijduvon district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-219
* group[=].element[=].display = "Kogon tumani"
* group[=].element[=].target[+].code = #1706219
* group[=].element[=].target[=].display = "Kogon district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-230
* group[=].element[=].display = "Qorako‘l tumani"
* group[=].element[=].target[+].code = #1706230
* group[=].element[=].target[=].display = "Qarakol district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-232
* group[=].element[=].display = "Qorovulbozor tumani"
* group[=].element[=].target[+].code = #1706232
* group[=].element[=].target[=].display = "Qarovulbazar district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-240
* group[=].element[=].display = "Peshku tumani"
* group[=].element[=].target[+].code = #1706240
* group[=].element[=].target[=].display = "Peshku district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-242
* group[=].element[=].display = "Romitan tumani"
* group[=].element[=].target[+].code = #1706242
* group[=].element[=].target[=].display = "Romitan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-246
* group[=].element[=].display = "Jondor tumani"
* group[=].element[=].target[+].code = #1706246
* group[=].element[=].target[=].display = "Jondor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-258
* group[=].element[=].display = "Shofirkon tumani"
* group[=].element[=].target[+].code = #1706258
* group[=].element[=].target[=].display = "Shofirkon district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-401
* group[=].element[=].display = "Buxoro shahri"
* group[=].element[=].target[+].code = #1706401
* group[=].element[=].target[=].display = "Bukhara city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #BU-403
* group[=].element[=].display = "Kogon shahri"
* group[=].element[=].target[+].code = #1706403
* group[=].element[=].target[=].display = "Kogon city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-203
* group[=].element[=].display = "Oltiariq tumani"
* group[=].element[=].target[+].code = #1730203
* group[=].element[=].target[=].display = "Oltiarik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-206
* group[=].element[=].display = "Qo‘shtepa tumani"
* group[=].element[=].target[+].code = #1730206
* group[=].element[=].target[=].display = "Qoshtepa district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-209
* group[=].element[=].display = "Bog‘dod tumani"
* group[=].element[=].target[+].code = #1730209
* group[=].element[=].target[=].display = "Baghdad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-212
* group[=].element[=].display = "Buvayda tumani"
* group[=].element[=].target[+].code = #1730212
* group[=].element[=].target[=].display = "Buvayda district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-215
* group[=].element[=].display = "Beshariq tumani"
* group[=].element[=].target[+].code = #1730215
* group[=].element[=].target[=].display = "Besharik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-218
* group[=].element[=].display = "Quva tumani"
* group[=].element[=].target[+].code = #1730218
* group[=].element[=].target[=].display = "Quva district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-221
* group[=].element[=].display = "Uchko‘prik tumani"
* group[=].element[=].target[+].code = #1730221
* group[=].element[=].target[=].display = "Uchko'prik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-224
* group[=].element[=].display = "Rishton tumani"
* group[=].element[=].target[+].code = #1730224
* group[=].element[=].target[=].display = "Rishton district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-226
* group[=].element[=].display = "So‘x tumani"
* group[=].element[=].target[+].code = #1730226
* group[=].element[=].target[=].display = "Sokh district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-227
* group[=].element[=].display = "Toshloq tumani"
* group[=].element[=].target[+].code = #1730227
* group[=].element[=].target[=].display = "Tashlok district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-230
* group[=].element[=].display = "O‘zbekiston tumani"
* group[=].element[=].target[+].code = #1730230
* group[=].element[=].target[=].display = "Uzbekistan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-233
* group[=].element[=].display = "Farg‘ona tumani"
* group[=].element[=].target[+].code = #1730233
* group[=].element[=].target[=].display = "Fergana district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-236
* group[=].element[=].display = "Dang‘ara tumani"
* group[=].element[=].target[+].code = #1730236
* group[=].element[=].target[=].display = "Dangara district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-238
* group[=].element[=].display = "Furqat tumani"
* group[=].element[=].target[+].code = #1730238
* group[=].element[=].target[=].display = "Furqat district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-242
* group[=].element[=].display = "Yozyovon tumani"
* group[=].element[=].target[+].code = #1730242
* group[=].element[=].target[=].display = "Yozyovan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-401
* group[=].element[=].display = "Farg‘ona shahri"
* group[=].element[=].target[+].code = #1730401
* group[=].element[=].target[=].display = "Fergana city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-405
* group[=].element[=].display = "Qo‘qon shahri"
* group[=].element[=].target[+].code = #1730405
* group[=].element[=].target[=].display = "Qoqon city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-408
* group[=].element[=].display = "Quvasoy shahri"
* group[=].element[=].target[+].code = #1730408
* group[=].element[=].target[=].display = "Quvasoy city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #FA-412
* group[=].element[=].display = "Marg‘ilon shahri"
* group[=].element[=].target[+].code = #1730412
* group[=].element[=].target[=].display = "Margilan city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-201
* group[=].element[=].display = "Arnasoy tumani"
* group[=].element[=].target[+].code = #1708201
* group[=].element[=].target[=].display = "Arnasoy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-204
* group[=].element[=].display = "Baxmal tumani"
* group[=].element[=].target[+].code = #1708204
* group[=].element[=].target[=].display = "Bakhmal district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-209
* group[=].element[=].display = "G‘allaorol tumani"
* group[=].element[=].target[+].code = #1708209
* group[=].element[=].target[=].display = "Gallaorol district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-212
* group[=].element[=].display = "Sharof Rashidov tumani"
* group[=].element[=].target[+].code = #1708212
* group[=].element[=].target[=].display = "Sharof Rashidov district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-215
* group[=].element[=].display = "Do‘stlik tumani"
* group[=].element[=].target[+].code = #1708215
* group[=].element[=].target[=].display = "Dustlik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-218
* group[=].element[=].display = "Zomin tumani"
* group[=].element[=].target[+].code = #1708218
* group[=].element[=].target[=].display = "Zomin district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-220
* group[=].element[=].display = "Zarbdor tumani"
* group[=].element[=].target[+].code = #1708220
* group[=].element[=].target[=].display = "Zarbdor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-223
* group[=].element[=].display = "Mirzacho‘l tumani"
* group[=].element[=].target[+].code = #1708223
* group[=].element[=].target[=].display = "Mirzachol district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-225
* group[=].element[=].display = "Zafarobod tumani"
* group[=].element[=].target[+].code = #1708225
* group[=].element[=].target[=].display = "Zafarobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-228
* group[=].element[=].display = "Paxtakor tumani"
* group[=].element[=].target[+].code = #1708228
* group[=].element[=].target[=].display = "Pakhtakor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-235
* group[=].element[=].display = "Forish tumani"
* group[=].element[=].target[+].code = #1708235
* group[=].element[=].target[=].display = "Forish district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-237
* group[=].element[=].display = "Yangiobod tumani"
* group[=].element[=].target[+].code = #1708237
* group[=].element[=].target[=].display = "Yangiabad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #JI-401
* group[=].element[=].display = "Jizzax shahri"
* group[=].element[=].target[+].code = #1708401
* group[=].element[=].target[=].display = "Jizzakh city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-204
* group[=].element[=].display = "Mingbuloq tumani"
* group[=].element[=].target[+].code = #1714204
* group[=].element[=].target[=].display = "Mingbulok district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-207
* group[=].element[=].display = "Kosonsoy tumani"
* group[=].element[=].target[+].code = #1714207
* group[=].element[=].target[=].display = "Kosonsoy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-212
* group[=].element[=].display = "Namangan tumani"
* group[=].element[=].target[+].code = #1714212
* group[=].element[=].target[=].display = "Namangan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-216
* group[=].element[=].display = "Norin tumani"
* group[=].element[=].target[+].code = #1714216
* group[=].element[=].target[=].display = "Norin district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-219
* group[=].element[=].display = "Pop tumani"
* group[=].element[=].target[+].code = #1714219
* group[=].element[=].target[=].display = "Pop district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-224
* group[=].element[=].display = "To‘raqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1714224
* group[=].element[=].target[=].display = "Turakurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-229
* group[=].element[=].display = "Uychi tumani"
* group[=].element[=].target[+].code = #1714229
* group[=].element[=].target[=].display = "Uychi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-234
* group[=].element[=].display = "Uchqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1714234
* group[=].element[=].target[=].display = "Uchkurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-236
* group[=].element[=].display = "Chortoq tumani"
* group[=].element[=].target[+].code = #1714236
* group[=].element[=].target[=].display = "Chortoq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-237
* group[=].element[=].display = "Chust tumani"
* group[=].element[=].target[+].code = #1714237
* group[=].element[=].target[=].display = "Chust district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-242
* group[=].element[=].display = "Yangiqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1714242
* group[=].element[=].target[=].display = "Yangikurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NG-401
* group[=].element[=].display = "Namangan shahri"
* group[=].element[=].target[+].code = #1714401
* group[=].element[=].target[=].display = "Namangan city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-211
* group[=].element[=].display = "Konimex tumani"
* group[=].element[=].target[+].code = #1712211
* group[=].element[=].target[=].display = "Konimeh district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-216
* group[=].element[=].display = "Qiziltepa tumani"
* group[=].element[=].target[+].code = #1712216
* group[=].element[=].target[=].display = "Kiziltepa district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-230
* group[=].element[=].display = "Navbahor tumani"
* group[=].element[=].target[+].code = #1712230
* group[=].element[=].target[=].display = "Navbahor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-234
* group[=].element[=].display = "Karmana tumani"
* group[=].element[=].target[+].code = #1712234
* group[=].element[=].target[=].display = "Karmana district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-238
* group[=].element[=].display = "Nurota tumani"
* group[=].element[=].target[+].code = #1712238
* group[=].element[=].target[=].display = "Nurota district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-244
* group[=].element[=].display = "Tomdi tumani"
* group[=].element[=].target[+].code = #1712244
* group[=].element[=].target[=].display = "Tomdi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-248
* group[=].element[=].display = "Uchquduq tumani"
* group[=].element[=].target[+].code = #1712248
* group[=].element[=].target[=].display = "Uchkuduk district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-251
* group[=].element[=].display = "Xatirchi tumani"
* group[=].element[=].target[+].code = #1712251
* group[=].element[=].target[=].display = "Khatirchi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-401
* group[=].element[=].display = "Navoiy shahri"
* group[=].element[=].target[+].code = #1712401
* group[=].element[=].target[=].display = "Navoi city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-408
* group[=].element[=].display = "Zarafshon shahri"
* group[=].element[=].target[+].code = #1712408
* group[=].element[=].target[=].display = "Zarafshon city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #NW-412
* group[=].element[=].display = "G‘ozg‘on shahar"
* group[=].element[=].target[+].code = #1712412
* group[=].element[=].target[=].display = "Gozgan city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-207
* group[=].element[=].display = "G‘uzor tumani"
* group[=].element[=].target[+].code = #1710207
* group[=].element[=].target[=].display = "Guzor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-212
* group[=].element[=].display = "Dexqonobod tumani"
* group[=].element[=].target[+].code = #1710212
* group[=].element[=].target[=].display = "Dehkanabad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-220
* group[=].element[=].display = "Qamashi tumani"
* group[=].element[=].target[+].code = #1710220
* group[=].element[=].target[=].display = "Qamashi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-224
* group[=].element[=].display = "Qarshi tumani"
* group[=].element[=].target[+].code = #1710224
* group[=].element[=].target[=].display = "Karshi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-229
* group[=].element[=].display = "Koson tumani"
* group[=].element[=].target[+].code = #1710229
* group[=].element[=].target[=].display = "Koson district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-232
* group[=].element[=].display = "Kitob tumani"
* group[=].element[=].target[+].code = #1710232
* group[=].element[=].target[=].display = "Kitob district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-233
* group[=].element[=].display = "Mirishkor tumani"
* group[=].element[=].target[+].code = #1710233
* group[=].element[=].target[=].display = "Mirishkor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-234
* group[=].element[=].display = "Muborak tumani"
* group[=].element[=].target[+].code = #1710234
* group[=].element[=].target[=].display = "Muborak district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-235
* group[=].element[=].display = "Nishon tumani"
* group[=].element[=].target[+].code = #1710235
* group[=].element[=].target[=].display = "Nishon district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-237
* group[=].element[=].display = "Kasbi tumani"
* group[=].element[=].target[+].code = #1710237
* group[=].element[=].target[=].display = "Kasbi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-242
* group[=].element[=].display = "Chiroqchi tumani"
* group[=].element[=].target[+].code = #1710242
* group[=].element[=].target[=].display = "Chiroqchi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-245
* group[=].element[=].display = "Shaxrisabz tumani"
* group[=].element[=].target[+].code = #1710245
* group[=].element[=].target[=].display = "Shahrisabz district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-250
* group[=].element[=].display = "Yakkabog‘ tumani"
* group[=].element[=].target[+].code = #1710250
* group[=].element[=].target[=].display = "Yakkabog district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-401
* group[=].element[=].display = "Qarshi shahri"
* group[=].element[=].target[+].code = #1710401
* group[=].element[=].target[=].display = "Qarshi city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-405
* group[=].element[=].display = "Shaxrisabz shahri"
* group[=].element[=].target[+].code = #1710405
* group[=].element[=].target[=].display = "Shahrisabz city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QA-240
* group[=].element[=].display = "Ko'kdala tumani"
* group[=].element[=].target[+].code = #1710240
* group[=].element[=].target[=].display = "Kokdala district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-204
* group[=].element[=].display = "Amudaryo tumani"
* group[=].element[=].target[+].code = #1735204
* group[=].element[=].target[=].display = "Amu Darya district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-207
* group[=].element[=].display = "Beruniy tumani"
* group[=].element[=].target[+].code = #1735207
* group[=].element[=].target[=].display = "Beruni district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-209
* group[=].element[=].display = "Bozatov tumani"
* group[=].element[=].target[+].code = #1735209
* group[=].element[=].target[=].display = "Bozatov district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-211
* group[=].element[=].display = "Qorao‘zak tumani"
* group[=].element[=].target[+].code = #1735211
* group[=].element[=].target[=].display = "Qaraozak district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-212
* group[=].element[=].display = "Kegayli tumani"
* group[=].element[=].target[+].code = #1735212
* group[=].element[=].target[=].display = "Kegeyli district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-215
* group[=].element[=].display = "Qo‘ng‘irot tumani"
* group[=].element[=].target[+].code = #1735215
* group[=].element[=].target[=].display = "Kongirot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-218
* group[=].element[=].display = "Qonliko‘l tumani"
* group[=].element[=].target[+].code = #1735218
* group[=].element[=].target[=].display = "Qonlikol district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-222
* group[=].element[=].display = "Mo‘ynoq tumani"
* group[=].element[=].target[+].code = #1735222
* group[=].element[=].target[=].display = "Muynaq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-225
* group[=].element[=].display = "Nukus tumani"
* group[=].element[=].target[+].code = #1735225
* group[=].element[=].target[=].display = "Nukus district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-228
* group[=].element[=].display = "Taxhiatosh tumani"
* group[=].element[=].target[+].code = #1735228
* group[=].element[=].target[=].display = "Taxiatash district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-230
* group[=].element[=].display = "Taxtako‘prik tumani"
* group[=].element[=].target[+].code = #1735230
* group[=].element[=].target[=].display = "Takhtkopir district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-233
* group[=].element[=].display = "To‘rtko‘l tumani"
* group[=].element[=].target[+].code = #1735233
* group[=].element[=].target[=].display = "Tortkul district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-236
* group[=].element[=].display = "Xo‘jayli tumani"
* group[=].element[=].target[+].code = #1735236
* group[=].element[=].target[=].display = "Khojaly district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-240
* group[=].element[=].display = "Chimboy tumani"
* group[=].element[=].target[+].code = #1735240
* group[=].element[=].target[=].display = "Chimboy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-243
* group[=].element[=].display = "Shumanay tumani"
* group[=].element[=].target[+].code = #1735243
* group[=].element[=].target[=].display = "Shumanay district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-250
* group[=].element[=].display = "Ellikqal’a tumani"
* group[=].element[=].target[+].code = #1735250
* group[=].element[=].target[=].display = "Ellikkal’a district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #QR-401
* group[=].element[=].display = "Nukus shahri"
* group[=].element[=].target[+].code = #1735401
* group[=].element[=].target[=].display = "Nukus city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-203
* group[=].element[=].display = "Oqdaryo tumani"
* group[=].element[=].target[+].code = #1718203
* group[=].element[=].target[=].display = "Oqdaryo district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-206
* group[=].element[=].display = "Bulung‘ur tumani"
* group[=].element[=].target[+].code = #1718206
* group[=].element[=].target[=].display = "Bulungur district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-209
* group[=].element[=].display = "Jomboy tumani"
* group[=].element[=].target[+].code = #1718209
* group[=].element[=].target[=].display = "Jomboy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-212
* group[=].element[=].display = "Ishtixon tumani"
* group[=].element[=].target[+].code = #1718212
* group[=].element[=].target[=].display = "Ishtikhan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-215
* group[=].element[=].display = "Kattaqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1718215
* group[=].element[=].target[=].display = "Kattakurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-216
* group[=].element[=].display = "Qo‘shrabod tumani"
* group[=].element[=].target[+].code = #1718216
* group[=].element[=].target[=].display = "Koshrabot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-218
* group[=].element[=].display = "Narpay tumani"
* group[=].element[=].target[+].code = #1718218
* group[=].element[=].target[=].display = "Narpay district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-224
* group[=].element[=].display = "Payariq tumani"
* group[=].element[=].target[+].code = #1718224
* group[=].element[=].target[=].display = "Payariq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-227
* group[=].element[=].display = "Pastdarg‘om tumani"
* group[=].element[=].target[+].code = #1718227
* group[=].element[=].target[=].display = "Pastdarg'om district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-230
* group[=].element[=].display = "Paxtachi tumani"
* group[=].element[=].target[+].code = #1718230
* group[=].element[=].target[=].display = "Pakhtachi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-233
* group[=].element[=].display = "Samarqand tumani"
* group[=].element[=].target[+].code = #1718233
* group[=].element[=].target[=].display = "Samarkand district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-235
* group[=].element[=].display = "Nurobod tumani"
* group[=].element[=].target[+].code = #1718235
* group[=].element[=].target[=].display = "Nurobad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-236
* group[=].element[=].display = "Urgut tumani"
* group[=].element[=].target[+].code = #1718236
* group[=].element[=].target[=].display = "Urgut district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-238
* group[=].element[=].display = "Toyloq tumani"
* group[=].element[=].target[+].code = #1718238
* group[=].element[=].target[=].display = "Toylaq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-401
* group[=].element[=].display = "Samarqand shahri"
* group[=].element[=].target[+].code = #1718401
* group[=].element[=].target[=].display = "Samarkand city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SA-406
* group[=].element[=].display = "Kattaqo‘rg‘on shahri"
* group[=].element[=].target[+].code = #1718406
* group[=].element[=].target[=].display = "Kattakurgan city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-206
* group[=].element[=].display = "Oqoltin tumani"
* group[=].element[=].target[+].code = #1724206
* group[=].element[=].target[=].display = "Oqoltin district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-212
* group[=].element[=].display = "Boyovut tumani"
* group[=].element[=].target[+].code = #1724212
* group[=].element[=].target[=].display = "Boyovut district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-216
* group[=].element[=].display = "Sayxunobod tumani"
* group[=].element[=].target[+].code = #1724216
* group[=].element[=].target[=].display = "Saykhunabad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-220
* group[=].element[=].display = "Guliston tumani"
* group[=].element[=].target[+].code = #1724220
* group[=].element[=].target[=].display = "Guliston district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-226
* group[=].element[=].display = "Sardoba tumani"
* group[=].element[=].target[+].code = #1724226
* group[=].element[=].target[=].display = "Sardoba district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-228
* group[=].element[=].display = "Mirzaobod tumani"
* group[=].element[=].target[+].code = #1724228
* group[=].element[=].target[=].display = "Mirzaabad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-231
* group[=].element[=].display = "Sirdaryo tumani"
* group[=].element[=].target[+].code = #1724231
* group[=].element[=].target[=].display = "Syrdaryo district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-235
* group[=].element[=].display = "Xovos tumani"
* group[=].element[=].target[+].code = #1724235
* group[=].element[=].target[=].display = "Xovos district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-401
* group[=].element[=].display = "Guliston shahri"
* group[=].element[=].target[+].code = #1724401
* group[=].element[=].target[=].display = "Guliston city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-410
* group[=].element[=].display = "Shirin shahri"
* group[=].element[=].target[+].code = #1724410
* group[=].element[=].target[=].display = "Shirin city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SI-413
* group[=].element[=].display = "Yangiyer shahri"
* group[=].element[=].target[+].code = #1724413
* group[=].element[=].target[=].display = "Yangiyer city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-201
* group[=].element[=].display = "Oltinsoy tumani"
* group[=].element[=].target[+].code = #1722201
* group[=].element[=].target[=].display = "Oltinsoy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-202
* group[=].element[=].display = "Angor tumani"
* group[=].element[=].target[+].code = #1722202
* group[=].element[=].target[=].display = "Angor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-203
* group[=].element[=].display = "Bandixon tumani"
* group[=].element[=].target[+].code = #1722203
* group[=].element[=].target[=].display = "Bandikhon district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-204
* group[=].element[=].display = "Boysun tumani"
* group[=].element[=].target[+].code = #1722204
* group[=].element[=].target[=].display = "Boysun district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-207
* group[=].element[=].display = "Muzrobod tumani"
* group[=].element[=].target[+].code = #1722207
* group[=].element[=].target[=].display = "Muzrabot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-210
* group[=].element[=].display = "Denov tumani"
* group[=].element[=].target[+].code = #1722210
* group[=].element[=].target[=].display = "Denov district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-212
* group[=].element[=].display = "Jarqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1722212
* group[=].element[=].target[=].display = "Zharkurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-214
* group[=].element[=].display = "Qumqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1722214
* group[=].element[=].target[=].display = "Kumkurgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-215
* group[=].element[=].display = "Qiziriq tumani"
* group[=].element[=].target[+].code = #1722215
* group[=].element[=].target[=].display = "Kiziriq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-217
* group[=].element[=].display = "Sariosiyo tumani"
* group[=].element[=].target[+].code = #1722217
* group[=].element[=].target[=].display = "Sariosiyo district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-220
* group[=].element[=].display = "Termiz tumani"
* group[=].element[=].target[+].code = #1722220
* group[=].element[=].target[=].display = "Termez district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-221
* group[=].element[=].display = "Uzun tumani"
* group[=].element[=].target[+].code = #1722221
* group[=].element[=].target[=].display = "Uzun district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-223
* group[=].element[=].display = "Sherobod tumani"
* group[=].element[=].target[+].code = #1722223
* group[=].element[=].target[=].display = "Sherobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-226
* group[=].element[=].display = "Sho‘rchi tumani"
* group[=].element[=].target[+].code = #1722226
* group[=].element[=].target[=].display = "Shorchi district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #SU-401
* group[=].element[=].display = "Termiz shahri"
* group[=].element[=].target[+].code = #1722401
* group[=].element[=].target[=].display = "Termez city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-262
* group[=].element[=].display = "Uchtepa tumani"
* group[=].element[=].target[+].code = #1726262
* group[=].element[=].target[=].display = "Uchtepa district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-264
* group[=].element[=].display = "Bektemir tumani"
* group[=].element[=].target[+].code = #1726264
* group[=].element[=].target[=].display = "Bektemir district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-266
* group[=].element[=].display = "Yunusobod tumani"
* group[=].element[=].target[+].code = #1726266
* group[=].element[=].target[=].display = "Yunusabad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-269
* group[=].element[=].display = "Mirzo Ulug‘bek tumani"
* group[=].element[=].target[+].code = #1726269
* group[=].element[=].target[=].display = "Mirzo Ulugbek district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-273
* group[=].element[=].display = "Mirobod tumani"
* group[=].element[=].target[+].code = #1726273
* group[=].element[=].target[=].display = "Mirobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-277
* group[=].element[=].display = "Shayxontoxur tumani"
* group[=].element[=].target[+].code = #1726277
* group[=].element[=].target[=].display = "Shaykhontohur district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-280
* group[=].element[=].display = "Olmazor tumani"
* group[=].element[=].target[+].code = #1726280
* group[=].element[=].target[=].display = "Almazor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-283
* group[=].element[=].display = "Sergeli tumani"
* group[=].element[=].target[+].code = #1726283
* group[=].element[=].target[=].display = "Sergeli district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-287
* group[=].element[=].display = "Yakkasaroy tumani"
* group[=].element[=].target[+].code = #1726287
* group[=].element[=].target[=].display = "Yakkasaroy district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-290
* group[=].element[=].display = "Yashnobod tumani"
* group[=].element[=].target[+].code = #1726290
* group[=].element[=].target[=].display = "Yashnobad district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-292
* group[=].element[=].display = "Yangihayot tumani"
* group[=].element[=].target[+].code = #1726292
* group[=].element[=].target[=].display = "Yangihayot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TK-294
* group[=].element[=].display = "Chilonzor tumani"
* group[=].element[=].target[+].code = #1726294
* group[=].element[=].target[=].display = "Chilonzor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-206
* group[=].element[=].display = "Oqqo‘rg‘on tumani"
* group[=].element[=].target[+].code = #1727206
* group[=].element[=].target[=].display = "Oqqorgan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-212
* group[=].element[=].display = "Ohangaron tumani"
* group[=].element[=].target[+].code = #1727212
* group[=].element[=].target[=].display = "Akhangaron district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-220
* group[=].element[=].display = "Bekobod tumani"
* group[=].element[=].target[+].code = #1727220
* group[=].element[=].target[=].display = "Bekobod district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-224
* group[=].element[=].display = "Bo‘stonliq tumani"
* group[=].element[=].target[+].code = #1727224
* group[=].element[=].target[=].display = "Bostonliq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-228
* group[=].element[=].display = "Bo‘ka tumani"
* group[=].element[=].target[+].code = #1727228
* group[=].element[=].target[=].display = "Buka district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-233
* group[=].element[=].display = "Quyi Chirchiq tumani"
* group[=].element[=].target[+].code = #1727233
* group[=].element[=].target[=].display = "Kuyi Chirchik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-237
* group[=].element[=].display = "Zangiota tumani"
* group[=].element[=].target[+].code = #1727237
* group[=].element[=].target[=].display = "Zangiota district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-239
* group[=].element[=].display = "Yuqori Chirchiq tumani"
* group[=].element[=].target[+].code = #1727239
* group[=].element[=].target[=].display = "Yukori Chirchik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-248
* group[=].element[=].display = "Qibray tumani"
* group[=].element[=].target[+].code = #1727248
* group[=].element[=].target[=].display = "Qibray district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-249
* group[=].element[=].display = "Parkent tumani"
* group[=].element[=].target[+].code = #1727249
* group[=].element[=].target[=].display = "Parkent district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-250
* group[=].element[=].display = "Pskent tumani"
* group[=].element[=].target[+].code = #1727250
* group[=].element[=].target[=].display = "Piskent district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-253
* group[=].element[=].display = "O‘rta Chirchiq tumani"
* group[=].element[=].target[+].code = #1727253
* group[=].element[=].target[=].display = "Orta Chirchik district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-256
* group[=].element[=].display = "Chinoz tumani"
* group[=].element[=].target[+].code = #1727256
* group[=].element[=].target[=].display = "Chinoz district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-259
* group[=].element[=].display = "Yangiyo‘l tumani"
* group[=].element[=].target[+].code = #1727259
* group[=].element[=].target[=].display = "Yangiyol district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-265
* group[=].element[=].display = "Toshkent tumani"
* group[=].element[=].target[+].code = #1727265
* group[=].element[=].target[=].display = "Tashkent district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-401
* group[=].element[=].display = "Nurafshon shaxri"
* group[=].element[=].target[+].code = #1727401
* group[=].element[=].target[=].display = "Nurafshon city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-404
* group[=].element[=].display = "Olmaliq shahri"
* group[=].element[=].target[+].code = #1727404
* group[=].element[=].target[=].display = "Almalyk city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-407
* group[=].element[=].display = "Angren shahri"
* group[=].element[=].target[+].code = #1727407
* group[=].element[=].target[=].display = "Angren city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-413
* group[=].element[=].display = "Bekobod shahri"
* group[=].element[=].target[+].code = #1727413
* group[=].element[=].target[=].display = "Bekobod city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-415
* group[=].element[=].display = "Oxangaron shaxri"
* group[=].element[=].target[+].code = #1727415
* group[=].element[=].target[=].display = "Akhangaron city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-419
* group[=].element[=].display = "Chirchiq shahri"
* group[=].element[=].target[+].code = #1727419
* group[=].element[=].target[=].display = "Chirchik city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #TO-424
* group[=].element[=].display = "Yangiyul shaxri"
* group[=].element[=].target[+].code = #1727424
* group[=].element[=].target[=].display = "Yangiyol city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-204
* group[=].element[=].display = "Bog‘ot tumani"
* group[=].element[=].target[+].code = #1733204
* group[=].element[=].target[=].display = "Bogot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-208
* group[=].element[=].display = "Gurlan tumani"
* group[=].element[=].target[+].code = #1733208
* group[=].element[=].target[=].display = "Gurlan district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-212
* group[=].element[=].display = "Qo‘shko‘pir tumani"
* group[=].element[=].target[+].code = #1733212
* group[=].element[=].target[=].display = "Qoshkopir district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-217
* group[=].element[=].display = "Urganch tumani"
* group[=].element[=].target[+].code = #1733217
* group[=].element[=].target[=].display = "Urgench district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-220
* group[=].element[=].display = "Xazorasp tumani"
* group[=].element[=].target[+].code = #1733220
* group[=].element[=].target[=].display = "Hazorasp district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-221
* group[=].element[=].display = "Tuproqqal’a tumani"
* group[=].element[=].target[+].code = #1733221
* group[=].element[=].target[=].display = "Tuproqqala district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-223
* group[=].element[=].display = "Xonqa tumani"
* group[=].element[=].target[+].code = #1733223
* group[=].element[=].target[=].display = "Khonka district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-226
* group[=].element[=].display = "Xiva tumani"
* group[=].element[=].target[+].code = #1733226
* group[=].element[=].target[=].display = "Khiva district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-230
* group[=].element[=].display = "Shovot tumani"
* group[=].element[=].target[+].code = #1733230
* group[=].element[=].target[=].display = "Shovot district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-233
* group[=].element[=].display = "Yangiariq tumani"
* group[=].element[=].target[+].code = #1733233
* group[=].element[=].target[=].display = "Yangiariq district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-236
* group[=].element[=].display = "Yangibozor tumani"
* group[=].element[=].target[+].code = #1733236
* group[=].element[=].target[=].display = "Yangibozor district"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-401
* group[=].element[=].display = "Urganch shahri"
* group[=].element[=].target[+].code = #1733401
* group[=].element[=].target[=].display = "Urgench city"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #XO-406
* group[=].element[=].display = "Xiva shahri"
* group[=].element[=].target[+].code = #1733406
* group[=].element[=].target[=].display = "Khiva city"
* group[=].element[=].target[=].relationship = #equivalent
