Instance: lab-analytes-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Diagnostic Codes to LOINC"
Description: "Maps local UZ diagnostic codes to LOINC codes for laboratory observations."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/lab-analytes-to-loinc"
* name = "AnalytesCodeToLoinc"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationLabAnalytesCodesCS)
* sourceScopeCanonical = Canonical(ObservationCodesVS)
* group.target = $loinc
* targetScopeCanonical = $loinc

* group.element[+].code = #lab-258
* group.element[=].display = "Zardob yoki plazmadagi D vitamini + metabolitlari [Mass/hajm]"
* group.element[=].target[+].code = #35365-6
* group.element[=].target[=].display = "Vitamin D+Metabolites [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-259
* group.element[=].display = "Zardob yoki plazmadagi androstenedion [mol/hajm]"
* group.element[=].target[+].code = #14603-5
* group.element[=].target[=].display = "Androstenedione [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-260
* group.element[=].display = "24 soatlik siydikda 5-gidroksiindoleasetat [mol/hajm]"
* group.element[=].target[+].code = #25971-3
* group.element[=].target[=].display = "5-Hydroxyindoleacetate [Moles/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-261
* group.element[=].display = "24 soatlik siydikda serotonin [Mass/vaqt]"
* group.element[=].target[+].code = #18253-5
* group.element[=].target[=].display = "Serotonin [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-262
* group.element[=].display = "Zardob yoki plazmadagi 5'-nukleotidaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1690-7
* group.element[=].target[=].display = "5'-Nucleotidase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-263
* group.element[=].display = "11-zardob yoki plazmadagi deoksikortizol [mol/hajm]"
* group.element[=].target[+].code = #14567-2
* group.element[=].target[=].display = "11-Deoxycortisol [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-264
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm]"
* group.element[=].target[+].code = #1668-3
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-265
* group.element[=].display = "25-Hidroksivitamin D2+25-Hidroksivitamin D3 [Mass/hajm] zardob yoki plazmadagi immunoassay orqali"
* group.element[=].target[+].code = #83070-3
* group.element[=].target[=].display = "25-Hydroxyvitamin D2+25-Hydroxyvitamin D3 [Mass/volume] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-266
* group.element[=].display = "Qondagi adenozin deaminaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1722-8
* group.element[=].target[=].display = "Adenosine deaminase [Enzymatic activity/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-267
* group.element[=].display = "Tana suyuqligidagi adenozin deaminaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #9404-5
* group.element[=].target[=].display = "Adenosine deaminase [Enzymatic activity/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-268
* group.element[=].display = "Tana suyuqligidagi adenozin deaminaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #9404-5
* group.element[=].target[=].display = "Adenosine deaminase [Enzymatic activity/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-269
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm]"
* group.element[=].target[+].code = #2141-0
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-270
* group.element[=].display = "Koagulyatsiya tahlili orqali qonda faollashtirilgan ivish vaqti"
* group.element[=].target[+].code = #3184-9
* group.element[=].target[=].display = "Activated clotting time in Blood by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-271
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar past plazmasida faollashtirilgan protein C qarshiligi [Vaqt nisbati]"
* group.element[=].target[+].code = #13590-5
* group.element[=].target[=].display = "Activated protein C resistance [Time Ratio] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-272
* group.element[=].display = "P-5'-P holda zardob yoki plazmadagi alanin aminotransferaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1744-2
* group.element[=].target[=].display = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma by Without P-5'-P"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-273
* group.element[=].display = "Zardob yoki plazmadagi albumin [Mass/hajm]"
* group.element[=].target[+].code = #1751-7
* group.element[=].target[=].display = "Albumin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-274
* group.element[=].display = "Siydikdagi mikroalbumin/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #14959-1
* group.element[=].target[=].display = "Microalbumin/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-275
* group.element[=].display = "24 soatlik siydikda mikroalbumin [Mass/vaqt]"
* group.element[=].target[+].code = #14956-7
* group.element[=].target[=].display = "Microalbumin [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-276
* group.element[=].display = "Tana suyuqligidagi albumin [Mass/hajm]"
* group.element[=].target[+].code = #1747-5
* group.element[=].target[=].display = "Albumin [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-277
* group.element[=].display = "Zardob yoki plazmadagi aldolaz [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1761-6
* group.element[=].target[=].display = "Aldolase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-278
* group.element[=].display = "Zardob yoki plazmadagi aldosteron [massa/hajm]"
* group.element[=].target[+].code = #1763-2
* group.element[=].target[=].display = "Aldosterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-279
* group.element[=].display = "Siydikdagi aldosteron [mol/hajm]"
* group.element[=].target[+].code = #15010-2
* group.element[=].target[=].display = "Aldosterone [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-280
* group.element[=].display = "Zardob yoki plazmadagi alfa 1 antitripsin [Mass/hajm]"
* group.element[=].target[+].code = #1825-9
* group.element[=].target[=].display = "Alpha 1 antitrypsin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-281
* group.element[=].display = "Zardob yoki plazmadagi alfa-2-makroglobulin [Mass/hajm]"
* group.element[=].target[+].code = #1835-8
* group.element[=].target[=].display = "Alpha-2-Macroglobulin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-282
* group.element[=].display = "Zardob yoki plazmadagi alfa-1-fetoprotein [Mass/hajm]"
* group.element[=].target[+].code = #1834-1
* group.element[=].target[=].display = "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-283
* group.element[=].display = "Amniotik suyuqlikdagi alfa-1-fetoprotein [birliklar/hajm]"
* group.element[=].target[+].code = #19171-8
* group.element[=].target[=].display = "Alpha-1-Fetoprotein [Units/volume] in Amniotic fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-284
* group.element[=].display = "Zardob yoki plazmadagi gidroksidi fosfataza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #6768-6
* group.element[=].target[=].display = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-285
* group.element[=].display = "Issiqlik barqarorligi bilan zardob yoki plazmadagi gidroksidi fosfataza izoenzimlari [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #16182-8
* group.element[=].target[=].display = "Alkaline phosphatase isoenzymes [Enzymatic activity/volume] in Serum or Plasma by Heat stability"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-286
* group.element[=].display = "Qon zardobidagi yoki plazmadagi ishqoriy fosfataza.bone/ishqoriy fosfataza.jami"
* group.element[=].target[+].code = #15013-6
* group.element[=].target[=].display = "Alkaline phosphatase.bone/Alkaline phosphatase.total in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-287
* group.element[=].display = "Zardob yoki plazmadagi alyuminiy [mol/hajm]"
* group.element[=].target[+].code = #14593-8
* group.element[=].target[=].display = "Aluminum [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-288
* group.element[=].display = "Zardob yoki plazmadagi amilaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1798-8
* group.element[=].target[=].display = "Amylase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-289
* group.element[=].display = "Siydikdagi amilaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1799-6
* group.element[=].target[=].display = "Amylase [Enzymatic activity/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-290
* group.element[=].display = "24 soatlik siydikda amilaza [fermentativ faollik/vaqt]"
* group.element[=].target[+].code = #1800-2
* group.element[=].target[=].display = "Amylase [Enzymatic activity/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-291
* group.element[=].display = "Tana suyuqligidagi amilaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1795-4
* group.element[=].target[=].display = "Amylase [Enzymatic activity/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-292
* group.element[=].display = "Zardob yoki plazmadagi amiloid A [Mass/hajm]"
* group.element[=].target[+].code = #48498-0
* group.element[=].target[=].display = "Amyloid A [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-293
* group.element[=].display = "Plazmadagi ammiak [Mass/hajm]"
* group.element[=].target[+].code = #22763-7
* group.element[=].target[=].display = "Ammonia [Mass/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-294
* group.element[=].display = "Zardob yoki plazmadagi angiotenzinga aylantiruvchi ferment [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2742-5
* group.element[=].target[=].display = "Angiotensin converting enzyme [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-295
* group.element[=].display = "Immunoassay orqali Zardob yoki plazmadagi beta 2 glikoprotein 1 IgA Ab [birliklar/hajm]"
* group.element[=].target[+].code = #44447-1
* group.element[=].target[=].display = "Beta 2 glycoprotein 1 IgA Ab [Units/volume] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-296
* group.element[=].display = "Immunoassay orqali Zardob yoki plazmadagi beta 2 glikoprotein 1 IgG Ab [birliklar/hajm]"
* group.element[=].target[+].code = #44448-9
* group.element[=].target[=].display = "Beta 2 glycoprotein 1 IgG Ab [Units/volume] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-297
* group.element[=].display = "Immunoassay orqali Zardob yoki plazmadagi beta 2 glikoprotein 1 IgM Ab [birliklar/hajm]"
* group.element[=].target[+].code = #44449-7
* group.element[=].target[=].display = "Beta 2 glycoprotein 1 IgM Ab [Units/volume] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-298
* group.element[=].display = "Plazmadagi vazopressin [Mass/hajm]"
* group.element[=].target[+].code = #3126-0
* group.element[=].target[=].display = "Vasopressin [Mass/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-299
* group.element[=].display = "Zardobdagi teri Ab [titer]"
* group.element[=].target[+].code = #66878-0
* group.element[=].target[=].display = "Skin Ab [Titer] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-300
* group.element[=].display = "Zardob yoki plazmadagi Myullerian inhibe qiluvchi modda [mol/hajm]"
* group.element[=].target[+].code = #48377-6
* group.element[=].target[=].display = "Mullerian inhibiting substance [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-301
* group.element[=].display = "Zardobdagi streptolizin O Ab [titer]"
* group.element[=].target[+].code = #22568-0
* group.element[=].target[=].display = "Streptolysin O Ab [Titer] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-302
* group.element[=].display = "Immunologik usul bilan trombotsitlar kambag'al plazmasida Antitrombin Ag [Mass/hajm]"
* group.element[=].target[+].code = #1868-9
* group.element[=].target[=].display = "Antithrombin Ag [Mass/volume] in Platelet poor plasma by Immunologic method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-303
* group.element[=].display = "Zardob yoki plazmadagi apolipoprotein A-III [Mass/hajm]"
* group.element[=].target[+].code = #1878-8
* group.element[=].target[=].display = "Apolipoprotein A-III [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-304
* group.element[=].display = "Zardob yoki plazmadagi apolipoprotein A-III [Mass/hajm]"
* group.element[=].target[+].code = #1878-8
* group.element[=].target[=].display = "Apolipoprotein A-III [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-305
* group.element[=].display = "Zardob yoki plazmadagi apolipoprotein B-100 [Mass/hajm]"
* group.element[=].target[+].code = #1871-3
* group.element[=].target[=].display = "Apolipoprotein B-100 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-306
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar kam plazmasida faollashtirilgan qisman tromboplastin vaqti (aPTT)"
* group.element[=].target[+].code = #14979-9
* group.element[=].target[=].display = "Activated partial thromboplastin time (aPTT) in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-307
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar kam plazmasida faollashtirilgan qisman tromboplastin vaqti (aPTT)"
* group.element[=].target[+].code = #14979-9
* group.element[=].target[=].display = "Activated partial thromboplastin time (aPTT) in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-308
* group.element[=].display = "Zardob yoki plazmadagi arilsulfataz [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1901-8
* group.element[=].target[=].display = "Arylsulfatase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-309
* group.element[=].display = "Aniqlanmagan namunadagi mishyak [mavjudligi]"
* group.element[=].target[+].code = #43815-0
* group.element[=].target[=].display = "Arsenic [Presence] in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-310
* group.element[=].display = "Aniqlanmagan namunadagi kislota fosfataza tartratiga chidamli [Mavjudligi]"
* group.element[=].target[+].code = #18190-9
* group.element[=].target[=].display = "Acid phosphatase tartrate resistant [Presence] in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-311
* group.element[=].display = "Zardob yoki plazmadagi aspartat aminotransferaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1920-8
* group.element[=].target[=].display = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-312
* group.element[=].display = "Zardob yoki plazmadagi mis [mol/hajm]"
* group.element[=].target[+].code = #14665-4
* group.element[=].target[=].display = "Copper [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-313
* group.element[=].display = "Mis [Moles/vaqt] 24 soat ichida Siydik"
* group.element[=].target[+].code = #14666-2
* group.element[=].target[=].display = "Copper [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-314
* group.element[=].display = "Siydikdagi choriogonadotropin [birliklar/hajm]"
* group.element[=].target[+].code = #25372-4
* group.element[=].target[=].display = "Choriogonadotropin [Units/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-315
* group.element[=].display = "Zardob yoki plazmadagi Choriogonadotropin.beta sub birligi [Birliklar/hajm]"
* group.element[=].target[+].code = #21198-7
* group.element[=].target[=].display = "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-316
* group.element[=].display = "Zardobdagi beta-2-mikroglobulin [Mass/hajm]"
* group.element[=].target[+].code = #1952-1
* group.element[=].target[=].display = "Beta-2-Microglobulin [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-317
* group.element[=].display = "Siydikdagi beta-2-mikroglobulin [Mass/hajm]"
* group.element[=].target[+].code = #1953-9
* group.element[=].target[=].display = "Beta-2-Microglobulin [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-318
* group.element[=].display = "Miya orqa miya suyuqligidagi beta-2 transferrin [Mass/hajm]"
* group.element[=].target[+].code = #53559-1
* group.element[=].target[=].display = "Beta-2 transferrin [Mass/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-319
* group.element[=].display = "Zardobdagi bikarbonat [mol/hajm]"
* group.element[=].target[+].code = #1963-8
* group.element[=].target[=].display = "Bicarbonate [Moles/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-320
* group.element[=].display = "Bilirubin.direct [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #1968-7
* group.element[=].target[=].display = "Bilirubin.direct [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-321
* group.element[=].display = "Bilirubin. Tana suyuqligidagi konjugatsiyalangan [Mass/hajm]"
* group.element[=].target[+].code = #33458-1
* group.element[=].target[=].display = "Bilirubin.conjugated [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-322
* group.element[=].display = "Qon zardobidagi yoki plazmadagi bilirubin.jami [Mass/hajm]"
* group.element[=].target[+].code = #1975-2
* group.element[=].target[=].display = "Bilirubin.total [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-323
* group.element[=].display = "Bilirubin.tana suyuqligidagi jami [Mass/hajm]"
* group.element[=].target[+].code = #1974-5
* group.element[=].target[=].display = "Bilirubin.total [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-324
* group.element[=].display = "Zardob yoki plazmadagi biotinidaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1982-8
* group.element[=].target[=].display = "Biotinidase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-325
* group.element[=].display = "Zardob yoki plazmadagi biotinidaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1982-8
* group.element[=].target[=].display = "Biotinidase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-326
* group.element[=].display = "Miya orqa miya suyuqligi uchun immunoelektroforez [talqin]"
* group.element[=].target[+].code = #40685-0
* group.element[=].target[=].display = "Immunoelectrophoresis [interpretation] for Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-327
* group.element[=].display = "Toshda hisob-kitoblarni tahlil qilish [tarjima]"
* group.element[=].target[+].code = #14638-1
* group.element[=].target[=].display = "Calculus analysis [interpretation] in Stone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-328
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [Mass/hajm]"
* group.element[=].target[+].code = #2963-7
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-329
* group.element[=].display = "Zardob yoki plazmadagi C peptid [Mass/hajm] - glyukozaning oldindan dozasi"
* group.element[=].target[+].code = #58522-4
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --pre dose glucose"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-330
* group.element[=].display = "Serum yoki plazmadagi C reaktiv oqsil [Mass/hajm]"
* group.element[=].target[+].code = #1988-5
* group.element[=].target[=].display = "C reactive protein [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-331
* group.element[=].display = "Serum yoki plazmadagi C reaktiv oqsil [Mass/hajm]"
* group.element[=].target[+].code = #1988-5
* group.element[=].target[=].display = "C reactive protein [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-332
* group.element[=].display = "Qon zardobidagi yoki plazmadagi C1 esteraza inhibitori [Mass/hajm]"
* group.element[=].target[+].code = #4477-6
* group.element[=].target[=].display = "Complement C1 esterase inhibitor [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-333
* group.element[=].display = "Qon zardobidagi yoki plazmadagi C1 esteraza inhibitori [Mass/hajm]"
* group.element[=].target[+].code = #4477-6
* group.element[=].target[=].display = "Complement C1 esterase inhibitor [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-334
* group.element[=].display = "Zardob yoki plazmadagi saraton Ag 125 [Birlik/hajm]"
* group.element[=].target[+].code = #10334-1
* group.element[=].target[=].display = "Cancer Ag 125 [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-335
* group.element[=].display = "Zardob yoki plazmadagi saraton Ag 15-3 [Birlik/hajm]"
* group.element[=].target[+].code = #6875-9
* group.element[=].target[=].display = "Cancer Ag 15-3 [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-336
* group.element[=].display = "Zardob yoki plazmadagi saraton Ag 19-9 [Birlik/hajm]"
* group.element[=].target[+].code = #24108-3
* group.element[=].target[=].display = "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-337
* group.element[=].display = "Tana suyuqligidagi saraton Ag 72-4 [Birlik/hajm]"
* group.element[=].target[+].code = #34161-0
* group.element[=].target[=].display = "Cancer Ag 72-4 [Units/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-338
* group.element[=].display = "Zardob yoki plazmadagi umumiy gemolitik CH50 [Birlik/hajm] ni to'ldiring"
* group.element[=].target[+].code = #4532-8
* group.element[=].target[=].display = "Complement total hemolytic CH50 [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-339
* group.element[=].display = "Qondagi simob [Mass/hajm]"
* group.element[=].target[+].code = #5685-3
* group.element[=].target[=].display = "Mercury [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-340
* group.element[=].display = "Qondagi simob [mol/hajm]"
* group.element[=].target[+].code = #25170-2
* group.element[=].target[=].display = "Mercury [Moles/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-341
* group.element[=].display = "Zardob yoki plazmadagi sink [Mass/hajm]"
* group.element[=].target[+].code = #5763-8
* group.element[=].target[=].display = "Zinc [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-342
* group.element[=].display = "Yog 'kislotalari. Zardob yoki plazmadagi juda uzun zanjir [Moles/hajm]"
* group.element[=].target[+].code = #12215-0
* group.element[=].target[=].display = "Fatty acids.very long chain [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-343
* group.element[=].display = "Trombotsitlar past plazmasida Fibrin D-dimer FEU [Mass/hajm]"
* group.element[=].target[+].code = #48065-7
* group.element[=].target[=].display = "Fibrin D-dimer FEU [Mass/volume] in Platelet poor plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-344
* group.element[=].display = "Zardob yoki plazmadagi dehidroepiandrosteron (DHEA) [Mass/hajm]"
* group.element[=].target[+].code = #2193-1
* group.element[=].target[=].display = "Dehydroepiandrosterone (DHEA) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-345
* group.element[=].display = "Zardob yoki plazmadagi degidroepiandrosteron sulfat (DHEA-S) [Mass/hajm]"
* group.element[=].target[+].code = #2191-5
* group.element[=].target[=].display = "Dehydroepiandrosterone sulfate (DHEA-S) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-346
* group.element[=].display = "Zardob yoki plazmadagi temir [Mass/hajm]"
* group.element[=].target[+].code = #2498-4
* group.element[=].target[=].display = "Iron [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-347
* group.element[=].display = "Siydikdagi fenilketonlar [mavjudligi]"
* group.element[=].target[+].code = #2769-8
* group.element[=].target[=].display = "Phenylketones [Presence] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-348
* group.element[=].display = "Temirni bog'lash qobiliyati. Zardob yoki plazmadagi to'yinmagan [Mass/hajm]"
* group.element[=].target[+].code = #2501-5
* group.element[=].target[=].display = "Iron binding capacity.unsaturated [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-349
* group.element[=].display = "Siydikdagi deoksipiridinolin/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #13729-9
* group.element[=].target[=].display = "Deoxypyridinoline/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-350
* group.element[=].display = "Zardob yoki plazmadagi androstanolon [mol/hajm]"
* group.element[=].target[+].code = #15057-3
* group.element[=].target[=].display = "Androstanolone [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-351
* group.element[=].display = "To'qimalarning transglutaminazasi IgA Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #31017-7
* group.element[=].target[=].display = "Tissue transglutaminase IgA Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-352
* group.element[=].display = "To'qimalarning transglutaminazasi IgG Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #32998-7
* group.element[=].target[=].display = "Tissue transglutaminase IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-353
* group.element[=].display = "Ikkinchi trimestrdagi to'rtlik onaning ekrani [talqin] Zardob yoki plazma hikoyasida"
* group.element[=].target[+].code = #49092-0
* group.element[=].target[=].display = "Second trimester quad maternal screen [interpretation] in Serum or Plasma Narrative"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-354
* group.element[=].display = "Zardobdagi eozinofil katyonik oqsil (ECP) [Mass/hajm]"
* group.element[=].target[+].code = #25638-8
* group.element[=].target[=].display = "Eosinophil cationic protein (ECP) [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-355
* group.element[=].display = "Zardob yoki plazmadagi eritropoetin (EPO) [birliklar/hajm]"
* group.element[=].target[+].code = #15061-5
* group.element[=].target[=].display = "Erythropoietin (EPO) [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-356
* group.element[=].display = "Zardob yoki plazmadagi estradiol (E2) [Mass/hajm]"
* group.element[=].target[+].code = #47616-8
* group.element[=].target[=].display = "Estradiol (E2) [Mass/volume] in Serum or Plasma --1 hour post dose corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-357
* group.element[=].display = "Zardob yoki plazmadagi estradiol (E2) [Mass/hajm]"
* group.element[=].target[+].code = #24414-5
* group.element[=].target[=].display = "Estradiol (E2) [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-358
* group.element[=].display = "Zardob yoki plazmadagi estradiol (E2) [Mass/hajm]"
* group.element[=].target[+].code = #2243-4
* group.element[=].target[=].display = "Estradiol (E2) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-359
* group.element[=].display = "Zardob yoki plazmadagi estriol (E3) [Mass/hajm]"
* group.element[=].target[+].code = #2251-7
* group.element[=].target[=].display = "Estriol (E3) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-360
* group.element[=].display = "Zardob yoki plazmadagi etanol [massa/hajm]"
* group.element[=].target[+].code = #5643-2
* group.element[=].target[=].display = "Ethanol [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-361
* group.element[=].display = "Siydikda Etil glyukuronidni kesish [Mass/hajm]. Ekran usuli"
* group.element[=].target[+].code = #79239-0
* group.element[=].target[=].display = "Ethyl glucuronide cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-362
* group.element[=].display = "Serum yoki plazmadagi ferritin [Mass/hajm]"
* group.element[=].target[+].code = #2276-4
* group.element[=].target[=].display = "Ferritin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-363
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar kam plazmasida fibrinogen [Mass/hajm]"
* group.element[=].target[+].code = #3255-7
* group.element[=].target[=].display = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-364
* group.element[=].display = "Zardob yoki plazmadagi foliy kislotasi [Mass/hajm]"
* group.element[=].target[+].code = #2284-8
* group.element[=].target[=].display = "Folate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-365
* group.element[=].display = "Zardob yoki plazmadagi follitropin [birliklar/hajm]"
* group.element[=].target[+].code = #15067-2
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-366
* group.element[=].display = "Zardob yoki plazmadagi fosfat [Mass/hajm]"
* group.element[=].target[+].code = #2777-1
* group.element[=].target[=].display = "Phosphate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-367
* group.element[=].display = "Siydikdagi fosfat/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #11141-9
* group.element[=].target[=].display = "Phosphate/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-368
* group.element[=].display = "24 soatlik siydikda fosfat [Mass/vaqt]"
* group.element[=].target[+].code = #2779-7
* group.element[=].target[=].display = "Phosphate [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-369
* group.element[=].display = "Tana suyuqligidagi fosfat [Mass/hajm]"
* group.element[=].target[+].code = #12242-4
* group.element[=].target[=].display = "Phosphate [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-370
* group.element[=].display = "Zardob yoki plazmadagi fruktozamin [mol/hajm]"
* group.element[=].target[+].code = #15069-8
* group.element[=].target[=].display = "Fructosamine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-371
* group.element[=].display = "Najasdagi yog '[mavjudligi]"
* group.element[=].target[+].code = #2270-7
* group.element[=].target[=].display = "Fat [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-372
* group.element[=].display = "Zardob yoki plazmadagi gamma glutamil transferaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2324-2
* group.element[=].target[=].display = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-373
* group.element[=].display = "Zardob yoki plazmadagi gastrin [Mass/hajm]"
* group.element[=].target[+].code = #2333-3
* group.element[=].target[=].display = "Gastrin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-374
* group.element[=].display = "Siydikda choriogonadotropin (homiladorlik testi) [mavjudligi]"
* group.element[=].target[+].code = #2106-3
* group.element[=].target[=].display = "Choriogonadotropin (pregnancy test) [Presence] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-375
* group.element[=].display = "HPLC tomonidan qondagi gemoglobin A1c/gemoglobin.total"
* group.element[=].target[+].code = #17856-6
* group.element[=].target[=].display = "Hemoglobin A1c/Hemoglobin.total in Blood by HPLC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-376
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajm]"
* group.element[=].target[+].code = #2345-7
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-377
* group.element[=].display = "Siydikdagi glyukoza [massa/hajm]"
* group.element[=].target[+].code = #2350-7
* group.element[=].target[=].display = "Glucose [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-378
* group.element[=].display = "24 soatlik siydikda glyukoza [mol/hajm]"
* group.element[=].target[+].code = #25916-8
* group.element[=].target[=].display = "Glucose [Moles/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-379
* group.element[=].display = "Miya orqa miya suyuqligidagi glyukoza [Mass/hajm]"
* group.element[=].target[+].code = #2342-4
* group.element[=].target[=].display = "Glucose [Mass/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-380
* group.element[=].display = "Tana suyuqligidagi glyukoza [massa/hajm]"
* group.element[=].target[+].code = #2344-0
* group.element[=].target[=].display = "Glucose [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-381
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - ovqatdan 2 soat keyin"
* group.element[=].target[+].code = #1521-4
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --2 hours post meal"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-382
* group.element[=].display = "Qizil qon hujayralarida glyukoza-6-fosfat dehidrogenaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2357-2
* group.element[=].target[=].display = "Glucose-6-Phosphate dehydrogenase [Enzymatic activity/volume] in Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-383
* group.element[=].display = "Qizil qon hujayralarida glyukoza-6-fosfat dehidrogenaza [fermentativ faollik/massa]"
* group.element[=].target[+].code = #32546-4
* group.element[=].target[=].display = "Glucose-6-Phosphate dehydrogenase [Enzymatic activity/mass] in Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-384
* group.element[=].display = "Zardob yoki plazmadagi haptoglobin [Mass/hajm]"
* group.element[=].target[+].code = #4542-7
* group.element[=].target[=].display = "Haptoglobin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-385
* group.element[=].display = "Glyukometr yordamida kapillyar qondagi glyukoza [mol/hajm]"
* group.element[=].target[+].code = #14743-9
* group.element[=].target[=].display = "Glucose [Moles/volume] in Capillary blood by Glucometer"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-386
* group.element[=].display = "Elektroforez orqali qondagi gemoglobin A2/gemoglobin"
* group.element[=].target[+].code = #4552-6
* group.element[=].target[=].display = "Hemoglobin A2/Hemoglobin.total in Blood by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-387
* group.element[=].display = "Zardob yoki plazmadagi HDL (massa/hajm)dagi xolesterin"
* group.element[=].target[+].code = #2085-9
* group.element[=].target[=].display = "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-388
* group.element[=].display = "Qonning gematokrit (hajm ulushi)."
* group.element[=].target[+].code = #20570-8
* group.element[=].target[=].display = "Hematocrit [Volume Fraction] of Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-389
* group.element[=].display = "Elektroforez orqali qondagi gemoglobin XXX/gemoglobin"
* group.element[=].target[+].code = #24469-9
* group.element[=].target[=].display = "Hemoglobin XXX/Hemoglobin.total in Blood by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-390
* group.element[=].display = "Elektroforez orqali qondagi gemoglobin.boshqa/gemoglobin.jami"
* group.element[=].target[+].code = #32017-6
* group.element[=].target[=].display = "Hemoglobin.other/Hemoglobin.total in Blood by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-391
* group.element[=].display = "HLA-B27 [Presence]"
* group.element[=].target[+].code = #4821-5
* group.element[=].target[=].display = "HLA-B27 [Presence]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-392
* group.element[=].display = "Qo'lda hisoblash bo'yicha tana suyuqligidagi hujayralar [#/volume]"
* group.element[=].target[+].code = #12182-2
* group.element[=].target[=].display = "Cells [#/volume] in Body fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-393
* group.element[=].display = "Qo'lda hisoblash bo'yicha tana suyuqligidagi hujayralar [#/volume]"
* group.element[=].target[+].code = #58469-8
* group.element[=].target[=].display = "Cells [#/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-394
* group.element[=].display = "Qo'lda hisoblash bo'yicha tana suyuqligidagi hujayralar [#/volume]"
* group.element[=].target[+].code = #12182-2
* group.element[=].target[=].display = "Cells [#/volume] in Body fluid by Manual count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-395
* group.element[=].display = "Radioallergosorbent testi (RAST) bo'yicha Zardobdagi jami IgE [birliklar/hajm]"
* group.element[=].target[+].code = #13834-7
* group.element[=].target[=].display = "Total IgE [Units/volume] in Serum by Radioallergosorbent test (RAST)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-396
* group.element[=].display = "Zardob va CSFda IgG indeksi"
* group.element[=].target[+].code = #14117-6
* group.element[=].target[=].display = "IgG index in Serum and CSF"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-397
* group.element[=].display = "Birinchi trimestrda onaning ekran paneli - Zardob yoki Plazma"
* group.element[=].target[+].code = #48798-3
* group.element[=].target[=].display = "First trimester maternal screen panel - Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-398
* group.element[=].display = "Immunitet tanqisligi paneli - Oqim orqali qon sitometriyasi (FC)"
* group.element[=].target[+].code = #45268-0
* group.element[=].target[=].display = "Immunodeficiency panel - Blood by Flow cytometry (FC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-399
* group.element[=].display = "Zardob yoki plazma uchun immunoelektroforez [talqin]"
* group.element[=].target[+].code = #13169-8
* group.element[=].target[=].display = "Immunoelectrophoresis [interpretation] for Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-400
* group.element[=].display = "Siydik uchun immunofiksatsiya (tarjima)."
* group.element[=].target[+].code = #13440-3
* group.element[=].target[=].display = "Immunofixation [interpretation] for Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-401
* group.element[=].display = "Immunofiksatsiya yo'li bilan zardob yoki plazmadagi oqsil fraksiyalari [talqin]"
* group.element[=].target[+].code = #14895-7
* group.element[=].target[=].display = "Protein Fractions [interpretation] in Serum or Plasma by Immunofixation"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-402
* group.element[=].display = "Zardob yoki plazmadagi inhibin A [Mass/hajm]"
* group.element[=].target[+].code = #23883-2
* group.element[=].target[=].display = "Inhibin A [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-403
* group.element[=].display = "Zardob yoki plazmadagi inhibin B [Mass/hajm]"
* group.element[=].target[+].code = #34319-4
* group.element[=].target[=].display = "Inhibin B [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-404
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm]"
* group.element[=].target[+].code = #20448-7
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-405
* group.element[=].display = "Insulinga o'xshash o'sish omili-I [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #2484-4
* group.element[=].target[=].display = "Insulin-like growth factor-I [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-406
* group.element[=].display = "Zardob yoki plazmadagi insulinga o'xshash o'sish omilini bog'lovchi protein 3 [Mass/hajm]"
* group.element[=].target[+].code = #2483-6
* group.element[=].target[=].display = "Insulin-like growth factor binding protein 3 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-407
* group.element[=].display = "Zardob yoki plazmadagi insulinga o'xshash o'sish omilini bog'lovchi protein 3 [Mass/hajm]"
* group.element[=].target[+].code = #2483-6
* group.element[=].target[=].display = "Insulin-like growth factor binding protein 3 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-408
* group.element[=].display = "Ion-selektiv membran elektrodi (ISE) orqali qondagi kaltsiy ionlangan [mol/hajm]"
* group.element[=].target[+].code = #47596-2
* group.element[=].target[=].display = "Calcium.ionized [Moles/volume] in Blood by Ion-selective membrane electrode (ISE)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-409
* group.element[=].display = "Ion-selektiv membran elektrodi (ISE) orqali qondagi kaltsiy ionlangan [mol/hajm]"
* group.element[=].target[+].code = #47596-2
* group.element[=].target[=].display = "Calcium.ionized [Moles/volume] in Blood by Ion-selective membrane electrode (ISE)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-410
* group.element[=].display = "Siydikdagi yod [mol/hajm]"
* group.element[=].target[+].code = #34320-2
* group.element[=].target[=].display = "Iodine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-411
* group.element[=].display = "Zardob yoki plazmadagi kalsitonin [Mass/hajm]"
* group.element[=].target[+].code = #1992-7
* group.element[=].target[=].display = "Calcitonin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-412
* group.element[=].display = "Zardob yoki plazmadagi kaltsiy [Mass/hajm]"
* group.element[=].target[+].code = #17861-6
* group.element[=].target[=].display = "Calcium [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-413
* group.element[=].display = "Siydikdagi kaltsiy/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #9321-1
* group.element[=].target[=].display = "Calcium/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-414
* group.element[=].display = "Kaltsiy [Mass/vaqt] 24 soatlik siydikda"
* group.element[=].target[+].code = #6874-2
* group.element[=].target[=].display = "Calcium [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-415
* group.element[=].display = "Peritoneal suyuqlikdagi kaltsiy [mol/hajm]"
* group.element[=].target[+].code = #14417-0
* group.element[=].target[=].display = "Calcium [Moles/volume] in Peritoneal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-416
* group.element[=].display = "Gaz paneli - Arterial qon"
* group.element[=].target[+].code = #24336-0
* group.element[=].target[=].display = "Gas panel - Arterial blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-417
* group.element[=].display = "Gaz paneli - Arterial qon"
* group.element[=].target[+].code = #104074-0
* group.element[=].target[=].display = "Gas and Lactate panel - Arterial blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-418
* group.element[=].display = "Gaz paneli - venoz qon"
* group.element[=].target[+].code = #24339-4
* group.element[=].target[=].display = "Gas panel - Venous blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-419
* group.element[=].display = "Gaz paneli - Arterial qon"
* group.element[=].target[+].code = #24341-0
* group.element[=].target[=].display = "Gas and Carbon monoxide panel - Arterial blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-420
* group.element[=].display = "Gaz paneli - venoz qon"
* group.element[=].target[+].code = #24344-4
* group.element[=].target[=].display = "Gas and Carbon monoxide panel - Venous blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-421
* group.element[=].display = "Dyuk usuli bo'yicha qon ketish vaqti"
* group.element[=].target[+].code = #3178-1
* group.element[=].target[=].display = "Bleeding time by Duke method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-422
* group.element[=].display = "Immunoglobulin engil zanjirlari. Zardobdagi kappa [Mass/hajm]"
* group.element[=].target[+].code = #36916-5
* group.element[=].target[=].display = "Kappa light chains.free [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-423
* group.element[=].display = "Immunoglobulin engil zanjirlari. Zardobdagi kappa [Mass/hajm]"
* group.element[=].target[+].code = #104544-2
* group.element[=].target[=].display = "Kappa light chains.free [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-424
* group.element[=].display = "Zardob yoki plazmadagi karnitin [mol/hajm]"
* group.element[=].target[+].code = #14288-5
* group.element[=].target[=].display = "Carnitine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-425
* group.element[=].display = "Zardob yoki plazmadagi karnitin/Asilkarnitin [Molar nisbati]"
* group.element[=].target[+].code = #44710-2
* group.element[=].target[=].display = "Carnitine/Acylcarnitine [Molar ratio] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-426
* group.element[=].display = "Quruq qon dog'ida asilkarnitin/Asilkarnitin+Karnitinsiz (C0) [Molar nisbat]"
* group.element[=].target[+].code = #59249-3
* group.element[=].target[=].display = "Acylcarnitine/Acylcarnitine+Carnitine Free (C0) [Molar ratio] in Dried blood spot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-427
* group.element[=].display = "Zardob yoki plazmadagi karsinoembrionik Ag [Mass/hajm]"
* group.element[=].target[+].code = #2039-6
* group.element[=].target[=].display = "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-428
* group.element[=].display = "Siydikdagi metanefrin/kreatinin [Molar nisbati]"
* group.element[=].target[+].code = #14831-2
* group.element[=].target[=].display = "Metanephrine/Creatinine [Molar ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-429
* group.element[=].display = "Siydikdagi dopamin [mol/hajm]"
* group.element[=].target[+].code = #15058-1
* group.element[=].target[=].display = "Dopamine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-430
* group.element[=].display = "Plazmadagi katexolaminlar [Mass/hajm]"
* group.element[=].target[+].code = #2056-0
* group.element[=].target[=].display = "Catecholamines [Mass/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-431
* group.element[=].display = "Plazmadagi epinefrin [mol/hajm]"
* group.element[=].target[+].code = #14711-6
* group.element[=].target[=].display = "Epinephrine [Moles/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-432
* group.element[=].display = "24 soatlik siydikda normetanefrin [mol/hajm]"
* group.element[=].target[+].code = #25964-8
* group.element[=].target[=].display = "Normetanephrine [Moles/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-433
* group.element[=].display = "24 soatlik siydikda epinefrin [mol/vaqt]"
* group.element[=].target[+].code = #14712-4
* group.element[=].target[=].display = "Epinephrine [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-434
* group.element[=].display = "Siydikdagi dopamin [mol/hajm]"
* group.element[=].target[+].code = #15058-1
* group.element[=].target[=].display = "Dopamine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-435
* group.element[=].display = "Normetanefrin [Moles/vaqt] 24 soatlik siydikda"
* group.element[=].target[+].code = #15083-9
* group.element[=].target[=].display = "Normetanephrine [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-436
* group.element[=].display = "24 soatlik siydikda epinefrin [mol/vaqt]"
* group.element[=].target[+].code = #14643-1
* group.element[=].target[=].display = "Catecholamines Free [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-437
* group.element[=].display = "Zardob yoki plazmadagi xlorid [mol/hajm]"
* group.element[=].target[+].code = #2075-0
* group.element[=].target[=].display = "Chloride [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-438
* group.element[=].display = "Siydikdagi xlorid [mol/hajm]"
* group.element[=].target[+].code = #2078-4
* group.element[=].target[=].display = "Chloride [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-439
* group.element[=].display = "24 soatlik siydikda xlorid [mol/vaqt]"
* group.element[=].target[+].code = #2079-2
* group.element[=].target[=].display = "Chloride [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-440
* group.element[=].display = "Miya orqa miya suyuqligidagi xlorid [mol/hajm]"
* group.element[=].target[+].code = #2070-1
* group.element[=].target[=].display = "Chloride [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-441
* group.element[=].display = "Tana suyuqligidagi xlorid [mol/hajm]"
* group.element[=].target[+].code = #2072-7
* group.element[=].target[=].display = "Chloride [Moles/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-442
* group.element[=].display = "Koagulyatsion faktor V faolligi koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida haqiqiy/normal"
* group.element[=].target[+].code = #3193-0
* group.element[=].target[=].display = "Coagulation factor V activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-443
* group.element[=].display = "Koagulyatsion omil VII faolligi koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida haqiqiy/normal"
* group.element[=].target[+].code = #3198-9
* group.element[=].target[=].display = "Coagulation factor VII activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-444
* group.element[=].display = "Koagulyatsion omil VIII faolligi koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida haqiqiy/normal"
* group.element[=].target[+].code = #3209-4
* group.element[=].target[=].display = "Coagulation factor VIII activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-445
* group.element[=].display = "Koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida koagulyatsion omil IX faolligi haqiqiy/normal"
* group.element[=].target[+].code = #3187-2
* group.element[=].target[=].display = "Coagulation factor IX activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-446
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar past plazmasida koagulyatsion omil X faolligi haqiqiy/normal"
* group.element[=].target[+].code = #3218-5
* group.element[=].target[=].display = "Coagulation factor X activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-447
* group.element[=].display = "Koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida koagulyatsion omil XI faolligi haqiqiy/normal"
* group.element[=].target[+].code = #3226-8
* group.element[=].target[=].display = "Coagulation factor XI activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-448
* group.element[=].display = "Koagulyatsiya tahlili bo'yicha trombotsitlar past plazmasida koagulyatsion omil XII faolligi haqiqiy/normal"
* group.element[=].target[+].code = #3232-6
* group.element[=].target[=].display = "Coagulation factor XII activity actual/normal in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-449
* group.element[=].display = "Koagulyatsion omil XIII qon ivishining erishi [Birlik/hajm] qon ivish tahlili orqali trombotsitlar past plazmasida"
* group.element[=].target[+].code = #3240-9
* group.element[=].target[=].display = "Coagulation factor XIII coagulum dissolution [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-450
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar kam plazmasida koagulyatsion omil II inhibitori [birliklar/hajm]"
* group.element[=].target[+].code = #32635-5
* group.element[=].target[=].display = "Coagulation factor II inhibitor [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-451
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar kam plazmasida koagulyatsion omil VIII inhibitori [birliklar/hajm]"
* group.element[=].target[+].code = #3204-5
* group.element[=].target[=].display = "Coagulation factor VIII inhibitor [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-452
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar past plazmasida koagulyatsion omil IX inhibitori [Birlik/hajm]"
* group.element[=].target[+].code = #3185-6
* group.element[=].target[=].display = "Coagulation factor IX inhibitor [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-453
* group.element[=].display = "Zardob yoki plazmadagi kollagen o'zaro bog'langan C-telopeptid [Mass/hajm]"
* group.element[=].target[+].code = #41171-0
* group.element[=].target[=].display = "Collagen crosslinked C-telopeptide [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-454
* group.element[=].display = "Zardob yoki plazmadagi xolesterin [massa/hajm]"
* group.element[=].target[+].code = #2093-3
* group.element[=].target[=].display = "Cholesterol [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-455
* group.element[=].display = "Tana suyuqligidagi xolesterin [massa/hajm]"
* group.element[=].target[+].code = #12183-0
* group.element[=].target[=].display = "Cholesterol [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-456
* group.element[=].display = "Qon zardobidagi yoki plazmadagi C3 [Mass/hajm] komplementi"
* group.element[=].target[+].code = #4485-9
* group.element[=].target[=].display = "Complement C3 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-457
* group.element[=].display = "Qon zardobidagi yoki plazmadagi C4 [Mass/hajm] komplementi"
* group.element[=].target[+].code = #4498-2
* group.element[=].target[=].display = "Complement C4 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-458
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm]"
* group.element[=].target[+].code = #2143-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-459
* group.element[=].display = "Siydikdagi kortizolsiz [mol/hajm]"
* group.element[=].target[+].code = #30173-9
* group.element[=].target[=].display = "Cortisol Free [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-460
* group.element[=].display = "Siydikdagi kortizolsiz [mol/hajm]"
* group.element[=].target[+].code = #30173-9
* group.element[=].target[=].display = "Cortisol Free [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-461
* group.element[=].display = "Siydikdagi kortizolsiz [mol/hajm]"
* group.element[=].target[+].code = #30173-9
* group.element[=].target[=].display = "Cortisol Free [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-462
* group.element[=].display = "Siydikdagi kortizol/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #11155-9
* group.element[=].target[=].display = "Cortisol/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-463
* group.element[=].display = "24 soatlik siydikda kortizol [Mass/vaqt]"
* group.element[=].target[+].code = #14158-0
* group.element[=].target[=].display = "Cortisol [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-464
* group.element[=].display = "Zardob yoki plazmadagi kreatin kinaz.makromolekulyar [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2153-5
* group.element[=].target[=].display = "Creatine kinase.macromolecular [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-465
* group.element[=].display = "Serum yoki plazmadagi kreatin kinaz izoenzimlari elektroforez orqali [talqin]"
* group.element[=].target[+].code = #14680-3
* group.element[=].target[=].display = "Creatine kinase isoenzymes [interpretation] in Serum or Plasma by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-466
* group.element[=].display = "Zardob yoki plazmadagi kreatin kinaz.MB [Enzimatik faollik/hajm]"
* group.element[=].target[+].code = #32673-6
* group.element[=].target[=].display = "Creatine kinase.MB [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-467
* group.element[=].display = "Zardob yoki plazmadagi kreatinin [Mass/hajm]"
* group.element[=].target[+].code = #2160-0
* group.element[=].target[=].display = "Creatinine [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-468
* group.element[=].display = "Siydikdagi kreatinin [massa/hajm]"
* group.element[=].target[+].code = #2161-8
* group.element[=].target[=].display = "Creatinine [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-469
* group.element[=].display = "Kreatinin [Mass/vaqt] 24 soat Siydikda"
* group.element[=].target[+].code = #2162-6
* group.element[=].target[=].display = "Creatinine [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-470
* group.element[=].display = "Tana suyuqligidagi kreatinin [Mass/hajm]"
* group.element[=].target[+].code = #12190-5
* group.element[=].target[=].display = "Creatinine [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-471
* group.element[=].display = "Plazmada kriyofibrinogen [mavjudligi]"
* group.element[=].target[+].code = #11043-7
* group.element[=].target[=].display = "Cryofibrinogen [Presence] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-472
* group.element[=].display = "Zardobdagi krioglobulin [mavjudligi]"
* group.element[=].target[+].code = #5117-7
* group.element[=].target[=].display = "Cryoglobulin [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-473
* group.element[=].display = "Zardob yoki plazmadagi xrom [mol/hajm]"
* group.element[=].target[+].code = #25374-0
* group.element[=].target[=].display = "Chromium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-474
* group.element[=].display = "Qondagi qo'rg'oshin [Mass/hajm]"
* group.element[=].target[+].code = #5671-3
* group.element[=].target[=].display = "Lead [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-475
* group.element[=].display = "Zardob yoki plazmadagi laktat [mol/hajm]"
* group.element[=].target[+].code = #2524-7
* group.element[=].target[=].display = "Lactate [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-476
* group.element[=].display = "Arterial qondagi laktat [mol/hajm]"
* group.element[=].target[+].code = #2519-7
* group.element[=].target[=].display = "Lactate [Moles/volume] in Venous blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-477
* group.element[=].display = "Arterial qondagi laktat [mol/hajm]"
* group.element[=].target[+].code = #2518-9
* group.element[=].target[=].display = "Lactate [Moles/volume] in Arterial blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-478
* group.element[=].display = "Tana suyuqligidagi laktat [mol/hajm]"
* group.element[=].target[+].code = #14165-5
* group.element[=].target[=].display = "Lactate [Moles/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-479
* group.element[=].display = "Zardob yoki plazmadagi laktat dehidrogenaza [fermentativ faollik/hajm] laktatdan piruvatga reaktsiyasi"
* group.element[=].target[+].code = #14804-9
* group.element[=].target[=].display = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-480
* group.element[=].display = "Miya orqa miya suyuqligidagi laktat [mol/hajm]"
* group.element[=].target[+].code = #2520-5
* group.element[=].target[=].display = "Lactate [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-481
* group.element[=].display = "Tana suyuqligidagi laktat dehidrogenaza [fermentativ faollik/hajm] laktat-piruvat reaktsiyasi orqali"
* group.element[=].target[+].code = #14803-1
* group.element[=].target[=].display = "Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid by Lactate to pyruvate reaction"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-482
* group.element[=].display = "Zardob yoki plazmadagi laktat dehidrogenaza izoenzimlari [talqini]"
* group.element[=].target[+].code = #5910-5
* group.element[=].target[=].display = "Lactate dehydrogenase isoenzymes [interpretation] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-483
* group.element[=].display = "Immunoglobulinning engil zanjirlari. Zardobdagi lambda [Mass/hajm]"
* group.element[=].target[+].code = #11051-0
* group.element[=].target[=].display = "Immunoglobulin light chains.lambda [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-484
* group.element[=].display = "Immunoglobulinning engil zanjirlari. Zardobdagi lambda [Mass/hajm]"
* group.element[=].target[+].code = #11051-0
* group.element[=].target[=].display = "Immunoglobulin light chains.lambda [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-485
* group.element[=].display = "To'g'ridan-to'g'ri tahlil orqali qon zardobidagi yoki plazmadagi LDL (massa/hajm)dagi xolesterin"
* group.element[=].target[+].code = #18262-6
* group.element[=].target[=].display = "Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-486
* group.element[=].display = "Zardob yoki plazmadagi lipaz [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #3040-3
* group.element[=].target[=].display = "Lipase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-487
* group.element[=].display = "Tana suyuqligidagi lipaz [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #15212-4
* group.element[=].target[=].display = "Lipase [Enzymatic activity/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-488
* group.element[=].display = "Elektroforez orqali zardob yoki plazmadagi lipoprotein.beta [mol/hajm]"
* group.element[=].target[+].code = #14814-8
* group.element[=].target[=].display = "Lipoprotein.beta [Moles/volume] in Serum or Plasma by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-489
* group.element[=].display = "Lipoprotein a [mol/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #43583-4
* group.element[=].target[=].display = "Lipoprotein a [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-490
* group.element[=].display = "Trombotsitlar past plazmasida Lupus antikoagulyanti [talqini]"
* group.element[=].target[+].code = #3281-3
* group.element[=].target[=].display = "Lupus anticoagulant [interpretation] in Platelet poor plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-491
* group.element[=].display = "Koagulyatsion tahlil yordamida trombotsitlar past plazmasida qizil yuguruk antikoagulyantini neytrallash olti burchakli fazali fosfolipid [Vaqt]"
* group.element[=].target[+].code = #3282-1
* group.element[=].target[=].display = "Lupus anticoagulant neutralization hexagonal phase phospholipid [Time] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-492
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm]"
* group.element[=].target[+].code = #10501-5
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-493
* group.element[=].display = "Zardob yoki plazmadagi magniy [Mass/hajm]"
* group.element[=].target[+].code = #19123-9
* group.element[=].target[=].display = "Magnesium [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-494
* group.element[=].display = "24 soatlik siydikda magniy [Mass/vaqt]"
* group.element[=].target[+].code = #24447-5
* group.element[=].target[=].display = "Magnesium [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-495
* group.element[=].display = "Siydikdagi magniy [massa/hajmi]"
* group.element[=].target[+].code = #19124-7
* group.element[=].target[=].display = "Magnesium [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-496
* group.element[=].display = "Tana suyuqligidagi magniy [mol/hajm]"
* group.element[=].target[+].code = #2596-5
* group.element[=].target[=].display = "Magnesium [Moles/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-497
* group.element[=].display = "Zardob yoki plazmadagi melatonin [Mass/hajm]"
* group.element[=].target[+].code = #11055-1
* group.element[=].target[=].display = "Melatonin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-498
* group.element[=].display = "Siydikdagi metilmalonat/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #13776-0
* group.element[=].target[=].display = "Methylmalonate/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-499
* group.element[=].display = "Zardob yoki plazmadagi miyoglobin [Mass/hajm]"
* group.element[=].target[+].code = #2639-3
* group.element[=].target[=].display = "Myoglobin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-500
* group.element[=].display = "Aniqlanmagan namunadagi nikel [Mass/hajm]"
* group.element[=].target[+].code = #18245-1
* group.element[=].target[=].display = "Nickel [Mass/volume] in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-501
* group.element[=].display = "Aquaporin 4 retseptorlari IgG Ab [mavjudligi] qon zardobida yoki plazmada"
* group.element[=].target[+].code = #43638-6
* group.element[=].target[=].display = "Aquaporin 4 receptor IgG Ab [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-502
* group.element[=].display = "Zardob yoki plazmadagi Enolase.neyronga xos [Mass/hajm]"
* group.element[=].target[+].code = #15060-7
* group.element[=].target[=].display = "Enolase.neuron specific [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-503
* group.element[=].display = "Siydikdagi oksalat [mol/hajm]"
* group.element[=].target[+].code = #15086-2
* group.element[=].target[=].display = "Oxalate [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-504
* group.element[=].display = "24 soatlik siydikda oksalat [mol/hajm]"
* group.element[=].target[+].code = #34349-1
* group.element[=].target[=].display = "Oxalate [Moles/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-505
* group.element[=].display = "Siydikdagi organik kislotalarning ko'rinishi [talqini]"
* group.element[=].target[+].code = #33477-1
* group.element[=].target[=].display = "Organic acids pattern [interpretation] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-506
* group.element[=].display = "Zardob yoki plazmadagi osteokalsin [Mass/hajm]"
* group.element[=].target[+].code = #2697-1
* group.element[=].target[=].display = "Osteocalcin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-507
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-508
* group.element[=].display = "HLA-A+B+C (I sinf) Zardobdagi Ab"
* group.element[=].target[+].code = #46994-0
* group.element[=].target[=].display = "HLA-A+B+C (class I) Ab in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-509
* group.element[=].display = "HLA-DP+DQ+DR (II sinf) Zardobdagi Ab"
* group.element[=].target[+].code = #46995-7
* group.element[=].target[=].display = "HLA-DP+DQ+DR (class II) Ab in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-510
* group.element[=].display = "Zardob yoki plazmadagi amilaza.pankreatik [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #1805-1
* group.element[=].target[=].display = "Amylase.pancreatic [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-511
* group.element[=].display = "Najasdagi elastaz.pankreatik [Mass/massa]"
* group.element[=].target[+].code = #25907-7
* group.element[=].target[=].display = "Elastase.pancreatic [Mass/mass] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-512
* group.element[=].display = "Homiladorlik bilan bog'liq plazma oqsili A [birliklar/hajm] zardobida yoki plazmasida"
* group.element[=].target[+].code = #32046-5
* group.element[=].target[=].display = "Pregnancy associated plasma protein A [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-513
* group.element[=].display = "Parathyrin.inact [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #14865-0
* group.element[=].target[=].display = "Parathyrin [Interpretation] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-514
* group.element[=].display = "Parathyrin.inact [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #47719-0
* group.element[=].target[=].display = "Parathyrin.intact [Mass/volume] in Serum or Plasma --pre dose calcium"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-515
* group.element[=].display = "Parathyrin.inact [Mass/hajm] qon zardobida yoki plazmada - eksizyondan keyin 5 daqiqa"
* group.element[=].target[+].code = #38157-4
* group.element[=].target[=].display = "Parathyrin.intact [Mass/volume] in Serum or Plasma --5 minutes post excision"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-516
* group.element[=].display = "Parathyrin.inact [Mass/hajm] qon zardobida yoki plazmada - eksizyondan keyin 10 daqiqa"
* group.element[=].target[+].code = #40929-2
* group.element[=].target[=].display = "Parathyrin.intact [Mass/volume] in Serum or Plasma --10 minutes post excision"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-517
* group.element[=].display = "Yorug'lik mikroskopi orqali qonda qon smetasini aniqlash [Identifikator]"
* group.element[=].target[+].code = #5909-7
* group.element[=].target[=].display = "Blood smear finding [Identifier] in Blood by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-518
* group.element[=].display = "Yorug'lik mikroskopi orqali qonda qon smetasini aniqlash [Identifikator]"
* group.element[=].target[+].code = #5909-7
* group.element[=].target[=].display = "Blood smear finding [Identifier] in Blood by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-519
* group.element[=].display = "Qondagi piruvat [mol/hajm]"
* group.element[=].target[+].code = #14121-8
* group.element[=].target[=].display = "Pyruvate [Moles/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-520
* group.element[=].display = "Qizil qon hujayralarida piruvat kinaz [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2912-4
* group.element[=].target[=].display = "Pyruvate kinase [Enzymatic activity/volume] in Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-521
* group.element[=].display = "Plazminogen faollashtiruvchi to'qima turi Ag [Mass/hajm] trombotsitlar past plazmasida immunologik usulda - venistazdan 20 daqiqa keyin"
* group.element[=].target[+].code = #5972-5
* group.element[=].target[=].display = "Plasminogen activator tissue type Ag [Mass/volume] in Platelet poor plasma by Immunologic method --20 minutes post venistasis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-522
* group.element[=].display = "Zardob yoki plazmadagi porfirinlar [mol/hajm]"
* group.element[=].target[+].code = #33311-2
* group.element[=].target[=].display = "Porphyrins [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-523
* group.element[=].display = "24 soatlik siydikda porfobilinogen [mol/vaqt]"
* group.element[=].target[+].code = #14882-5
* group.element[=].target[=].display = "Porphobilinogen [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-524
* group.element[=].display = "24 soatlik siydikda porfobilinogen [Mass/vaqt]"
* group.element[=].target[+].code = #2810-0
* group.element[=].target[=].display = "Porphobilinogen [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-525
* group.element[=].display = "Zardob yoki plazmadagi kaliy [mol/hajm]"
* group.element[=].target[+].code = #2823-3
* group.element[=].target[=].display = "Potassium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-526
* group.element[=].display = "Siydikdagi kaliy/kreatinin [nisbati]"
* group.element[=].target[+].code = #43222-9
* group.element[=].target[=].display = "Potassium/Creatinine [Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-527
* group.element[=].display = "Kaliy [Moles/vaqt] 24 soat Siydikda"
* group.element[=].target[+].code = #2829-0
* group.element[=].target[=].display = "Potassium [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-528
* group.element[=].display = "Tana suyuqligidagi kaliy [mol/hajm]"
* group.element[=].target[+].code = #2821-7
* group.element[=].target[=].display = "Potassium [Moles/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-529
* group.element[=].display = "Zardob yoki plazmadagi prealbumin [Mass/hajm]"
* group.element[=].target[+].code = #14338-8
* group.element[=].target[=].display = "Prealbumin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-530
* group.element[=].display = "Pristanat (C15:0(CH3)4) Zardob yoki plazmadagi [mol/hajm]"
* group.element[=].target[+].code = #22761-1
* group.element[=].target[=].display = "Pristanate (C15:0(CH3)4) [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-531
* group.element[=].display = "Zardob yoki plazmadagi natriuretik peptid B [Mass/hajm]"
* group.element[=].target[+].code = #30934-4
* group.element[=].target[=].display = "Natriuretic peptide B [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-532
* group.element[=].display = "Zardob yoki plazmadagi progesteron [Mass/hajm]"
* group.element[=].target[+].code = #101312-7
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --1 hour post dose corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-533
* group.element[=].display = "Zardob yoki plazmadagi progesteron [Mass/hajm]"
* group.element[=].target[+].code = #27967-9
* group.element[=].target[=].display = "Progesterone [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-534
* group.element[=].display = "Zardob yoki plazmadagi progesteron [Mass/hajm]"
* group.element[=].target[+].code = #101311-9
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --30 minutes post dose corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-535
* group.element[=].display = "Zardob yoki plazmadagi progesteron [Mass/hajm]"
* group.element[=].target[+].code = #2839-9
* group.element[=].target[=].display = "Progesterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-536
* group.element[=].display = "Zardob yoki plazmadagi prokalsitonin [Mass/hajm]"
* group.element[=].target[+].code = #33959-8
* group.element[=].target[=].display = "Procalcitonin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-537
* group.element[=].display = "Prokollagen peptid.tip 3 N-terminal [Mass/hajm] zardobidagi"
* group.element[=].target[+].code = #71792-6
* group.element[=].target[=].display = "Procollagen peptide.type 3 N-Terminal [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-538
* group.element[=].display = "Zardob yoki plazmadagi prolaktin [Mass/hajm]"
* group.element[=].target[+].code = #2842-3
* group.element[=].target[=].display = "Prolactin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-539
* group.element[=].display = "Zardob yoki plazmadagi prostata xos Ag bepul [Mass/hajm]"
* group.element[=].target[+].code = #10886-0
* group.element[=].target[=].display = "Prostate Specific Ag Free [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-540
* group.element[=].display = "Zardob yoki plazmadagi prostata xos Ag [Mass/hajm]"
* group.element[=].target[+].code = #2857-1
* group.element[=].target[=].display = "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-541
* group.element[=].display = "Zardobdagi prostatik kislota fosfatazasi [Mass/hajm]"
* group.element[=].target[+].code = #20420-6
* group.element[=].target[=].display = "Prostatic acid phosphatase [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-542
* group.element[=].display = "Zardob yoki plazmadagi oqsil [Mass/hajm]"
* group.element[=].target[+].code = #2885-2
* group.element[=].target[=].display = "Protein [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-543
* group.element[=].display = "Siydikdagi oqsil/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #2890-2
* group.element[=].target[=].display = "Protein/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-544
* group.element[=].display = "Protein [Mass/hajm] 24 soat Siydikda"
* group.element[=].target[+].code = #21482-5
* group.element[=].target[=].display = "Protein [Mass/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-545
* group.element[=].display = "Miya orqa miya suyuqligidagi oqsil [Mass/hajm]"
* group.element[=].target[+].code = #2880-3
* group.element[=].target[=].display = "Protein [Mass/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-546
* group.element[=].display = "Tana suyuqligidagi oqsil [Mass/hajm]"
* group.element[=].target[+].code = #2881-1
* group.element[=].target[=].display = "Protein [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-547
* group.element[=].display = "Trombotsitlar past plazmasidagi protein C [birliklar/hajm] koagulyatsiya tahlili orqali"
* group.element[=].target[+].code = #6007-9
* group.element[=].target[=].display = "Protein C [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-548
* group.element[=].display = "Immunologik usul bo'yicha trombotsitlar kam plazmasida protein C Ag [birliklar/hajm]"
* group.element[=].target[+].code = #6009-5
* group.element[=].target[=].display = "Protein C Ag [Units/volume] in Platelet poor plasma by Immunologic method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-549
* group.element[=].display = "Elektroforez orqali qon zardobidagi yoki plazmadagi oqsil fraksiyalari [talqini]"
* group.element[=].target[+].code = #12851-2
* group.element[=].target[=].display = "Protein Fractions [interpretation] in Serum or Plasma by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-550
* group.element[=].display = "Gamma-globulin/Protein.jami aniqlanmagan vaqt ichida Elektroforez orqali siydik"
* group.element[=].target[+].code = #17817-8
* group.element[=].target[=].display = "Gamma globulin/Protein.total by Electrophoresis in Urine collected for unspecified duration"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-551
* group.element[=].display = "Gamma-globulin/Protein.jami aniqlanmagan vaqt ichida Elektroforez orqali siydik"
* group.element[=].target[+].code = #13989-9
* group.element[=].target[=].display = "Gamma globulin/Protein.total in 24 hour Urine by Electrophoresis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-552
* group.element[=].display = "Pıhtılaşma tahlili orqali trombotsitlar kam plazmasida protein S [birliklar/hajm]"
* group.element[=].target[+].code = #5892-5
* group.element[=].target[=].display = "Protein S [Units/volume] in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-553
* group.element[=].display = "Protein S Ag Immunologik usul bo'yicha trombotsitlar kam plazmasida haqiqiy/normal"
* group.element[=].target[+].code = #27823-4
* group.element[=].target[=].display = "Protein S Ag actual/normal in Platelet poor plasma by Immunologic method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-554
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar past plazmasida protrombin vaqti (PT)."
* group.element[=].target[+].code = #5902-2
* group.element[=].target[=].display = "Prothrombin time (PT) in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-555
* group.element[=].display = "Zardob yoki plazmadagi xolinesteraza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2098-2
* group.element[=].target[=].display = "Cholinesterase [Enzymatic activity/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-556
* group.element[=].display = "Plazmadagi renin [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2915-7
* group.element[=].target[=].display = "Renin [Enzymatic activity/volume] in Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-557
* group.element[=].display = "Qondagi retikulotsitlar / 100 eritrotsitlar avtomatlashtirilgan hisoblash orqali"
* group.element[=].target[+].code = #17849-1
* group.element[=].target[=].display = "Reticulocytes/100 erythrocytes in Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-558
* group.element[=].display = "Neflometriya yordamida Zardobdagi revmatoid omil [birliklar/hajm]"
* group.element[=].target[+].code = #15205-8
* group.element[=].target[=].display = "Rheumatoid factor [Units/volume] in Serum by Nephlometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-559
* group.element[=].display = "Zardobdagi S100 kaltsiyni bog'laydigan protein B [Mass/hajm]"
* group.element[=].target[+].code = #47275-3
* group.element[=].target[=].display = "S100 calcium binding protein B [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-560
* group.element[=].display = "Madaniyat bo'yicha safro suyuqligida aniqlangan bakteriyalar"
* group.element[=].target[+].code = #53911-4
* group.element[=].target[=].display = "Bacteria identified in Bile fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-561
* group.element[=].display = "Eritrositlarning cho'kish tezligi"
* group.element[=].target[+].code = #30341-2
* group.element[=].target[=].display = "Erythrocyte sedimentation rate"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-562
* group.element[=].display = "Zardob yoki plazmadagi jinsiy gormonni bog'lovchi globulin [mol/hajm]"
* group.element[=].target[+].code = #13967-5
* group.element[=].target[=].display = "Sex hormone binding globulin [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-563
* group.element[=].display = "Zardob yoki plazmadagi selen [Mass/hajm]"
* group.element[=].target[+].code = #5724-0
* group.element[=].target[=].display = "Selenium [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-564
* group.element[=].display = "Yuqori sezuvchanlik usuli bilan zardob yoki plazmadagi C reaktiv oqsil [Mass/hajm]"
* group.element[=].target[+].code = #30522-7
* group.element[=].target[=].display = "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-565
* group.element[=].display = "Zardob yoki plazmadagi triiodotironin (T3) bepul [Mass/hajm]"
* group.element[=].target[+].code = #3051-0
* group.element[=].target[=].display = "Triiodothyronine (T3) Free [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-566
* group.element[=].display = "Zardob yoki plazmada tiroksin (T4) yo'q [Mass/hajm]"
* group.element[=].target[+].code = #3024-7
* group.element[=].target[=].display = "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-567
* group.element[=].display = "Aniqlanish chegarasi bo'yicha Zardob yoki plazmadagi testosteronsiz [massa/hajm] <= 1,0 ng/dL"
* group.element[=].target[+].code = #49042-5
* group.element[=].target[=].display = "Testosterone Free [Mass/volume] in Serum or Plasma by Detection limit <= 1.0 ng/dL"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-568
* group.element[=].display = "Seruloplazmin [massa/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #2064-4
* group.element[=].target[=].display = "Ceruloplasmin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-569
* group.element[=].display = "Zardob yoki plazmadagi sistatin C [Mass/hajm]"
* group.element[=].target[+].code = #33863-2
* group.element[=].target[=].display = "Cystatin C [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-570
* group.element[=].display = "Zardob yoki plazmadagi sitokeratin 19 [Mass/hajm]"
* group.element[=].target[+].code = #25390-6
* group.element[=].target[=].display = "Cytokeratin 19 [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-571
* group.element[=].display = "24 soatlik siydikda sitrat [Mass/vaqt]"
* group.element[=].target[+].code = #6687-8
* group.element[=].target[=].display = "Citrate [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-572
* group.element[=].display = "24 soatlik siydikda sitrat [mol/hajm]"
* group.element[=].target[+].code = #25876-4
* group.element[=].target[=].display = "Citrate [Moles/volume] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-573
* group.element[=].display = "Zardob yoki plazmadagi natriy [mol/hajm]"
* group.element[=].target[+].code = #2951-2
* group.element[=].target[=].display = "Sodium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-574
* group.element[=].display = "Siydikdagi natriy/kreatinin [nisbati]"
* group.element[=].target[+].code = #43223-7
* group.element[=].target[=].display = "Sodium/Creatinine [Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-575
* group.element[=].display = "24 soatlik siydikda natriy [Moles/vaqt]"
* group.element[=].target[+].code = #2956-1
* group.element[=].target[=].display = "Sodium [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-576
* group.element[=].display = "Miya orqa miya suyuqligidagi natriy [mol/hajm]"
* group.element[=].target[+].code = #2948-8
* group.element[=].target[=].display = "Sodium [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-577
* group.element[=].display = "Tana suyuqligidagi natriy [mol/hajm]"
* group.element[=].target[+].code = #2950-4
* group.element[=].target[=].display = "Sodium [Moles/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-578
* group.element[=].display = "Siydikdagi glyukoza [mol/hajm]"
* group.element[=].target[+].code = #15076-3
* group.element[=].target[=].display = "Glucose [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-579
* group.element[=].display = "Siydik tahlilining to'liq paneli - Siydik"
* group.element[=].target[+].code = #24356-8
* group.element[=].target[=].display = "Urinalysis complete panel - Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-580
* group.element[=].display = "To'liq qon ro'yxati (gemogramma) paneli - Qonni avtomatlashtirilgan hisoblash"
* group.element[=].target[+].code = #58410-2
* group.element[=].target[=].display = "Complete blood count (hemogram) panel - Blood by Automated count"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-581
* group.element[=].display = "Terdagi IgA sekretor [Mass/hajm]"
* group.element[=].target[+].code = #68933-1
* group.element[=].target[=].display = "IgA.secretory [Mass/volume] in Sweat"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-582
* group.element[=].display = "Zardob yoki plazmadagi tiroglobulin [Mass/hajm]"
* group.element[=].target[+].code = #3013-0
* group.element[=].target[=].display = "Thyroglobulin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-583
* group.element[=].display = "Zardob yoki plazmadagi tiroperoksidaza Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #8099-4
* group.element[=].target[=].display = "Thyroperoxidase Ab [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-584
* group.element[=].display = "Qon zardobida qalqonsimon bezni ogohlantiruvchi immunoglobulinlar [mavjudligi]"
* group.element[=].target[+].code = #17708-9
* group.element[=].target[=].display = "Thyroid stimulating immunoglobulins [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-585
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birliklar/hajm]"
* group.element[=].target[+].code = #3016-3
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-586
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #14913-8
* group.element[=].target[=].display = "Testosterone [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-587
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #2991-8
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-588
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #17691-7
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-589
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #47941-0
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --1 hour post dose corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-590
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #58835-0
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-591
* group.element[=].display = "Serum yoki plazmadagi testosteron [massa/hajm]"
* group.element[=].target[+].code = #2986-8
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-592
* group.element[=].display = "Serum yoki plazmadagi transferrin [Mass/hajm]"
* group.element[=].target[+].code = #3034-6
* group.element[=].target[=].display = "Transferrin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-593
* group.element[=].display = "Zardob yoki plazmadagi triglitserid [Mass/hajm]"
* group.element[=].target[+].code = #2571-8
* group.element[=].target[=].display = "Triglyceride [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-594
* group.element[=].display = "Tana suyuqligidagi triglitserid [Mass/hajm]"
* group.element[=].target[+].code = #12228-3
* group.element[=].target[=].display = "Triglyceride [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-595
* group.element[=].display = "Zardob yoki plazmadagi triptaza [Mass/hajm]"
* group.element[=].target[+].code = #21582-2
* group.element[=].target[=].display = "Tryptase [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-596
* group.element[=].display = "Koagulyatsiya tahlili orqali trombotsitlar past plazmasida trombin vaqti"
* group.element[=].target[+].code = #3243-3
* group.element[=].target[=].display = "Thrombin time in Platelet poor plasma by Coagulation assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-597
* group.element[=].display = "Troponin I.kardiyak [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #10839-9
* group.element[=].target[=].display = "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-598
* group.element[=].display = "Troponin T.kardiyak [Mass/hajm] Zardob yoki plazmadagi"
* group.element[=].target[+].code = #6598-7
* group.element[=].target[=].display = "Troponin T.cardiac [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-599
* group.element[=].display = "Zardobdagi tirotropin retseptorlari Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5385-0
* group.element[=].target[=].display = "Thyrotropin receptor Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-600
* group.element[=].display = "Yog 'kislotalari.zardob yoki plazmadagi uzun zanjir [Identifikator]"
* group.element[=].target[+].code = #17079-5
* group.element[=].target[=].display = "Fatty acids.long chain [Identifier] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-601
* group.element[=].display = "Ikkinchi trimestrda uch tomonlama ona ekrani [tarjima] Zardob yoki plazma bayonida"
* group.element[=].target[+].code = #49572-1
* group.element[=].target[=].display = "Second trimester triple maternal screen [interpretation] in Serum or Plasma Narrative"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-602
* group.element[=].display = "Zardob yoki plazmadagi karbamid [Mass/hajm]"
* group.element[=].target[+].code = #3091-6
* group.element[=].target[=].display = "Urea [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-603
* group.element[=].display = "Tana suyuqligidagi karbamid [Mass/hajm]"
* group.element[=].target[+].code = #57392-3
* group.element[=].target[=].display = "Urea [Mass/volume] in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-604
* group.element[=].display = "Siydikdagi karbamid [Mass/hajm]"
* group.element[=].target[+].code = #3092-4
* group.element[=].target[=].display = "Urea [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-605
* group.element[=].display = "Karbamid azoti [Mass/vaqt] 24 soat ichida Siydik"
* group.element[=].target[+].code = #3096-5
* group.element[=].target[=].display = "Urea nitrogen [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-606
* group.element[=].display = "Zardob yoki plazmadagi urat [Mass/hajm]"
* group.element[=].target[+].code = #3084-1
* group.element[=].target[=].display = "Urate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-607
* group.element[=].display = "Siydikdagi urat/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #3089-0
* group.element[=].target[=].display = "Urate/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-608
* group.element[=].display = "Urate [Mass/vaqt] 24 soat ichida siydik"
* group.element[=].target[+].code = #3087-4
* group.element[=].target[=].display = "Urate [Mass/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-609
* group.element[=].display = "Siydikdagi vanililmandelat/kreatinin [massa nisbati]"
* group.element[=].target[+].code = #3124-5
* group.element[=].target[=].display = "Vanillylmandelate/Creatinine [Mass Ratio] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-610
* group.element[=].display = "24 soatlik siydikda vanillilmandelat [mol/vaqt]"
* group.element[=].target[+].code = #14947-6
* group.element[=].target[=].display = "Vanillylmandelate [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-611
* group.element[=].display = "Zardobdagi karotin [mol/hajm]"
* group.element[=].target[+].code = #14642-3
* group.element[=].target[=].display = "Carotene [Moles/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-612
* group.element[=].display = "Kobalamin (Vitamin B12) Zardob yoki plazmadagi [Mass/hajm]"
* group.element[=].target[+].code = #2132-9
* group.element[=].target[=].display = "Cobalamin (Vitamin B12) [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-613
* group.element[=].display = "Zardob yoki plazmadagi askorbat [Mass/hajm]"
* group.element[=].target[+].code = #1903-4
* group.element[=].target[=].display = "Ascorbate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-614
* group.element[=].display = "Zardob yoki plazmadagi tokoferollar [mol/hajm]"
* group.element[=].target[+].code = #29747-3
* group.element[=].target[=].display = "Tocopherols [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-615
* group.element[=].display = "von Willebrand omili (vWf) Immunologik usul bo'yicha trombotsitlar past plazmasida Ag haqiqiy/normal"
* group.element[=].target[+].code = #27816-8
* group.element[=].target[=].display = "von Willebrand factor (vWf) Ag actual/normal in Platelet poor plasma by Immunologic method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-616
* group.element[=].display = "von Willebrand omili (vWf) agregatsiya bo'yicha trombotsitlar kam plazmasida ristotsetin kofaktori haqiqiy/normal"
* group.element[=].target[+].code = #6014-5
* group.element[=].target[=].display = "von Willebrand factor (vWf) ristocetin cofactor actual/normal in Platelet poor plasma by Aggregation"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-617
* group.element[=].display = "Multidisk zardobida daraxt allergen aralashmasi D (paxta+qora+zarang+eman+pekan daraxti) IgE Ab [mavjudligi]"
* group.element[=].target[+].code = #15263-7
* group.element[=].target[=].display = "Tree Allergen Mix D (Cottonwood+Elm+Maple+Oak+Pecan tree) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-618
* group.element[=].display = "Tree Allergen Mix 7 (Zaytun+Villow+Sharqiy oq qarag'ay+Eucalyptus spp+Wattle+Cajeput) Multidisk tomonidan Zardobda IgE Ab [Presence]"
* group.element[=].target[+].code = #15268-6
* group.element[=].target[=].display = "Tree Allergen Mix 7 (Olive+Willow+Eastern white pine+Eucalyptus spp+Wattle+Cajeput) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-619
* group.element[=].display = "Tree Allergen Mix 5 (Kulrang alder+Fındık+Oq qarag'ay+Willow+cottonwood) Multidisk tomonidan Zardobda IgE Ab [Mavjudligi]"
* group.element[=].target[+].code = #15266-0
* group.element[=].target[=].display = "Tree Allergen Mix 5 (Grey alder+Hazelnut+White elm+Willow+Cottonwood) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-620
* group.element[=].display = "Qon zardobidagi Yevropa uy changi IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6096-2
* group.element[=].target[=].display = "European house dust mite IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-621
* group.element[=].display = "Oziq-ovqat alerjeni aralashmasi 30 (yeryong'oq+oq loviya+soya+yasmiq+no'xat) Multidisk Zardobidagi IgE Ab [birlik/hajm]"
* group.element[=].target[+].code = #50026-4
* group.element[=].target[=].display = "Food Allergen Mix 30 (Peanut+White bean+Soybean+Lentil+ Peas) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-622
* group.element[=].display = "Epidermal allergen Mix 70 (Gvineya cho'chqasi epiteliyasi+Gamster epiteliysi+Sichqoncha+Quyon epiteliyasi+Kalamush) Multidisk tomonidan Zardobda IgE Ab [Mavjudligi]"
* group.element[=].target[+].code = #15214-0
* group.element[=].target[=].display = "Epidermal Allergen Mix 70 (Guinea pig epithelium+Hamster epithelium+Mouse+Rabbit epithelium+Rat) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-623
* group.element[=].display = "Multidisk zardobida oziq-ovqat allergen aralashmasi 26 (yeryong'oq+sigir suti+tuxum oqi+xantal) IgE Ab [mavjudligi]"
* group.element[=].target[+].code = #34394-7
* group.element[=].target[=].display = "Food Allergen Mix 26 (Peanut+Cow milk+Egg white+Mustard) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-624
* group.element[=].display = "Oziq-ovqat allergen aralashmasi 3 (yulaf+karabuğday+susam+bug‘doy+makkajo‘xori) IgE Ab [birlik/hajm] zardobida Multidisk"
* group.element[=].target[+].code = #52972-7
* group.element[=].target[=].display = "Food Allergen Mix 3 (Oat+Buckwheat+Sesame seed+Wheat+Corn) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-625
* group.element[=].display = "Multidisk zardobida oziq-ovqat allergen aralashmasi 15 (apelsin+olma+banan+shaftoli) IgE Ab [mavjudligi]"
* group.element[=].target[+].code = #15246-2
* group.element[=].target[=].display = "Food Allergen Mix 15 (Orange+Apple+Banana+Peach) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-626
* group.element[=].display = "Oziq-ovqat alerjeni aralashmasi 30 (yeryong'oq+oq loviya+soya+yasmiq+no'xat) Multidisk Zardobidagi IgE Ab [birlik/hajm]"
* group.element[=].target[+].code = #50026-4
* group.element[=].target[=].display = "Food Allergen Mix 30 (Peanut+White bean+Soybean+Lentil+ Peas) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-627
* group.element[=].display = "Oziq-ovqat alerjeni aralashmasi 30 (yeryong'oq+oq loviya+soya+yasmiq+no'xat) Multidisk Zardobidagi IgE Ab [birlik/hajm]"
* group.element[=].target[+].code = #50026-4
* group.element[=].target[=].display = "Food Allergen Mix 30 (Peanut+White bean+Soybean+Lentil+ Peas) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-628
* group.element[=].display = "Epidermal allergen Mix 70 (Gvineya cho'chqasi epiteliyasi+Gamster epiteliysi+Sichqoncha+Quyon epiteliyasi+Kalamush) Multidisk tomonidan Zardobda IgE Ab [Mavjudligi]"
* group.element[=].target[+].code = #15214-0
* group.element[=].target[=].display = "Epidermal Allergen Mix 70 (Guinea pig epithelium+Hamster epithelium+Mouse+Rabbit epithelium+Rat) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-629
* group.element[=].display = "Epidermal allergen Mix 72 (Budgerigar pati+Kanar pati+Finch tuki+Parakit tuki+to'tiqush pati) Multidisk tomonidan Zardobda IgE Ab [Presence]"
* group.element[=].target[+].code = #15216-5
* group.element[=].target[=].display = "Epidermal Allergen Mix 72 (Budgerigar feather+Canary feather+Finch feather+Parakeet feather+Parrot feather) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-630
* group.element[=].display = "Mold allergen Mix 1 (Alternaria alternata+Aspergillus fumigatus+Cladosporium herbarum+Penicillium notatum) Multidisk tomonidan Zardobda IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #41742-8
* group.element[=].target[=].display = "Mold Allergen Mix 1 (Alternaria alternata+Aspergillus fumigatus+Cladosporium herbarum+Penicillium notatum) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-631
* group.element[=].display = "Grass allergen Mix 1 (mevazor oʻti+oʻtloq fescue+koʻp yillik javdar oʻti+Timoti+Kentukki koʻk oʻti) Multidisk tomonidan Zardobda IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #30189-5
* group.element[=].target[=].display = "Grass Allergen Mix 1 (Orchard grass+Meadow Fescue+Perennial rye grass+Timothy+Kentucky blue grass) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-632
* group.element[=].display = "Yovvoyi o'tlar allergen aralashmasi 5 (Oddiy ragweed+Mugwort+Ox-eye romashka+Dandelion+oldenrod) IgE Ab [Birlik/hajm] zardobida Multidisk"
* group.element[=].target[+].code = #63197-8
* group.element[=].target[=].display = "Weed Allergen Mix 5 (Common ragweed+Mugwort+Ox-eye daisy+Dandelion+Goldenrod) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-633
* group.element[=].display = "Dust Allergen Mix 2 (Tarakan+Amerika uy changi+Yevropa uy changi+Uy changi Hollister Stier) Multidisk Zardobida IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #37987-5
* group.element[=].target[=].display = "Dust Allergen Mix 2 (Cockroach+American house dust mite+European house dust mite+House dust Hollister Stier) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-634
* group.element[=].display = "Grass allergen Mix 4 (Shirin bahorgi o't+Baxmal o'ti+Ko'p yillik javdar o'ti+Oddiy qamish+Javdar) Multidisk tomonidan Zardobda IgE Ab [Mavjudligi]"
* group.element[=].target[+].code = #15228-0
* group.element[=].target[=].display = "Grass Allergen Mix 4 (Sweet vernal grass+Velvet grass+Perennial rye grass+Common reed+Rye) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-635
* group.element[=].display = "Yovvoyi o'tlar allergen aralashmasi 1 (Oddiy ragweed+Mugwort+Goosefoot or Lambs quarters+Inglish plantain+Sultwort) IgE Ab [Units/ volume] in Serum by Multidisk"
* group.element[=].target[+].code = #24480-6
* group.element[=].target[=].display = "Weed Allergen Mix 1 (Common ragweed+Mugwort+Goosefoot or Lambs quarters+English plantain+Saltwort) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-636
* group.element[=].display = "Grass allergen Mix B (Shirin bahorgi oʻt+Koʻp yillik javdar oʻti+Oddiy qamish+Javdar+Baxmal oʻti) Multidisk tomonidan Zardobda IgE Ab [Mavjudligi]"
* group.element[=].target[+].code = #24132-3
* group.element[=].target[=].display = "Grass Allergen Mix B (Sweet vernal grass+Perennial rye grass+Common reed+Rye+Velvet grass) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-637
* group.element[=].display = "Chang allergen aralashmasi A (Tarakan+Amerika uy changi+Yevropa uy changi+Uy changi Greer) Multidisk Zardobida IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #30186-1
* group.element[=].target[=].display = "Dust Allergen Mix A (Cockroach+American house dust mite+European house dust mite+House dust Greer) IgE Ab [Units/volume] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-638
* group.element[=].display = "Nafas oluvchi allergen Mix 8 (Multidisk zardobida IgE Ab [Mavjudligi] zardobida+Umumiy kumush qayin+Mushuk poʻsti+C herbarum+Dermatophagoides pteronyssinus+It poʻstlogʻi+Timotiy oʻti+javdar)"
* group.element[=].target[+].code = #37989-1
* group.element[=].target[=].display = "Inhalant Allergen Mix 8 (Mugwort+Common silver birch+Cat dander+C herbarum+Dermatophagoides pteronyssinus+Dog dander+Timothy grass+Rye) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-639
* group.element[=].display = "Zardobdagi laktalbumin alfa IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7445-0
* group.element[=].target[=].display = "Lactalbumin alpha IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-640
* group.element[=].display = "Zardobdagi Aspergillus fumigatus IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #11030-4
* group.element[=].target[=].display = "Aspergillus fumigatus+Aspergillus niger IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-641
* group.element[=].display = "Zardobdagi Aspergillus fumigatus IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #110982-6
* group.element[=].target[=].display = "Aspergillus niger Ab [Measurement] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-642
* group.element[=].display = "Zardobdagi asal ari IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #56969-9
* group.element[=].target[=].display = "Paper wasp IgG4 Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-643
* group.element[=].display = "Zardobdagi asal ari IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6280-8
* group.element[=].target[=].display = "Whitefaced Hornet IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-644
* group.element[=].display = "Zardobdagi Olive Pollen IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6192-9
* group.element[=].target[=].display = "Olive Pollen IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-645
* group.element[=].display = "Zardobdagi baliq IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #7311-4
* group.element[=].target[=].display = "Fish IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-646
* group.element[=].display = "Zardobdagi beta-laktoglobulin IgE Ab [birliklar/hajm]"
* group.element[=].target[+].code = #41397-1
* group.element[=].target[=].display = "Beta lactoglobulin IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-647
* group.element[=].display = "Zardobdagi no'xat IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6204-2
* group.element[=].target[=].display = "Pea IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-648
* group.element[=].display = "Zardobdagi bug'doy IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6276-0
* group.element[=].target[=].display = "Wheat IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-649
* group.element[=].display = "Zardobdagi yong'oq IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6273-7
* group.element[=].target[=].display = "Walnut IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-650
* group.element[=].display = "Zardobdagi Willow IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #15285-0
* group.element[=].target[=].display = "London Plane IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-651
* group.element[=].display = "Zardobdagi Willow IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6285-1
* group.element[=].target[=].display = "Willow IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-652
* group.element[=].display = "Zardobdagi javdar IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7675-2
* group.element[=].target[=].display = "Rye IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-653
* group.element[=].display = "Zardobdagi shokolad IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6073-1
* group.element[=].target[=].display = "Chocolate IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-654
* group.element[=].display = "Zardobdagi qulupnay IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6257-0
* group.element[=].target[=].display = "Strawberry IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-655
* group.element[=].display = "Qon zardobidagi sigir IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6039-2
* group.element[=].target[=].display = "Beef IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-656
* group.element[=].display = "Amerika uy chang oqadilar IgE Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #6095-4
* group.element[=].target[=].display = "American house dust mite IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-657
* group.element[=].display = "Zardobdagi Dermatophagoides sp IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #41271-8
* group.element[=].target[=].display = "Dermatophagoides sp IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-658
* group.element[=].display = "Zardobdagi pomidor IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6266-1
* group.element[=].target[=].display = "Tomato IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-659
* group.element[=].display = "Zardobdagi Apple IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6021-0
* group.element[=].target[=].display = "Apple IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-660
* group.element[=].display = "Zardobdagi sichqon epiteliyasi IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6179-6
* group.element[=].target[=].display = "Mouse epithelium IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-661
* group.element[=].display = "Fındık IgE Ab [Birlik/hajm] Zardobda"
* group.element[=].target[+].code = #6136-6
* group.element[=].target[=].display = "Hazelnut IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-662
* group.element[=].display = "Fındık IgE Ab [Birlik/hajm] Zardobda"
* group.element[=].target[+].code = #6136-6
* group.element[=].target[=].display = "Hazelnut IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-663
* group.element[=].display = "Zardobdagi Gluten IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6125-9
* group.element[=].target[=].display = "Gluten IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-664
* group.element[=].display = "Zardobdagi cho'chqa go'shti IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6219-0
* group.element[=].target[=].display = "Pork IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-665
* group.element[=].display = "Zardobdagi tarakan IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6078-0
* group.element[=].target[=].display = "Cockroach IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-666
* group.element[=].display = "Zardobdagi sabzi IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6061-6
* group.element[=].target[=].display = "Carrot IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-667
* group.element[=].display = "Zardobdagi kanareyka patlari IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #7171-2
* group.element[=].target[=].display = "Canary feather IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-668
* group.element[=].display = "Zardobdagi Candida albicans IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6059-0
* group.element[=].target[=].display = "Candida albicans IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-669
* group.element[=].display = "Multidisk zardobida oziq-ovqat allergen aralashmasi F (grechka+soya+guruch+susam urugʻi+bugʻdoy) IgE Ab [mavjudligi]"
* group.element[=].target[+].code = #15221-5
* group.element[=].target[=].display = "Food Allergen Mix F (Buckwheat+Soybean+Rice+Sesame seed+Wheat) IgE Ab [Presence] in Serum by Multidisk"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-670
* group.element[=].display = "Zardobdagi kazein IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6062-4
* group.element[=].target[=].display = "Casein IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-671
* group.element[=].display = "Mushuk yungini Zardobdagi IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6833-8
* group.element[=].target[=].display = "Cat dander IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-672
* group.element[=].display = "Zardobdagi kivi IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6154-9
* group.element[=].target[=].display = "Kiwifruit IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-673
* group.element[=].display = "Zardobdagi Cladosporium cladosporioides IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #56729-7
* group.element[=].target[=].display = "Cladosporium cladosporioides IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-674
* group.element[=].display = "Qon zardobida itning yungini IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6098-8
* group.element[=].target[=].display = "Dog dander IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-675
* group.element[=].display = "Zardobdagi White Bean IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6279-4
* group.element[=].target[=].display = "White Bean IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-676
* group.element[=].display = "Qo'zi IgE Ab [Birlik/hajm] Zardobdagi"
* group.element[=].target[+].code = #6155-6
* group.element[=].target[=].display = "Lamb IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-677
* group.element[=].display = "Zardobdagi Latex IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6158-0
* group.element[=].target[=].display = "Latex IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-678
* group.element[=].display = "Zardobdagi Jonson o'ti IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6152-3
* group.element[=].target[=].display = "Johnson grass IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-679
* group.element[=].display = "Zardobdagi Codfish IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6082-2
* group.element[=].target[=].display = "Codfish IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-680
* group.element[=].display = "Budgerigar patlari IgE Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #6030-1
* group.element[=].target[=].display = "Budgerigar feather IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-681
* group.element[=].display = "Zardobdagi banan IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6035-0
* group.element[=].target[=].display = "Banana IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-682
* group.element[=].display = "Zardobdagi kartoshka IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6220-8
* group.element[=].target[=].display = "Potato IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-683
* group.element[=].display = "Zardobdagi penitsillin G IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6851-0
* group.element[=].target[=].display = "Penicillin G IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-684
* group.element[=].display = "Zardobdagi guruch IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6230-7
* group.element[=].target[=].display = "Rice IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-685
* group.element[=].display = "Zardobdagi apelsin IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6194-5
* group.element[=].target[=].display = "Orange IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-686
* group.element[=].display = "Zardobdagi Aedes chivinlari IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6177-0
* group.element[=].target[=].display = "Aedes mosquito IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-687
* group.element[=].display = "Zardobdagi qizil ikra IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6237-2
* group.element[=].target[=].display = "Salmon IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-688
* group.element[=].display = "Zardobdagi soya IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6248-9
* group.element[=].target[=].display = "Soybean IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-689
* group.element[=].display = "Zardobdagi sigir suti IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #7258-7
* group.element[=].target[=].display = "Cow milk IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-690
* group.element[=].display = "Zardobdagi shaftoli IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6205-9
* group.element[=].target[=].display = "Peach IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-691
* group.element[=].display = "Tovuq zardobidagi oqsillar IgE Ab [Birlik/hajm] zardobida"
* group.element[=].target[+].code = #6836-1
* group.element[=].target[=].display = "Chicken serum proteins IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-692
* group.element[=].display = "Zardobdagi Common Reed IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6855-1
* group.element[=].target[=].display = "Common Reed IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-693
* group.element[=].display = "Qon zardobidagi sigir IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6039-2
* group.element[=].target[=].display = "Beef IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-694
* group.element[=].display = "Zardobdagi peanut IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6206-7
* group.element[=].target[=].display = "Peanut IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-695
* group.element[=].display = "Zardobdagi butun tuxum IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #7291-8
* group.element[=].target[=].display = "Whole Egg IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-696
* group.element[=].display = "Zardobdagi tuxum oqi IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6106-9
* group.element[=].target[=].display = "Egg white IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-697
* group.element[=].display = "Zardobdagi tuxum sarig'i IgE Ab [Birlik/hajm]"
* group.element[=].target[+].code = #6107-7
* group.element[=].target[=].display = "Egg yolk IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-698
* group.element[=].display = "Zardobdagi Olive IgE Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7545-7
* group.element[=].target[=].display = "Olive IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-699
* group.element[=].display = "Zardob yoki plazmadagi alanin [mol/hajm]"
* group.element[=].target[+].code = #20636-7
* group.element[=].target[=].display = "Alanine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-700
* group.element[=].display = "Siydikdagi alanin [mol/hajm]"
* group.element[=].target[+].code = #27326-8
* group.element[=].target[=].display = "Alanine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-701
* group.element[=].display = "Miya orqa miya suyuqligidagi alanin [mol/hajm]"
* group.element[=].target[+].code = #22657-1
* group.element[=].target[=].display = "Alanine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-702
* group.element[=].display = "Zardob yoki plazmadagi arginin [mol/hajm]"
* group.element[=].target[+].code = #20637-5
* group.element[=].target[=].display = "Arginine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-703
* group.element[=].display = "Siydikdagi arginin [mol/hajm]"
* group.element[=].target[+].code = #27296-3
* group.element[=].target[=].display = "Arginine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-704
* group.element[=].display = "Miya orqa miya suyuqligidagi arginin [mol/hajm]"
* group.element[=].target[+].code = #22656-3
* group.element[=].target[=].display = "Arginine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-705
* group.element[=].display = "Zardob yoki plazmadagi asparagin [mol/hajm]"
* group.element[=].target[+].code = #20638-3
* group.element[=].target[=].display = "Asparagine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-706
* group.element[=].display = "Siydikdagi asparagin [mol/hajm]"
* group.element[=].target[+].code = #27317-7
* group.element[=].target[=].display = "Asparagine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-707
* group.element[=].display = "Miya orqa miya suyuqligidagi asparagin [Mol/hajm]"
* group.element[=].target[+].code = #26603-1
* group.element[=].target[=].display = "Asparagine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-708
* group.element[=].display = "Zardob yoki plazmadagi aspartat [mol/hajm]"
* group.element[=].target[+].code = #20639-1
* group.element[=].target[=].display = "Aspartate [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-709
* group.element[=].display = "Siydikdagi aspartat [mol/hajm]"
* group.element[=].target[+].code = #26680-9
* group.element[=].target[=].display = "Aspartate [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-710
* group.element[=].display = "Miya orqa miya suyuqligidagi aspartat [mol/hajm]"
* group.element[=].target[+].code = #22655-5
* group.element[=].target[=].display = "Aspartate [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-711
* group.element[=].display = "Zardob yoki plazmadagi etanolamin [mol/hajm]"
* group.element[=].target[+].code = #26608-0
* group.element[=].target[=].display = "Ethanolamine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-712
* group.element[=].display = "Siydikdagi etanolamin [mol/hajm]"
* group.element[=].target[+].code = #34300-4
* group.element[=].target[=].display = "Ethanolamine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-713
* group.element[=].display = "Miya orqa miya suyuqligidagi etanolamin [Mass/hajm]"
* group.element[=].target[+].code = #13613-5
* group.element[=].target[=].display = "Ethanolamine [Mass/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-714
* group.element[=].display = "Zardob yoki plazmadagi fenilalanin [mol/hajm]"
* group.element[=].target[+].code = #110247-4
* group.element[=].target[=].display = "Phenylalanine [Measurement] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-715
* group.element[=].display = "Zardob yoki plazmadagi fenilalanin [mol/hajm]"
* group.element[=].target[+].code = #109515-7
* group.element[=].target[=].display = "Phenylalanine [Measurement] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-716
* group.element[=].display = "Siydikdagi fenilalanin [mol/hajm]"
* group.element[=].target[+].code = #26967-0
* group.element[=].target[=].display = "Phenylalanine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-717
* group.element[=].display = "Miya orqa miya suyuqligidagi fenilalanin [mol/hajm]"
* group.element[=].target[+].code = #22646-4
* group.element[=].target[=].display = "Phenylalanine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-718
* group.element[=].display = "Zardob yoki plazmadagi fosfoetanolamin [mol/hajm]"
* group.element[=].target[+].code = #26612-2
* group.element[=].target[=].display = "Phosphoethanolamine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-719
* group.element[=].display = "Siydikdagi fosfoetanolamin [mol/hajm]"
* group.element[=].target[+].code = #25502-6
* group.element[=].target[=].display = "Phosphoethanolamine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-720
* group.element[=].display = "Miya orqa miya suyuqligidagi fosfoetanolamin [mol/hajm]"
* group.element[=].target[+].code = #26597-5
* group.element[=].target[=].display = "Phosphoethanolamine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-721
* group.element[=].display = "Zardob yoki plazmadagi fosfoserin [mol/hajm]"
* group.element[=].target[+].code = #20654-0
* group.element[=].target[=].display = "Phosphoserine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-722
* group.element[=].display = "Siydikdagi fosfoserin [mol/hajm]"
* group.element[=].target[+].code = #26738-5
* group.element[=].target[=].display = "Phosphoserine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-723
* group.element[=].display = "Zardob yoki plazmadagi glitsin [mol/hajm]"
* group.element[=].target[+].code = #20644-1
* group.element[=].target[=].display = "Glycine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-724
* group.element[=].display = "Siydikdagi glitsin [mol/hajm]"
* group.element[=].target[+].code = #27325-0
* group.element[=].target[=].display = "Glycine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-725
* group.element[=].display = "Miya orqa miya suyuqligidagi glitsin [mol/hajm]"
* group.element[=].target[+].code = #22650-6
* group.element[=].target[=].display = "Glycine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-726
* group.element[=].display = "Zardob yoki plazmadagi glutamat [mol/hajm]"
* group.element[=].target[+].code = #20642-5
* group.element[=].target[=].display = "Glutamate [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-727
* group.element[=].display = "Siydikdagi glutamat [mol/hajm]"
* group.element[=].target[+].code = #30348-7
* group.element[=].target[=].display = "Glutamate [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-728
* group.element[=].display = "Miya orqa miya suyuqligidagi glutamat [mol/hajm]"
* group.element[=].target[+].code = #22652-2
* group.element[=].target[=].display = "Glutamate [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-729
* group.element[=].display = "Zardob yoki plazmadagi glutamin [mol/hajm]"
* group.element[=].target[+].code = #20643-3
* group.element[=].target[=].display = "Glutamine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-730
* group.element[=].display = "Siydikdagi glutamin [mol/hajm]"
* group.element[=].target[+].code = #27043-9
* group.element[=].target[=].display = "Glutamine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-731
* group.element[=].display = "Miya orqa miya suyuqligidagi glutamin [mol/hajm]"
* group.element[=].target[+].code = #22641-5
* group.element[=].target[=].display = "Glutamine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-732
* group.element[=].display = "Zardob yoki plazmadagi gidroksilizin [mol/hajm]"
* group.element[=].target[+].code = #26610-6
* group.element[=].target[=].display = "Hydroxylysine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-733
* group.element[=].display = "Siydikdagi gidroksilizin [mol/hajm]"
* group.element[=].target[+].code = #27291-4
* group.element[=].target[=].display = "Hydroxylysine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-734
* group.element[=].display = "Miya orqa miya suyuqligidagi gidroksilizin [mol/hajm]"
* group.element[=].target[+].code = #26595-9
* group.element[=].target[=].display = "Hydroxylysine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-735
* group.element[=].display = "Zardob yoki plazmadagi histidin [mol/hajm]"
* group.element[=].target[+].code = #20645-8
* group.element[=].target[=].display = "Histidine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-736
* group.element[=].display = "Siydikdagi histidin [mol/hajm]"
* group.element[=].target[+].code = #27904-2
* group.element[=].target[=].display = "Histidine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-737
* group.element[=].display = "Miya orqa miya suyuqligidagi histidin [mol/hajm]"
* group.element[=].target[+].code = #9453-2
* group.element[=].target[=].display = "Histidine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-738
* group.element[=].display = "Zardob yoki plazmadagi homosistein [mol/hajm]"
* group.element[=].target[+].code = #13965-9
* group.element[=].target[=].display = "Homocysteine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-739
* group.element[=].display = "Siydikdagi homosistein [mol/hajm]"
* group.element[=].target[+].code = #32020-0
* group.element[=].target[=].display = "Homocysteine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-740
* group.element[=].display = "Zardob yoki plazmadagi homotsitrulin [mol/hajm]"
* group.element[=].target[+].code = #55876-7
* group.element[=].target[=].display = "Homocitrulline [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-741
* group.element[=].display = "Siydikdagi homotsitrulin [mol/hajm]"
* group.element[=].target[+].code = #74483-9
* group.element[=].target[=].display = "Homocitrulline [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-742
* group.element[=].display = "Miya orqa miya suyuqligidagi homotsitrulin [mol/hajm]"
* group.element[=].target[+].code = #55875-9
* group.element[=].target[=].display = "Homocitrulline [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-743
* group.element[=].display = "Zardob yoki plazmadagi izolösin [mol/hajm]"
* group.element[=].target[+].code = #20648-2
* group.element[=].target[=].display = "Isoleucine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-744
* group.element[=].display = "Siydikdagi izolösin [mol/hajm]"
* group.element[=].target[+].code = #26965-4
* group.element[=].target[=].display = "Isoleucine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-745
* group.element[=].display = "Miya orqa miya suyuqligidagi izolösin [mol/hajm]"
* group.element[=].target[+].code = #22659-7
* group.element[=].target[=].display = "Isoleucine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-746
* group.element[=].display = "Zardob yoki plazmadagi lizin [mol/hajm]"
* group.element[=].target[+].code = #20650-8
* group.element[=].target[=].display = "Lysine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-747
* group.element[=].display = "Siydikdagi lizin [mol/hajm]"
* group.element[=].target[+].code = #27304-5
* group.element[=].target[=].display = "Lysine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-748
* group.element[=].display = "Miya orqa miya suyuqligidagi lizin [mol/hajm]"
* group.element[=].target[+].code = #22651-4
* group.element[=].target[=].display = "Lysine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-749
* group.element[=].display = "Zardob yoki plazmadagi leysin [mol/hajm]"
* group.element[=].target[+].code = #20649-0
* group.element[=].target[=].display = "Leucine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-750
* group.element[=].display = "Siydikdagi leytsin [mol/hajm]"
* group.element[=].target[+].code = #27323-5
* group.element[=].target[=].display = "Leucine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-751
* group.element[=].display = "Miya orqa miya suyuqligidagi leysin [mol/hajm]"
* group.element[=].target[+].code = #9412-8
* group.element[=].target[=].display = "Leucine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-752
* group.element[=].display = "Zardob yoki plazmadagi 1-metilhistidin [mol/hajm]"
* group.element[=].target[+].code = #20633-4
* group.element[=].target[=].display = "1-Methylhistidine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-753
* group.element[=].display = "Siydikdagi 1-metilhistidin [mol/hajm]"
* group.element[=].target[+].code = #27044-7
* group.element[=].target[=].display = "1-Methylhistidine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-754
* group.element[=].display = "Miya orqa miya suyuqligidagi 1-metilhistidin [mol/hajm]"
* group.element[=].target[+].code = #26584-3
* group.element[=].target[=].display = "1-Methylhistidine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-755
* group.element[=].display = "Zardob yoki plazmadagi metionin [mol/hajm]"
* group.element[=].target[+].code = #20651-6
* group.element[=].target[=].display = "Methionine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-756
* group.element[=].display = "Siydikdagi metionin [mol/hajm]"
* group.element[=].target[+].code = #26963-9
* group.element[=].target[=].display = "Methionine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-757
* group.element[=].display = "Miya orqa miya suyuqligidagi metionin [mol/hajm]"
* group.element[=].target[+].code = #22648-0
* group.element[=].target[=].display = "Methionine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-758
* group.element[=].display = "Zardob yoki plazmadagi ornitin [mol/hajm]"
* group.element[=].target[+].code = #20652-4
* group.element[=].target[=].display = "Ornithine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-759
* group.element[=].display = "Siydikdagi ornitin [mol/hajm]"
* group.element[=].target[+].code = #27292-2
* group.element[=].target[=].display = "Ornithine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-760
* group.element[=].display = "Miya orqa miya suyuqligidagi ornitin [mol/hajm]"
* group.element[=].target[+].code = #22647-2
* group.element[=].target[=].display = "Ornithine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-761
* group.element[=].display = "Zardob yoki plazmadagi prolin [mol/hajm]"
* group.element[=].target[+].code = #20655-7
* group.element[=].target[=].display = "Proline [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-762
* group.element[=].display = "Siydikdagi prolin [mol/hajm]"
* group.element[=].target[+].code = #26726-0
* group.element[=].target[=].display = "Proline [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-763
* group.element[=].display = "Miya orqa miya suyuqligidagi prolin [mol/hajm]"
* group.element[=].target[+].code = #22645-6
* group.element[=].target[=].display = "Proline [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-764
* group.element[=].display = "Zardob yoki plazmadagi serin [mol/hajm]"
* group.element[=].target[+].code = #20656-5
* group.element[=].target[=].display = "Serine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-765
* group.element[=].display = "Siydikdagi serin [mol/hajm]"
* group.element[=].target[+].code = #26741-9
* group.element[=].target[=].display = "Serine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-766
* group.element[=].display = "Miya orqa miya suyuqligidagi serin [mol/hajm]"
* group.element[=].target[+].code = #22644-9
* group.element[=].target[=].display = "Serine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-767
* group.element[=].display = "Zardob yoki plazmadagi sistationin [mol/hajm]"
* group.element[=].target[+].code = #26607-2
* group.element[=].target[=].display = "Cystathionine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-768
* group.element[=].display = "Siydikdagi tsistationin [mol/hajm]"
* group.element[=].target[+].code = #26964-7
* group.element[=].target[=].display = "Cystathionine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-769
* group.element[=].display = "Miya orqa miya suyuqligidagi sistationin [mol/hajm]"
* group.element[=].target[+].code = #26592-6
* group.element[=].target[=].display = "Cystathionine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-770
* group.element[=].display = "Zardob yoki plazmadagi sistein [mol/hajm]"
* group.element[=].target[+].code = #20641-7
* group.element[=].target[=].display = "Cysteine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-771
* group.element[=].display = "Siydikdagi sistein [mol/hajm]"
* group.element[=].target[+].code = #34277-4
* group.element[=].target[=].display = "Cysteine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-772
* group.element[=].display = "24 soatlik siydikda sistin [mol/vaqt]"
* group.element[=].target[+].code = #26962-1
* group.element[=].target[=].display = "Cystine [Moles/time] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-773
* group.element[=].display = "24 soatlik siydikda sistin [mol/vaqt]"
* group.element[=].target[+].code = #34278-2
* group.element[=].target[=].display = "Cystine [Moles/time] in 24 hour Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-774
* group.element[=].display = "Zardob yoki plazmadagi sitrulin [mol/hajm]"
* group.element[=].target[+].code = #20640-9
* group.element[=].target[=].display = "Citrulline [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-775
* group.element[=].display = "Siydikdagi sitrulin [mol/hajm]"
* group.element[=].target[+].code = #27056-1
* group.element[=].target[=].display = "Citrulline [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-776
* group.element[=].display = "Miya orqa miya suyuqligidagi sitrulin [mol/hajm]"
* group.element[=].target[+].code = #22654-8
* group.element[=].target[=].display = "Citrulline [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-777
* group.element[=].display = "Zardob yoki plazmadagi taurin [mol/hajm]"
* group.element[=].target[+].code = #20657-3
* group.element[=].target[=].display = "Taurine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-778
* group.element[=].display = "Siydikdagi taurin [mol/hajm]"
* group.element[=].target[+].code = #30563-1
* group.element[=].target[=].display = "Taurine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-779
* group.element[=].display = "Miya orqa miya suyuqligidagi taurin [mol/hajm]"
* group.element[=].target[+].code = #26614-8
* group.element[=].target[=].display = "Taurine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-780
* group.element[=].display = "Zardob yoki plazmadagi tirozin [mol/hajm]"
* group.element[=].target[+].code = #20660-7
* group.element[=].target[=].display = "Tyrosine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-781
* group.element[=].display = "Siydikdagi tirozin [mol/hajm]"
* group.element[=].target[+].code = #26966-2
* group.element[=].target[=].display = "Tyrosine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-782
* group.element[=].display = "Miya orqa miya suyuqligidagi tirozin [mol/hajm]"
* group.element[=].target[+].code = #22642-3
* group.element[=].target[=].display = "Tyrosine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-783
* group.element[=].display = "Zardob yoki plazmadagi treonin [mol/hajm]"
* group.element[=].target[+].code = #20658-1
* group.element[=].target[=].display = "Threonine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-784
* group.element[=].display = "Siydikdagi treonin [mol/hajm]"
* group.element[=].target[+].code = #27322-7
* group.element[=].target[=].display = "Threonine [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-785
* group.element[=].display = "Miya orqa miya suyuqligidagi treonin [mol/hajm]"
* group.element[=].target[+].code = #22643-1
* group.element[=].target[=].display = "Threonine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-786
* group.element[=].display = "Zardob yoki plazmadagi triptofan [mol/hajm]"
* group.element[=].target[+].code = #20659-9
* group.element[=].target[=].display = "Tryptophan [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-787
* group.element[=].display = "Siydikdagi triptofan [mol/hajm]"
* group.element[=].target[+].code = #34384-8
* group.element[=].target[=].display = "Tryptophan [Moles/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-788
* group.element[=].display = "Miya orqa miya suyuqligidagi triptofan [mol/hajm]"
* group.element[=].target[+].code = #26602-3
* group.element[=].target[=].display = "Tryptophan [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-789
* group.element[=].display = "Zardob yoki plazmadagi valin [mol/hajm]"
* group.element[=].target[+].code = #20661-5
* group.element[=].target[=].display = "Valine [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-790
* group.element[=].display = "Siydikdagi valin [Mass/hajm]"
* group.element[=].target[+].code = #3119-5
* group.element[=].target[=].display = "Valine [Mass/volume] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-791
* group.element[=].display = "Miya orqa miya suyuqligidagi valin [mol/hajm]"
* group.element[=].target[+].code = #22649-8
* group.element[=].target[=].display = "Valine [Moles/volume] in Cerebral spinal fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-792
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV dan 15 daqiqa oldin"
* group.element[=].target[+].code = #48093-9
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --15 minutes pre 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-793
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV dan oldin"
* group.element[=].target[+].code = #1367-2
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --pre 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-794
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV dan 5 minut keyin"
* group.element[=].target[+].code = #1366-4
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --5 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-795
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 15 daqiqa"
* group.element[=].target[+].code = #46400-8
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --15 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-796
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 30 daqiqa"
* group.element[=].target[+].code = #1362-3
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --30 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-797
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV dan 45 minut keyin"
* group.element[=].target[+].code = #1364-9
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --45 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-798
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm] --1 soatdan keyin 1 ug/kg CRH IV"
* group.element[=].target[+].code = #1359-9
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --1 hour post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-799
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 1,5 soat."
* group.element[=].target[+].code = #46401-6
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --1.5 hours post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-800
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - 1 ug/kg CRH IV dan 2 soat keyin"
* group.element[=].target[+].code = #46402-4
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --2 hours post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-801
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV dan 15 daqiqa oldin"
* group.element[=].target[+].code = #48100-2
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --15 minutes pre 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-802
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IVdan oldin"
* group.element[=].target[+].code = #1443-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-803
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV dan 5 minut keyin"
* group.element[=].target[+].code = #1431-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --5 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-804
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 15 daqiqa"
* group.element[=].target[+].code = #46397-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --15 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-805
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 30 daqiqa"
* group.element[=].target[+].code = #1415-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --30 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-806
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 45 daqiqa"
* group.element[=].target[+].code = #1423-3
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --45 minutes post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-807
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV dan 1 soat keyin"
* group.element[=].target[+].code = #1400-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1 hour post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-808
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 1,5 soat"
* group.element[=].target[+].code = #46398-4
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1.5 hours post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-809
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 1 ug/kg CRH IV qabul qilingandan keyin 2 soatdan keyin"
* group.element[=].target[+].code = #46399-2
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --2 hours post 1 ug/kg CRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-810
* group.element[=].display = "Zardob yoki plazmadagi kortizol [mol/hajm] - IM 250 ug kortikotropindan oldin"
* group.element[=].target[+].code = #24389-9
* group.element[=].target[=].display = "Cortisol [Moles/volume] in Serum or Plasma --pre 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-811
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - IM 250 ug kortikotropindan oldin"
* group.element[=].target[+].code = #10332-5
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-812
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - IM 250 ug kortikotropindan oldin"
* group.element[=].target[+].code = #10332-5
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-813
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajmi] - IM 250 ug kortikotropindan 15 daqiqadan so'ng"
* group.element[=].target[+].code = #9612-3
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --15 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-814
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - IM 250 ug kortikotropindan oldin"
* group.element[=].target[+].code = #10332-5
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-815
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 250 ug kortikotropin IM yuborilgandan keyin 30 daqiqadan so'ng"
* group.element[=].target[+].code = #1418-3
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --30 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-816
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - 250 ug kortikotropin IM yuborilgandan keyin 45 daqiqadan so'ng"
* group.element[=].target[+].code = #9614-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --45 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-817
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajmi] - IM 250 ug kortikotropindan 1 soat keyin"
* group.element[=].target[+].code = #1403-5
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1 hour post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-818
* group.element[=].display = "Trombotsitlar funktsiyasi (yopilish vaqti) qonda kollagen + ADP induktsiyasi [Vaqt]"
* group.element[=].target[+].code = #24472-3
* group.element[=].target[=].display = "Platelet function (closure time) collagen+ADP induced [Time] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-819
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - IM 250 ug kortikotropindan keyin 1,5 soat."
* group.element[=].target[+].code = #9615-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1.5 hours post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-820
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajmi] - 250 ug kortikotropin IM yuborilgandan keyin 2 soat"
* group.element[=].target[+].code = #9613-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --2 hours post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-821
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - kortikotropin dozasidan 24 soat o'tgach"
* group.element[=].target[+].code = #26529-8
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --24 hours post dose corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-822
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [massa/hajm] - 250 ug kortikotropin IM dan oldin"
* group.element[=].target[+].code = #47533-5
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --pre 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-823
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [massa/hajm] - asosiy"
* group.element[=].target[+].code = #27996-8
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-824
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [massa/hajm] - asosiy"
* group.element[=].target[+].code = #27996-8
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-825
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - IM 250 ug kortikotropindan 15 minut keyin"
* group.element[=].target[+].code = #10964-5
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --15 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-826
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - IM 250 ug kortikotropindan 30 minut keyin"
* group.element[=].target[+].code = #10965-2
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --30 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-827
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - IM 250 ug kortikotropindan 30 minut keyin"
* group.element[=].target[+].code = #10965-2
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --30 minutes post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-828
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - 1 soatdan keyin 250 ug kortikotropin IM"
* group.element[=].target[+].code = #14114-3
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --1 hour post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-829
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - 1 soatdan keyin 250 ug kortikotropin IM"
* group.element[=].target[+].code = #14114-3
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --1 hour post 250 ug corticotropin IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-830
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [Mass/hajm] - XXX sinovidan keyin 1,5 soat"
* group.element[=].target[+].code = #56616-6
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Mass/volume] in Serum or Plasma --1.5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-831
* group.element[=].display = "Zardob yoki plazmadagi 17-gidroksiprogesteron [mol/hajm] - XXX sinovidan keyin 2 soat"
* group.element[=].target[+].code = #32538-1
* group.element[=].target[=].display = "17-Hydroxyprogesterone [Moles/volume] in Serum or Plasma --2 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-832
* group.element[=].display = "Trombotsitlar funktsiyasi (yopilish vaqti) qonda kollagen + ADP induktsiyasi [Vaqt]"
* group.element[=].target[+].code = #16734-6
* group.element[=].target[=].display = "Dehydroepiandrosterone (DHEA) [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-833
* group.element[=].display = "Trombotsitlar funktsiyasi (yopilish vaqti) qonda kollagen + ADP induktsiyasi [Vaqt]"
* group.element[=].target[+].code = #13864-4
* group.element[=].target[=].display = "Dehydroepiandrosterone (DHEA) [Mass/volume] in Serum or Plasma --30 minutes post 250 ug corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-834
* group.element[=].display = "Trombotsitlar funktsiyasi (yopilish vaqti) qonda kollagen + ADP induktsiyasi [Vaqt]"
* group.element[=].target[+].code = #13863-6
* group.element[=].target[=].display = "Dehydroepiandrosterone (DHEA) [Mass/volume] in Serum or Plasma --1 hour post 250 ug corticotropin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-835
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - insulin IV dozasidan oldin"
* group.element[=].target[+].code = #1637-8
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-836
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - insulin IV dozasidan keyin 15 daqiqa"
* group.element[=].target[+].code = #50753-3
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --15 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-837
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - insulin IV dozasidan keyin 30 daqiqa"
* group.element[=].target[+].code = #1631-1
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --30 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-838
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - insulin IV dozasidan keyin 45 daqiqa"
* group.element[=].target[+].code = #1633-7
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --45 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-839
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - insulin IV dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #1629-5
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1 hour post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-840
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - insulin IV dozasidan keyin 1,5 soat o'tgach"
* group.element[=].target[+].code = #1627-9
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-841
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - insulin IV dozasidan keyin 2 soat o'tgach"
* group.element[=].target[+].code = #46404-0
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2 hours post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-842
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] --insulin IV dozasidan oldin"
* group.element[=].target[+].code = #1451-4
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-843
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 15 daqiqa"
* group.element[=].target[+].code = #50752-5
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --15 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-844
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 30 daqiqa"
* group.element[=].target[+].code = #1419-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --30 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-845
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 45 daqiqa"
* group.element[=].target[+].code = #1424-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --45 minutes post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-846
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 1 soat"
* group.element[=].target[+].code = #1404-3
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1 hour post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-847
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 1,5 soat o'tgach"
* group.element[=].target[+].code = #1398-7
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1.5 hours post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-848
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - insulin IV dozasidan keyin 2 soat"
* group.element[=].target[+].code = #46403-2
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --2 hours post dose insulin IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-849
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [Mass/hajm] - klonidinning oldindan dozasi"
* group.element[=].target[+].code = #40298-2
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-850
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - klonidin dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #55513-6
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --30 minutes post dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-851
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - klonidin dozasidan 45 daqiqa o'tgach"
* group.element[=].target[+].code = #55509-4
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --45 minutes post dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-852
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - klonidin dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #40299-0
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1 hour post dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-853
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - klonidin dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #40300-6
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-854
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - klonidin dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #40301-4
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2 hours post dose clonidine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-855
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 15 daqiqa oldin"
* group.element[=].target[+].code = #46408-1
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --15 minutes pre dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-856
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [Mass/hajm] - argininning oldingi dozasi"
* group.element[=].target[+].code = #40302-2
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-857
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 20 daqiqa o'tgach"
* group.element[=].target[+].code = #50444-9
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --20 minutes post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-858
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #46410-7
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --30 minutes post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-859
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 45 daqiqa o'tgach"
* group.element[=].target[+].code = #46411-5
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --45 minutes post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-860
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajmi] - arginin dozasidan 1 soat keyin"
* group.element[=].target[+].code = #40303-0
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1 hour post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-861
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #40304-8
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-862
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - arginin dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #40305-5
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2 hours post dose arginine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-863
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm] - glyukagonning oldingi dozasi"
* group.element[=].target[+].code = #58622-2
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --pre dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-864
* group.element[=].display = "Plazmadagi kortikotropin [Mass/hajm] - glyukagonning oldingi dozasi"
* group.element[=].target[+].code = #58622-2
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --pre dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-865
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - glyukagon dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #58581-0
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --30 minutes post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-866
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - glyukagon dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #58554-7
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --1 hour post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-867
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajmi] - glyukagon dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #58526-5
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --1.5 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-868
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - glyukagon dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #58572-9
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --2 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-869
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - glyukagon dozasidan 2,5 soat o'tgach"
* group.element[=].target[+].code = #58563-8
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --2.5 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-870
* group.element[=].display = "Plazmadagi kortikotropin [massa/hajm] - glyukagon dozasidan 3 soat o'tgach"
* group.element[=].target[+].code = #58594-3
* group.element[=].target[=].display = "Corticotropin [Mass/volume] in Plasma --3 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-871
* group.element[=].display = "Zardob yoki plazmadagi kortizol [Mass/hajm] --XXX dan oldingi sinov"
* group.element[=].target[+].code = #29358-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-872
* group.element[=].display = "Zardob yoki plazmadagi kortizol [Mass/hajm] --XXX dan oldingi sinov"
* group.element[=].target[+].code = #29358-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --pre XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-873
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan keyin 30 daqiqa"
* group.element[=].target[+].code = #12566-6
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-874
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan keyin 1 soat"
* group.element[=].target[+].code = #12567-4
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-875
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan keyin 1,5 soat"
* group.element[=].target[+].code = #29363-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1.5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-876
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan keyin 1,5 soat"
* group.element[=].target[+].code = #29363-9
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --1.5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-877
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan keyin 2 soat"
* group.element[=].target[+].code = #21224-1
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --2 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-878
* group.element[=].display = "Zardob yoki plazmadagi kortizol [massa/hajm] - XXX sinovidan 3 soat keyin"
* group.element[=].target[+].code = #21225-8
* group.element[=].target[=].display = "Cortisol [Mass/volume] in Serum or Plasma --3 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-879
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - glyukagonni qabul qilishdan oldin yoki keyin"
* group.element[=].target[+].code = #34063-8
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre or post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-880
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - glyukagonni qabul qilishdan oldin yoki keyin"
* group.element[=].target[+].code = #34063-8
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre or post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-881
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - glyukagon dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #55512-8
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --30 minutes post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-882
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajmi] - glyukagon dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #55517-7
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1 hour post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-883
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - glyukagon dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #55516-9
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-884
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - glyukagon dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #55516-9
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-885
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - glyukagon dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #55504-5
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-886
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - glyukagon dozasidan 2,5 soat o'tgach"
* group.element[=].target[+].code = #55515-1
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2.5 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-887
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - glyukagon dozasidan 3 soat o'tgach"
* group.element[=].target[+].code = #55511-0
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --3 hours post dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-888
* group.element[=].display = "Zardob yoki plazmadagi C peptid [mol/hajm] - glyukagonning oldindan dozasi"
* group.element[=].target[+].code = #47594-7
* group.element[=].target[=].display = "C peptide [Moles/volume] in Serum or Plasma --pre dose glucagon"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-889
* group.element[=].display = "Zardob yoki plazmadagi C peptid [massa/hajm] - 1 mg glyukagon IV dan 5 daqiqadan so'ng"
* group.element[=].target[+].code = #13861-0
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --5 minutes post 1 mg glucagon IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-890
* group.element[=].display = "Zardob yoki plazmadagi C peptid [massa/hajm] - 1 mg glyukagon IV dan 10 daqiqadan so'ng"
* group.element[=].target[+].code = #13859-4
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --10 minutes post 1 mg glucagon IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-891
* group.element[=].display = "Zardob yoki plazmadagi C peptid [massa/hajm] - 1 mg glyukagon IV dan 15 daqiqadan so'ng"
* group.element[=].target[+].code = #13860-2
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --15 minutes post 1 mg glucagon IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-892
* group.element[=].display = "Zardob yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 15 daqiqa oldin"
* group.element[=].target[+].code = #48108-5
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --15 minutes pre 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-893
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32317-0
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-894
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32317-0
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-895
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32317-0
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-896
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 15 daqiqadan so'ng"
* group.element[=].target[+].code = #47618-4
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --15 minutes post 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-897
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 30 minut."
* group.element[=].target[+].code = #32316-2
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-898
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 30 minut."
* group.element[=].target[+].code = #32316-2
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-899
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #21276-1
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-900
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #21276-1
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-901
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #21276-1
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-902
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 1,5 soatdan keyin"
* group.element[=].target[+].code = #25640-4
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1.5 hours post 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-903
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 2 soatdan keyin"
* group.element[=].target[+].code = #25643-8
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --2 hours post 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-904
* group.element[=].display = "Zardob yoki plazmadagi follitropin [birliklar/hajm] - XXX sinovidan keyin 4 soat"
* group.element[=].target[+].code = #55478-2
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --4 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-905
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 15 daqiqa oldin"
* group.element[=].target[+].code = #48118-4
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --15 minutes pre 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-906
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32328-7
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-907
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32328-7
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-908
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug dan oldin lutenizatsiya qiluvchi gormon IV"
* group.element[=].target[+].code = #32328-7
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-909
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 30 daqiqadan so'ng"
* group.element[=].target[+].code = #32326-1
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-910
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 30 daqiqadan so'ng"
* group.element[=].target[+].code = #32326-1
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --30 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-911
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #32327-9
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-912
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #32327-9
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-913
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV dan 1 soat keyin"
* group.element[=].target[+].code = #32327-9
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-914
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 1,5 soatdan keyin"
* group.element[=].target[+].code = #25717-0
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1.5 hours post 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-915
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - 100 ug lutenizatsiya qiluvchi gormon IV qabul qilingandan keyin 2 soatdan keyin"
* group.element[=].target[+].code = #25719-6
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --2 hours post 100 ug lutenizing releasing hormone IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-916
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - XXX sinovidan keyin 4 soat"
* group.element[=].target[+].code = #55501-1
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --4 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-917
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [massa/hajmi] - gonadotropin lizing gormoni dozasidan oldin"
* group.element[=].target[+].code = #1478-7
* group.element[=].target[=].display = "Follitropin [Mass/volume] in Serum or Plasma --pre dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-918
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 15 daqiqa o'tgach"
* group.element[=].target[+].code = #21275-3
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --15 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-919
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 20 daqiqa o'tgach"
* group.element[=].target[+].code = #57101-8
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --20 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-920
* group.element[=].display = "Qon zardobida yoki plazmadagi follitropin [birliklar/hajm] - gonadotropin chiqaradigan gormon dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #57100-0
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --30 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-921
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birlik/hajm] - gonadotropinni chiqaradigan gormon dozasidan 45 daqiqa o'tgach"
* group.element[=].target[+].code = #21278-7
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --45 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-922
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #57099-4
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1 hour post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-923
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birlik/hajm] - gonadotropinni chiqaradigan gormon dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #57098-6
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --1.5 hours post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-924
* group.element[=].display = "Qon zardobidagi yoki plazmadagi follitropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #21277-9
* group.element[=].target[=].display = "Follitropin [Units/volume] in Serum or Plasma --2 hours post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-925
* group.element[=].display = "Qon zardobidagi yoki plazmadagi lutropin [massa/hajmi] - gonadotropin lizing gormonining dozadan oldingi dozasi"
* group.element[=].target[+].code = #1600-6
* group.element[=].target[=].display = "Lutropin [Mass/volume] in Serum or Plasma --pre dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-926
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 15 daqiqa o'tgach"
* group.element[=].target[+].code = #46414-9
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --15 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-927
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 20 daqiqa o'tgach"
* group.element[=].target[+].code = #57106-7
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --20 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-928
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 30 daqiqa o'tgach"
* group.element[=].target[+].code = #57105-9
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --30 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-929
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 45 daqiqa o'tgach"
* group.element[=].target[+].code = #46415-6
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --45 minutes post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-930
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 1 soat o'tgach"
* group.element[=].target[+].code = #57104-2
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1 hour post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-931
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #57103-4
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --1.5 hours post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-932
* group.element[=].display = "Zardob yoki plazmadagi lutropin [birliklar/hajm] - gonadotropinni chiqaradigan gormon dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #57102-6
* group.element[=].target[=].display = "Lutropin [Units/volume] in Serum or Plasma --2 hours post dose gonadotropin releasing hormone"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-933
* group.element[=].display = "Zardob yoki plazmadagi C peptid [Mass/hajm] --asosiy"
* group.element[=].target[+].code = #57376-6
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-934
* group.element[=].display = "Zardob yoki plazmadagi C peptid [Mass/hajm] --XXX sinovidan keyin 1 soat"
* group.element[=].target[+].code = #13039-3
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-935
* group.element[=].display = "Zardob yoki plazmadagi C peptid [Mass/hajm] - XXX sinovidan keyin 2 soat"
* group.element[=].target[+].code = #13041-9
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --2 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-936
* group.element[=].display = "Zardob yoki plazmadagi C peptidi [Mass/hajm] - XXX sinovidan keyin 3 soat"
* group.element[=].target[+].code = #13043-5
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --3 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-937
* group.element[=].display = "Zardob yoki plazmadagi C peptidi [Mass/hajm] - XXX sinovidan keyin 4 soat"
* group.element[=].target[+].code = #27839-0
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --4 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-938
* group.element[=].display = "Zardob yoki plazmadagi C peptid [Mass/hajm] - XXX sinovidan keyin 5 soat"
* group.element[=].target[+].code = #13044-3
* group.element[=].target[=].display = "C peptide [Mass/volume] in Serum or Plasma --5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-939
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - ovqatdan oldin"
* group.element[=].target[+].code = #47670-5
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --pre-meal"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-940
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - XXX sinovidan keyin 1 soat"
* group.element[=].target[+].code = #27379-7
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-941
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - XXX sinovidan keyin 2 soat"
* group.element[=].target[+].code = #27826-7
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --2 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-942
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - XXX sinovidan keyin 3 soat"
* group.element[=].target[+].code = #27828-3
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --3 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-943
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - XXX sinovidan keyin 4 soat"
* group.element[=].target[+].code = #29378-7
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --4 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-944
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - XXX sinovidan keyin 5 soat"
* group.element[=].target[+].code = #27852-3
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-945
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajm] --1-namuna"
* group.element[=].target[+].code = #50206-2
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1st specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-946
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - XXX sinovidan keyin 1 soat"
* group.element[=].target[+].code = #12646-6
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1 hour post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-947
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - XXX sinovidan keyin 2 soat"
* group.element[=].target[+].code = #12610-2
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --2 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-948
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajm] - XXX sinovidan keyin 3 soat"
* group.element[=].target[+].code = #18342-6
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --3 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-949
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - XXX sinovidan keyin 4 soat"
* group.element[=].target[+].code = #29330-8
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --4 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-950
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - XXX sinovidan keyin 5 soat"
* group.element[=].target[+].code = #29331-6
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --5 hours post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-951
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birlik/hajm] - TRHning oldingi dozasi"
* group.element[=].target[+].code = #33269-2
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --pre dose TRH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-952
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birliklar/hajm] - TRH dozasidan 20 daqiqa keyin"
* group.element[=].target[+].code = #50541-2
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --20 minutes post dose TRH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-953
* group.element[=].display = "Serum yoki plazmadagi tirotropin [birlik/hajm] - TRH IV dozasidan 30 minut keyin"
* group.element[=].target[+].code = #14997-1
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --30 minutes post dose TRH IV"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-954
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birliklar/hajm] - XXX sinovidan keyin 40 daqiqa"
* group.element[=].target[+].code = #12936-1
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --40 minutes post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-955
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birliklar/hajm] - TRH dozasidan 1 soat keyin"
* group.element[=].target[+].code = #33259-3
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --1 hour post dose TRH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-956
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birlik/hajm] - TRH dozasidan 1,5 soat o'tgach"
* group.element[=].target[+].code = #33260-1
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --1.5 hours post dose TRH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-957
* group.element[=].display = "Zardob yoki plazmadagi tirotropin [birliklar/hajm] - TRH dozasidan 2 soat o'tgach"
* group.element[=].target[+].code = #33261-9
* group.element[=].target[=].display = "Thyrotropin [Units/volume] in Serum or Plasma --2 hours post dose TRH"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-958
* group.element[=].display = "Zardob yoki plazmadagi testosteron [Mass/hajm] --asosiy"
* group.element[=].target[+].code = #58835-0
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --baseline"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-959
* group.element[=].display = "Zardob yoki plazmadagi testosteron [massa/hajmi] - 1 kundan keyin 5000 U HCG IM"
* group.element[=].target[+].code = #47942-8
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --1 day post 5000 U HCG IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-960
* group.element[=].display = "Zardob yoki plazmadagi testosteron [massa/hajmi] - 5000 U HCG IM dan 2 kun o'tgach"
* group.element[=].target[+].code = #47943-6
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --2 days post 5000 U HCG IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-961
* group.element[=].display = "Zardob yoki plazmadagi testosteron [massa/hajmi] - 5000 U HCG IM dan 3 kun o'tgach"
* group.element[=].target[+].code = #47945-1
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --3 days post 5000 U HCG IM"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-962
* group.element[=].display = "Zardob yoki plazmadagi testosteron [massa/hajmi] - XXX sinovidan keyin 4 kun"
* group.element[=].target[+].code = #17693-3
* group.element[=].target[=].display = "Testosterone [Mass/volume] in Serum or Plasma --4 days post XXX challenge"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-963
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 75 g glyukoza PO dan 30 minut keyin"
* group.element[=].target[+].code = #1527-1
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --30 minutes post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-964
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 75 g glyukoza PO dan 1 soat keyin"
* group.element[=].target[+].code = #1507-3
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1 hour post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-965
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 75 g glyukoza PO dan keyin 1,5 soat."
* group.element[=].target[+].code = #1496-9
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1.5 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-966
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 75 g glyukoza PO dan 2 soat keyin"
* group.element[=].target[+].code = #1518-0
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --2 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-967
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 75 g glyukoza PO dan 3 soat keyin"
* group.element[=].target[+].code = #1533-9
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --3 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-968
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - 75 g glyukoza PO dan 30 minut keyin"
* group.element[=].target[+].code = #30362-8
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --30 minutes post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-969
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - 75 g glyukoza PO dan 1 soat keyin"
* group.element[=].target[+].code = #27830-9
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --1 hour post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-970
* group.element[=].display = "Zardob yoki plazmadagi insulin [birlik/hajm] - 75 g glyukoza PO dan keyin 1,5 soat."
* group.element[=].target[+].code = #27834-1
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --1.5 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-971
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - 75 g glyukoza PO dan keyin 2 soatdan keyin"
* group.element[=].target[+].code = #27860-6
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --2 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-972
* group.element[=].display = "Qon zardobidagi yoki plazmadagi insulin [birlik/hajm] - 75 g glyukoza PO dan 3 soat o'tgach"
* group.element[=].target[+].code = #27861-4
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --3 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-973
* group.element[=].display = "Zardob yoki plazmadagi insulin [birliklar/hajm] - 75 g glyukoza PO dan 4 soat o'tgach"
* group.element[=].target[+].code = #27862-2
* group.element[=].target[=].display = "Insulin [Units/volume] in Serum or Plasma --4 hours post 75 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-974
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 100 g glyukoza PO dan oldingi"
* group.element[=].target[+].code = #1549-5
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --pre 100 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-975
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 100 g glyukoza PO dan 1 soat keyin"
* group.element[=].target[+].code = #1501-6
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1 hour post 100 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-976
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 100 g glyukoza PO dan 2 soat o'tgach"
* group.element[=].target[+].code = #1514-9
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --2 hours post 100 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-977
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 100 g glyukoza PO dan 3 soat o'tgach"
* group.element[=].target[+].code = #1530-5
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --3 hours post 100 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-978
* group.element[=].display = "Zardob yoki plazmadagi glyukoza [massa/hajmi] - 50 g glyukoza PO dan 1 soat keyin"
* group.element[=].target[+].code = #1504-0
* group.element[=].target[=].display = "Glucose [Mass/volume] in Serum or Plasma --1 hour post 50 g glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-979
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - 1 g/kg glyukoza PO dan oldingi"
* group.element[=].target[+].code = #1635-2
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --pre 1 g/kg glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-980
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajm] - 1 g/kg glyukoza PO dan 30 daqiqadan so'ng"
* group.element[=].target[+].code = #46406-5
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --30 minutes post 1 g/kg glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-981
* group.element[=].display = "Zardob yoki plazmadagi somatotropin [massa/hajm] - 1 g/kg glyukoza PO dan 1 soat keyin"
* group.element[=].target[+].code = #1628-7
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1 hour post 1 g/kg glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-982
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - 1 g/kg glyukoza PO dan 1,5 soat o'tgach"
* group.element[=].target[+].code = #46407-3
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --1.5 hours post 1 g/kg glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-983
* group.element[=].display = "Qon zardobidagi yoki plazmadagi somatotropin [massa/hajmi] - 1 g/kg glyukoza PO dan 2 soat o'tgach"
* group.element[=].target[+].code = #1630-3
* group.element[=].target[=].display = "Somatotropin [Mass/volume] in Serum or Plasma --2 hours post 1 g/kg glucose PO"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-984
* group.element[=].display = "Zardob yoki plazmadagi amikasin [Mass/hajm]"
* group.element[=].target[+].code = #35669-1
* group.element[=].target[=].display = "Amikacin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-985
* group.element[=].display = "Serum yoki plazmadagi asetaminofen [Mass/hajm]"
* group.element[=].target[+].code = #3298-7
* group.element[=].target[=].display = "Acetaminophen [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-986
* group.element[=].display = "Zardob yoki plazmadagi digoksin [Mass/hajm]"
* group.element[=].target[+].code = #10535-3
* group.element[=].target[=].display = "Digoxin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-987
* group.element[=].display = "Qondagi everolimus [massa/hajm]"
* group.element[=].target[+].code = #50544-6
* group.element[=].target[=].display = "Everolimus [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-988
* group.element[=].display = "Zardob yoki plazmadagi fenitoin [Mass/hajm]"
* group.element[=].target[+].code = #3968-5
* group.element[=].target[=].display = "Phenytoin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-989
* group.element[=].display = "Zardob, plazma yoki qondagi barbituratlar [mavjudligi]"
* group.element[=].target[+].code = #3376-1
* group.element[=].target[=].display = "Barbiturates [Presence] in Serum, Plasma or Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-990
* group.element[=].display = "Zardob yoki plazmadagi karbamazepin [massa/hajm]"
* group.element[=].target[+].code = #3432-2
* group.element[=].target[=].display = "Carbamazepine [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-991
* group.element[=].display = "Zardob yoki plazmadagi levetirasetam [massa/hajm]"
* group.element[=].target[+].code = #30471-7
* group.element[=].target[=].display = "Levetiracetam [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-992
* group.element[=].display = "Zardob yoki plazmadagi litiy [mol/hajm]"
* group.element[=].target[+].code = #14334-7
* group.element[=].target[=].display = "Lithium [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-993
* group.element[=].display = "Zardob yoki plazmadagi metotreksat [mol/hajm]"
* group.element[=].target[+].code = #14836-1
* group.element[=].target[=].display = "Methotrexate [Moles/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-994
* group.element[=].display = "Zardob yoki plazmadagi salitsilatlar [Mass/hajm]"
* group.element[=].target[+].code = #4024-6
* group.element[=].target[=].display = "Salicylates [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-995
* group.element[=].display = "Qondagi siklosporin [Mass/hajm]"
* group.element[=].target[+].code = #3520-4
* group.element[=].target[=].display = "Cyclosporine [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-996
* group.element[=].display = "Qondagi sirolimus [massa/hajm]"
* group.element[=].target[+].code = #29247-4
* group.element[=].target[=].display = "Sirolimus [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-997
* group.element[=].display = "Qondagi takrolimus [massa/hajm]"
* group.element[=].target[+].code = #11253-2
* group.element[=].target[=].display = "Tacrolimus [Mass/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-998
* group.element[=].display = "Zardob yoki plazmadagi valproat [Mass/hajm]"
* group.element[=].target[+].code = #4086-5
* group.element[=].target[=].display = "Valproate [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-999
* group.element[=].display = "Zardob yoki plazmadagi vankomitsin [Mass/hajm]"
* group.element[=].target[+].code = #20578-1
* group.element[=].target[=].display = "Vancomycin [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1000
* group.element[=].display = "CD10 hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #8107-5
* group.element[=].target[=].display = "CD10 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1001
* group.element[=].display = "CD10 hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51216-0
* group.element[=].target[=].display = "CD10 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1002
* group.element[=].display = "CD103 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17100-9
* group.element[=].target[=].display = "CD103 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1003
* group.element[=].display = "CD103 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51221-0
* group.element[=].target[=].display = "CD103 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1004
* group.element[=].display = "CD117 hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #17107-4
* group.element[=].target[=].display = "CD117 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1005
* group.element[=].display = "CD117 hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #42866-4
* group.element[=].target[=].display = "CD117 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1006
* group.element[=].display = "CD11a portlashlari/Suyak iligidagi 100 portlash"
* group.element[=].target[+].code = #51031-3
* group.element[=].target[=].display = "CD11a blasts/100 blasts in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1007
* group.element[=].display = "CD11a hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17109-0
* group.element[=].target[=].display = "CD11a cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1008
* group.element[=].display = "CD11b hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17110-8
* group.element[=].target[=].display = "CD11b cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1009
* group.element[=].display = "CD11b hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51229-3
* group.element[=].target[=].display = "CD11b cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1010
* group.element[=].display = "CD11c hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8109-1
* group.element[=].target[=].display = "CD11c cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1011
* group.element[=].display = "CD11c hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #33202-3
* group.element[=].target[=].display = "CD11c cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1012
* group.element[=].display = "CD13 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8110-9
* group.element[=].target[=].display = "CD13 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1013
* group.element[=].display = "CD13 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51237-6
* group.element[=].target[=].display = "CD13 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1014
* group.element[=].display = "CD138 hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #42869-8
* group.element[=].target[=].display = "CD138 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1015
* group.element[=].display = "CD138 hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #42870-6
* group.element[=].target[=].display = "CD138 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1016
* group.element[=].display = "CD14 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8111-7
* group.element[=].target[=].display = "CD14 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1017
* group.element[=].display = "CD14 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #32507-6
* group.element[=].target[=].display = "CD14 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1018
* group.element[=].display = "CD15 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17117-3
* group.element[=].target[=].display = "CD15 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1019
* group.element[=].display = "CD15 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51251-7
* group.element[=].target[=].display = "CD15 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1020
* group.element[=].display = "CD16 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8115-8
* group.element[=].target[=].display = "CD16 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1021
* group.element[=].display = "CD16 xujayralari/Aniqlanmagan namunadagi 100 hujayra"
* group.element[=].target[+].code = #26560-3
* group.element[=].target[=].display = "CD16 cells/100 cells in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1022
* group.element[=].display = "CD16 + CD56 + hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #18267-5
* group.element[=].target[=].display = "CD16+CD56+ cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1023
* group.element[=].display = "CD16 + CD56 + hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51255-8
* group.element[=].target[=].display = "CD16+CD56+ cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1024
* group.element[=].display = "CD18 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17121-5
* group.element[=].target[=].display = "CD18 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1025
* group.element[=].display = "CD18 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #42874-8
* group.element[=].target[=].display = "CD18 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1026
* group.element[=].display = "CD19 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8117-4
* group.element[=].target[=].display = "CD19 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1027
* group.element[=].display = "CD19 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #32525-8
* group.element[=].target[=].display = "CD19 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1028
* group.element[=].display = "CD19 + Kappa + hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #17122-3
* group.element[=].target[=].display = "CD19+Kappa+ cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1029
* group.element[=].display = "CD19 + Kappa + hujayralari / tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #57432-7
* group.element[=].target[=].display = "CD19+Kappa+ cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1030
* group.element[=].display = "CD19 + Lambda + hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17123-1
* group.element[=].target[=].display = "CD19+Lambda+ cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1031
* group.element[=].display = "CD19 + Lambda + hujayralari / Tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #57433-5
* group.element[=].target[=].display = "CD19+Lambda+ cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1032
* group.element[=].display = "CD20 hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #8119-0
* group.element[=].target[=].display = "CD20 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1033
* group.element[=].display = "CD20 hujayralar / tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #57418-6
* group.element[=].target[=].display = "CD20 cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1034
* group.element[=].display = "CD21 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8120-8
* group.element[=].target[=].display = "CD21 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1035
* group.element[=].display = "CD22 hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #14017-8
* group.element[=].target[=].display = "CD22 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1036
* group.element[=].display = "CD22 hujayralari / tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #42875-5
* group.element[=].target[=].display = "CD22 cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1037
* group.element[=].display = "CD23 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #14018-6
* group.element[=].target[=].display = "CD23 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1038
* group.element[=].display = "CD23 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51268-1
* group.element[=].target[=].display = "CD23 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1039
* group.element[=].display = "CD235a hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17221-3
* group.element[=].target[=].display = "CD235a cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1040
* group.element[=].display = "CD235a hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #33208-0
* group.element[=].target[=].display = "CD235a cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1041
* group.element[=].display = "CD24 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17126-4
* group.element[=].target[=].display = "CD24 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1042
* group.element[=].display = "CD25 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8121-6
* group.element[=].target[=].display = "CD25 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1043
* group.element[=].display = "CD25 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #32493-9
* group.element[=].target[=].display = "CD25 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1044
* group.element[=].display = "CD3 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8124-0
* group.element[=].target[=].display = "CD3 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1045
* group.element[=].display = "CD3 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #32529-0
* group.element[=].target[=].display = "CD3 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1046
* group.element[=].display = "CD3 + CD4 + (T4 yordamchi) hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #8123-2
* group.element[=].target[=].display = "CD3+CD4+ (T4 helper) cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1047
* group.element[=].display = "CD3 + CD4 + (T4 yordamchi) hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #32533-2
* group.element[=].target[=].display = "CD3+CD4+ (T4 helper) cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1048
* group.element[=].display = "CD31 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17138-9
* group.element[=].target[=].display = "CD31 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1049
* group.element[=].display = "CD33 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8102-6
* group.element[=].target[=].display = "CD33 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1050
* group.element[=].display = "CD33 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51293-9
* group.element[=].target[=].display = "CD33 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1051
* group.element[=].display = "CD34 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8125-7
* group.element[=].target[=].display = "CD34 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1052
* group.element[=].display = "CD34 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #57400-4
* group.element[=].target[=].display = "CD34 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1053
* group.element[=].display = "CD38 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8126-5
* group.element[=].target[=].display = "CD38 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1054
* group.element[=].display = "CD38 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51298-8
* group.element[=].target[=].display = "CD38 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1055
* group.element[=].display = "CD4 + CD45 + hujayralar / qondagi 100 hujayra"
* group.element[=].target[+].code = #26573-6
* group.element[=].target[=].display = "CD4+CD45+ cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1056
* group.element[=].display = "CD4 + CD45 + hujayralar / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #43944-8
* group.element[=].target[=].display = "CD4+CD45+ cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1057
* group.element[=].display = "CD41 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17148-8
* group.element[=].target[=].display = "CD41 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1058
* group.element[=].display = "CD41 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51319-2
* group.element[=].target[=].display = "CD41 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1059
* group.element[=].display = "CD41a hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17825-1
* group.element[=].target[=].display = "CD41a cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1060
* group.element[=].display = "CD41a xujayralari/Aniqlanmagan namunadagi 100 hujayra"
* group.element[=].target[+].code = #33775-8
* group.element[=].target[=].display = "CD41a cells/100 cells in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1061
* group.element[=].display = "CD42 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #19122-1
* group.element[=].target[=].display = "CD42 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1062
* group.element[=].display = "CD42 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51323-4
* group.element[=].target[=].display = "CD42 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1063
* group.element[=].display = "CD42a hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17149-6
* group.element[=].target[=].display = "CD42a cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1064
* group.element[=].display = "CD45 (limfa) hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8130-7
* group.element[=].target[=].display = "CD45 (Lymphs) cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1065
* group.element[=].display = "CD45 (limfa) hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51340-8
* group.element[=].target[=].display = "CD45 (Lymphs) cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1066
* group.element[=].display = "CD45RA hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17157-9
* group.element[=].target[=].display = "CD45RA cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1067
* group.element[=].display = "CD45RO hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17159-5
* group.element[=].target[=].display = "CD45RO cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1068
* group.element[=].display = "CD5 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8132-3
* group.element[=].target[=].display = "CD5 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1069
* group.element[=].display = "CD5 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #35640-2
* group.element[=].target[=].display = "CD5 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1070
* group.element[=].display = "CD56 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8133-1
* group.element[=].target[=].display = "CD56 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1071
* group.element[=].display = "CD56 hujayralari / tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #57424-4
* group.element[=].target[=].display = "CD56 cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1072
* group.element[=].display = "CD59 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17177-7
* group.element[=].target[=].display = "CD59 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1073
* group.element[=].display = "CD59 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51358-0
* group.element[=].target[=].display = "CD59 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1074
* group.element[=].display = "CD61 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #20478-4
* group.element[=].target[=].display = "CD61 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1075
* group.element[=].display = "CD61 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51361-4
* group.element[=].target[=].display = "CD61 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1076
* group.element[=].display = "CD64 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17183-5
* group.element[=].target[=].display = "CD64 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1077
* group.element[=].display = "CD64 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51365-5
* group.element[=].target[=].display = "CD64 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1078
* group.element[=].display = "CD68 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17189-2
* group.element[=].target[=].display = "CD68 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1079
* group.element[=].display = "CD7 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #8135-6
* group.element[=].target[=].display = "CD7 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1080
* group.element[=].display = "CD7 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #35641-0
* group.element[=].target[=].display = "CD7 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1081
* group.element[=].display = "Qondagi FLAER hujayralari [Mavjudligi]"
* group.element[=].target[+].code = #35468-8
* group.element[=].target[=].display = "FLAER cells [Presence] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1082
* group.element[=].display = "FMC7 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #17220-5
* group.element[=].target[=].display = "FMC7 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1083
* group.element[=].display = "FMC7 hujayralari / Tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #57428-5
* group.element[=].target[=].display = "FMC7 cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1084
* group.element[=].display = "HLA-DR+ hujayralari/qondagi 100 hujayra"
* group.element[=].target[+].code = #31113-4
* group.element[=].target[=].display = "HLA-DR+ cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1085
* group.element[=].display = "HLA-DR+ hujayralari/suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #51380-4
* group.element[=].target[=].display = "HLA-DR+ cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1086
* group.element[=].display = "Leykotsitlarda IgD limfotsitlari/100 limfotsitlar"
* group.element[=].target[+].code = #9441-7
* group.element[=].target[=].display = "IgD lymphocytes/100 lymphocytes in Leukocytes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1087
* group.element[=].display = "Leykotsitlarda IgM limfotsitlari/100 limfotsitlar"
* group.element[=].target[+].code = #9443-3
* group.element[=].target[=].display = "IgM lymphocytes/100 lymphocytes in Leukocytes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1088
* group.element[=].display = "Miyeloperoksidaza hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #61183-0
* group.element[=].target[=].display = "Myeloperoxidase cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1089
* group.element[=].display = "Miyeloperoksidaza hujayralari / tana suyuqligidagi 100 hujayra"
* group.element[=].target[+].code = #42890-4
* group.element[=].target[=].display = "Myeloperoxidase cells/100 cells in Body fluid"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1090
* group.element[=].display = "Sitoplazmatik CD22 hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #52877-8
* group.element[=].target[=].display = "Cytoplasmic CD22 cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1091
* group.element[=].display = "Sitoplazmatik CD22 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #52879-4
* group.element[=].target[=].display = "Cytoplasmic CD22 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1092
* group.element[=].display = "Sitoplazmatik CD3 hujayralari/aniqlanmagan namunadagi 100 hujayra"
* group.element[=].target[+].code = #32857-5
* group.element[=].target[=].display = "Cytoplasmic CD3 cells/100 cells in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1093
* group.element[=].display = "Sitoplazmatik CD3 hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #52883-6
* group.element[=].target[=].display = "Cytoplasmic CD3 cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1094
* group.element[=].display = "Sitoplazmatik CD79a hujayralari / qondagi 100 hujayra"
* group.element[=].target[+].code = #52991-7
* group.element[=].target[=].display = "Cytoplasmic CD79a cells/100 cells in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1095
* group.element[=].display = "Sitoplazmatik CD79a hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #52993-3
* group.element[=].target[=].display = "Cytoplasmic CD79a cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1096
* group.element[=].display = "Qondagi TCR alfa beta hujayralari [#/volume]"
* group.element[=].target[+].code = #50975-2
* group.element[=].target[=].display = "TCR alpha beta cells [#/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1097
* group.element[=].display = "Qondagi TCR gamma delta hujayralari [#/volume]"
* group.element[=].target[+].code = #50976-0
* group.element[=].target[=].display = "TCR gamma delta cells [#/volume] in Blood"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1098
* group.element[=].display = "Terminal deoksiribonukleotidil transferaza hujayralari/Qondagi 100 hujayra oqimi sitometriyasi (FC)"
* group.element[=].target[+].code = #52996-6
* group.element[=].target[=].display = "Terminal deoxyribonucleotidyl transferase cells/100 cells in Blood by Flow cytometry (FC)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1099
* group.element[=].display = "Terminal deoksiribonukleotidil transferaza hujayralari / suyak iligidagi 100 hujayra"
* group.element[=].target[+].code = #42620-5
* group.element[=].target[=].display = "Terminal deoxyribonucleotidyl transferase cells/100 cells in Bone marrow"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1100
* group.element[=].display = "Siydikdagi zinokorlar [tarjima]"
* group.element[=].target[+].code = #59061-2
* group.element[=].target[=].display = "Adulterants [interpretation] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1101
* group.element[=].display = "Siydikdagi zinokorlar [tarjima]"
* group.element[=].target[+].code = #59061-2
* group.element[=].target[=].display = "Adulterants [interpretation] in Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1102
* group.element[=].display = "Siydikdagi amfetaminlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #70138-3
* group.element[=].target[=].display = "Amphetamines [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1103
* group.element[=].display = "Siydikdagi Lysergate dietilamid [Mass/hajm] Screen usuli bilan"
* group.element[=].target[+].code = #33350-0
* group.element[=].target[=].display = "Lysergate diethylamide [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1104
* group.element[=].display = "Siydikdagi amfetaminlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #70138-3
* group.element[=].target[=].display = "Amphetamines [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1105
* group.element[=].display = "Siydikdagi barbituratlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #20664-9
* group.element[=].target[=].display = "Barbiturates [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1106
* group.element[=].display = "Siydikdagi barbituratlar [Mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #19270-8
* group.element[=].target[=].display = "Barbiturates [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1107
* group.element[=].display = "Siydikda benzodiazepinlar [Mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #14316-4
* group.element[=].target[=].display = "Benzodiazepines [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1108
* group.element[=].display = "Siydikdagi benzodiazepinlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #70140-9
* group.element[=].target[=].display = "Benzodiazepines [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1109
* group.element[=].display = "Ekran usuli uchun siydikda buprenorfinni kesish [Mass/hajm]"
* group.element[=].target[+].code = #77787-0
* group.element[=].target[=].display = "Buprenorphine cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1110
* group.element[=].display = "Siydikda Buprenorfin+Norbuprenorfin [Mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #58359-1
* group.element[=].target[=].display = "Buprenorphine+Norbuprenorphine [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1111
* group.element[=].display = "Siydikdagi metilendioksimetamfetamin [Mavjudligi] Screen usuli bilan"
* group.element[=].target[+].code = #19568-5
* group.element[=].target[=].display = "Methylenedioxymethamphetamine [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1112
* group.element[=].display = "Siydikdagi metilendioksimetamfetamin [Mavjudligi] Screen usuli bilan"
* group.element[=].target[+].code = #19568-5
* group.element[=].target[=].display = "Methylenedioxymethamphetamine [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1113
* group.element[=].display = "Siydikda 6-Monoatsetilmorfin (6-MAM) [mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #19321-9
* group.element[=].target[=].display = "6-Monoacetylmorphine (6-MAM) [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1114
* group.element[=].display = "Siydikda 6-Monoatsetilmorfin (6-MAM) chegarasi [Mass/hajm] Skrining usuli"
* group.element[=].target[+].code = #19323-5
* group.element[=].target[=].display = "6-Monoacetylmorphine (6-MAM) cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1115
* group.element[=].display = "Siydikdagi kannabinoidlar [Mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #18282-4
* group.element[=].target[=].display = "Cannabinoids [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1116
* group.element[=].display = "Tetrahidrokannabinolni kesish [Mass/hajm] Siydik uchun Skrin usuli"
* group.element[=].target[+].code = #19417-5
* group.element[=].target[=].display = "Tetrahydrocannabinol cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1117
* group.element[=].display = "Siydikda kokainni kesish [Mass/hajm]. Ekran usuli"
* group.element[=].target[+].code = #19362-3
* group.element[=].target[=].display = "Cocaine cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1118
* group.element[=].display = "Siydikda kokainni kesish [Mass/hajm]. Ekran usuli"
* group.element[=].target[+].code = #19362-3
* group.element[=].target[=].display = "Cocaine cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1119
* group.element[=].display = "Siydikdagi opiatlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #70150-8
* group.element[=].target[=].display = "Opiates [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1120
* group.element[=].display = "Fentanil va Norfentanil paneli - Siydik"
* group.element[=].target[+].code = #67822-7
* group.element[=].target[=].display = "Fentanyl and Norfentanyl panel - Urine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1121
* group.element[=].display = "Siydikdagi ketamin [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #19499-3
* group.element[=].target[=].display = "Ketamine [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1122
* group.element[=].display = "Ekran usuli uchun siydikdagi oksikodonni kesish [Mass/hajm]"
* group.element[=].target[+].code = #19644-4
* group.element[=].target[=].display = "Oxycodone cutoff [Mass/volume] in Urine for Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1123
* group.element[=].display = "Siydikdagi opiatlar [Mavjudligi] Ekran usuli bilan"
* group.element[=].target[+].code = #19295-5
* group.element[=].target[=].display = "Opiates [Presence] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1124
* group.element[=].display = "Sintetik kannabinoidlar [Mavjudligi] Aniqlanmagan namunada Screen usuli bilan"
* group.element[=].target[+].code = #72379-1
* group.element[=].target[=].display = "Cannabinoids synthetic [Presence] in Unspecified specimen by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1125
* group.element[=].display = "Siydikdagi kannabinoidlar [Mass/hajm] Ekran usuli bilan"
* group.element[=].target[+].code = #70143-3
* group.element[=].target[=].display = "Cannabinoids [Mass/volume] in Urine by Screen method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1126
* group.element[=].display = "Mikobakteriya tuberkulyozi rifampinga qarshilik geni [Identifikator] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #33634-7
* group.element[=].target[=].display = "Mycobacterium tuberculosis rifampin resistance gene [Identifier] by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1127
* group.element[=].display = "Mikobakteriya tuberkulyozi rifampinga qarshilik geni [Identifikator] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #33634-7
* group.element[=].target[=].display = "Mycobacterium tuberculosis rifampin resistance gene [Identifier] by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1128
* group.element[=].display = "Mikobakteriya tuberkulyozi rifampinga qarshilik geni [Identifikator] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #106053-2
* group.element[=].target[=].display = "Rheumatoid Factor IgM and IgA antibody panel - Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1129
* group.element[=].display = "Mikobakteriya tuberkulyozi rifampinga qarshilik geni [Identifikator] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #33634-7
* group.element[=].target[=].display = "Mycobacterium tuberculosis rifampin resistance gene [Identifier] by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1130
* group.element[=].display = "Mikobakteriya tuberkulyozi rifampinga qarshilik geni [Identifikator] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #33634-7
* group.element[=].target[=].display = "Mycobacterium tuberculosis rifampin resistance gene [Identifier] by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1131
* group.element[=].display = "Hisoblash bo'yicha Zardob yoki plazmaning osmolyalligi"
* group.element[=].target[+].code = #18182-6
* group.element[=].target[=].display = "Osmolality of Serum or Plasma by calculation"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1132
* group.element[=].display = "Zond va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi Varicella zoster virusi DNKsi [Mavjudligi]"
* group.element[=].target[+].code = #11483-5
* group.element[=].target[=].display = "Varicella zoster virus DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1133
* group.element[=].display = "HLA-B27 [Presence]"
* group.element[=].target[+].code = #4821-5
* group.element[=].target[=].display = "HLA-B27 [Presence]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1134
* group.element[=].display = "Spermatozoa harakati [#/volume] spermada"
* group.element[=].target[+].code = #42531-4
* group.element[=].target[=].display = "Spermatozoa Motile [#/volume] in Semen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1135
* group.element[=].display = "Teskari ABO guruhi [Turi]"
* group.element[=].target[+].code = #1303-7
* group.element[=].target[=].display = "Reverse ABO group [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1136
* group.element[=].display = "Teskari ABO guruhi [Turi]"
* group.element[=].target[+].code = #1303-7
* group.element[=].target[=].display = "Reverse ABO group [Type]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1137
* group.element[=].display = "Qizil qon hujayralarida tekshirilgan qon guruhi antijeni"
* group.element[=].target[+].code = #33062-1
* group.element[=].target[=].display = "Blood group antigens tested for on Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1138
* group.element[=].display = "Antihuman globulin tomonidan Zardob yoki plazmadagi XXX qon guruhi Ab [titer]"
* group.element[=].target[+].code = #50970-3
* group.element[=].target[=].display = "XXX blood group Ab [Titer] in Serum or Plasma by Antihuman globulin"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1139
* group.element[=].display = "Zardob yoki plazmada aniqlangan qon guruhi antikorlari"
* group.element[=].target[+].code = #888-8
* group.element[=].target[=].display = "Blood group antibodies identified in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1140
* group.element[=].display = "Asosiy krossmatch [tarjima]"
* group.element[=].target[+].code = #1250-0
* group.element[=].target[=].display = "Major crossmatch [interpretation]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1141
* group.element[=].display = "Qizil qon hujayralarida to'g'ridan-to'g'ri antiglobulin testi. IgG o'ziga xos reagent [talqin]"
* group.element[=].target[+].code = #1006-6
* group.element[=].target[=].display = "Direct antiglobulin test.IgG specific reagent [interpretation] on Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1142
* group.element[=].display = "Qizil qon hujayralarida to'g'ridan-to'g'ri antiglobulin testi. IgG o'ziga xos reagent [talqin]"
* group.element[=].target[+].code = #1006-6
* group.element[=].target[=].display = "Direct antiglobulin test.IgG specific reagent [interpretation] on Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1143
* group.element[=].display = "To'g'ridan-to'g'ri antiglobulin testi. Qizil qon hujayralarida maxsus reagent [Mavjudligi]"
* group.element[=].target[+].code = #1004-1
* group.element[=].target[=].display = "Direct antiglobulin test.complement specific reagent [Presence] on Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1144
* group.element[=].display = "To'g'ridan-to'g'ri antiglobulin testi. Qizil qon hujayralarida maxsus reagent [Mavjudligi]"
* group.element[=].target[+].code = #1004-1
* group.element[=].target[=].display = "Direct antiglobulin test.complement specific reagent [Presence] on Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1145
* group.element[=].display = "Bilvosita antiglobulin testi. Zardob yoki plazmadagi aniqlanmagan reagent [mavjudligi]"
* group.element[=].target[+].code = #50959-6
* group.element[=].target[=].display = "Indirect antiglobulin test.unspecified reagent [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1146
* group.element[=].display = "Bilvosita antiglobulin testi. Zardob yoki plazmadagi aniqlanmagan reagent [mavjudligi]"
* group.element[=].target[+].code = #50959-6
* group.element[=].target[=].display = "Indirect antiglobulin test.unspecified reagent [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1147
* group.element[=].display = "Agglyutinatsiya yo'li bilan zardob yoki plazmadagi sovuq aglutinin [mavjudligi]"
* group.element[=].target[+].code = #5097-1
* group.element[=].target[=].display = "Cold agglutinin [Presence] in Serum or Plasma by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1148
* group.element[=].display = "Bakterial sezuvchanlik paneli"
* group.element[=].target[+].code = #29576-6
* group.element[=].target[=].display = "Bacterial susceptibility panel"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1149
* group.element[=].display = "Aspiratda Aerob madaniyati bilan aniqlangan bakteriyalar"
* group.element[=].target[+].code = #597-5
* group.element[=].target[=].display = "Bacteria identified in Aspirate by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1150
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1151
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1152
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1153
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1154
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1155
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1156
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1157
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1158
* group.element[=].display = "Siydikda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #630-4
* group.element[=].target[=].display = "Bacteria identified in Urine by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1159
* group.element[=].display = "Siydikda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #630-4
* group.element[=].target[=].display = "Bacteria identified in Urine by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1160
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1161
* group.element[=].display = "Najasda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #625-4
* group.element[=].target[=].display = "Bacteria identified in Stool by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1162
* group.element[=].display = "Najasda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #625-4
* group.element[=].target[=].display = "Bacteria identified in Stool by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1163
* group.element[=].display = "Najasda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #625-4
* group.element[=].target[=].display = "Bacteria identified in Stool by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1164
* group.element[=].display = "Aerob madaniyati bilan quloqda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #608-0
* group.element[=].target[=].display = "Bacteria identified in Ear by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1165
* group.element[=].display = "Aerob madaniyati bilan quloqda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #608-0
* group.element[=].target[=].display = "Bacteria identified in Ear by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1166
* group.element[=].display = "Madaniyat bo'yicha yarada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #6462-6
* group.element[=].target[=].display = "Bacteria identified in Wound by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1167
* group.element[=].display = "Madaniyat bo'yicha yarada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #6462-6
* group.element[=].target[=].display = "Bacteria identified in Wound by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1168
* group.element[=].display = "Madaniyat bo'yicha yarada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #6462-6
* group.element[=].target[=].display = "Bacteria identified in Wound by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1169
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1170
* group.element[=].display = "Balg'amda madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #6460-0
* group.element[=].target[=].display = "Bacteria identified in Sputum by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1171
* group.element[=].display = "Balg'amda Aerob madaniyati bilan aniqlangan bakteriyalar"
* group.element[=].target[+].code = #622-1
* group.element[=].target[=].display = "Bacteria identified in Sputum by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1172
* group.element[=].display = "Bachadon bo'ynida madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #43410-0
* group.element[=].target[=].display = "Bacteria identified in Cervix by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1173
* group.element[=].display = "Bachadon bo'ynida madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #43410-0
* group.element[=].target[=].display = "Bacteria identified in Cervix by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1174
* group.element[=].display = "Aerob madaniyati bilan burunda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #10353-1
* group.element[=].target[=].display = "Bacteria identified in Nose by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1175
* group.element[=].display = "Aerob madaniyati bilan burunda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #10353-1
* group.element[=].target[=].display = "Bacteria identified in Nose by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1176
* group.element[=].display = "Madaniyat bo'yicha tomoqqa aniqlangan bakteriyalar"
* group.element[=].target[+].code = #626-2
* group.element[=].target[=].display = "Bacteria identified in Throat by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1177
* group.element[=].display = "Aniqlanmagan namunada Aerobe madaniyati yordamida aniqlangan bakteriyalar"
* group.element[=].target[+].code = #634-6
* group.element[=].target[=].display = "Bacteria identified in Unspecified specimen by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1178
* group.element[=].display = "Aerob madaniyati bilan ko'zda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #609-8
* group.element[=].target[=].display = "Bacteria identified in Eye by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1179
* group.element[=].display = "Madaniyat bo'yicha Aniqlanmagan namunada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #6463-4
* group.element[=].target[=].display = "Bacteria identified in Unspecified specimen by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1180
* group.element[=].display = "Madaniyat tomonidan miya orqa miya suyuqligida aniqlangan bakteriyalar"
* group.element[=].target[+].code = #606-4
* group.element[=].target[=].display = "Bacteria identified in Cerebral spinal fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1181
* group.element[=].display = "Madaniyat tomonidan miya orqa miya suyuqligida aniqlangan bakteriyalar"
* group.element[=].target[+].code = #606-4
* group.element[=].target[=].display = "Bacteria identified in Cerebral spinal fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1182
* group.element[=].display = "Organizmga xos madaniyat bo'yicha aniqlanmagan namunada aniqlangan Bordetella sp"
* group.element[=].target[+].code = #6317-2
* group.element[=].target[=].display = "Bordetella sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1183
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #14324-8
* group.element[=].target[=].display = "Escherichia coli K1 Ag [Presence] in Cerebral spinal fluid by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1184
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #20459-4
* group.element[=].target[=].display = "Streptococcus agalactiae Ag [Presence] in Specimen by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1185
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #33400-3
* group.element[=].target[=].display = "Neisseria meningitidis serogroup B+Escherichia coli K1 Ag [Presence] in Serum by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1186
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #75518-1
* group.element[=].target[=].display = "Bacteria identified in Cerebral spinal fluid by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1187
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #30938-5
* group.element[=].target[=].display = "Haemophilus influenzae B dose count in combination vaccine"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1188
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #33397-1
* group.element[=].target[=].display = "Neisseria meningitidis serogroups A+C+w135+Y Ag [Presence] in Serum by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1189
* group.element[=].display = "Cryptococcus sp Ag [Titer] miya orqa miya suyuqligida lateks aglutinatsiyasi bilan"
* group.element[=].target[+].code = #17652-9
* group.element[=].target[=].display = "Streptococcus pneumoniae Ag [Presence] in Specimen by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1190
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1191
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #14357-8
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Cerebral spinal fluid by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1192
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1193
* group.element[=].display = "Siydikdagi mikroskopik kuzatuv [Identifikator] Gram bo'yicha"
* group.element[=].target[+].code = #653-6
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Urine by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1194
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1195
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1196
* group.element[=].display = "Balg'amdagi mikroskopik kuzatish [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #647-8
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1197
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1198
* group.element[=].display = "Tekshiruv natijasida aniqlanmagan namunada parazit aniqlangan"
* group.element[=].target[+].code = #20932-0
* group.element[=].target[=].display = "Parasite identified in Unspecified specimen by Inspection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1199
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1200
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1201
* group.element[=].display = "Najasdagi mikroskopik kuzatuv [Identifikator] Gram bo'yicha"
* group.element[=].target[+].code = #649-4
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1202
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1203
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1204
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1205
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1206
* group.element[=].display = "Plevra suyuqligidagi mikroskopik kuzatuv [Identifikator] Gram bo'yicha"
* group.element[=].target[+].code = #14360-2
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Pleural fluid by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1207
* group.element[=].display = "Aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #656-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1208
* group.element[=].display = "Mikroskopik kuzatish [Identifikator] Aniqlanmagan namunada Gram bo'yash orqali"
* group.element[=].target[+].code = #664-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1209
* group.element[=].display = "Oshqozon suyuqligidagi mikroskopik kuzatish [Identifikator] kislota tez bo'yalishi. Ziehl-Neelsen"
* group.element[=].target[+].code = #642-9
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Ziehl-Neelsen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1210
* group.element[=].display = "Smear tomonidan aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator]"
* group.element[=].target[+].code = #20431-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Smear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1211
* group.element[=].display = "Smear tomonidan aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator]"
* group.element[=].target[+].code = #20431-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Smear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1212
* group.element[=].display = "Smear tomonidan aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator]"
* group.element[=].target[+].code = #20431-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Smear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1213
* group.element[=].display = "Smear tomonidan aniqlanmagan namunadagi mikroskopik kuzatuv [Identifikator]"
* group.element[=].target[+].code = #20431-3
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Unspecified specimen by Smear"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1214
* group.element[=].display = "Campylobacter sp aniqlanmagan namunada organizmga xos madaniyat tomonidan aniqlangan"
* group.element[=].target[+].code = #6332-1
* group.element[=].target[=].display = "Campylobacter sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1215
* group.element[=].display = "Organizmga xos madaniyat bo'yicha siydik cho'kindisida Chlamydia trachomatis [mavjudligi]"
* group.element[=].target[+].code = #14467-5
* group.element[=].target[=].display = "Chlamydia trachomatis [Presence] in Urine sediment by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1216
* group.element[=].display = "Clostridium difficile [Mavjudligi] najasda organizmning o'ziga xos madaniyati"
* group.element[=].target[+].code = #562-9
* group.element[=].target[=].display = "Clostridium difficile [Presence] in Stool by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1217
* group.element[=].display = "Immunoassay orqali Zardobda Cryptococcus sp Ag [Mavjudligi]"
* group.element[=].target[+].code = #29903-2
* group.element[=].target[=].display = "Cryptococcus sp Ag [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1218
* group.element[=].display = "Cryptosporidium sp [Identifikator] najasda organizmga xos madaniyat"
* group.element[=].target[+].code = #27907-5
* group.element[=].target[=].display = "Cryptosporidium sp [Identifier] in Stool by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1219
* group.element[=].display = "Corynebacterium diphtheriae [mavjudligi] organizmga xos madaniyat bo'yicha aniqlanmagan namunada"
* group.element[=].target[+].code = #16676-9
* group.element[=].target[=].display = "Corynebacterium diphtheriae [Presence] in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1220
* group.element[=].display = "Yorug'lik mikroskopi orqali aniqlanmagan namunada aniqlangan mikrosporidiya"
* group.element[=].target[+].code = #10857-1
* group.element[=].target[=].display = "Microsporidia identified in Unspecified specimen by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1221
* group.element[=].display = "Aniqlanmagan namunada aniqlangan gelmint"
* group.element[=].target[+].code = #10671-6
* group.element[=].target[=].display = "Helminth identified in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1222
* group.element[=].display = "Tekshiruv natijasida aniqlanmagan namunada parazit aniqlangan"
* group.element[=].target[+].code = #20932-0
* group.element[=].target[=].display = "Parasite identified in Unspecified specimen by Inspection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1223
* group.element[=].display = "Madaniyat bo'yicha sinovial suyuqlikda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #621-3
* group.element[=].target[=].display = "Bacteria identified in Synovial fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1224
* group.element[=].display = "Madaniyat bo'yicha sinovial suyuqlikda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #621-3
* group.element[=].target[=].display = "Bacteria identified in Synovial fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1225
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1226
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1227
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1228
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1229
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1230
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1231
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1232
* group.element[=].display = "Qizil qon hujayralarining suyultirilgan qizil qon hujayralarining osmotik mo'rtligi"
* group.element[=].target[+].code = #12241-6
* group.element[=].target[=].display = "Osmotic fragility of Red Blood Cells by Diluted RBC"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1233
* group.element[=].display = "Amerika uy chang oqadilar IgE Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #6095-4
* group.element[=].target[=].display = "American house dust mite IgE Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1234
* group.element[=].display = "Najasdagi gemoglobin.gastrointestinal [Mavjudligi]"
* group.element[=].target[+].code = #2335-8
* group.element[=].target[=].display = "Hemoglobin.gastrointestinal [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1235
* group.element[=].display = "Najasdagi gemoglobin.gastrointestinal [Mavjudligi]"
* group.element[=].target[+].code = #2335-8
* group.element[=].target[=].display = "Hemoglobin.gastrointestinal [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1236
* group.element[=].display = "Organizmga xos madaniyat bo'yicha genital namunadagi Gardnerella vaginalis [Mavjudligi]"
* group.element[=].target[+].code = #21284-5
* group.element[=].target[=].display = "Gardnerella vaginalis [Presence] in Genital specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1237
* group.element[=].display = "Beta-laktamaza kengaygan spektr [sezuvchanlik]"
* group.element[=].target[+].code = #6984-9
* group.element[=].target[=].display = "Beta lactamase.extended spectrum [Susceptibility]"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1238
* group.element[=].display = "Neisseria gonorrhoeae [Mavjudligi] organizmga xos madaniyat bo'yicha aniqlanmagan namunada"
* group.element[=].target[+].code = #698-1
* group.element[=].target[=].display = "Neisseria gonorrhoeae [Presence] in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1239
* group.element[=].display = "Immunoassay tomonidan aniqlanmagan namunada Streptococcus pyogenes Ag [Mavjudligi]"
* group.element[=].target[+].code = #6558-1
* group.element[=].target[=].display = "Streptococcus pyogenes Ag [Presence] in Unspecified specimen by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1240
* group.element[=].display = "Immunoassay tomonidan aniqlanmagan namunada Streptococcus pyogenes Ag [Mavjudligi]"
* group.element[=].target[+].code = #6558-1
* group.element[=].target[=].display = "Streptococcus pyogenes Ag [Presence] in Unspecified specimen by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1241
* group.element[=].display = "Madaniyat bo'yicha qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #600-7
* group.element[=].target[=].display = "Bacteria identified in Blood by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1242
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1243
* group.element[=].display = "Anaerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17934-1
* group.element[=].target[=].display = "Bacteria identified in Blood product unit by Anaerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1244
* group.element[=].display = "Anaerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17934-1
* group.element[=].target[=].display = "Bacteria identified in Blood by Anaerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1245
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1246
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #60985-9
* group.element[=].target[=].display = "Central venous pressure (CVP)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1247
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1248
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1249
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1250
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1251
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1252
* group.element[=].display = "Aerob madaniyati bilan qonda aniqlangan bakteriyalar"
* group.element[=].target[+].code = #17928-3
* group.element[=].target[=].display = "Bacteria identified in Blood by Aerobe culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1253
* group.element[=].display = "Qizil qon hujayralarida katalaza [fermentativ faollik/hajm]"
* group.element[=].target[+].code = #2054-5
* group.element[=].target[=].display = "Catalase [Enzymatic activity/volume] in Red Blood Cells"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1254
* group.element[=].display = "Kateter uchida madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #19128-8
* group.element[=].target[=].display = "Bacteria identified in Catheter tip by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1255
* group.element[=].display = "Bakterial sezuvchanlik paneli"
* group.element[=].target[+].code = #29576-6
* group.element[=].target[=].display = "Bacterial susceptibility panel"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1256
* group.element[=].display = "Leishmania sp to'qimalarida Giemsa bo'yog'i bilan aniqlangan"
* group.element[=].target[+].code = #10686-4
* group.element[=].target[=].display = "Leishmania sp identified in Tissue by Giemsa stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1257
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #575-1
* group.element[=].target[=].display = "Fungus identified in Skin by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1258
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #573-6
* group.element[=].target[=].display = "Fungus identified in Nail by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1259
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #106041-7
* group.element[=].target[=].display = "Fungus identified in Ear fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1260
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #571-0
* group.element[=].target[=].display = "Fungus identified in Hair by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1261
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #580-1
* group.element[=].target[=].display = "Fungus identified in Specimen by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1262
* group.element[=].display = "Madaniyat bo'yicha aniqlanmagan namunada aniqlangan qo'ziqorin"
* group.element[=].target[+].code = #580-1
* group.element[=].target[=].display = "Fungus identified in Unspecified specimen by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1263
* group.element[=].display = "Organizmga xos madaniyat bo'yicha oshqozon suyuqligida aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #9824-4
* group.element[=].target[=].display = "Mycobacterium sp identified in Gastric fluid by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1264
* group.element[=].display = "Organizmga xos madaniyat bo'yicha balg'amda aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #539-7
* group.element[=].target[=].display = "Mycobacterium sp identified in Sputum by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1265
* group.element[=].display = "Organizmga xos madaniyat bo'yicha bronxial namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #9823-6
* group.element[=].target[=].display = "Mycobacterium sp identified in Bronchial specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1266
* group.element[=].display = "Siydikda organizmning o'ziga xos madaniyati bilan aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #541-3
* group.element[=].target[=].display = "Mycobacterium sp identified in Urine by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1267
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #29597-0
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1268
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1269
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1270
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1271
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1272
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1273
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1274
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1275
* group.element[=].display = "Organizmga xos madaniyat bo'yicha Aniqlanmagan namunada aniqlangan Mycobacterium sp"
* group.element[=].target[+].code = #543-9
* group.element[=].target[=].display = "Mycobacterium sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1276
* group.element[=].display = "Aniqlanmagan namunada aniqlangan Mycoplasma sp"
* group.element[=].target[+].code = #40698-3
* group.element[=].target[=].display = "Mycoplasma sp identified in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1277
* group.element[=].display = "Peritoneal suyuqlikdagi mikroskopik kuzatuv [Identifikator] Gram bo'yicha"
* group.element[=].target[+].code = #14359-4
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Peritoneal fluid by Gram stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1278
* group.element[=].display = "Plevra suyuqligida madaniyat bo'yicha aniqlangan bakteriyalar"
* group.element[=].target[+].code = #618-9
* group.element[=].target[=].display = "Bacteria identified in Pleural fluid by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1279
* group.element[=].display = "Nafas olish madaniyati bilan aniqlanmagan namunada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #52973-5
* group.element[=].target[=].display = "Bacteria identified in Sputum tracheal aspirate by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1280
* group.element[=].display = "Nafas olish madaniyati bilan aniqlanmagan namunada aniqlangan bakteriyalar"
* group.element[=].target[+].code = #105919-9
* group.element[=].target[=].display = "Bacteria identified in Bronchoalveolar lavage by Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1281
* group.element[=].display = "Najasdagi mikroskopik kuzatuv [Identifikator] trixrom dog'i bilan"
* group.element[=].target[+].code = #6469-1
* group.element[=].target[=].display = "Microscopic observation [Identifier] in Stool by Trichrome stain"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1282
* group.element[=].display = "Organizmga xos madaniyat bo'yicha aniqlanmagan namunada aniqlangan Ureaplasma sp"
* group.element[=].target[+].code = #32368-3
* group.element[=].target[=].display = "Ureaplasma sp identified in Unspecified specimen by Organism specific culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1283
* group.element[=].display = "RPR orqali Zardobda Reagin Ab [Mavjudligi]"
* group.element[=].target[+].code = #20507-0
* group.element[=].target[=].display = "Reagin Ab [Presence] in Serum by RPR"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1284
* group.element[=].display = "RPR orqali Zardobda Reagin Ab [titer]"
* group.element[=].target[+].code = #31147-2
* group.element[=].target[=].display = "Reagin Ab [Titer] in Serum by RPR"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1285
* group.element[=].display = "Zardobdagi oshqozon osti bezi orolcha hujayrasi Ab [titer]"
* group.element[=].target[+].code = #13927-9
* group.element[=].target[=].display = "Pancreatic islet cell Ab [Titer] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1286
* group.element[=].display = "Adenovirus Ag [mavjudligi] najasda immunofluoresans orqali"
* group.element[=].target[+].code = #5826-3
* group.element[=].target[=].display = "Adenovirus Ag [Presence] in Stool by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1287
* group.element[=].display = "Zardobdagi atsetilxolin retseptorlari Ab [mol/hajm]"
* group.element[=].target[+].code = #20427-1
* group.element[=].target[=].display = "Acetylcholine receptor Ab [Moles/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1288
* group.element[=].display = "Zardobdagi sitomegalovirus Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7851-9
* group.element[=].target[=].display = "Cytomegalovirus Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1289
* group.element[=].display = "Zardobdagi sitomegalovirus IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7852-7
* group.element[=].target[=].display = "Cytomegalovirus IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1290
* group.element[=].display = "Immunoassay orqali zardobda sitomegalovirus IgM Ab [mavjudligi]"
* group.element[=].target[+].code = #24119-0
* group.element[=].target[=].display = "Cytomegalovirus IgM Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1291
* group.element[=].display = "Immunoassay orqali zardobdagi sitomegalovirus IgM Ab [birliklar/hajm]"
* group.element[=].target[+].code = #5126-8
* group.element[=].target[=].display = "Cytomegalovirus IgM Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1292
* group.element[=].display = "Immunofluoressensiya orqali zardobdagi DNK ikki zanjirli Ab [Mavjudligi]"
* group.element[=].target[+].code = #5131-8
* group.element[=].target[=].display = "DNA double strand Ab [Presence] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1293
* group.element[=].display = "Zardobdagi streptokokk DNKaz B [Birliklar/hajm]"
* group.element[=].target[+].code = #5133-4
* group.element[=].target[=].display = "Streptococcal DNAse B [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1294
* group.element[=].display = "Zardobdagi DNK bitta zanjiri Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #54910-5
* group.element[=].target[=].display = "DNA double strand Ab [Units/volume] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1295
* group.element[=].display = "Zardobdagi DNK bitta zanjiri Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5132-6
* group.element[=].target[=].display = "DNA single strand Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1296
* group.element[=].display = "Silliq mushak Ab [titer] zardobida immunofluoressensiya orqali"
* group.element[=].target[+].code = #5358-7
* group.element[=].target[=].display = "Smooth muscle Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1297
* group.element[=].display = "Endomizium IgA Ab [titer] zardobida immunofluoressensiya orqali"
* group.element[=].target[+].code = #27038-9
* group.element[=].target[=].display = "Endomysium IgA Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1298
* group.element[=].display = "Endomizium IgG Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #39554-1
* group.element[=].target[=].display = "Endomysium IgG Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1299
* group.element[=].display = "Immunoassay orqali Zardobda fosfatidilserin IgG Ab [mavjudligi]"
* group.element[=].target[+].code = #9326-0
* group.element[=].target[=].display = "Phosphatidylserine IgG Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1300
* group.element[=].display = "Immunoassay orqali Zardobda fosfatidilserin IgM Ab [mavjudligi]"
* group.element[=].target[+].code = #9327-8
* group.element[=].target[=].display = "Phosphatidylserine IgM Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1301
* group.element[=].display = "Immunoassay orqali Zardobdagi fosfolipid IgG Ab [birliklar/hajm]"
* group.element[=].target[+].code = #3286-2
* group.element[=].target[=].display = "Phospholipid IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1302
* group.element[=].display = "Immunoassay orqali Zardobdagi fosfolipid IgM Ab [birliklar/hajm]"
* group.element[=].target[+].code = #3287-0
* group.element[=].target[=].display = "Phospholipid IgM Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1303
* group.element[=].display = "Zardobdagi Gliadin IgA Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #6924-5
* group.element[=].target[=].display = "Gliadin IgA Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1304
* group.element[=].display = "Zardobdagi Gliadin IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5170-6
* group.element[=].target[=].display = "Gliadin IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1305
* group.element[=].display = "Gepatit A virusi IgG Ab [Birliklar/hajm] zardobida immunoassay orqali"
* group.element[=].target[+].code = #51913-2
* group.element[=].target[=].display = "Hepatitis A virus IgG+IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1306
* group.element[=].display = "Gepatit A virusi IgG Ab [Birliklar/hajm] zardobida immunoassay orqali"
* group.element[=].target[+].code = #5179-7
* group.element[=].target[=].display = "Hepatitis A virus IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1307
* group.element[=].display = "Gepatit A virusi IgM Ab [mavjudligi] qon zardobida yoki plazmasida immunoassay orqali"
* group.element[=].target[+].code = #13950-1
* group.element[=].target[=].display = "Hepatitis A virus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1308
* group.element[=].display = "Gepatit A virusi IgM Ab [Birliklar/hajm] zardobida immunoassay orqali"
* group.element[=].target[+].code = #5181-3
* group.element[=].target[=].display = "Hepatitis A virus IgM Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1309
* group.element[=].display = "Immunoassay orqali qon zardobida yoki plazmasida gepatit B virusi yadrosi Ab [mavjudligi]"
* group.element[=].target[+].code = #13952-7
* group.element[=].target[=].display = "Hepatitis B virus core Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1310
* group.element[=].display = "Immunoassay orqali qon zardobida yoki plazmasida gepatit B virusi yadrosi Ab [mavjudligi]"
* group.element[=].target[+].code = #13952-7
* group.element[=].target[=].display = "Hepatitis B virus core Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1311
* group.element[=].display = "Immunoassay orqali gepatit B virusi yadrosi IgM Ab [mavjudligi] qon zardobida yoki plazmasida"
* group.element[=].target[+].code = #24113-3
* group.element[=].target[=].display = "Hepatitis B virus core IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1312
* group.element[=].display = "Gepatit B virusi e Ab [Birliklar/hajm] zardobida immunoassay orqali"
* group.element[=].target[+].code = #5189-6
* group.element[=].target[=].display = "Hepatitis B virus e Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1313
* group.element[=].display = "Immunoassay orqali qon zardobida gepatit B virusi e Ab [mavjudligi]"
* group.element[=].target[+].code = #13953-5
* group.element[=].target[=].display = "Hepatitis B virus e Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1314
* group.element[=].display = "Zardobdagi gepatit B virusi yuzasi Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #16935-9
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1315
* group.element[=].display = "Immunoassay orqali qon zardobidagi gepatit B virusi yuzasi Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5193-8
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1316
* group.element[=].display = "Immunoassay orqali qon zardobida gepatit B virusi yuzasi Ab [mavjudligi]"
* group.element[=].target[+].code = #10900-9
* group.element[=].target[=].display = "Hepatitis B virus surface Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1317
* group.element[=].display = "Immunoassay orqali zardobdagi gepatit C virusi Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5198-7
* group.element[=].target[=].display = "Hepatitis C virus Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1318
* group.element[=].display = "Gepatit C virusi Ab [mavjudligi] qon zardobida yoki plazmasida immunoassay orqali"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1319
* group.element[=].display = "Gepatit C virusi Ab [mavjudligi] qon zardobida yoki plazmasida immunoassay orqali"
* group.element[=].target[+].code = #13955-0
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1320
* group.element[=].display = "Gepatit E virusi Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #13294-4
* group.element[=].target[=].display = "Hepatitis E virus Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1321
* group.element[=].display = "Gepatit E virusi Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #13294-4
* group.element[=].target[=].display = "Hepatitis E virus Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1322
* group.element[=].display = "Zardobda OIV 1+2 Ab [Birlik/hajm]"
* group.element[=].target[+].code = #22357-8
* group.element[=].target[=].display = "HIV 1+2 Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1323
* group.element[=].display = "Immunoassay orqali qon zardobida OIV 1+2 Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5223-3
* group.element[=].target[=].display = "HIV 1+2 Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1324
* group.element[=].display = "Immunoassay orqali qon zardobida OIV 1+2 Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5223-3
* group.element[=].target[=].display = "HIV 1+2 Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1325
* group.element[=].display = "Zardobdagi insulin Ab [birliklar/hajm]"
* group.element[=].target[+].code = #8072-1
* group.element[=].target[=].display = "Insulin Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1326
* group.element[=].display = "Zardobdagi Jo-1 ajratib olinadigan yadro Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #11565-9
* group.element[=].target[=].display = "Jo-1 extractable nuclear Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1327
* group.element[=].display = "Zardobdagi Kardiolipin IgG Ab [tarjima]"
* group.element[=].target[+].code = #20424-8
* group.element[=].target[=].display = "Cardiolipin IgG Ab [interpretation] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1328
* group.element[=].display = "Zardobdagi Kardiolipin IgM Ab [talqin]"
* group.element[=].target[+].code = #20425-5
* group.element[=].target[=].display = "Cardiolipin IgM Ab [interpretation] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1329
* group.element[=].display = "Mitoxondriya Ab [titer] zardobida immunofluoressensiya orqali"
* group.element[=].target[+].code = #5247-2
* group.element[=].target[=].display = "Mitochondria Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1330
* group.element[=].display = "Immunoassay orqali qon zardobidagi neytrofil sitoplazmatik Ab.perinuclear [birliklar/hajm]"
* group.element[=].target[+].code = #37991-7
* group.element[=].target[=].display = "Neutrophil cytoplasmic Ab.perinuclear [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1331
* group.element[=].display = "Immunofluoressensiya orqali zardobdagi yadroviy Ab [titer]"
* group.element[=].target[+].code = #5048-4
* group.element[=].target[=].display = "Nuclear Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1332
* group.element[=].display = "Immunofluoressensiya orqali Zardobdagi parietal hujayra Ab [titer]"
* group.element[=].target[+].code = #5271-2
* group.element[=].target[=].display = "Parietal cell Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1333
* group.element[=].display = "Immunofluoressensiya orqali Zardobdagi parietal hujayra Ab [titer]"
* group.element[=].target[+].code = #5271-2
* group.element[=].target[=].display = "Parietal cell Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1334
* group.element[=].display = "Ribosomal P Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #31592-9
* group.element[=].target[=].display = "Ribosomal P Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1335
* group.element[=].display = "Immunoassay orqali Zardobdagi qizilcha virusi IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5334-8
* group.element[=].target[=].display = "Rubella virus IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1336
* group.element[=].display = "Zardobda qizilcha virusi IgG Ab [mavjudligi]"
* group.element[=].target[+].code = #25514-1
* group.element[=].target[=].display = "Rubella virus IgG Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1337
* group.element[=].display = "Zardobdagi qizilcha virusi IgM Ab [Birlik/hajm]"
* group.element[=].target[+].code = #8015-0
* group.element[=].target[=].display = "Rubella virus IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1338
* group.element[=].display = "Zardobdagi qizilcha virusi IgM Ab [Birlik/hajm]"
* group.element[=].target[+].code = #8015-0
* group.element[=].target[=].display = "Rubella virus IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1339
* group.element[=].display = "Immunofluoressensiya orqali zardobdagi tsentromere Ab [mavjudligi]"
* group.element[=].target[+].code = #16570-4
* group.element[=].target[=].display = "Centromere Ab [Presence] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1340
* group.element[=].display = "Immunoassay orqali zardobda Smit ekstraksiya qilinadigan yadroviy Ab [mavjudligi]"
* group.element[=].target[+].code = #5356-1
* group.element[=].target[=].display = "Smith extractable nuclear Ab [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1341
* group.element[=].display = "Zardob yoki plazmadagi tiroglobulin Ab [birliklar/hajm]"
* group.element[=].target[+].code = #8098-6
* group.element[=].target[=].display = "Thyroglobulin Ab [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1342
* group.element[=].display = "Zardob yoki plazmadagi tiroglobulin Ab [birliklar/hajm]"
* group.element[=].target[+].code = #8098-6
* group.element[=].target[=].display = "Thyroglobulin Ab [Units/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1343
* group.element[=].display = "Toxoplasma gondii IgA Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #22578-9
* group.element[=].target[=].display = "Toxoplasma gondii IgA Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1344
* group.element[=].display = "Toxoplasma gondii IgG Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #8039-0
* group.element[=].target[=].display = "Toxoplasma gondii IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1345
* group.element[=].display = "Toxoplasma gondii IgG Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #22580-5
* group.element[=].target[=].display = "Toxoplasma gondii IgG Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1346
* group.element[=].display = "Toxoplasma gondii IgM Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #8040-8
* group.element[=].target[=].display = "Toxoplasma gondii IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1347
* group.element[=].display = "Toxoplasma gondii IgM Ab [Titer] zardobida"
* group.element[=].target[+].code = #22584-7
* group.element[=].target[=].display = "Toxoplasma gondii IgM Ab [Titer] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1348
* group.element[=].display = "Immunologik usul bilan trombotsitlar kambag'al plazmasida Antitrombin Ag [Moles/hajm]"
* group.element[=].target[+].code = #3177-3
* group.element[=].target[=].display = "Antithrombin Ag [Moles/volume] in Platelet poor plasma by Immunologic method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1349
* group.element[=].display = "Zardobdagi fosfolipid Ab [mavjudligi]"
* group.element[=].target[+].code = #19140-3
* group.element[=].target[=].display = "Phospholipid Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1350
* group.element[=].display = "Zardobdagi glutamat dekarboksilaza 65 Ab [Birlik/hajm]"
* group.element[=].target[+].code = #13926-1
* group.element[=].target[=].display = "Glutamate decarboxylase 65 Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1351
* group.element[=].display = "Immunoblot (IB) tomonidan Zardobda Jo-1 ajratib olinadigan yadroviy Ab [mavjudligi]"
* group.element[=].target[+].code = #56731-3
* group.element[=].target[=].display = "Jo-1 extractable nuclear Ab [Presence] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1352
* group.element[=].display = "Immunoblot (IB) tomonidan zardobda SCL-70 ekstraksiya qilinadigan yadro Ab [mavjudligi]"
* group.element[=].target[+].code = #56721-4
* group.element[=].target[=].display = "PM-SCL extractable nuclear Ab [Presence] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1353
* group.element[=].display = "Immunoblot (IB) tomonidan zardobda SCL-70 ekstraksiya qilinadigan yadro Ab [mavjudligi]"
* group.element[=].target[+].code = #56693-5
* group.element[=].target[=].display = "SCL-70 extractable nuclear Ab [Presence] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1354
* group.element[=].display = "Immunoblot (IB) tomonidan zardobda Smit ekstraksiyasi mumkin bo'lgan yadroviy Ab [mavjudligi]"
* group.element[=].target[+].code = #56730-5
* group.element[=].target[=].display = "Smith extractable nuclear Ab [Presence] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1355
* group.element[=].display = "Immunoblot (IB) tomonidan zardobdagi Smitning ekstraksiya qilinadigan yadrosi Ab+Ribonukleoprotein ekstraksiya qilinadigan yadro IgG Ab [birliklar/hajm]"
* group.element[=].target[+].code = #33568-7
* group.element[=].target[=].display = "Smith extractable nuclear Ab+Ribonucleoprotein extractable nuclear IgG Ab [Units/volume] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1356
* group.element[=].display = "Sjogrens sindromi - Immunoblot (IB) tomonidan zardobda ekstraksiya qilinadigan yadro 52kD Ab [mavjudligi]"
* group.element[=].target[+].code = #63445-1
* group.element[=].target[=].display = "Sjogrens syndrome-A extractable nuclear 52kD Ab [Presence] in Serum by Immunoblot (IB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1357
* group.element[=].display = "Sjogrens sindromi - Immunoblot (IB) tomonidan zardobda ekstraksiya qilinadigan yadro 52kD Ab [mavjudligi]"
* group.element[=].target[+].code = #63445-1
* group.element[=].target[=].display = "Sjogrens syndrome-A extractable nuclear 52kD Ab [Presence] in Serum by Immunoblot"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1358
* group.element[=].display = "Sjogrens sindromi-B Immunoblot (IB) tomonidan zardobda ekstraksiya qilinadigan yadroviy Ab [mavjudligi]"
* group.element[=].target[+].code = #56725-5
* group.element[=].target[=].display = "Sjogrens syndrome-B extractable nuclear Ab [Presence] in Serum by Immunoblot (IB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1359
* group.element[=].display = "Zardobdagi Borrelia burgdorferi IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7817-0
* group.element[=].target[=].display = "Borrelia burgdorferi IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1360
* group.element[=].display = "Zardobdagi Borrelia burgdorferi IgM Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7818-8
* group.element[=].target[=].display = "Borrelia burgdorferi IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1361
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1362
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #79160-8
* group.element[=].target[=].display = "Cold agglutinin panel - Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1363
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1364
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1365
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1366
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1367
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1368
* group.element[=].display = "Brucella sp Ab [mavjudligi] qon zardobida agglyutinatsiya orqali"
* group.element[=].target[+].code = #40614-0
* group.element[=].target[=].display = "Brucella sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1369
* group.element[=].display = "Brucella abortus Ab [Titer] qon zardobida naycha aglutinatsiyasi bilan"
* group.element[=].target[+].code = #20719-1
* group.element[=].target[=].display = "Brucella abortus Ab [Titer] in Serum by Tube agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1370
* group.element[=].display = "Brucella abortus Ab [Titer] qon zardobida naycha aglutinatsiyasi bilan"
* group.element[=].target[+].code = #20719-1
* group.element[=].target[=].display = "Brucella abortus Ab [Titer] in Serum by Tube agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1371
* group.element[=].display = "Brucella sp Ab [Birlik/hajm] Zardobda"
* group.element[=].target[+].code = #10349-9
* group.element[=].target[=].display = "Brucella sp Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1372
* group.element[=].display = "Brucella sp IgM Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #24397-2
* group.element[=].target[=].display = "Brucella sp IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1373
* group.element[=].display = "Immunoassay orqali Zardobdagi siklik sitrulinlangan peptid Ab [birliklar/hajm]"
* group.element[=].target[+].code = #32218-0
* group.element[=].target[=].display = "Cyclic citrullinated peptide Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1374
* group.element[=].display = "Immunoassay tomonidan aniqlanmagan namunada Chlamydia sp Ag [Mavjudligi]"
* group.element[=].target[+].code = #6347-9
* group.element[=].target[=].display = "Chlamydia sp Ag [Presence] in Unspecified specimen by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1375
* group.element[=].display = "Chlamydia sp IgA Ab [Titer] zardobida immunofluoressensiya orqali"
* group.element[=].target[+].code = #34264-2
* group.element[=].target[=].display = "Chlamydia sp IgA Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1376
* group.element[=].display = "Zardobdagi Chlamydia sp IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5085-6
* group.element[=].target[=].display = "Chlamydia sp IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1377
* group.element[=].display = "Zardobdagi Chlamydophila pneumoniae IgM Ab [titer]"
* group.element[=].target[+].code = #22174-7
* group.element[=].target[=].display = "Chlamydophila pneumoniae IgM Ab [Titer] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1378
* group.element[=].display = "Immunoassay orqali axlatda Clostridium difficile toksin A [mavjudligi]"
* group.element[=].target[+].code = #13957-6
* group.element[=].target[=].display = "Clostridium difficile toxin A [Presence] in Stool by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1379
* group.element[=].display = "Najasda Clostridium difficile toksini A+B [Mavjudligi]"
* group.element[=].target[+].code = #34713-8
* group.element[=].target[=].display = "Clostridium difficile toxin A+B [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1380
* group.element[=].display = "Immunoassay tomonidan aniqlanmagan namunadagi Clostridium difficile toksini A+B [Birliklar/hajm]"
* group.element[=].target[+].code = #6364-4
* group.element[=].target[=].display = "Clostridium difficile toxin A+B [Units/volume] in Unspecified specimen by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1381
* group.element[=].display = "Immunoassay orqali zardobdagi sitomegalovirus IgG Ab avidligi [nisbati]"
* group.element[=].target[+].code = #52984-2
* group.element[=].target[=].display = "Cytomegalovirus IgG Ab avidity [Ratio] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1382
* group.element[=].display = "Immunofluoresans tomonidan aniqlanmagan namunadagi inson koronavirus Ag [mavjudligi]"
* group.element[=].target[+].code = #41453-2
* group.element[=].target[=].display = "Human coronavirus Ag [Presence] in Unspecified specimen by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1383
* group.element[=].display = "Gepatit D virusi Ag [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #33464-9
* group.element[=].target[=].display = "Hepatitis D virus Ag [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1384
* group.element[=].display = "Immunoassay orqali zardobdagi gepatit D virusi Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5200-1
* group.element[=].target[=].display = "Hepatitis D virus Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1385
* group.element[=].display = "Immun diffuziya (ID) bo'yicha aniqlanmagan namunadagi korinebakterium toksini [Mavjudligi]"
* group.element[=].target[+].code = #24102-6
* group.element[=].target[=].display = "Corynebacterium toxin [Presence] in Unspecified specimen by Immune diffusion (ID)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1386
* group.element[=].display = "Lateks agglyutinatsiyasi bilan izolyatsiya qilingan ichak tayoqchasi O157 Ag [mavjudligi]"
* group.element[=].target[+].code = #45162-5
* group.element[=].target[=].display = "Escherichia coli O157 Ag [Presence] in Isolate by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1387
* group.element[=].display = "Epstein Barr virusi erta IgG Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #24007-7
* group.element[=].target[=].display = "Epstein Barr virus early IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1388
* group.element[=].display = "Epstein Barr virusi yadrosi IgG Ab [birliklar/hajm] zardobida immunofluoressensiya orqali"
* group.element[=].target[+].code = #40753-6
* group.element[=].target[=].display = "Epstein Barr virus nuclear IgG Ab [Units/volume] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1389
* group.element[=].display = "Epstein Barr virus kapsidi IgG Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #7885-7
* group.element[=].target[=].display = "Epstein Barr virus capsid IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1390
* group.element[=].display = "Epstein Barr virus kapsidi IgM Ab [Birliklar/hajm] zardobida"
* group.element[=].target[+].code = #7886-5
* group.element[=].target[=].display = "Epstein Barr virus capsid IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1391
* group.element[=].display = "Aniqlanmagan namunadagi Entamoeba histolytica Ag [Birliklar/hajm]"
* group.element[=].target[+].code = #31812-1
* group.element[=].target[=].display = "Entamoeba histolytica Ag [Units/volume] in Unspecified specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1392
* group.element[=].display = "Immunoassay orqali Zardob yoki plazmadagi Galaktomannan Ag [mavjudligi]"
* group.element[=].target[+].code = #44099-0
* group.element[=].target[=].display = "Galactomannan Ag [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1393
* group.element[=].display = "Immunoassay orqali Zardob yoki plazmadagi Galaktomannan Ag [mavjudligi]"
* group.element[=].target[+].code = #88555-8
* group.element[=].target[=].display = "Galactomannan Ag [Presence] in Bronchoalveolar lavage"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1394
* group.element[=].display = "Giardia sp Ag [Mavjudligi] najasda"
* group.element[=].target[+].code = #27265-8
* group.element[=].target[=].display = "Giardia sp Ag [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1395
* group.element[=].display = "Gepatit B virusi e Ag [mavjudligi] qon zardobida immunoassay orqali"
* group.element[=].target[+].code = #13954-3
* group.element[=].target[=].display = "Hepatitis B virus e Ag [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1396
* group.element[=].display = "Gepatit B virusi e Ag [mavjudligi] qon zardobida immunoassay orqali"
* group.element[=].target[+].code = #13954-3
* group.element[=].target[=].display = "Hepatitis B virus e Ag [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1397
* group.element[=].display = "Gepatit B virusi Immunoassay orqali qon zardobida yoki plazmada Ag [mavjudligi]"
* group.element[=].target[+].code = #5196-1
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1398
* group.element[=].display = "Gepatit B virusi Immunoassay orqali qon zardobida yoki plazmada Ag [mavjudligi]"
* group.element[=].target[+].code = #5196-1
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1399
* group.element[=].display = "Gepatit B virusi Immunoassay orqali qon zardobida yoki plazmada Ag [mavjudligi]"
* group.element[=].target[+].code = #5196-1
* group.element[=].target[=].display = "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1400
* group.element[=].display = "Gepatit C virusi Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #16128-1
* group.element[=].target[=].display = "Hepatitis C virus Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1401
* group.element[=].display = "Najasda Helicobacter pylori Ag [mavjudligi]"
* group.element[=].target[+].code = #31843-6
* group.element[=].target[=].display = "Helicobacter pylori Ag [Presence] in Stool"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1402
* group.element[=].display = "Zardobdagi Helicobacter pylori IgA Ab [Birlik/hajm]"
* group.element[=].target[+].code = #7901-2
* group.element[=].target[=].display = "Helicobacter pylori IgA Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1403
* group.element[=].display = "Zardobdagi Helicobacter pylori IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7902-0
* group.element[=].target[=].display = "Helicobacter pylori IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1404
* group.element[=].display = "Herpes simplex virusi 1 IgG Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #7909-5
* group.element[=].target[=].display = "Herpes simplex virus 1 IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1405
* group.element[=].display = "Herpes simplex virusi 1 IgM Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #7910-3
* group.element[=].target[=].display = "Herpes simplex virus 1 IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1406
* group.element[=].display = "Herpes simplex virusi 2 IgG Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #7912-9
* group.element[=].target[=].display = "Herpes simplex virus 2 IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1407
* group.element[=].display = "Herpes simplex virusi 2 IgM Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #7913-7
* group.element[=].target[=].display = "Herpes simplex virus 2 IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1408
* group.element[=].display = "Lateks agglyutinatsiyasi orqali qon zardobida heterofil Ab [mavjudligi]"
* group.element[=].target[+].code = #5213-4
* group.element[=].target[=].display = "Heterophile Ab [Presence] in Serum by Latex agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1409
* group.element[=].display = "Zardob yoki plazmadagi IgA [Mass/hajm]"
* group.element[=].target[+].code = #2458-8
* group.element[=].target[=].display = "IgA [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1410
* group.element[=].display = "Zardob yoki plazmadagi IgA [Mass/hajm]"
* group.element[=].target[+].code = #2458-8
* group.element[=].target[=].display = "IgA [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1411
* group.element[=].display = "Zardob yoki plazmadagi IgG [Mass/hajm]"
* group.element[=].target[+].code = #2465-3
* group.element[=].target[=].display = "IgG [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1412
* group.element[=].display = "Zardob yoki plazmadagi IgM [Mass/hajm]"
* group.element[=].target[+].code = #2472-9
* group.element[=].target[=].display = "IgM [Mass/volume] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1413
* group.element[=].display = "Gripp virusi A Ag [Mavjudligi] aniqlanmagan namunada immunofluoressensiya orqali"
* group.element[=].target[+].code = #5863-6
* group.element[=].target[=].display = "Influenza virus A Ag [Presence] in Unspecified specimen by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1414
* group.element[=].display = "Immunoassay orqali zardobdagi parotit virusi IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #25418-5
* group.element[=].target[=].display = "Mumps virus IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1415
* group.element[=].display = "Immunoassay orqali zardobdagi parotit virusi IgM Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #25419-3
* group.element[=].target[=].display = "Mumps virus IgM Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1416
* group.element[=].display = "Immunoassay orqali Zardobdagi qizamiq virusi IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #5244-9
* group.element[=].target[=].display = "Measles virus IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1417
* group.element[=].display = "Immunoassay orqali Zardobdagi qizamiq virusi IgM Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #25421-9
* group.element[=].target[=].display = "Measles virus IgM Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1418
* group.element[=].display = "Echinococcus sp Ab [Titer] qon zardobida gemagglyutinatsiya orqali"
* group.element[=].target[+].code = #26008-3
* group.element[=].target[=].display = "Echinococcus sp Ab [Titer] in Serum by Hemagglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1419
* group.element[=].display = "Siydikda Legionella pneumophila Ag [mavjudligi] immunoassay orqali"
* group.element[=].target[+].code = #6447-7
* group.element[=].target[=].display = "Legionella pneumophila Ag [Presence] in Urine by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1420
* group.element[=].display = "Legionella pneumophila IgM Ab [titer] zardobida immunofluoresans usulida"
* group.element[=].target[+].code = #16133-1
* group.element[=].target[=].display = "Legionella pneumophila IgM Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1421
* group.element[=].display = "Zardobdagi IgG kichik klassi 1 [Mass/hajm]"
* group.element[=].target[+].code = #2466-1
* group.element[=].target[=].display = "IgG subclass 1 [Mass/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1422
* group.element[=].display = "Listeria sp Ab [mavjudligi] qon zardobida aglutinatsiya orqali"
* group.element[=].target[+].code = #23211-6
* group.element[=].target[=].display = "Listeria sp Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1423
* group.element[=].display = "Jigar buyrak mikrosomal Ab [titer] immunofluoressensiya orqali Zardobda"
* group.element[=].target[+].code = #9838-4
* group.element[=].target[=].display = "Liver kidney microsomal Ab [Titer] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1424
* group.element[=].display = "Miyeloperoksidaza Ab va Proteinaz 3 paneli - Zardob"
* group.element[=].target[+].code = #57777-5
* group.element[=].target[=].display = "Myeloperoxidase Ab and Proteinase 3 panel - Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1425
* group.element[=].display = "Zardobdagi Mycoplasma pneumoniae IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #7970-7
* group.element[=].target[=].display = "Mycoplasma pneumoniae IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1426
* group.element[=].display = "Mycoplasma pneumoniae IgM Ab [mavjudligi] qon zardobida"
* group.element[=].target[+].code = #21406-4
* group.element[=].target[=].display = "Mycoplasma pneumoniae IgM Ab [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1427
* group.element[=].display = "Immunoblot (IB) tomonidan zardobdagi OIV 1 Ab tasma namunasi [talqin]"
* group.element[=].target[+].code = #13499-9
* group.element[=].target[=].display = "HIV 1 Ab band pattern [interpretation] in Serum by Immunoblot (IB)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1428
* group.element[=].display = "Zardobda neytrofil sitoplazmatik Ab.perinuclear [Mavjudligi]"
* group.element[=].target[+].code = #30539-1
* group.element[=].target[=].display = "Neutrophil cytoplasmic Ab.perinuclear [Presence] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1429
* group.element[=].display = "Parvovirus B19 IgG Ab [birliklar/hajm] zardobida immunoassay orqali"
* group.element[=].target[+].code = #5273-8
* group.element[=].target[=].display = "Parvovirus B19 IgG Ab [Units/volume] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1430
* group.element[=].display = "Parvovirus B19 IgM Ab [mavjudligi] zardobda immunofluoressensiya orqali"
* group.element[=].target[+].code = #40659-5
* group.element[=].target[=].display = "Parvovirus B19 IgM Ab [Presence] in Serum by Immunofluorescence"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1431
* group.element[=].display = "Plasmodium sp [Mavjudligi] qonda yorug'lik mikroskopida"
* group.element[=].target[+].code = #51587-4
* group.element[=].target[=].display = "Plasmodium sp [Presence] in Blood by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1432
* group.element[=].display = "Yorug'lik mikroskopi orqali qonda aniqlangan plazmodium sp"
* group.element[=].target[+].code = #32206-5
* group.element[=].target[=].display = "Plasmodium sp identified in Blood by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1433
* group.element[=].display = "Plasmodium sp [Mavjudligi] qonda yorug'lik mikroskopida"
* group.element[=].target[+].code = #51587-4
* group.element[=].target[=].display = "Plasmodium sp [Presence] in Blood by Light microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1434
* group.element[=].display = "Miyeloperoksidaza Ab va Proteinaz 3 paneli - Zardob"
* group.element[=].target[+].code = #57777-5
* group.element[=].target[=].display = "Myeloperoxidase Ab and Proteinase 3 panel - Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1435
* group.element[=].display = "Immunoassay orqali najasda rotavirus Ag [mavjudligi]"
* group.element[=].target[+].code = #5880-0
* group.element[=].target[=].display = "Rotavirus Ag [Presence] in Stool by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1436
* group.element[=].display = "Immunoassay orqali zardobdagi qizilcha virusi IgG Ab avidligi [nisbati]"
* group.element[=].target[+].code = #52986-7
* group.element[=].target[=].display = "Rubella virus IgG Ab avidity [Ratio] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1437
* group.element[=].display = "Salmonella paratyphi A Agglyutinatsiya orqali qon zardobida Ab [mavjudligi]"
* group.element[=].target[+].code = #11264-9
* group.element[=].target[=].display = "Salmonella paratyphi A Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1438
* group.element[=].display = "Salmonella paratyphi A Agglyutinatsiya orqali qon zardobida Ab [mavjudligi]"
* group.element[=].target[+].code = #11264-9
* group.element[=].target[=].display = "Salmonella paratyphi A Ab [Presence] in Serum by Agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1439
* group.element[=].display = "Zardob yoki plazmadagi sitokinlar [mavjudligi]"
* group.element[=].target[+].code = #40860-9
* group.element[=].target[=].display = "Cytokines [Presence] in Serum or Plasma"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1440
* group.element[=].display = "Toxoplasma gondii IgG ab avidligi [mavjudligi] immunoassay orqali qon zardobida"
* group.element[=].target[+].code = #56991-3
* group.element[=].target[=].display = "Toxoplasma gondii IgG Ab avidity [Presence] in Serum by Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1441
* group.element[=].display = "Sifilis skrining test holati CPHS"
* group.element[=].target[+].code = #39231-6
* group.element[=].target[=].display = "Syphilis screen test status CPHS"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1442
* group.element[=].display = "Gemagglyutinatsiya natijasida zardobdagi treponema pallidum Ab [titer]"
* group.element[=].target[+].code = #26009-1
* group.element[=].target[=].display = "Treponema pallidum Ab [Titer] in Serum by Hemagglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1443
* group.element[=].display = "Varicella zoster virusi IgG Ab [Birlik/hajm] Zardobda"
* group.element[=].target[+].code = #8047-3
* group.element[=].target[=].display = "Varicella zoster virus IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1444
* group.element[=].display = "Varicella zoster virusi IgM Ab [Birliklar/hajm] Zardobda"
* group.element[=].target[+].code = #8048-1
* group.element[=].target[=].display = "Varicella zoster virus IgM Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1445
* group.element[=].display = "BK virusi DNKsi [#/volume] (virus yuki) qon zardobidagi yoki plazmadagi zond va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #41479-7
* group.element[=].target[=].display = "BK virus DNA [#/volume] (viral load) in Serum or Plasma by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1446
* group.element[=].display = "SARS koronavirus RNKsi [Mavjudligi] prob va maqsadli kuchaytirish usuli bilan izolyatsiyada"
* group.element[=].target[+].code = #60275-5
* group.element[=].target[=].display = "SARS coronavirus RNA [Presence] in Isolate by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1447
* group.element[=].display = "SARS koronavirus RNKsi [Mavjudligi] prob va maqsadli kuchaytirish usuli bilan izolyatsiyada"
* group.element[=].target[+].code = #60275-5
* group.element[=].target[=].display = "SARS coronavirus RNA [Presence] in Isolate by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1448
* group.element[=].display = "Candida sp DNKning qondagi [mavjudligi] zond yordamida kuchaytirilgan"
* group.element[=].target[+].code = #10650-0
* group.element[=].target[=].display = "Candida sp DNA [Presence] in Blood by Probe with amplification"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1449
* group.element[=].display = "Chlamydia trachomatis DNKsi [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #104815-6
* group.element[=].target[=].display = "Chlamydia trachomatis DNA [Presence] in Specimen by Molecular genetics method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1450
* group.element[=].display = "Chlamydia trachomatis DNKsi [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #92133-8
* group.element[=].target[=].display = "Chlamydophila pneumoniae DNA [Presence] in Respiratory system specimen by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1451
* group.element[=].display = "Qondagi sitomegalovirus DNKsi [#/volume] (virus yuki) prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #29604-6
* group.element[=].target[=].display = "Cytomegalovirus DNA [#/volume] (viral load) in Blood by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1452
* group.element[=].display = "Prob va maqsadli kuchaytirish usuli bilan zardob yoki plazmadagi sitomegalovirus DNKsi [mavjudligi]"
* group.element[=].target[+].code = #30246-3
* group.element[=].target[=].display = "Cytomegalovirus DNA [Presence] in Serum or Plasma by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1453
* group.element[=].display = "Gepatit B virusi DNKsi [Mavjudligi] qondagi prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #5007-0
* group.element[=].target[=].display = "Hepatitis B virus DNA [Presence] in Blood by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1454
* group.element[=].display = "Gepatit C virusi genotipi [Identifikator] qon zardobidagi yoki plazmadagi zond va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #32286-7
* group.element[=].target[=].display = "Hepatitis C virus genotype [Identifier] in Serum or Plasma by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1455
* group.element[=].display = "Gepatit C virusi RNKsi [log birliklari/hajmi] (virusli yuk) qon zardobida yoki plazmada zond va signalni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #42617-1
* group.element[=].target[=].display = "Hepatitis C virus RNA [log units/volume] (viral load) in Serum or Plasma by Probe and signal amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1456
* group.element[=].display = "Gepatit D virusi RNKsi [Mavjudligi] qon zardobida prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #7906-1
* group.element[=].target[=].display = "Hepatitis D virus RNA [Presence] in Serum by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1457
* group.element[=].display = "Gepatit D virusi RNKsi [Mavjudligi] qon zardobida prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #7906-1
* group.element[=].target[=].display = "Hepatitis D virus RNA [Presence] in Serum by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1458
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #92847-3
* group.element[=].target[=].display = "Herpes simplex virus 1 and 2 and Varicella zoster virus DNA panel - Blood by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1459
* group.element[=].display = "Herpes virusi 6 DNKning qondagi [mavjudligi] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #86544-4
* group.element[=].target[=].display = "Herpes virus 7 DNA [Presence] in Blood by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1460
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1461
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #92875-4
* group.element[=].target[=].display = "Herpes simplex virus 2 DNA [Presence] in Anogenital by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1462
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #92872-1
* group.element[=].target[=].display = "Herpes simplex virus 1 DNA [Presence] in Anogenital by NAA with probe detection"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1463
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1464
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1465
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1466
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1467
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1468
* group.element[=].display = "Herpes virusi 6 DNKning qondagi [mavjudligi] prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #33941-6
* group.element[=].target[=].display = "Herpes virus 6 DNA [Presence] in Blood by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1469
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1470
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1471
* group.element[=].display = "Herpes simplex virusi 1+2 DNK [Mavjudligi] aniqlanmagan namunada zond va maqsadni kuchaytirish usuli bilan"
* group.element[=].target[+].code = #20444-6
* group.element[=].target[=].display = "Herpes simplex virus 1+2 DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1472
* group.element[=].display = "Zond va maqsadli kuchaytirish usuli bilan zardob yoki plazmadagi OIV 1 RNK [Mavjudligi]"
* group.element[=].target[+].code = #25835-0
* group.element[=].target[=].display = "HIV 1 RNA [Presence] in Serum or Plasma by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1473
* group.element[=].display = "DNK tahlilining diskret ketma-ketlik o'zgarishi paneli - Molekulyar genetika usuli bo'yicha qon yoki to'qimalar"
* group.element[=].target[+].code = #55208-3
* group.element[=].target[=].display = "DNA analysis discrete sequence variation panel - Blood or Tissue by Molecular genetics method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1474
* group.element[=].display = "HEDIS 2019 qiymat to'plami - HPV testlari"
* group.element[=].target[+].code = #90988-7
* group.element[=].target[=].display = "HEDIS 2019 Value Set - HPV Tests"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1475
* group.element[=].display = "Jinsiy organ namunasida inson papilloma virusi Ag [Mavjudligi]"
* group.element[=].target[+].code = #12222-6
* group.element[=].target[=].display = "Human papilloma virus Ag [Presence] in Genital specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1476
* group.element[=].display = "Legionella sp RNK [Mavjudligi] aniqlanmagan namunada DNK probi orqali"
* group.element[=].target[+].code = #5020-3
* group.element[=].target[=].display = "Legionella sp rRNA [Presence] in Unspecified specimen by DNA probe"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1477
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi Mycobacterium sp DNK [Mavjudligi]"
* group.element[=].target[+].code = #14974-0
* group.element[=].target[=].display = "Mycobacterium sp DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1478
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi Mycoplasma sp DNK [Mavjudligi]"
* group.element[=].target[+].code = #23301-5
* group.element[=].target[=].display = "Mycoplasma sp DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1479
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi Mycoplasma sp DNK [Mavjudligi]"
* group.element[=].target[+].code = #23301-5
* group.element[=].target[=].display = "Mycoplasma sp DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1480
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi Mycoplasma sp DNK [Mavjudligi]"
* group.element[=].target[+].code = #23301-5
* group.element[=].target[=].display = "Mycoplasma sp DNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1481
* group.element[=].display = "Parvovirus B19 DNKsi [Mavjudligi] qon zardobida prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #9572-9
* group.element[=].target[=].display = "Parvovirus B19 DNA [Presence] in Serum by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1482
* group.element[=].display = "Parvovirus B19 DNKsi [Mavjudligi] qon zardobida prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #9572-9
* group.element[=].target[=].display = "Parvovirus B19 DNA [Presence] in Serum by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1483
* group.element[=].display = "Parvovirus B19 DNKsi [Mavjudligi] qon zardobida prob va maqsadli kuchaytirish usuli"
* group.element[=].target[+].code = #9572-9
* group.element[=].target[=].display = "Parvovirus B19 DNA [Presence] in Serum by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1484
* group.element[=].display = "Jinsiy organ namunasida inson papilloma virusi Ag [Mavjudligi]"
* group.element[=].target[+].code = #12222-6
* group.element[=].target[=].display = "Human papilloma virus Ag [Presence] in Genital specimen"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1485
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi inson metapnevmovirus RNKsi [Mavjudligi]"
* group.element[=].target[+].code = #38917-1
* group.element[=].target[=].display = "Human metapneumovirus RNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1486
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi inson metapnevmovirus RNKsi [Mavjudligi]"
* group.element[=].target[+].code = #38917-1
* group.element[=].target[=].display = "Human metapneumovirus RNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1487
* group.element[=].display = "Prob va maqsadni kuchaytirish usuli bo'yicha aniqlanmagan namunadagi inson metapnevmovirus RNKsi [Mavjudligi]"
* group.element[=].target[+].code = #38917-1
* group.element[=].target[=].display = "Human metapneumovirus RNA [Presence] in Unspecified specimen by Probe and target amplification method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1488
* group.element[=].display = "Zardobdagi Bordetella pertussis IgG Ab [Birliklar/hajm]"
* group.element[=].target[+].code = #9363-3
* group.element[=].target[=].display = "Bordetella pertussis IgG Ab [Units/volume] in Serum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1489
* group.element[=].display = "Francisella tularensis Ab [Mavjudligi] Slayd aglyutinatsiyasi orqali izolyatsiyada"
* group.element[=].target[+].code = #33715-4
* group.element[=].target[=].display = "Francisella tularensis Ab [Presence] in Isolate by Slide agglutination"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-1490
* group.element[=].display = "Francisella tularensis Ab [Mavjudligi] Slayd aglyutinatsiyasi orqali izolyatsiyada"
* group.element[=].target[+].code = #33715-4
* group.element[=].target[=].display = "Francisella tularensis Ab [Presence] in Isolate by Slide agglutination"
* group.element[=].target[=].relationship = #equivalent
