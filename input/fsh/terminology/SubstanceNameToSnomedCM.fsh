Instance: substance-name-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Substance name to SNOMED CT"
Description: "Maps national substance name codes to related SNOMED CT concepts. A national code that is narrower than a SNOMED CT concept is sent with that broader concept as a second coding; a code that is broader than a SNOMED CT concept is only mapped."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/substance-name-to-snomed"
* name = "SubstanceNameToSnomed"
* status = #draft
* experimental = true
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(SubstanceNamesVS)
* targetScopeCanonical = $sct-vs
* group.source = Canonical(SubstanceNamesCS)
* group.target = $sct

* group.element[+].code = #sbnam-0001-00002
* group.element[=].display = "Tabiiy uzum vinosi (stol vinosi)"
* group.element[=].target[+].code = #35748005
* group.element[=].target[=].display = "Wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00003
* group.element[=].display = "Likyor vinosi (Desert)"
* group.element[=].target[+].code = #228982004
* group.element[=].target[=].display = "Fortified wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00004
* group.element[=].display = "Likyor vinosi (Mustahkamlangan)"
* group.element[=].target[+].code = #228982004
* group.element[=].target[=].display = "Fortified wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00008
* group.element[=].display = "Maxsus vodka (Damlangan)"
* group.element[=].target[+].code = #226064009
* group.element[=].target[=].display = "Vodka"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00009
* group.element[=].display = "Maxsus vodka (Xushbo'y)"
* group.element[=].target[+].code = #226064009
* group.element[=].target[=].display = "Vodka"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00011
* group.element[=].display = "Vinoli distillyatlar (Brendi)"
* group.element[=].target[+].code = #226019007
* group.element[=].target[=].display = "Brandy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00012
* group.element[=].display = "Vinoli distillyatlar (Konyak)"
* group.element[=].target[+].code = #226019007
* group.element[=].target[=].display = "Brandy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00013
* group.element[=].display = "Kalvados"
* group.element[=].target[+].code = #226019007
* group.element[=].target[=].display = "Brandy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00015
* group.element[=].display = "Raqi va boshqa meva distillyatlari"
* group.element[=].target[+].code = #6524003
* group.element[=].target[=].display = "Distilled spirits"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00016
* group.element[=].display = "Tayyor past gradusli alkogolli kokteyllar"
* group.element[=].target[+].code = #608772009
* group.element[=].target[=].display = "Cocktail"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00023
* group.element[=].display = "Filtrlanmagan pivo"
* group.element[=].target[+].code = #53410008
* group.element[=].target[=].display = "Beer"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00024
* group.element[=].display = "To'q rangli filtrlangan pivo"
* group.element[=].target[+].code = #53410008
* group.element[=].target[=].display = "Beer"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00026
* group.element[=].display = "Rom distillyatlari"
* group.element[=].target[+].code = #226054000
* group.element[=].target[=].display = "Rum"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00027
* group.element[=].display = "Sambuka"
* group.element[=].target[+].code = #226038003
* group.element[=].target[=].display = "Liqueur"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00028
* group.element[=].display = "Arpabodiyon spirtli ichimliklar"
* group.element[=].target[+].code = #6524003
* group.element[=].target[=].display = "Distilled spirits"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00030
* group.element[=].display = "Tekila"
* group.element[=].target[+].code = #6524003
* group.element[=].target[=].display = "Distilled spirits"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00031
* group.element[=].display = "Meskal"
* group.element[=].target[+].code = #6524003
* group.element[=].target[=].display = "Distilled spirits"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00032
* group.element[=].display = "Agavadan distillyatlar"
* group.element[=].target[+].code = #6524003
* group.element[=].target[=].display = "Distilled spirits"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00033
* group.element[=].display = "Vino va mevali sharob spirtli ichimliklari"
* group.element[=].target[+].code = #35748005
* group.element[=].target[=].display = "Wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00034
* group.element[=].display = "Xushbo'y vino va boshqa spirtli ichimliklar asosidagi xushbo'y sharobli kokteyllar"
* group.element[=].target[+].code = #608772009
* group.element[=].target[=].display = "Cocktail"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00035
* group.element[=].display = "Olmadan olingan yoki tarkibida olma sharbati bo'lgan alkogolli ichimliklar, sidr va boshqa fermentlangan ichimliklar"
* group.element[=].target[+].code = #226025006
* group.element[=].target[=].display = "Hard cider"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00037
* group.element[=].display = "Xom ashyoning barcha turlari uchun vino"
* group.element[=].target[+].code = #35748005
* group.element[=].target[=].display = "Wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0001-00038
* group.element[=].display = "Uzumdan tayyorlangan likyor vinosi"
* group.element[=].target[+].code = #228982004
* group.element[=].target[=].display = "Fortified wine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00001
* group.element[=].display = "Bolalar oziq-ovqati uchun suv"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00002
* group.element[=].display = "Tabiiy davolovchi mineral suvi"
* group.element[=].target[+].code = #444695006
* group.element[=].target[=].display = "Mineral water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00003
* group.element[=].display = "Tabiiy davo-stol mineral suvi"
* group.element[=].target[+].code = #444695006
* group.element[=].target[=].display = "Mineral water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00004
* group.element[=].display = "Tabiiy stol mineral suvi"
* group.element[=].target[+].code = #444695006
* group.element[=].target[=].display = "Mineral water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00005
* group.element[=].display = "Idishlarga quyilgan ichimlik suvi"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00006
* group.element[=].display = "Markazlashmagan suv ta'minoti (Quduq)"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00007
* group.element[=].display = "Markazlashmagan suv ta'minoti (Buloq)"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00008
* group.element[=].display = "Markazlashgan suv ta'minotidagi ichimlik suv"
* group.element[=].target[+].code = #444923006
* group.element[=].target[=].display = "Tap water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00014
* group.element[=].display = "Meva-rezavor morslari"
* group.element[=].target[+].code = #1335777002
* group.element[=].target[=].display = "Fresh fruit drink"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00018
* group.element[=].display = "Ichimlik tayyorlash uchun qiyomlar"
* group.element[=].target[+].code = #229862008
* group.element[=].target[=].display = "Syrup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00020
* group.element[=].display = "Tayyor sovuq kofe"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0002-00021
* group.element[=].display = "Tayyor sovuq choy"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00001
* group.element[=].display = "Tayyor garnirlar (Guruch)"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00002
* group.element[=].display = "Tayyor garnirlar (Grechka)"
* group.element[=].target[+].code = #226723006
* group.element[=].target[=].display = "Buckwheat - cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00003
* group.element[=].display = "Yaroqlilik muddati 5 sutkadan ortiq tayyor mahsulotlar"
* group.element[=].target[+].code = #819011003
* group.element[=].target[=].display = "Prepared food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00004
* group.element[=].display = "Yaroqlilik muddati 5 sutkadan kam tayyor mahsulotlar"
* group.element[=].target[+].code = #819011003
* group.element[=].target[=].display = "Prepared food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00005
* group.element[=].display = "Umumiy ovqatlanishdan tayyor taomlar (HoReCa)"
* group.element[=].target[+].code = #819011003
* group.element[=].target[=].display = "Prepared food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00006
* group.element[=].display = "Umumiy ovqatlanishdan tayyor taomlar (Keytering)"
* group.element[=].target[+].code = #819011003
* group.element[=].target[=].display = "Prepared food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00007
* group.element[=].display = "Tayyor ikkinchi taomlar (Manti)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00011
* group.element[=].display = "Tayyor birinchi taomlar (Sho'rva)"
* group.element[=].target[+].code = #227566009
* group.element[=].target[=].display = "Soup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00012
* group.element[=].display = "Tayyor birinchi taomlar (sho'rva)"
* group.element[=].target[+].code = #227566009
* group.element[=].target[=].display = "Soup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00014
* group.element[=].display = "Tayyor birinchi taomlar (Karam sho'rva)"
* group.element[=].target[+].code = #227566009
* group.element[=].target[=].display = "Soup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00015
* group.element[=].display = "Tayyor birinchi taomlar (Xarcho)"
* group.element[=].target[+].code = #227566009
* group.element[=].target[=].display = "Soup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00016
* group.element[=].display = "Tayyor salatlar (Mayonezli)"
* group.element[=].target[+].code = #227927005
* group.element[=].target[=].display = "Salad"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00017
* group.element[=].display = "Tayyor salatlar (Mayonezsiz)"
* group.element[=].target[+].code = #227927005
* group.element[=].target[=].display = "Salad"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00018
* group.element[=].display = "Muzlatilgan tayyor taomlar"
* group.element[=].target[+].code = #819011003
* group.element[=].target[=].display = "Prepared food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00020
* group.element[=].display = "To'ldirgichli xamirli mahsulotlar (Somsa)"
* group.element[=].target[+].code = #227666000
* group.element[=].target[=].display = "Meat samosa"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00023
* group.element[=].display = "Muzlatilgan to'ldirgichli mahsulotlar (Pelmen)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00024
* group.element[=].display = "Muzlatilgan to'ldirgichli mahsulotlar (Manti)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00025
* group.element[=].display = "Muzlatilgan to'ldirgichli mahsulotlar (Varenik)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00026
* group.element[=].display = "Muzlatilgan to'ldirgichli mahsulotlar (Xinkali)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00027
* group.element[=].display = "Muzlatilgan to'ldirgichli mahsulotlar (Chuchvara)"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00029
* group.element[=].display = "Keks"
* group.element[=].target[+].code = #226639005
* group.element[=].target[=].display = "Cake"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00030
* group.element[=].display = "Muzlatilgan pitsa"
* group.element[=].target[+].code = #227757007
* group.element[=].target[=].display = "Pizza"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00031
* group.element[=].display = "Sovutilgan pitsa"
* group.element[=].target[+].code = #227757007
* group.element[=].target[=].display = "Pizza"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00032
* group.element[=].display = "Tayyor pitsa"
* group.element[=].target[+].code = #227757007
* group.element[=].target[=].display = "Pizza"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00033
* group.element[=].display = "Tezda tayyor yarim tayyor mahsulotlar (Instant vermisheli)"
* group.element[=].target[+].code = #226748009
* group.element[=].target[=].display = "Vermicelli"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00037
* group.element[=].display = "Tayyor souslar (Go'shtli)"
* group.element[=].target[+].code = #227519005
* group.element[=].target[=].display = "Sauce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00038
* group.element[=].display = "Tayyor souslar (Baliqli)"
* group.element[=].target[+].code = #227519005
* group.element[=].target[=].display = "Sauce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00039
* group.element[=].display = "Tayyor souslar (Sabzavotli)"
* group.element[=].target[+].code = #227519005
* group.element[=].target[=].display = "Sauce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0003-00041
* group.element[=].display = "Buterbrod"
* group.element[=].target[+].code = #735008002
* group.element[=].target[=].display = "Sandwich"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00001
* group.element[=].display = "6 oygacha bolalar uchun adaptlangan sut aralashmalari"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00003
* group.element[=].display = "Bolalar uchun sutli desertlar (Tvorojki)"
* group.element[=].target[+].code = #226862009
* group.element[=].target[=].display = "Quark"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00004
* group.element[=].display = "Bolalar uchun sutli desertlar (Yogurtlar)"
* group.element[=].target[+].code = #226863004
* group.element[=].target[=].display = "Yogurt"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00006
* group.element[=].display = "Bolalar uchun fito (Erish) choylari"
* group.element[=].target[+].code = #226478004
* group.element[=].target[=].display = "Herbal tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00007
* group.element[=].display = "Bolalar uchun fito (Donador) choylari"
* group.element[=].target[+].code = #226478004
* group.element[=].target[=].display = "Herbal tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00008
* group.element[=].display = "Glyutensiz bolalar yormalari (Grechka)"
* group.element[=].target[+].code = #226530002
* group.element[=].target[=].display = "Baby cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00009
* group.element[=].display = "Glyutensiz bolalar yormalari (Makkajo'xori)"
* group.element[=].target[+].code = #226530002
* group.element[=].target[=].display = "Baby cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00010
* group.element[=].display = "Bolalar uchun sutsiz yormalar"
* group.element[=].target[+].code = #226530002
* group.element[=].target[=].display = "Baby cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00011
* group.element[=].display = "Bolalar uchun tezda tayyorlanadigan sutli yormalar"
* group.element[=].target[+].code = #226530002
* group.element[=].target[=].display = "Baby cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00012
* group.element[=].display = "Mevali to'ldirgichlar bilan don asosidagi bolalar yormalari"
* group.element[=].target[+].code = #226530002
* group.element[=].target[=].display = "Baby cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00015
* group.element[=].display = "1 yoshdan oshgan bolalar uchun sut aralashmalari"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00027
* group.element[=].display = "Bolalar oziq-ovqati ishlab chiqarishga mo'ljallangan o'simlik moylari va yog'lari"
* group.element[=].target[+].code = #412552006
* group.element[=].target[=].display = "Vegetable oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00028
* group.element[=].display = "Gipoallergen aralashmalar"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00029
* group.element[=].display = "Laktozasiz aralashmalar"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00030
* group.element[=].display = "Bolalar uchun tiniqlangan meva sharbatlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00031
* group.element[=].display = "Bolalar uchun mevali (mag'izli) meva sharbatlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00033
* group.element[=].display = "Bolalar suxariklari"
* group.element[=].target[+].code = #226531003
* group.element[=].target[=].display = "Rusk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0004-00035
* group.element[=].display = "Echki suti asosidagi quruq sut aralashmalari"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00001
* group.element[=].display = "Eritilgan qo'y yog'i"
* group.element[=].target[+].code = #226898001
* group.element[=].target[=].display = "Dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00003
* group.element[=].display = "Eritilgan echki yog'i"
* group.element[=].target[+].code = #226898001
* group.element[=].target[=].display = "Dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00004
* group.element[=].display = "Eritilgan ot yog'i"
* group.element[=].target[+].code = #226898001
* group.element[=].target[=].display = "Dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00015
* group.element[=].display = "Buterbrod margarinlar"
* group.element[=].target[+].code = #226890008
* group.element[=].target[=].display = "Margarine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00016
* group.element[=].display = "Yumshoq margarinlar"
* group.element[=].target[+].code = #226890008
* group.element[=].target[=].display = "Margarine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00017
* group.element[=].display = "Sanoat margarini (Non pishirish)"
* group.element[=].target[+].code = #226890008
* group.element[=].target[=].display = "Margarine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00018
* group.element[=].display = "Sanoat margarini (Qandolatchilik uchun)"
* group.element[=].target[+].code = #226890008
* group.element[=].target[=].display = "Margarine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00019
* group.element[=].display = "Stol margarini"
* group.element[=].target[+].code = #226890008
* group.element[=].target[=].display = "Margarine"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00022
* group.element[=].display = "Danak moyi (Uzum va boshq.)"
* group.element[=].target[+].code = #229932003
* group.element[=].target[=].display = "Grapeseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00023
* group.element[=].display = "Rafinatlanmagan makkajo'xori moyi"
* group.element[=].target[+].code = #735247006
* group.element[=].target[=].display = "Corn oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00024
* group.element[=].display = "Rafinatlangan makkajo'xori moyi"
* group.element[=].target[+].code = #735247006
* group.element[=].target[=].display = "Corn oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00025
* group.element[=].display = "Pomas zaytun moyi"
* group.element[=].target[+].code = #41834005
* group.element[=].target[=].display = "Olive oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00026
* group.element[=].display = "Rafinatlanmagan zaytun moyi (Extra Virgin)"
* group.element[=].target[+].code = #41834005
* group.element[=].target[=].display = "Olive oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00027
* group.element[=].display = "Rafinatlanmagan palma yog'i"
* group.element[=].target[+].code = #226907001
* group.element[=].target[=].display = "Palm oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00028
* group.element[=].display = "Rafinatlangan palma yog'i"
* group.element[=].target[+].code = #226907001
* group.element[=].target[=].display = "Palm oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00030
* group.element[=].display = "Rafinatlanmagan kungaboqar moyi"
* group.element[=].target[+].code = #226912000
* group.element[=].target[=].display = "Sunflowerseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00031
* group.element[=].display = "Rafinatlangan kungaboqar moyi"
* group.element[=].target[+].code = #226912000
* group.element[=].target[=].display = "Sunflowerseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00032
* group.element[=].display = "Rafinatlanmagan raps moyi"
* group.element[=].target[+].code = #226908006
* group.element[=].target[=].display = "Rapeseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00033
* group.element[=].display = "Rafinatlangan raps moyi"
* group.element[=].target[+].code = #226908006
* group.element[=].target[=].display = "Rapeseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00035
* group.element[=].display = "Rafinatlanmagan paxta yog'i"
* group.element[=].target[+].code = #82450006
* group.element[=].target[=].display = "Cottonseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00036
* group.element[=].display = "Rafinatlangan paxta yog'i"
* group.element[=].target[+].code = #82450006
* group.element[=].target[=].display = "Cottonseed oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00039
* group.element[=].display = "Mayonez sousi"
* group.element[=].target[+].code = #227549007
* group.element[=].target[=].display = "Mayonnaise"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00040
* group.element[=].display = "O'simlik-yog' spredi"
* group.element[=].target[+].code = #226889004
* group.element[=].target[=].display = "Blended spread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00041
* group.element[=].display = "O'simlik-qaymoq spredi"
* group.element[=].target[+].code = #226889004
* group.element[=].target[=].display = "Blended spread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00043
* group.element[=].display = "O'simlik moylari va yog'lari"
* group.element[=].target[+].code = #412552006
* group.element[=].target[=].display = "Vegetable oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0005-00046
* group.element[=].display = "Yog'li va yog'-moyli spredlar"
* group.element[=].target[+].code = #226889004
* group.element[=].target[=].display = "Blended spread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00003
* group.element[=].display = "Iste'mol dukkaklilari: soya (don)"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00004
* group.element[=].display = "Iste'mol dukkaklilari: loviya (quruq)"
* group.element[=].target[+].code = #256354006
* group.element[=].target[=].display = "Bean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00006
* group.element[=].display = "Tezda tayyor vermisheli"
* group.element[=].target[+].code = #226748009
* group.element[=].target[=].display = "Vermicelli"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00012
* group.element[=].display = "Grechka yormasi (Yadritsa)"
* group.element[=].target[+].code = #226723006
* group.element[=].target[=].display = "Buckwheat - cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00013
* group.element[=].display = "Grechka yormasi (Prodel)"
* group.element[=].target[+].code = #226723006
* group.element[=].target[=].display = "Buckwheat - cereal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00014
* group.element[=].display = "Makkajo'xori yormasi"
* group.element[=].target[+].code = #229948002
* group.element[=].target[=].display = "Cornmeal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00015
* group.element[=].display = "Suli yormasi"
* group.element[=].target[+].code = #418504009
* group.element[=].target[=].display = "Oat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00016
* group.element[=].display = "Bug'doy yormasi (Poltavkaya)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00017
* group.element[=].display = "Bug'doy yormasi (Artek)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00018
* group.element[=].display = "Tariq yormasi"
* group.element[=].target[+].code = #264337003
* group.element[=].target[=].display = "Seed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00019
* group.element[=].display = "Guruch yormasi (Maydalangan)"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00020
* group.element[=].display = "Guruch yormasi (Silliqlangan)"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00021
* group.element[=].display = "Arpa yormalari (yacheviy)"
* group.element[=].target[+].code = #735124003
* group.element[=].target[=].display = "Barley"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00022
* group.element[=].display = "Iste'mol makkajo'xorisi (don)"
* group.element[=].target[+].code = #1290190002
* group.element[=].target[=].display = "Corn kernels"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00023
* group.element[=].display = "Makkajo'xori xlopyalari va tayyor nonushtalar"
* group.element[=].target[+].code = #226604005
* group.element[=].target[=].display = "Cornflakes"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00024
* group.element[=].display = "Quruq lag'mon"
* group.element[=].target[+].code = #226735005
* group.element[=].target[=].display = "Noodles"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00025
* group.element[=].display = "Ugra"
* group.element[=].target[+].code = #226735005
* group.element[=].target[=].display = "Noodles"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00026
* group.element[=].display = "Osiyo lag'moni"
* group.element[=].target[+].code = #226735005
* group.element[=].target[=].display = "Noodles"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00027
* group.element[=].display = "Makaron mahsulotlari (Lag'mon)"
* group.element[=].target[+].code = #226735005
* group.element[=].target[=].display = "Noodles"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00032
* group.element[=].display = "Makkajo'xori uni"
* group.element[=].target[+].code = #229948002
* group.element[=].target[=].display = "Cornmeal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00034
* group.element[=].display = "Makaron uchun bug'doy uni (krupka)"
* group.element[=].target[+].code = #226732008
* group.element[=].target[=].display = "Semolina"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00035
* group.element[=].display = "Non pishirish uchun bug'doy uni oliy nav"
* group.element[=].target[+].code = #229944000
* group.element[=].target[=].display = "Wheat flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00036
* group.element[=].display = "Non pishirish uchun bug'doy uni 1-nav"
* group.element[=].target[+].code = #229944000
* group.element[=].target[=].display = "Wheat flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00037
* group.element[=].display = "Non pishirish uchun bug'doy uni 2-nav"
* group.element[=].target[+].code = #229944000
* group.element[=].target[=].display = "Wheat flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00038
* group.element[=].display = "Javdar uni (Saralangan)"
* group.element[=].target[+].code = #229940009
* group.element[=].target[=].display = "Rye flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00039
* group.element[=].display = "Javdar uni (Qipiqli)"
* group.element[=].target[+].code = #229940009
* group.element[=].target[=].display = "Rye flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00040
* group.element[=].display = "Javdar uni (Butun)"
* group.element[=].target[+].code = #229940009
* group.element[=].target[=].display = "Rye flour"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00044
* group.element[=].display = "Iste'mol sulisi"
* group.element[=].target[+].code = #418504009
* group.element[=].target[=].display = "Oat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00045
* group.element[=].display = "Suli kepagi"
* group.element[=].target[+].code = #391858005
* group.element[=].target[=].display = "Bran"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00046
* group.element[=].display = "Javdar kepagi"
* group.element[=].target[+].code = #391858005
* group.element[=].target[=].display = "Bran"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00047
* group.element[=].display = "Guruch kepagi"
* group.element[=].target[+].code = #391858005
* group.element[=].target[=].display = "Bran"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00053
* group.element[=].display = "Pryaniklar"
* group.element[=].target[+].code = #226658001
* group.element[=].target[=].display = "Gingerbread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00054
* group.element[=].display = "Kovrijkalar"
* group.element[=].target[+].code = #226658001
* group.element[=].target[=].display = "Gingerbread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00056
* group.element[=].display = "Iste'mol bug'doyi (yumshoq)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00057
* group.element[=].display = "Qattiq bug'doy (durum)"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00058
* group.element[=].display = "Tozalanmagan sholi (paddi)"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00059
* group.element[=].display = "Bug'lab qayta ishlangan guruch"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00060
* group.element[=].display = "Iste'mol javdari"
* group.element[=].target[+].code = #412068007
* group.element[=].target[=].display = "Rye"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00062
* group.element[=].display = "Shirin bulochkalar (Keks)"
* group.element[=].target[+].code = #226639005
* group.element[=].target[=].display = "Cake"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00066
* group.element[=].display = "Suxari va grenkalar"
* group.element[=].target[+].code = #226531003
* group.element[=].target[=].display = "Rusk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00068
* group.element[=].display = "Parhez non (Diabetik)"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00069
* group.element[=].display = "Parhez non (Glyutensiz)"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00070
* group.element[=].display = "Parhez non (Oqsilsiz)"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00071
* group.element[=].display = "O'zbek obi noni"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00072
* group.element[=].display = "Lavash"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00073
* group.element[=].display = "Sandiq noni"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00074
* group.element[=].display = "1-nav undan bug'doy noni"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00075
* group.element[=].display = "2-nav undan bug'doy noni"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00076
* group.element[=].display = "Javdar-bug'doy noni"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00077
* group.element[=].display = "Qoliplangan non"
* group.element[=].target[+].code = #226559002
* group.element[=].target[=].display = "Bread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00079
* group.element[=].display = "Iste'mol arpasi"
* group.element[=].target[+].code = #735124003
* group.element[=].target[=].display = "Barley"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00080
* group.element[=].display = "Qayta ishlanmagan makkajo'xori doni"
* group.element[=].target[+].code = #1290190002
* group.element[=].target[=].display = "Corn kernels"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00084
* group.element[=].display = "Don va don ekinlari"
* group.element[=].target[+].code = #264331002
* group.element[=].target[=].display = "Grain"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00086
* group.element[=].display = "Makkajo'xori doni"
* group.element[=].target[+].code = #1290190002
* group.element[=].target[=].display = "Corn kernels"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00088
* group.element[=].display = "Makkajo'xori iste'mol uchun"
* group.element[=].target[+].code = #412357001
* group.element[=].target[=].display = "Corn"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00090
* group.element[=].display = "Makkajo'xori asosida tayyor nonushta"
* group.element[=].target[+].code = #226604005
* group.element[=].target[=].display = "Cornflakes"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00092
* group.element[=].display = "Don va don ekinlari iste'mol uchun"
* group.element[=].target[+].code = #264331002
* group.element[=].target[=].display = "Grain"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00093
* group.element[=].display = "Don va don ekinlari asosida manniy yormasi"
* group.element[=].target[+].code = #226732008
* group.element[=].target[=].display = "Semolina"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00094
* group.element[=].display = "Don va don ekinlari asosida kepak"
* group.element[=].target[+].code = #391858005
* group.element[=].target[=].display = "Bran"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00095
* group.element[=].display = "Maydalangan javdar"
* group.element[=].target[+].code = #412068007
* group.element[=].target[=].display = "Rye"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0006-00096
* group.element[=].display = "Bug'doy doni"
* group.element[=].target[+].code = #412071004
* group.element[=].target[=].display = "Wheat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0007-00007
* group.element[=].display = "Dorivor yig'malar va fitochaylar"
* group.element[=].target[+].code = #226478004
* group.element[=].target[=].display = "Herbal tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0007-00008
* group.element[=].display = "Dorivor barglar (Yalpiz)"
* group.element[=].target[+].code = #230037009
* group.element[=].target[=].display = "Mint - herb"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0007-00012
* group.element[=].display = "Meva va urug'lar (Namatak)"
* group.element[=].target[+].code = #710226003
* group.element[=].target[=].display = "Rose hip"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0007-00013
* group.element[=].display = "Meva va urug'lar (Do'lana)"
* group.element[=].target[+].code = #763200007
* group.element[=].target[=].display = "Common hawthorn"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0007-00018
* group.element[=].display = "Quruq dorivor o'tlar (Chabrets)"
* group.element[=].target[+].code = #227413009
* group.element[=].target[=].display = "Thyme"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00001
* group.element[=].display = "Muzlatilgan sut desertlari"
* group.element[=].target[+].code = #227708009
* group.element[=].target[=].display = "Ice cream"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00002
* group.element[=].display = "Tabiiy yogurt"
* group.element[=].target[+].code = #226863004
* group.element[=].target[=].display = "Yogurt"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00011
* group.element[=].display = "Krestyan va lubitelskiy sariyog'"
* group.element[=].target[+].code = #226888007
* group.element[=].target[=].display = "Butter"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00013
* group.element[=].display = "Pasterlangan ichimlik suti"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00015
* group.element[=].display = "Ultrapasterlangan (UYUT) ichimlik suti"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00018
* group.element[=].display = "Sigir xom suti"
* group.element[=].target[+].code = #3718001
* group.element[=].target[=].display = "Cow's milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00019
* group.element[=].display = "Sutli/qaymoqli muzqaymoq"
* group.element[=].target[+].code = #227708009
* group.element[=].target[=].display = "Ice cream"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00020
* group.element[=].display = "Plombir muzqaymoq"
* group.element[=].target[+].code = #227708009
* group.element[=].target[=].display = "Ice cream"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00021
* group.element[=].display = "Mevali muzqaymoq"
* group.element[=].target[+].code = #227708009
* group.element[=].target[=].display = "Ice cream"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00028
* group.element[=].display = "Sariyog'-o'simlik spredi"
* group.element[=].target[+].code = #226889004
* group.element[=].target[=].display = "Blended spread"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00030
* group.element[=].display = "6 oygacha bolalar uchun quruq sut aralashmalari"
* group.element[=].target[+].code = #386127005
* group.element[=].target[=].display = "Formula milk"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00032
* group.element[=].display = "Xom sutdan tayyorlangan pishloq"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00033
* group.element[=].display = "Dudlangan pishloq"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00034
* group.element[=].display = "Yarim qattiq pishloq"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00035
* group.element[=].display = "Tuzlama pishloq (Brinza)"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00036
* group.element[=].display = "Tuzlama pishloq (Suluguni)"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00037
* group.element[=].display = "Tuzlama pishloq (Chanaq)"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00038
* group.element[=].display = "Tuzlama pishloq (Motal)"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0008-00039
* group.element[=].display = "Pasterlangan sutdan tayyorlangan yangi pishmagan pishloq"
* group.element[=].target[+].code = #102264005
* group.element[=].target[=].display = "Cheese"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00004
* group.element[=].display = "Qo'y go'shti (Tushalar)"
* group.element[=].target[+].code = #710184005
* group.element[=].target[=].display = "Mutton"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00005
* group.element[=].display = "Qo'y go'shti (Yarim tushalar)"
* group.element[=].target[+].code = #710184005
* group.element[=].target[=].display = "Mutton"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00006
* group.element[=].display = "Muzlatilgan qo'y go'shti"
* group.element[=].target[+].code = #710184005
* group.element[=].target[=].display = "Mutton"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00007
* group.element[=].display = "Sovutilgan qo'y go'shti"
* group.element[=].target[+].code = #710184005
* group.element[=].target[=].display = "Mutton"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00009
* group.element[=].display = "Mol go'shti (Tushalar)"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00010
* group.element[=].display = "Mol go'shti (Yarim tushalar)"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00011
* group.element[=].display = "Mol go'shti (Choraklar)"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00012
* group.element[=].display = "Muzlatilgan mol go'shti"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00013
* group.element[=].display = "Sovutilgan mol go'shti"
* group.element[=].target[+].code = #226916002
* group.element[=].target[=].display = "Beef"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00015
* group.element[=].display = "Iste'mol uchun eritilgan yog'lar (Mol)"
* group.element[=].target[+].code = #229852001
* group.element[=].target[=].display = "Beef dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00016
* group.element[=].display = "Iste'mol uchun eritilgan yog'lar (Qo'y)"
* group.element[=].target[+].code = #226898001
* group.element[=].target[=].display = "Dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00017
* group.element[=].display = "Iste'mol uchun eritilgan yog'lar (Cho'chqa)"
* group.element[=].target[+].code = #226899009
* group.element[=].target[=].display = "Lard"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00018
* group.element[=].display = "Iste'mol uchun eritilgan yog'lar (Ot)"
* group.element[=].target[+].code = #226898001
* group.element[=].target[=].display = "Dripping"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00024
* group.element[=].display = "Qaynatib-dudlangan kolbasalar"
* group.element[=].target[+].code = #227020009
* group.element[=].target[=].display = "Sausage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00025
* group.element[=].display = "Qaynatilgan kolbasalar"
* group.element[=].target[+].code = #227020009
* group.element[=].target[=].display = "Sausage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00026
* group.element[=].display = "Yarim dudlangan kolbasalar"
* group.element[=].target[+].code = #227020009
* group.element[=].target[=].display = "Sausage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00027
* group.element[=].display = "Xom-quritilgan kolbasalar"
* group.element[=].target[+].code = #227018006
* group.element[=].target[=].display = "Salami"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00028
* group.element[=].display = "Xom-dudlangan kolbasalar"
* group.element[=].target[+].code = #227018006
* group.element[=].target[=].display = "Salami"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00033
* group.element[=].display = "Yovvoyi hayvonlar go'shti"
* group.element[=].target[+].code = #226971001
* group.element[=].target[=].display = "Game - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00034
* group.element[=].display = "Yovvoyi parrandalar go'shti"
* group.element[=].target[+].code = #226971001
* group.element[=].target[=].display = "Game - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00036
* group.element[=].display = "Parranda go'shti (Tovuq)"
* group.element[=].target[+].code = #226955001
* group.element[=].target[=].display = "Chicken - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00037
* group.element[=].display = "Parranda go'shti (Tushka)"
* group.element[=].target[+].code = #28230009
* group.element[=].target[=].display = "Poultry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00039
* group.element[=].display = "Muzlatilgan parranda go'shti"
* group.element[=].target[+].code = #28230009
* group.element[=].target[=].display = "Poultry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00040
* group.element[=].display = "Mexanik suyaksizlantirilgan parranda go'shti"
* group.element[=].target[+].code = #28230009
* group.element[=].target[=].display = "Poultry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00041
* group.element[=].display = "Sovutilgan parranda go'shti"
* group.element[=].target[+].code = #28230009
* group.element[=].target[=].display = "Poultry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00043
* group.element[=].display = "Chuchvara"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00044
* group.element[=].display = "Manti"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00045
* group.element[=].display = "Xinkali"
* group.element[=].target[+].code = #227755004
* group.element[=].target[=].display = "Dumpling"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00051
* group.element[=].display = "Cho'chqa go'shti (Tushalar)"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00052
* group.element[=].display = "Cho'chqa go'shti (Yarim tushalar)"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00053
* group.element[=].display = "Muzlatilgan cho'chqa go'shti"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00054
* group.element[=].display = "Sovutilgan cho'chqa go'shti"
* group.element[=].target[+].code = #226934003
* group.element[=].target[=].display = "Pork"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00055
* group.element[=].display = "Qo'y subhmahsulotlari"
* group.element[=].target[+].code = #226982009
* group.element[=].target[=].display = "Offal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00058
* group.element[=].display = "Mol jigari"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00059
* group.element[=].display = "Mol buyragi"
* group.element[=].target[+].code = #226987003
* group.element[=].target[=].display = "Kidney - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00060
* group.element[=].display = "Mol yuragi"
* group.element[=].target[+].code = #226983004
* group.element[=].target[=].display = "Heart - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00061
* group.element[=].display = "Parranda subhmahsulotlari (Jigar)"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00063
* group.element[=].display = "Parranda subhmahsulotlari (Yurak)"
* group.element[=].target[+].code = #226983004
* group.element[=].target[=].display = "Heart - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00064
* group.element[=].display = "Cho'chqa subhmahsulotlari"
* group.element[=].target[+].code = #226982009
* group.element[=].target[=].display = "Offal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00067
* group.element[=].display = "Broyler tushkalari"
* group.element[=].target[+].code = #226955001
* group.element[=].target[=].display = "Chicken - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00068
* group.element[=].display = "Go'shtli somsa va chebureklar"
* group.element[=].target[+].code = #227666000
* group.element[=].target[=].display = "Meat samosa"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00074
* group.element[=].display = "Qoramol qo'shimcha submahsulotlari"
* group.element[=].target[+].code = #226982009
* group.element[=].target[=].display = "Offal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00076
* group.element[=].display = "Qo'y jigari"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00077
* group.element[=].display = "Cho'chqa jigari"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00078
* group.element[=].display = "Parranda jigari"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00079
* group.element[=].display = "Otlarning jigari"
* group.element[=].target[+].code = #226991008
* group.element[=].target[=].display = "Liver - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00081
* group.element[=].display = "Qo'y buyragi"
* group.element[=].target[+].code = #226987003
* group.element[=].target[=].display = "Kidney - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00082
* group.element[=].display = "Cho'chqa buyragi"
* group.element[=].target[+].code = #226987003
* group.element[=].target[=].display = "Kidney - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00083
* group.element[=].display = "Parranda buyragi"
* group.element[=].target[+].code = #226987003
* group.element[=].target[=].display = "Kidney - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00084
* group.element[=].display = "Otlarning buyragi"
* group.element[=].target[+].code = #226987003
* group.element[=].target[=].display = "Kidney - meat"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0009-00086
* group.element[=].display = "Cho'chqa yog'i"
* group.element[=].target[+].code = #226899009
* group.element[=].target[=].display = "Lard"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0010-00004
* group.element[=].display = "Madaniylashtirilgan veshenka"
* group.element[=].target[+].code = #1268404004
* group.element[=].target[=].display = "Oyster mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00005
* group.element[=].display = "Yovvoyi iste'mol qo'ziqorinlari"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00006
* group.element[=].display = "Konservalangan qo'ziqorinlar"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00007
* group.element[=].display = "Tuzlangan qo'ziqorinlar"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00008
* group.element[=].display = "Marinovkalangan qo'ziqorinlar"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00009
* group.element[=].display = "Quritilgan qo'ziqorinlar"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00011
* group.element[=].display = "Stol ko'kati: ukrop"
* group.element[=].target[+].code = #256331002
* group.element[=].target[=].display = "Dill"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00012
* group.element[=].display = "Ko'kat: rayhon"
* group.element[=].target[+].code = #735106000
* group.element[=].target[=].display = "Basil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00015
* group.element[=].display = "Ko'kat: rozmarin"
* group.element[=].target[+].code = #227410007
* group.element[=].target[=].display = "Rosemary"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00016
* group.element[=].display = "Ko'kat: rukkola (himoyalangan tuproq)"
* group.element[=].target[+].code = #999486261000087101
* group.element[=].target[=].display = "Arugula"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00017
* group.element[=].display = "Ko'kat: rukkola (ochiq tuproq)"
* group.element[=].target[+].code = #999486261000087101
* group.element[=].target[=].display = "Arugula"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00018
* group.element[=].display = "Ko'kat: timyan"
* group.element[=].target[+].code = #227413009
* group.element[=].target[=].display = "Thyme"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00019
* group.element[=].display = "Chabrets"
* group.element[=].target[+].code = #227413009
* group.element[=].target[=].display = "Thyme"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00020
* group.element[=].display = "Ko'kat: ismaloq"
* group.element[=].target[+].code = #256329006
* group.element[=].target[=].display = "Spinach"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00022
* group.element[=].display = "Kechki oq karam"
* group.element[=].target[+].code = #227229004
* group.element[=].target[=].display = "White cabbage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00023
* group.element[=].display = "Erta oq karam"
* group.element[=].target[+].code = #227229004
* group.element[=].target[=].display = "White cabbage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00025
* group.element[=].display = "Xitoy karami (pak-choy)"
* group.element[=].target[+].code = #227225005
* group.element[=].target[=].display = "Chinese cabbage"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00026
* group.element[=].display = "Bargli karam"
* group.element[=].target[+].code = #442601000124101
* group.element[=].target[=].display = "Collard greens"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0010-00028
* group.element[=].display = "Kechki kartoshka"
* group.element[=].target[+].code = #735053000
* group.element[=].target[=].display = "Potato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00029
* group.element[=].display = "Erta kartoshka"
* group.element[=].target[+].code = #735053000
* group.element[=].target[=].display = "Potato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00030
* group.element[=].display = "Iste'mol yangi kartoshka"
* group.element[=].target[+].code = #735053000
* group.element[=].target[=].display = "Potato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00033
* group.element[=].display = "Yangi zarchava (ildiz)"
* group.element[=].target[+].code = #227414003
* group.element[=].target[=].display = "Turmeric"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00037
* group.element[=].display = "Bosh piyoz (Oq)"
* group.element[=].target[+].code = #735047000
* group.element[=].target[=].display = "Onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00038
* group.element[=].display = "Bosh piyoz (Sariq)"
* group.element[=].target[+].code = #735047000
* group.element[=].target[=].display = "Onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00039
* group.element[=].display = "Bosh piyoz (Qizil)"
* group.element[=].target[+].code = #735047000
* group.element[=].target[=].display = "Onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00040
* group.element[=].display = "Ko'k piyoz"
* group.element[=].target[+].code = #227255003
* group.element[=].target[=].display = "Spring onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00043
* group.element[=].display = "Kassava (yangi)"
* group.element[=].target[+].code = #227234000
* group.element[=].target[=].display = "Cassava"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00045
* group.element[=].display = "Konservalangan stol zaytunlari (oliva, maslin)"
* group.element[=].target[+].code = #227436000
* group.element[=].target[=].display = "Olives"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00047
* group.element[=].display = "Yangi sabzi"
* group.element[=].target[+].code = #256319004
* group.element[=].target[=].display = "Carrot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00056
* group.element[=].display = "Ochiq tuproq bodringi"
* group.element[=].target[+].code = #735213008
* group.element[=].target[=].display = "Cucumber"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00057
* group.element[=].display = "Himoyalangan tuproq bodringi"
* group.element[=].target[+].code = #735213008
* group.element[=].target[=].display = "Cucumber"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00059
* group.element[=].display = "Yangi achchiq qalampir (chili)"
* group.element[=].target[+].code = #710040007
* group.element[=].target[=].display = "Chili pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00060
* group.element[=].display = "Quritilgan achchiq qalampir"
* group.element[=].target[+].code = #710040007
* group.element[=].target[=].display = "Chili pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00061
* group.element[=].display = "Ochiq tuproq shirin bolgar qalampiri"
* group.element[=].target[+].code = #1137359008
* group.element[=].target[=].display = "Bell pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00062
* group.element[=].display = "Himoyalangan tuproq shirin bolgar qalampiri"
* group.element[=].target[+].code = #1137359008
* group.element[=].target[=].display = "Bell pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00063
* group.element[=].display = "Yangi ochiq tuproq pomidori"
* group.element[=].target[+].code = #734881000
* group.element[=].target[=].display = "Tomato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00064
* group.element[=].display = "Yangi himoyalangan tuproq pomidori"
* group.element[=].target[+].code = #734881000
* group.element[=].target[=].display = "Tomato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00065
* group.element[=].display = "Cherri pomidor"
* group.element[=].target[+].code = #734881000
* group.element[=].target[=].display = "Tomato"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00070
* group.element[=].display = "Turp"
* group.element[=].target[+].code = #256325000
* group.element[=].target[=].display = "Radish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00071
* group.element[=].display = "Bosh salat (aysberg)"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00072
* group.element[=].display = "Bargli salat (himoyalangan tuproq)"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00073
* group.element[=].display = "Bargli salat (ochiq tuproq)"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00074
* group.element[=].display = "Romen"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00075
* group.element[=].display = "Lolo"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00076
* group.element[=].display = "Frillis salatlari"
* group.element[=].target[+].code = #735042006
* group.element[=].target[=].display = "Lettuce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00078
* group.element[=].display = "Tuzlangan sabzavotlar (Bodring)"
* group.element[=].target[+].code = #227538001
* group.element[=].target[=].display = "Pickle"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00079
* group.element[=].display = "Tuzlangan sabzavotlar (Pomidor)"
* group.element[=].target[+].code = #227538001
* group.element[=].target[=].display = "Pickle"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00080
* group.element[=].display = "Tuzlangan sabzavotlar (Karam)"
* group.element[=].target[+].code = #227538001
* group.element[=].target[=].display = "Pickle"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00081
* group.element[=].display = "Pomidor souslari (garnirlar uchun)"
* group.element[=].target[+].code = #227536002
* group.element[=].target[=].display = "Tomato sauce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00082
* group.element[=].display = "Pomidor souslari (shashlik uchun)"
* group.element[=].target[+].code = #227536002
* group.element[=].target[=].display = "Tomato sauce"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00083
* group.element[=].display = "Stol qovog'i"
* group.element[=].target[+].code = #227260004
* group.element[=].target[=].display = "Pumpkin"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00084
* group.element[=].display = "Yashil dukkakli loviya"
* group.element[=].target[+].code = #256318007
* group.element[=].target[=].display = "Green bean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00085
* group.element[=].display = "Sparja loviyasi"
* group.element[=].target[+].code = #256318007
* group.element[=].target[=].display = "Green bean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00086
* group.element[=].display = "Sikoriy (Vitluf)"
* group.element[=].target[+].code = #726761001
* group.element[=].target[=].display = "Chicory"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00087
* group.element[=].display = "Sikoriy (Bargli)"
* group.element[=].target[+].code = #726761001
* group.element[=].target[=].display = "Chicory"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00088
* group.element[=].display = "Yangi sarimsoq (bosh)"
* group.element[=].target[+].code = #735030001
* group.element[=].target[=].display = "Garlic"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00089
* group.element[=].display = "Yashil sarimsoq"
* group.element[=].target[+].code = #735030001
* group.element[=].target[=].display = "Garlic"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00090
* group.element[=].display = "Konservalangan ismaloq"
* group.element[=].target[+].code = #256329006
* group.element[=].target[=].display = "Spinach"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00091
* group.element[=].display = "Muzlatilgan ismaloq"
* group.element[=].target[+].code = #256329006
* group.element[=].target[=].display = "Spinach"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00092
* group.element[=].display = "Sabzi (Erta hosil, 1-sentabrgacha)"
* group.element[=].target[+].code = #256319004
* group.element[=].target[=].display = "Carrot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00093
* group.element[=].display = "Sabzi (Kechki hosil)"
* group.element[=].target[+].code = #256319004
* group.element[=].target[=].display = "Carrot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00094
* group.element[=].display = "Tomat pastasi"
* group.element[=].target[+].code = #227274006
* group.element[=].target[=].display = "Tomato puree"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00095
* group.element[=].display = "Ko'k piyoz (Himoyalangan tuproq)"
* group.element[=].target[+].code = #227255003
* group.element[=].target[=].display = "Spring onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00096
* group.element[=].display = "Ko'k piyoz (Ochiq tuproq)"
* group.element[=].target[+].code = #227255003
* group.element[=].target[=].display = "Spring onion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00099
* group.element[=].display = "Oddiy qo'ziqorin"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00101
* group.element[=].display = "Madaniylashtiriladigan qo'ziqorinlar"
* group.element[=].target[+].code = #735045008
* group.element[=].target[=].display = "Mushroom"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00109
* group.element[=].display = "Xo'raki (oshxona) zaytunlari"
* group.element[=].target[+].code = #227436000
* group.element[=].target[=].display = "Olives"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00110
* group.element[=].display = "Konservalangan tomat pastasi"
* group.element[=].target[+].code = #227274006
* group.element[=].target[=].display = "Tomato puree"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0010-00113
* group.element[=].display = "Manioki ildizi"
* group.element[=].target[+].code = #227234000
* group.element[=].target[=].display = "Cassava"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00001
* group.element[=].display = "Qobiqli yeryong'oq"
* group.element[=].target[+].code = #762952008
* group.element[=].target[=].display = "Peanut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00002
* group.element[=].display = "Qoplangan yeryong'oq"
* group.element[=].target[+].code = #762952008
* group.element[=].target[=].display = "Peanut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00003
* group.element[=].display = "Tozalangan yeryong'oq (mag'iz)"
* group.element[=].target[+].code = #762952008
* group.element[=].target[=].display = "Peanut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00004
* group.element[=].display = "Yong'oq (qobiqli)"
* group.element[=].target[+].code = #256352005
* group.element[=].target[=].display = "Walnut - nut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00005
* group.element[=].display = "Yong'oq (mag'iz)"
* group.element[=].target[+].code = #256352005
* group.element[=].target[=].display = "Walnut - nut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00011
* group.element[=].display = "Bodom (qobiqli)"
* group.element[=].target[+].code = #256350002
* group.element[=].target[=].display = "Almond"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00012
* group.element[=].display = "Bodom (mag'iz)"
* group.element[=].target[+].code = #256350002
* group.element[=].target[=].display = "Almond"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00017
* group.element[=].display = "Xantal urug'i (yog' uchun)"
* group.element[=].target[+].code = #227406009
* group.element[=].target[=].display = "Mustard seed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00020
* group.element[=].display = "Iste'mol uchun zig'ir urug'i"
* group.element[=].target[+].code = #710178007
* group.element[=].target[=].display = "Linseed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00023
* group.element[=].display = "Iste'mol uchun soya donalari"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00024
* group.element[=].display = "Qayta ishlash uchun soya donalari"
* group.element[=].target[+].code = #256355007
* group.element[=].target[=].display = "Soybean"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00025
* group.element[=].display = "Pista (qobiqli)"
* group.element[=].target[+].code = #227512001
* group.element[=].target[=].display = "Pistachio nut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00026
* group.element[=].display = "Pista (mag'iz)"
* group.element[=].target[+].code = #227512001
* group.element[=].target[=].display = "Pistachio nut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00027
* group.element[=].display = "Funduk / o'rmon yong'og'i (qobiqli)"
* group.element[=].target[+].code = #256353000
* group.element[=].target[=].display = "Hazelnut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0011-00028
* group.element[=].display = "Funduk / o'rmon yong'og'i (mag'iz)"
* group.element[=].target[+].code = #256353000
* group.element[=].target[=].display = "Hazelnut"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00007
* group.element[=].display = "Quruq pivo achitqilari"
* group.element[=].target[+].code = #412534006
* group.element[=].target[=].display = "Yeast"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00008
* group.element[=].display = "Presslangan non achitqilari"
* group.element[=].target[+].code = #412534006
* group.element[=].target[=].display = "Yeast"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00009
* group.element[=].display = "Quruq non achitqilari"
* group.element[=].target[+].code = #412534006
* group.element[=].target[=].display = "Yeast"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00010
* group.element[=].display = "Instant non achitqilari"
* group.element[=].target[+].code = #412534006
* group.element[=].target[=].display = "Yeast"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00011
* group.element[=].display = "Quyultiruvchi va stabilizatorlar (Pektin)"
* group.element[=].target[+].code = #55946005
* group.element[=].target[=].display = "Pectin"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00012
* group.element[=].display = "Quyultiruvchi va stabilizatorlar (Agar)"
* group.element[=].target[+].code = #10249006
* group.element[=].target[=].display = "Agar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00014
* group.element[=].display = "Kartoshka kraxmali"
* group.element[=].target[+].code = #74242007
* group.element[=].target[=].display = "Food starch"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00015
* group.element[=].display = "Guruch kraxmali"
* group.element[=].target[+].code = #74242007
* group.element[=].target[=].display = "Food starch"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00016
* group.element[=].display = "Bug'doy kraxmali"
* group.element[=].target[+].code = #74242007
* group.element[=].target[=].display = "Food starch"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00017
* group.element[=].display = "Iste'mol limon kislotasi"
* group.element[=].target[+].code = #75399008
* group.element[=].target[=].display = "Citric acid"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00019
* group.element[=].display = "Pektin (Quruq)"
* group.element[=].target[+].code = #55946005
* group.element[=].target[=].display = "Pectin"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00020
* group.element[=].display = "Pektin (Suyuq)"
* group.element[=].target[+].code = #55946005
* group.element[=].target[=].display = "Pectin"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00025
* group.element[=].display = "Kislotalik regulyatorlari (Limon)"
* group.element[=].target[+].code = #75399008
* group.element[=].target[=].display = "Citric acid"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00029
* group.element[=].display = "Qizil xamirturush bilan fermentlangan guruchga asoslangan parhez qo'shimchalari"
* group.element[=].target[+].code = #67324005
* group.element[=].target[=].display = "Rice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00034
* group.element[=].display = "Meva sharbatlari hamda ishlab chiqaruvchining yo'riqnomalariga muvofiq qayta ishlanadigan"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0012-00035
* group.element[=].display = "Tunuka idishda oziq-ovqat mahsulotlari"
* group.element[=].target[+].code = #227989005
* group.element[=].target[=].display = "Canned food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[=].target[=].comment = "Only food in tin cans; canned food also covers glass jars and other sealed containers."

* group.element[+].code = #sbnam-0013-00007
* group.element[=].display = "Hind zirasi (kumin)"
* group.element[=].target[+].code = #227392001
* group.element[=].target[=].display = "Cumin seed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00008
* group.element[=].display = "Maydalangan holatidagi dolchin"
* group.element[=].target[+].code = #227388008
* group.element[=].target[=].display = "Cinnamon"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00009
* group.element[=].display = "Tayoqcha holatidagi dolchin"
* group.element[=].target[+].code = #227388008
* group.element[=].target[=].display = "Cinnamon"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00010
* group.element[=].display = "Quritilgan, maydalangan zarchava"
* group.element[=].target[+].code = #227414003
* group.element[=].target[=].display = "Turmeric"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00013
* group.element[=].display = "Muskat yong'og'i (Butun)"
* group.element[=].target[+].code = #735046009
* group.element[=].target[=].display = "Nutmeg"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00014
* group.element[=].display = "Muskat yong'og'i (Maydalangan)"
* group.element[=].target[+].code = #735046009
* group.element[=].target[=].display = "Nutmeg"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00015
* group.element[=].display = "Oq qalampir (Don)"
* group.element[=].target[+].code = #1259874000
* group.element[=].target[=].display = "White pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00016
* group.element[=].display = "Oq qalampir (Maydalangan)"
* group.element[=].target[+].code = #1259874000
* group.element[=].target[=].display = "White pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00017
* group.element[=].display = "Qora qalampir (Don)"
* group.element[=].target[+].code = #412060000
* group.element[=].target[=].display = "Black pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00018
* group.element[=].display = "Qora qalampir (Maydalangan)"
* group.element[=].target[+].code = #412060000
* group.element[=].target[=].display = "Black pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00019
* group.element[=].display = "Xantal urug'i (ziravor)"
* group.element[=].target[+].code = #227406009
* group.element[=].target[=].display = "Mustard seed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00020
* group.element[=].display = "Iste'mol tuzi (Oshxona)"
* group.element[=].target[+].code = #227564007
* group.element[=].target[=].display = "Salt - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00021
* group.element[=].display = "Iste'mol tuzi (Ekstra)"
* group.element[=].target[+].code = #227564007
* group.element[=].target[=].display = "Salt - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00022
* group.element[=].display = "Iste'mol tuzi (Yodlangan)"
* group.element[=].target[+].code = #227564007
* group.element[=].target[=].display = "Salt - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00023
* group.element[=].display = "Iste'mol tuzi (Dengiz tuzi)"
* group.element[=].target[+].code = #227564007
* group.element[=].target[=].display = "Salt - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00030
* group.element[=].display = "Salat souslari"
* group.element[=].target[+].code = #227545001
* group.element[=].target[=].display = "Salad dressing"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00031
* group.element[=].display = "Dressinglar"
* group.element[=].target[+].code = #227545001
* group.element[=].target[=].display = "Salad dressing"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00032
* group.element[=].display = "Quritilgan o'tlar: rayhon"
* group.element[=].target[+].code = #735106000
* group.element[=].target[=].display = "Basil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00035
* group.element[=].display = "Quritilgan o'tlar: ukrop"
* group.element[=].target[+].code = #256331002
* group.element[=].target[=].display = "Dill"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00040
* group.element[=].display = "Sedana (zira) urug'i"
* group.element[=].target[+].code = #227392001
* group.element[=].target[=].display = "Cumin seed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00041
* group.element[=].display = "Stol uksusi (sintetik)"
* group.element[=].target[+].code = #227565008
* group.element[=].target[=].display = "Vinegar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00043
* group.element[=].display = "Balzamik uksusi"
* group.element[=].target[+].code = #227565008
* group.element[=].target[=].display = "Vinegar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0013-00044
* group.element[=].display = "Guruch uksusi"
* group.element[=].target[+].code = #227565008
* group.element[=].target[=].display = "Vinegar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00003
* group.element[=].display = "Iste'molga tayyor qisqichbaqasimonlar va mollyuskalar (Tozalangan)"
* group.element[=].target[+].code = #735029006
* group.element[=].target[=].display = "Shellfish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00004
* group.element[=].display = "Iste'molga tayyor qisqichbaqasimonlar va mollyuskalar (Qobig'isiz)"
* group.element[=].target[+].code = #735029006
* group.element[=].target[=].display = "Shellfish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00005
* group.element[=].display = "Qizil baliq ikrasi"
* group.element[=].target[+].code = #227183005
* group.element[=].target[=].display = "Fish roe"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00006
* group.element[=].display = "Bekra balig'i ikrasi (qora)"
* group.element[=].target[+].code = #227183005
* group.element[=].target[=].display = "Fish roe"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00007
* group.element[=].display = "Boshqa baliq turlari ikrasi"
* group.element[=].target[+].code = #227183005
* group.element[=].target[=].display = "Fish roe"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00008
* group.element[=].display = "Karpsimon baliqlar (Karp)"
* group.element[=].target[+].code = #726763003
* group.element[=].target[=].display = "Carp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00009
* group.element[=].display = "Karpsimon baliqlar (Sazan)"
* group.element[=].target[+].code = #726763003
* group.element[=].target[=].display = "Carp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00010
* group.element[=].display = "Karpsimon baliqlar (Oqcha)"
* group.element[=].target[+].code = #726763003
* group.element[=].target[=].display = "Carp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00011
* group.element[=].display = "Karpsimon baliqlar (Oq amur)"
* group.element[=].target[+].code = #726763003
* group.element[=].target[=].display = "Carp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00012
* group.element[=].display = "Yog'dagi baliq konservalari"
* group.element[=].target[+].code = #227191001
* group.element[=].target[=].display = "Tinned fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00013
* group.element[=].display = "Pomidor sousidagi baliq konservalari"
* group.element[=].target[+].code = #227191001
* group.element[=].target[=].display = "Tinned fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00014
* group.element[=].display = "Tabiiy baliq konservalari"
* group.element[=].target[+].code = #227191001
* group.element[=].target[=].display = "Tinned fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00015
* group.element[=].display = "Qaynatib muzlatilgan qisqichbaqalar"
* group.element[=].target[+].code = #278840001
* group.element[=].target[=].display = "Shrimp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00016
* group.element[=].display = "Muzlatilgan qisqichbaqalar"
* group.element[=].target[+].code = #278840001
* group.element[=].target[=].display = "Shrimp"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00017
* group.element[=].display = "Iste'mol uchun dengiz suvo'tlari (Laminariya)"
* group.element[=].target[+].code = #227265009
* group.element[=].target[=].display = "Seaweed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00018
* group.element[=].display = "Iste'mol uchun dengiz suvo'tlari (Nori)"
* group.element[=].target[+].code = #227265009
* group.element[=].target[=].display = "Seaweed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00019
* group.element[=].display = "Iste'mol uchun dengiz suvo'tlari (Spirulina)"
* group.element[=].target[+].code = #715178005
* group.element[=].target[=].display = "Spirulina"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00022
* group.element[=].display = "Baliq yarimtayyor mahsulotlari (Kotletlar)"
* group.element[=].target[+].code = #227173006
* group.element[=].target[=].display = "Fishcake"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00023
* group.element[=].display = "Baliq yarimtayyor mahsulotlari (Teftellar)"
* group.element[=].target[+].code = #227173006
* group.element[=].target[=].display = "Fishcake"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00029
* group.element[=].display = "Qizil baliq turlari (Losos)"
* group.element[=].target[+].code = #735009005
* group.element[=].target[=].display = "Salmon"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00030
* group.element[=].display = "Qizil baliq turlari (Keta)"
* group.element[=].target[+].code = #735009005
* group.element[=].target[=].display = "Salmon"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00031
* group.element[=].display = "Qizil baliq turlari (Gorbusha)"
* group.element[=].target[+].code = #735009005
* group.element[=].target[=].display = "Salmon"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00032
* group.element[=].display = "Muzlatilgan dengiz balig'i"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00033
* group.element[=].display = "Yangi (sovutilgan) dengiz balig'i"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00037
* group.element[=].display = "Tirik chuchuk suv balig'i"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00038
* group.element[=].display = "Muzlatilgan chuchuk suv balig'i"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00039
* group.element[=].display = "Yangi (sovutilgan) chuchuk suv balig'i"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00040
* group.element[=].display = "Seld turlari (Anchous)"
* group.element[=].target[+].code = #735337006
* group.element[=].target[=].display = "Anchovy"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00048
* group.element[=].display = "Iste'mol uchun baliq moyi"
* group.element[=].target[+].code = #735341005
* group.element[=].target[=].display = "Fish oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00053
* group.element[=].display = "Muzlatilgan baliq filesi"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00054
* group.element[=].display = "Sovutilgan baliq filesi"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00055
* group.element[=].display = "Baliq go'shti"
* group.element[=].target[+].code = #735971005
* group.element[=].target[=].display = "Fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0014-00056
* group.element[=].display = "O'q tunets"
* group.element[=].target[+].code = #227144008
* group.element[=].target[=].display = "Tuna fish"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00005
* group.element[=].display = "Iste'mol glyukozasi"
* group.element[=].target[+].code = #67079006
* group.element[=].target[=].display = "Glucose"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00006
* group.element[=].display = "Dekstroza"
* group.element[=].target[+].code = #67079006
* group.element[=].target[=].display = "Glucose"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00013
* group.element[=].display = "Maydalangan kakao"
* group.element[=].target[+].code = #901000161107
* group.element[=].target[=].display = "Cocoa"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00014
* group.element[=].display = "Kakao donalari"
* group.element[=].target[+].code = #901000161107
* group.element[=].target[=].display = "Cocoa"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00015
* group.element[=].display = "Kakao kukuni"
* group.element[=].target[+].code = #901000161107
* group.element[=].target[=].display = "Cocoa"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00018
* group.element[=].display = "Monoflyor asal"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00019
* group.element[=].display = "Poliflyor asal"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00020
* group.element[=].display = "Tabiiy asal (Gul)"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00021
* group.element[=].display = "Tabiiy asal (Grechka)"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00022
* group.element[=].display = "Tabiiy asal (Jo'ka va boshq.)"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00023
* group.element[=].display = "Pad asali"
* group.element[=].target[+].code = #227598003
* group.element[=].target[=].display = "Honey"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00025
* group.element[=].display = "Kraxmal patokasi"
* group.element[=].target[+].code = #412064009
* group.element[=].target[=].display = "Corn syrup"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0015-00027
* group.element[=].display = "Gul changi"
* group.element[=].target[+].code = #412583005
* group.element[=].target[=].display = "Bee pollen"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00033
* group.element[=].display = "Lavlagidan olingan shakar"
* group.element[=].target[+].code = #264322002
* group.element[=].target[=].display = "Sugar - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00034
* group.element[=].display = "Rafinatlanmagan shakar (xom)"
* group.element[=].target[+].code = #264322002
* group.element[=].target[=].display = "Sugar - food"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00035
* group.element[=].display = "Oq shakar (qum)"
* group.element[=].target[+].code = #230053007
* group.element[=].target[=].display = "White sugar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00036
* group.element[=].display = "Shakar-rafinad (Bo'lakli)"
* group.element[=].target[+].code = #230053007
* group.element[=].target[=].display = "White sugar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00037
* group.element[=].display = "Shakar-rafinad (Presslangan)"
* group.element[=].target[+].code = #230053007
* group.element[=].target[=].display = "White sugar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00038
* group.element[=].display = "Agava qiyomi"
* group.element[=].target[+].code = #229862008
* group.element[=].target[=].display = "Syrup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00039
* group.element[=].display = "Invert qiyomi"
* group.element[=].target[+].code = #229862008
* group.element[=].target[=].display = "Syrup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00041
* group.element[=].display = "Shakarli o'rik qoqisi"
* group.element[=].target[+].code = #227452002
* group.element[=].target[=].display = "Dried apricot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00044
* group.element[=].display = "Qora shokolad"
* group.element[=].target[+].code = #227611001
* group.element[=].target[=].display = "Plain chocolate"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00046
* group.element[=].display = "Rafinirlangan shakar"
* group.element[=].target[+].code = #230053007
* group.element[=].target[=].display = "White sugar"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00048
* group.element[=].display = "Kakao miqdori kamida ellik foiz bo'lgan shokolad"
* group.element[=].target[+].code = #227611001
* group.element[=].target[=].display = "Plain chocolate"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00049
* group.element[=].display = "Kakao miqdori kamida yetmish foiz bo'lgan shokolad"
* group.element[=].target[+].code = #227611001
* group.element[=].target[=].display = "Plain chocolate"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0015-00051
* group.element[=].display = "Kakao miqdori kamida o'ttiz foiz bo'lgan sutli shokolad"
* group.element[=].target[+].code = #227610000
* group.element[=].target[=].display = "Milk chocolate"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00003
* group.element[=].display = "Suvo'tlar asosidagi BAQ (Spirulina)"
* group.element[=].target[+].code = #715178005
* group.element[=].target[=].display = "Spirulina"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00004
* group.element[=].display = "Suvo'tlar asosidagi BAQ (Xlorella)"
* group.element[=].target[+].code = #900053541000179104
* group.element[=].target[=].display = "Chlorella extract"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00006
* group.element[=].display = "Asalarichilik mahsulotlari asosidagi BAQ (Propolis)"
* group.element[=].target[+].code = #255970007
* group.element[=].target[=].display = "Propolis"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00007
* group.element[=].display = "Asalarichilik mahsulotlari asosidagi BAQ (Ona suti)"
* group.element[=].target[+].code = #722195007
* group.element[=].target[=].display = "Royal jelly"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00008
* group.element[=].display = "Asalarichilik mahsulotlari asosidagi BAQ (Gul changi)"
* group.element[=].target[+].code = #412583005
* group.element[=].target[=].display = "Bee pollen"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00009
* group.element[=].display = "Baliq yog'i asosidagi BAQ (Gul changi)"
* group.element[=].target[+].code = #735341005
* group.element[=].target[=].display = "Fish oil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0016-00016
* group.element[=].display = "Boyitilgan (funksional) oziq-ovqat mahsulotlari"
* group.element[=].target[+].code = #792875007
* group.element[=].target[=].display = "Fortified food"
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[=].comment = "Also covers functional foods without added nutrients, such as probiotic products."

* group.element[+].code = #sbnam-0017-00005
* group.element[=].display = "Do'lana"
* group.element[=].target[+].code = #763200007
* group.element[=].target[=].display = "Common hawthorn"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0017-00007
* group.element[=].display = "Murabbo"
* group.element[=].target[+].code = #227601008
* group.element[=].target[=].display = "Jam"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00009
* group.element[=].display = "Povidlo"
* group.element[=].target[+].code = #227601008
* group.element[=].target[=].display = "Jam"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00010
* group.element[=].display = "Konfityur"
* group.element[=].target[+].code = #227601008
* group.element[=].target[=].display = "Jam"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00012
* group.element[=].display = "Stol uzumi"
* group.element[=].target[+].code = #256317002
* group.element[=].target[=].display = "Grapes"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00013
* group.element[=].display = "Texnik uzum (vino uchun)"
* group.element[=].target[+].code = #256317002
* group.element[=].target[=].display = "Grapes"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00014
* group.element[=].display = "Yangi Olcha"
* group.element[=].target[+].code = #735248001
* group.element[=].target[=].display = "Cherry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00025
* group.element[=].display = "Meva konservalari (Qiyomli mevalar)"
* group.element[=].target[+].code = #227465006
* group.element[=].target[=].display = "Tinned fruit"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00036
* group.element[=].display = "Meva qiyomlari"
* group.element[=].target[+].code = #229862008
* group.element[=].target[=].display = "Syrup"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00037
* group.element[=].display = "Yangi olxo'ri"
* group.element[=].target[+].code = #735051003
* group.element[=].target[=].display = "Plum"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00038
* group.element[=].display = "Konsentratdan qayta tiklangan meva sharbatlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00039
* group.element[=].display = "To'g'ridan-to'g'ri presslangan meva sharbatlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00042
* group.element[=].display = "Quritilgan mevalar: bo'lakchalar (yoki tilimlar)"
* group.element[=].target[+].code = #227449005
* group.element[=].target[=].display = "Dried fruit"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00043
* group.element[=].display = "Quritilgan mevalar: kuraga"
* group.element[=].target[+].code = #227452002
* group.element[=].target[=].display = "Dried apricot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00044
* group.element[=].display = "O'rik qoqisi (danakli)"
* group.element[=].target[+].code = #227452002
* group.element[=].target[=].display = "Dried apricot"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00047
* group.element[=].display = "Unobi (Zizifus)"
* group.element[=].target[+].code = #1264515001
* group.element[=].target[=].display = "Common jujube"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #sbnam-0017-00052
* group.element[=].display = "Xurmo (Yapon)"
* group.element[=].target[+].code = #227447007
* group.element[=].target[=].display = "Sharon fruit"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00053
* group.element[=].display = "Xurmo (Xitoy)"
* group.element[=].target[+].code = #227447007
* group.element[=].target[=].display = "Sharon fruit"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00055
* group.element[=].display = "Yangi gilos"
* group.element[=].target[+].code = #735248001
* group.element[=].target[=].display = "Cherry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00056
* group.element[=].display = "Qora gilos"
* group.element[=].target[+].code = #735248001
* group.element[=].target[=].display = "Cherry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00057
* group.element[=].display = "Qizil gilos"
* group.element[=].target[+].code = #735248001
* group.element[=].target[=].display = "Cherry"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00059
* group.element[=].display = "Yangi olma"
* group.element[=].target[+].code = #735215001
* group.element[=].target[=].display = "Apple"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00060
* group.element[=].display = "Meva sharbatlari, konsentrlangan o'z holatiga keltirilgan meva sharbatlari va nektarlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00061
* group.element[=].display = "Rezavor va mayda meva sharbatlari"
* group.element[=].target[+].code = #129560007
* group.element[=].target[=].display = "Fruit juice"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0017-00064
* group.element[=].display = "Quritilgan mevalar va ularni qayta ishlash mahsulotlari"
* group.element[=].target[+].code = #227449005
* group.element[=].target[=].display = "Dried fruit"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00002
* group.element[=].display = "Erish kakao"
* group.element[=].target[+].code = #226026007
* group.element[=].target[=].display = "Cocoa drink"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00003
* group.element[=].display = "Kofe kapsulalari va chaldlari"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00004
* group.element[=].display = "Qovurilgan kofe doni"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00005
* group.element[=].display = "Xom kofe doni"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00006
* group.element[=].display = "Maydalangan kofe"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00007
* group.element[=].display = "Erish kofe (Kukunli)"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00008
* group.element[=].display = "Erish kofe (Sublimirovkalangan)"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00009
* group.element[=].display = "Erish kofe (Donador)"
* group.element[=].target[+].code = #29263009
* group.element[=].target[=].display = "Coffee"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00011
* group.element[=].display = "Xushbo'y choy (qo'shimchalar bilan)"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00012
* group.element[=].display = "Oq choy"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00013
* group.element[=].display = "Bir martalik idishlarda tayyor iste'mol choyi"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00014
* group.element[=].display = "Paket choy"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00015
* group.element[=].display = "Pu-er choyi"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00017
* group.element[=].display = "Yig'malar"
* group.element[=].target[+].code = #226478004
* group.element[=].target[=].display = "Herbal tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00018
* group.element[=].display = "Yosh bolalar uchun o'simlik choyi"
* group.element[=].target[+].code = #226478004
* group.element[=].target[=].display = "Herbal tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00019
* group.element[=].display = "Ulun choyi"
* group.element[=].target[+].code = #16313001
* group.element[=].target[=].display = "Tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00020
* group.element[=].display = "Qora bargli choy"
* group.element[=].target[+].code = #226476000
* group.element[=].target[=].display = "Black tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0018-00021
* group.element[=].display = "Qora donador choy (CTC)"
* group.element[=].target[+].code = #226476000
* group.element[=].target[=].display = "Black tea"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00001
* group.element[=].display = "Mayonez va tuxumli souslar"
* group.element[=].target[+].code = #227549007
* group.element[=].target[=].display = "Mayonnaise"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00002
* group.element[=].display = "Suyuq tuxum melanji"
* group.element[=].target[+].code = #414074006
* group.element[=].target[=].display = "Egg product"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00003
* group.element[=].display = "Muzlatilgan tuxum melanji"
* group.element[=].target[+].code = #414074006
* group.element[=].target[=].display = "Egg product"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00004
* group.element[=].display = "G'oz tuxumi"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Eggs (edible)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00005
* group.element[=].display = "Kurka tuxumi"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Eggs (edible)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00006
* group.element[=].display = "Tovuq dietik tuxumi"
* group.element[=].target[+].code = #286550009
* group.element[=].target[=].display = "Hen's egg"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00007
* group.element[=].display = "Iste'mol tovuq tuxumi"
* group.element[=].target[+].code = #286550009
* group.element[=].target[=].display = "Hen's egg"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00008
* group.element[=].display = "Bedana tuxumi"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Eggs (edible)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00009
* group.element[=].display = "Tuyaqush tuxumi"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Eggs (edible)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0019-00010
* group.element[=].display = "O'rdak tuxumi"
* group.element[=].target[+].code = #102263004
* group.element[=].target[=].display = "Eggs (edible)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0020-00003
* group.element[=].display = "Zig'ir"
* group.element[=].target[+].code = #710178007
* group.element[=].target[=].display = "Linseed"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0020-00006
* group.element[=].display = "Qizil shirin butun garimdori"
* group.element[=].target[+].code = #1137359008
* group.element[=].target[=].display = "Bell pepper"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0020-00007
* group.element[=].display = "Oddiy qovoq"
* group.element[=].target[+].code = #227260004
* group.element[=].target[=].display = "Pumpkin"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0031-00001
* group.element[=].display = "Suv ta'minoti tarmog'i (iste'molchi krani)"
* group.element[=].target[+].code = #444923006
* group.element[=].target[=].display = "Tap water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0031-00002
* group.element[=].display = "Toza suv rezervuari (TSR)"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0031-00003
* group.element[=].display = "Suv olish kolonkasi"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0032-00001
* group.element[=].display = "Shaxta quduq"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0032-00002
* group.element[=].display = "Buloq (kaptaj)"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0032-00003
* group.element[=].display = "Quduq (burg'ulangan)"
* group.element[=].target[+].code = #890302005
* group.element[=].target[=].display = "Potable water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0033-00001
* group.element[=].display = "Havza vannasi (kattalar / sport)"
* group.element[=].target[+].code = #446278008
* group.element[=].target[=].display = "Swimming pool water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0033-00002
* group.element[=].display = "Bolalar havzasi vannasi"
* group.element[=].target[+].code = #446278008
* group.element[=].target[=].display = "Swimming pool water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0033-00003
* group.element[=].display = "Akvapark havzasi (to'lqinli havzalar, sirpanchiq tushish zonalari)"
* group.element[=].target[+].code = #446278008
* group.element[=].target[=].display = "Swimming pool water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0033-00004
* group.element[=].display = "Kiruvchi suv (tozalashdan oldin / suv tayyorlashdan keyin)"
* group.element[=].target[+].code = #446278008
* group.element[=].target[=].display = "Swimming pool water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0034-00001
* group.element[=].display = "Daryo"
* group.element[=].target[+].code = #5024000
* group.element[=].target[=].display = "Fresh water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0034-00002
* group.element[=].display = "Ko'l / Suv ombori"
* group.element[=].target[+].code = #5024000
* group.element[=].target[=].display = "Fresh water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0034-00003
* group.element[=].display = "Ariq tarmog'i / Kanal"
* group.element[=].target[+].code = #5024000
* group.element[=].target[=].display = "Fresh water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0035-00001
* group.element[=].display = "Artezian quduq"
* group.element[=].target[+].code = #5024000
* group.element[=].target[=].display = "Fresh water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0036-00001
* group.element[=].display = "Sanoat oqava suvlari"
* group.element[=].target[+].code = #264327008
* group.element[=].target[=].display = "Waste water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0036-00002
* group.element[=].display = "Oqava suvlar (tozalashdan oldin)"
* group.element[=].target[+].code = #264327008
* group.element[=].target[=].display = "Waste water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0036-00003
* group.element[=].display = "Oqava suvlar (tozalashdan keyin)"
* group.element[=].target[+].code = #264327008
* group.element[=].target[=].display = "Waste water"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0037-00001
* group.element[=].display = "Turar-joy hududi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0037-00002
* group.element[=].display = "Dam olish zonasi / Park / Skver"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0037-00003
* group.element[=].display = "Avtomagistralga tutash hudud"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0038-00001
* group.element[=].display = "Sanitariya-himoya zonasi (SHZ)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0039-00001
* group.element[=].display = "Sanoat maydonchasi hududi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0040-00001
* group.element[=].display = "Ishlab chiqarish sexi / Uchastka"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0040-00002
* group.element[=].display = "Ombor xonasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0040-00003
* group.element[=].display = "Mashinist / operator kabinasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00001
* group.element[=].display = "Ofis / Ma'muriy xona"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00002
* group.element[=].display = "O'quv auditoriyasi / Sinf xonasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00003
* group.element[=].display = "O'yin/yotoq xonasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00004
* group.element[=].display = "Yashash xonasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00005
* group.element[=].display = "Operatsion / muolaja xonasi"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00006
* group.element[=].display = "Davolash-profilaktika muassasasi xonalari"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00007
* group.element[=].display = "Operatsiya xonalari, tug'ruq zallari, gematologik va kuyish bilan kasallangan bemorlar uchun aseptik bokslar, muddatidan oldin tug'ilgan bolalar palatalari, dorixonalarning aseptik bloki, sterilizatsiya xonasi (toza qismi), bakteriologik laboratoriya bokslar (Ish boshlanishidan oldin)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00008
* group.element[=].display = "Operatsiya xonalari, tug'ruq zallari, gematologik va kuyish bilan kasallangan bemorlar uchun aseptik bokslar, muddatidan oldin tug'ilgan bolalar palatalari, dorixonalarning aseptik bloki, sterilizatsiya xonasi (toza qismi), bakteriologik laboratoriya bokslar (Ishdan keyin yoki ish vaqtida)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00009
* group.element[=].display = "Protsedura xonalari, bog'lov xonalari, operatsiyadan oldingi xonalar, reanimatsiya palatalari va zallari, bolalar palatalari, dorixonalarning yordamchi va qadoqlash xonalari, bakteriologik va klinik laboratoriyalarning tadqiqotlar o'tkazish uchun mo'ljallangan xonalari (Ish boshlanishidan oldin)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00010
* group.element[=].display = "Protsedura xonalari, bog'lov xonalari, operatsiyadan oldingi xonalar, reanimatsiya palatalari va zallari, bolalar palatalari, dorixonalarning yordamchi va qadoqlash xonalari, bakteriologik va klinik laboratoriyalarning tadqiqotlar o'tkazish uchun mo'ljallangan xonalari (Ish vaqtida)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00011
* group.element[=].display = "Jarrohlik bo'limlari palatalari, koridorlar, operatsiya xonalari va tug'ruq zallariga tutash xonalar, ko'rik xonalari, yuqumli kasalliklar bo'limlarining boks va palatalari, somatik palatalar, ordinator xonalari, moddiy-texnik xonalar, toza choyshablar saqlanadigan omborxonalar (Ish boshlanishidan oldin)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0041-00012
* group.element[=].display = "Jarrohlik bo'limlari palatalari, koridorlar, operatsiya xonalari va tug'ruq zallariga tutash xonalar, ko'rik xonalari, yuqumli kasalliklar bo'limlarining boks va palatalari, somatik palatalar, ordinator xonalari, moddiy-texnik xonalar, toza choyshablar saqlanadigan omborxonalar (Ish vaqtida)"
* group.element[=].target[+].code = #15158005
* group.element[=].target[=].display = "Air"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0043-00001
* group.element[=].display = "Bolalar / O'yin maydonchasi"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0043-00002
* group.element[=].display = "Uy atrofi hudud"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0043-00003
* group.element[=].display = "Bolalar maktabgacha / maktab muassasalari hududi"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0044-00001
* group.element[=].display = "Haydalma yer (sug'oriladigan yerlar)"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0044-00002
* group.element[=].display = "Bog' / Tokzor"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0044-00003
* group.element[=].display = "Issiqxona tuprog'i"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0044-00004
* group.element[=].display = "Yaylov"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0045-00001
* group.element[=].display = "Suv olish inshootlari hududida"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0045-00002
* group.element[=].display = "Oqova suvlarni tozalash inshootlari hududida"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0046-00001
* group.element[=].display = "Sanoat korxonasi hududi"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0046-00002
* group.element[=].display = "Qattiq maishiy chiqindilar poligoni (QMCH)"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0046-00003
* group.element[=].display = "Avtomoy yoqilg'i quyish shaxobchasi (AYQSH) hududi"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0047-00001
* group.element[=].display = "Sanoat obyekti SHZ"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #sbnam-0047-00002
* group.element[=].display = "Suv olish inshooti SHZ (sanitariya-himoya zonasi)"
* group.element[=].target[+].code = #415555003
* group.element[=].target[=].display = "Soil"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
