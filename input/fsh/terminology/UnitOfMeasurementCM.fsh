Instance: unit-of-measurement-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Unit of Measurement Map"
Description: "Maps local UZ unit codes to UCUM standards."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/unit-of-measurement-cm"
* name = "UnitOfMeasurementMap"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(UnitOfMeasurementCS)
* group.target = $ucum

* group.element[+].code = #253
* group.element[=].display = "foiz"
* group.element[=].target[+].code = #"%"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #314
* group.element[=].display = "nanogramm"
* group.element[=].target[+].code = #"ng"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #303
* group.element[=].display = "mikrolitr"
* group.element[=].target[+].code = #"uL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #315
* group.element[=].display = "nanolitr"
* group.element[=].target[+].code = #"nL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #320
* group.element[=].display = "rezerford"
* group.element[=].target[+].code = #"Rd"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #721
* group.element[=].display = "grey"
* group.element[=].target[+].code = #"Gy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #286
* group.element[=].display = "kilokaloriya"
* group.element[=].target[+].code = #"kCal"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #310
* group.element[=].display = "millimol"
* group.element[=].target[+].code = #"mmol"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #304
* group.element[=].display = "mikromol"
* group.element[=].target[+].code = #"umol"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #316
* group.element[=].display = "nanomol"
* group.element[=].target[+].code = #"nmol"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #319
* group.element[=].display = "osmol"
* group.element[=].target[+].code = #"osm"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #313
* group.element[=].display = "milliosmol"
* group.element[=].target[+].code = #"mosm"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #840
* group.element[=].display = "massa foizi"
* group.element[=].target[+].code = #"%{mass}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #1220
* group.element[=].display = "hajm foizi"
* group.element[=].target[+].code = #"%{vol}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #280
* group.element[=].display = "tomchi"
* group.element[=].target[+].code = #"[drp]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #264
* group.element[=].display = "ulush"
* group.element[=].target[+].code = #"{fraction}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #262
* group.element[=].display = "doza"
* group.element[=].target[+].code = #"{dose}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #287
* group.element[=].display = "hujayra"
* group.element[=].target[+].code = #"{Cells}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #306
* group.element[=].display = "mln hujayra"
* group.element[=].target[+].code = #"10*6.{cell}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #307
* group.element[=].display = "mlrd hujayra"
* group.element[=].target[+].code = #"10*9.{cell}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #309
* group.element[=].display = "mlrd spor"
* group.element[=].target[+].code = #"10*9.{spore}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #259
* group.element[=].display = "millilitrda gramm"
* group.element[=].target[+].code = #"g/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #298
* group.element[=].display = "millilitrda milligramm"
* group.element[=].target[+].code = #"mg/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #302
* group.element[=].display = "millilitrda mikrogramm"
* group.element[=].target[+].code = #"ug/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #296
* group.element[=].display = "grammda milligramm"
* group.element[=].target[+].code = #"mg/g"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #311
* group.element[=].display = "litrda millimol"
* group.element[=].target[+].code = #"mmol/L"
* group.element[=].target[=].relationship = #equivalent

// #317 (optik birlik) - not matched

* group.element[+].code = #282
* group.element[=].display = "kvadrat santimetr"
* group.element[=].target[+].code = #"cm2"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #300
* group.element[=].display = "millilitr"
* group.element[=].target[+].code = #"mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #291
* group.element[=].display = "litr"
* group.element[=].target[+].code = #"L"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #295
* group.element[=].display = "milligramm"
* group.element[=].target[+].code = #"mg"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #258
* group.element[=].display = "gramm"
* group.element[=].target[+].code = #"g"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #301
* group.element[=].display = "mikrogramm"
* group.element[=].target[+].code = #"ug"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #283
* group.element[=].display = "kilogramm"
* group.element[=].target[+].code = #"kg"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #261
* group.element[=].display = "joul"
* group.element[=].target[+].code = #"J"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #284
* group.element[=].display = "kilojoul"
* group.element[=].target[+].code = #"kJ"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #260
* group.element[=].display = "gigabekkerel"
* group.element[=].target[+].code = #"GBq"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #281
* group.element[=].display = "kilobekkerel"
* group.element[=].target[+].code = #"kBq"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #294
* group.element[=].display = "megabekkerel"
* group.element[=].target[+].code = #"MBq"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #312
* group.element[=].display = "mol"
* group.element[=].target[+].code = #"mol"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #257
* group.element[=].display = "bekkerel"
* group.element[=].target[+].code = #"Bq"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #252
* group.element[=].display = "dona"
* group.element[=].target[+].code = #"{#}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #263
* group.element[=].display = "oʻrtacha samarali immunizatsiya qilingan doza miqdori"
* group.element[=].target[+].code = #"RAD"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #271
* group.element[=].display = "loyqalik birligi"
* group.element[=].target[+].code = #"[NTU]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #265
* group.element[=].display = "biologik faollikning taʼsir birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #323
* group.element[=].display = "shartli birlik"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #285
* group.element[=].display = "kallikreinni faolsizlantirish birligi"
* group.element[=].target[+].code = #"{KIU}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #293
* group.element[=].display = "lipoprotein-lipaza birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #254
* group.element[=].display = "antigenik birlik"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #642
* group.element[=].display = "titrlash birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #256
* group.element[=].display = "antitripsin birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #279
* group.element[=].display = "immunoferment tahlili birligi"
* group.element[=].target[+].code = #"[ELU]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #255
* group.element[=].display = "antitrombotik taʼsirning xalqaro birligi"
* group.element[=].target[+].code = #"[anti'Xa'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #322
* group.element[=].display = "toʻqimalarning 50% sitopatik dozasi"
* group.element[=].target[+].code = #"[TCID_50]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #292
* group.element[=].display = "yarimletal doza birligi"
* group.element[=].target[+].code = #"{LD_50}"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #266
* group.element[=].display = "Elayza biologik faolligining taʼsir birligi"
* group.element[=].target[+].code = #"[ELU]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #275
* group.element[=].display = "yarim yuqumli doza birligi"
* group.element[=].target[+].code = #"[CCID_50]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #327
* group.element[=].display = "yarim patologik oʻzgarishlarning doza birliklari"
* group.element[=].target[+].code = #"[EID_50]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #325
* group.element[=].display = "yarimsitopatik taʼsir birligi dozasi"
* group.element[=].target[+].code = #"[TCID_50]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #274
* group.element[=].display = "bogʻlash birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #277
* group.element[=].display = "reaktivlik indeksi (standartlashtirishning biologik birligi)"
* group.element[=].target[+].code = #"[IR]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #267
* group.element[=].display = "antigen birligi"
* group.element[=].target[+].code = #"[arb'U]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #270
* group.element[=].display = "millilitrda biologik faollikning taʼsir birligi"
* group.element[=].target[+].code = #"[arb'U]/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #269
* group.element[=].display = "millilitrda oqsil azot birligi"
* group.element[=].target[+].code = #"[PNU]/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #278
* group.element[=].display = "reaktivlik indeksi (standartizatsiya biologik birligi)/ml"
* group.element[=].target[+].code = #"[IR]/mL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #273
* group.element[=].display = "D-antigen birligi"
* group.element[=].target[+].code = #"[D'ag'U]"
* group.element[=].target[=].relationship = #equivalent