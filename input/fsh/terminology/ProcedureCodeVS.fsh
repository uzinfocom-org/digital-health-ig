ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure code"
Description: "Procedure codes used in the Uzbekistan Digital Health Platform: SNOMED CT for clinical meaning, ICHI for statistical reporting, and TXMK diagnostic imaging services."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/procedure-code-vs"
* ^status = #active
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ProcedureCodeCS)

* include codes from system $sct where concept is-a #71388002
// ICHI carries the statistical code a procedure is reported under. Both systems are
// allowed on Procedure.code so a resource can carry either, or both as two codings.
* include codes from valueset $ichi-vs
// Physiotherapy procedures with no equivalent SNOMED CT concept; the others are coded in SNOMED CT
// (see physiotherapy-procedure-to-snomed).
* include physiotherapy-procedure-cs#proce-0001-00001 "Amplipulsterapiya (sinusoidal modulyatsiyalangan toklar bilan davolash)"
* include physiotherapy-procedure-cs#proce-0001-00002 "Aeroionoterapiya"
* include physiotherapy-procedure-cs#proce-0001-00003 "Baroterapiya"
* include physiotherapy-procedure-cs#proce-0001-00006 "Gidrogalvanik vannalar"
* include physiotherapy-procedure-cs#proce-0001-00007 "Mineral vannalar"
* include physiotherapy-procedure-cs#proce-0001-00008 "Vodorod sulfidli vannalar"
* include physiotherapy-procedure-cs#proce-0001-00009 "Radonli vannalar"
* include physiotherapy-procedure-cs#proce-0001-00010 "Gazli vannalar (kislorodli, karbonat angidridli, azotli)"
* include physiotherapy-procedure-cs#proce-0001-00011 "Xushbo‘y moddali vannalar"
* include physiotherapy-procedure-cs#proce-0001-00014 "Quruq havo vannalari"
* include physiotherapy-procedure-cs#proce-0001-00015 "Shifobaxsh balchiqli vannalar"
* include physiotherapy-procedure-cs#proce-0001-00016 "Havo pufakchali (marvaridli) vannalar"
* include physiotherapy-procedure-cs#proce-0001-00017 "Suv ostida ichakni yuvish vannasi"
* include physiotherapy-procedure-cs#proce-0001-00018 "Yod-bromli vanna"
* include physiotherapy-procedure-cs#proce-0001-00019 "Qum vannalari"
* include physiotherapy-procedure-cs#proce-0001-00021 "Suv osti dush-massaji"
* include physiotherapy-procedure-cs#proce-0001-00022 "Suv ostida umurtqa pog‘onasini tortish"
* include physiotherapy-procedure-cs#proce-0001-00024 "Gelioterapiya (quyosh nuri bilan davolash)"
* include physiotherapy-procedure-cs#proce-0001-00025 "Gipoksiterapiya"
* include physiotherapy-procedure-cs#proce-0001-00026 "Balchiq bilan davolash (peloidoterapiya)"
* include physiotherapy-procedure-cs#proce-0001-00027 "Galoterapiya (tuz aerozoli bilan davolash)"
* include physiotherapy-procedure-cs#proce-0001-00028 "Galvanobalchiq terapiyasi"
* include physiotherapy-procedure-cs#proce-0001-00029 "Balchiqli induktotermiya"
* include physiotherapy-procedure-cs#proce-0001-00030 "Pelofonoterapiya"
* include physiotherapy-procedure-cs#proce-0001-00031 "Darsonvalizatsiya"
* include physiotherapy-procedure-cs#proce-0001-00032 "Detsimetr to‘lqinli terapiya (DMV-terapiya)"
* include physiotherapy-procedure-cs#proce-0001-00033 "Diadinamik toklar bilan davolash (DDT)"
* include physiotherapy-procedure-cs#proce-0001-00034 "Duodenal zondlash"
* include physiotherapy-procedure-cs#proce-0001-00035 "Induktotermiya"
* include physiotherapy-procedure-cs#proce-0001-00039 "Kislorod chodirida kislorod terapiyasi"
* include physiotherapy-procedure-cs#proce-0001-00040 "O‘ta yuqori chastotali millimetr to‘lqinli terapiya (KVCh-terapiya)"
* include physiotherapy-procedure-cs#proce-0001-00041 "Lazer terapiyasi"
* include physiotherapy-procedure-cs#proce-0001-00044 "Magnitoterapiya"
* include physiotherapy-procedure-cs#proce-0001-00045 "Magnitopunktura"
* include physiotherapy-procedure-cs#proce-0001-00047 "Kriomassaj"
* include physiotherapy-procedure-cs#proce-0001-00048 "Vakuumli massaj"
* include physiotherapy-procedure-cs#proce-0001-00049 "Ultrabinafsha nurlanish uchun biodozani aniqlash"
* include physiotherapy-procedure-cs#proce-0001-00050 "Ozokerit bilan davolash"
* include physiotherapy-procedure-cs#proce-0001-00052 "Parafin bilan davolash"
* include physiotherapy-procedure-cs#proce-0001-00053 "Santimetr to‘lqinli terapiya (SMV-terapiya)"
* include physiotherapy-procedure-cs#proce-0001-00056 "Yorug‘lik vannasi"
* include physiotherapy-procedure-cs#proce-0001-00059 "Tyubaj (zondsiz o‘t ajralishini rag‘batlantirish)"
* include physiotherapy-procedure-cs#proce-0001-00060 "Umurtqa pog‘onasini traksion tortish"
* include physiotherapy-procedure-cs#proce-0001-00061 "Ultratonoterapiya (UTT)"
* include physiotherapy-procedure-cs#proce-0001-00065 "Ultrabinafsha nurlanish. PUVA vannalari"
* include physiotherapy-procedure-cs#proce-0001-00066 "Ultrabinafsha nurlanish. Tubus-kvars"
* include physiotherapy-procedure-cs#proce-0001-00067 "Franklinizatsiya"
* include physiotherapy-procedure-cs#proce-0001-00069 "Flyuktuorizatsiya"
* include physiotherapy-procedure-cs#proce-0001-00071 "Elektrosuyqu terapiyasi"
* include physiotherapy-procedure-cs#proce-0001-00072 "Elektrotrankvilizatsiya"
* include codes from valueset TXMKRadiologyVS

// * include $sct#33879002
// * include $sct#20135006
// * include $sct#25179006
