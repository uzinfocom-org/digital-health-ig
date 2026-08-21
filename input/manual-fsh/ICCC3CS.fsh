// Generated from input/excel/CancerRegistry_30.07.2026.xlsx, sheet "CodeSystemICCC-3".
//
// Codes use the published ICCC notation - group (I..XII), subgroup (Ia), division (Ia1) - so a
// child code contains its parent's code. The DHP convention against embedding parent codes does
// not apply here: the codes are defined externally by IARC, not minted by DHP.
//
// The sheet follows the original 2005 edition of ICCC-3, not the 2017 IARC update (which renames
// VIIa, drops VIa4 and rewords IXd3).
//
// Three deviations from the sheet, all to match the published classification:
//   - III "c" (Intracranial and intraspinal embryonal tumors) is a Cyrillic "с" (U+0441) in the
//     sheet; replaced with Latin "c".
//   - XI "s" (Skin carcinomas) is "e" in the published classification.
//   - Ia divisions are numbered 2, 3, 4 in the sheet; renumbered to the published Ia1 (Precursor
//     cell leukemias), Ia2 (Mature B-cell leukemias) and Ia4 (Lymphoid leukemia, NOS). Ia3
//     (Mature T-cell and NK cell leukemias) is absent from the sheet and is not defined here.

CodeSystem: ICCC3CS
Id: iccc-3-cs
Title: "International Classification of Childhood Cancer, 3rd edition"
Description: "Diagnostic groups, subgroups and divisions of the International Classification of Childhood Cancer, 3rd edition (ICCC-3), used to classify childhood cancers by morphology for registry reporting. The content follows the 2005 edition of the classification"
* insert OriginalClassificationCodeSystemDraft(iccc-3-cs)
* ^copyright = "International Classification of Childhood Cancer, third edition (ICCC-3). Steliarova-Foucher E, Stiller C, Lacour B, Kaatsch P. Cancer 2005;103(7):1457-1467. Published by the International Agency for Research on Cancer (IARC) and the US National Cancer Institute SEER Program."

// ===== I =====
* #I "Leykozlar, miyeloproliferativ kasalliklar va miyelodisplastik kasalliklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкозы, миелопролиферативные заболевания и миелодиспластические заболевания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leukemias, myeloproliferative diseases, and myelodysplastic diseases"
* #I #Ia "Limfoid leykozlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоидные лейкозы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphoid leukemias"
* #I #Ia #Ia1 "Old hujayralardan rivojlangan leykozlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкозы из клеток-предшественников"
  * ^designation[+].language = #en
  * ^designation[=].value = "Precursor cell leukemias"
* #I #Ia #Ia2 "Yetuk B-hujayrali leykozlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейкозы зрелых B-клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mature B-cell leukemias"
* #I #Ia #Ia4 "Limfoid leykoz, aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоидный лейкоз, неуточнённый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphoid leukemia, NOS"
* #I #Ib "O‘tkir miyeloid leykozlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острые миелоидные лейкозы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Acute myeloid leukemias"
* #I #Ic "Surunkali miyeloproliferativ kasalliklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронические миелопролиферативные заболевания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chronic myeloproliferative diseases"
* #I #Id "Miyelodisplastik sindrom va boshqa miyeloproliferativ kasalliklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миелодиспластический синдром и другие миелопролиферативные заболевания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Myelodysplastic syndrome and other myeloproliferative diseases"
* #I #Ie "Aniqlanmagan va boshqa aniqlangan leykozlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые и другие уточнённые лейкозы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified and other specified leukemias"

// ===== II =====
* #II "Limfomalar va retikuloendotelial o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфомы и ретикулоэндотелиальные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lymphomas and reticuloendothelial neoplasms"
* #II #IIa "Xodjkin limfomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфомы Ходжкина"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hodgkin lymphomas"
* #II #IIb "Non-Xodjkin limfomalari (Berkitt limfomasidan tashqari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неходжкинские лимфомы (кроме лимфомы Беркитта)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-Hodgkin lymphomas (except Burkitt lymphoma)"
* #II #IIb #IIb1 "Old hujayralardan rivojlangan limfomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфомы из клеток-предшественников"
  * ^designation[+].language = #en
  * ^designation[=].value = "Precursor cell lymphomas"
* #II #IIb #IIb2 "Yetuk B-hujayrali limfomalar (Berkitt limfomasidan tashqari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфомы зрелых B-клеток (кроме лимфомы Беркитта)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mature B-cell lymphomas (except Burkitt lymphoma)"
* #II #IIb #IIb3 "Yetuk T-hujayra va NK-hujayra limfomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфомы зрелых T-клеток и NK-клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mature T-cell and NK-cell lymphomas"
* #II #IIb #IIb4 "Non-Xodjkin limfomalari, aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неходжкинские лимфомы, неуточнённые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-Hodgkin lymphomas, NOS"
* #II #IIc "Berkitt limfomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфома Беркитта"
  * ^designation[+].language = #en
  * ^designation[=].value = "Burkitt lymphoma"
* #II #IId "Boshqa limforetikulyar o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие лимфоретикулярные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Miscellaneous lymphoreticular neoplasms"
* #II #IIe "Aniqlanmagan limfomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые лимфомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified lymphomas"

// ===== III =====
* #III "CNS va boshqa intrakranial va intraspinal o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли ЦНС и прочие внутричерепные и внутриспинальные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "CNS and miscellaneous intracranial and intraspinal neoplasms"
* #III #IIIa "Ependimomalar va tomirli pleksus o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпендимомы и опухоли сосудистого сплетения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ependymomas and choroid plexus tumor"
* #III #IIIa #IIIa1 "Ependimomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпендимомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ependymomas"
* #III #IIIa #IIIa2 "Tomirli pleksus o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли сосудистого сплетения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Choroid plexus tumor"
* #III #IIIb "Astrositomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Астроцитомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Astrocytomas"
* #III #IIIc "Intrakranial va intraspinal embrional o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные эмбриональные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal embryonal tumors"
* #III #IIIc #IIIc1 "Medulloblastomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медуллобластомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medulloblastomas"
* #III #IIIc #IIIc2 "Primitiv neyroektodermal o‘sma (PNET)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Примитивная нейроэктодермальная опухоль (ПНЭТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "PNET"
* #III #IIIc #IIIc3 "Medulloepitelioma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медуллоэпителиома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medulloepithelioma"
* #III #IIIc #IIIc4 "Atipik teratoid/rabdoid o‘sma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Атипичная тератоидно-рабдоидная опухоль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Atypical teratoid/rhabdoid tumor"
* #III #IIId "Boshqa gliomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие глиомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other gliomas"
* #III #IIId #IIId1 "Oligodendrogliomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Олигодендроглиомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oligodendrogliomas"
* #III #IIId #IIId2 "Aralash va aniqlanmagan gliomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Смешанные и неуточнённые глиомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mixed and unspecified gliomas"
* #III #IIId #IIId3 "Kelib chiqishi noaniq neyroepitelial glial o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейроэпителиальные глиальные опухоли неясного происхождения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neuroepithelial glial tumors of uncertain origin"
* #III #IIIe "Boshqa aniqlangan intrakranial va intraspinal o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточнённые внутричерепные и внутриспинальные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other specified intracranial and intraspinal neoplasms"
* #III #IIIe #IIIe1 "Gipofiz adenomasi va karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аденомы и карциномы гипофиза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pituitary adenomas and carcinomas"
* #III #IIIe #IIIe2 "Sellar soha o‘smalari (kraniofaringiomalar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли селлярной области (краниофарингиомы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tumors of the sellar region (craniopharyngiomas)"
* #III #IIIe #IIIe3 "Pineal parenxima o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли паренхимы шишковидной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pineal parenchymal tumors"
* #III #IIIe #IIIe4 "Neyronal va aralash neyronal-glial o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейрональные и смешанные нейронально-глиальные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neuronal and mixed neuronal-glial tumors"
* #III #IIIe #IIIe5 "Meningiomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Менингиомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Meningiomas"
* #III #IIIf "Aniqlanmagan intrakranial va intraspinal o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые внутричерепные и внутриспинальные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified intracranial and intraspinal neoplasms"

// ===== IV =====
* #IV "Neyroblastoma va boshqa periferik nerv hujayralari o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейробластома и другие опухоли клеток периферической нервной системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neuroblastoma and other peripheral nervous cell tumors"
* #IV #IVa "Neyroblastoma va ganglionevroblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нейробластома и ганглионейробластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neuroblastoma and ganglioneuroblastoma"
* #IV #IVb "Boshqa periferik nerv hujayralari o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие опухоли клеток периферической нервной системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other peripheral nervous cell tumors"

// ===== V =====
* #V "Retinoblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ретинобластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Retinoblastoma"

// ===== VI =====
* #VI "Buyrak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Renal tumors"
* #VI #VIa "Nefroblastoma va boshqa epitelial bo‘lmagan buyrak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нефробластома и другие неэпителиальные опухоли почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nephroblastoma and other nonepithelial renal tumors"
* #VI #VIa #VIa1 "Nefroblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нефробластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nephroblastoma"
* #VI #VIa #VIa2 "Buyrakning rabdoid o‘smasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рабдоидная опухоль почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rhabdoid renal tumor"
* #VI #VIa #VIa3 "Buyrak sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Саркомы почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Kidney sarcomas"
* #VI #VIa #VIa4 "Buyrak pPNET"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pPNET почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "pPNET of kidney"
* #VI #VIb "Buyrak karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Renal carcinomas"
* #VI #VIc "Aniqlanmagan yomon sifatli buyrak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые злокачественные опухоли почки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified malignant renal tumors"

// ===== VII =====
* #VII "Jigar o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли печени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatic tumors"
* #VII #VIIa "Gepatoblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гепатобластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatoblastoma"
* #VII #VIIb "Jigar karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы печени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hepatic carcinomas"
* #VII #VIIc "Aniqlanmagan yomon sifatli jigar o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые злокачественные опухоли печени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified malignant hepatic tumors"

// ===== VIII =====
* #VIII "Suyaklarning yomon sifatli o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные опухоли костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant bone tumors"
* #VIII #VIIIa "Osteosarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Остеосаркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Osteosarcomas"
* #VIII #VIIIb "Xondrosarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хондросаркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chondrosarcomas"
* #VIII #VIIIc "Ewing o‘smasi va unga o‘xshash suyak sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоль Юинга и родственные саркомы костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ewing tumor and related sarcomas of bone"
* #VIII #VIIIc #VIIIc1 "Ewing va Askin suyak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоль Юинга и опухоль Аскина костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ewing tumor and Askin tumor of bone"
* #VIII #VIIIc #VIIIc2 "Suyak pPNET"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pPNET костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "pPNET of bone"
* #VIII #VIIId "Boshqa aniqlangan yomon sifatli suyak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточнённые злокачественные опухоли костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other specified malignant bone tumors"
* #VIII #VIIId #VIIId1 "Suyaklarning yomon sifatli fibroz o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные фиброзные новообразования костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant fibrous neoplasms of bone"
* #VIII #VIIId #VIIId2 "Yomon sifatli xordomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные хордомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant chordomas"
* #VIII #VIIId #VIIId3 "Odontogen yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Одонтогенные злокачественные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Odontogenic malignant tumors"
* #VIII #VIIId #VIIId4 "Boshqa yomon sifatli suyak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие злокачественные опухоли костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Miscellaneous malignant bone tumors"
* #VIII #VIIIe "Aniqlanmagan yomon sifatli suyak o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые злокачественные опухоли костей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified malignant bone tumors"

// ===== IX =====
* #IX "Yumshoq to‘qima va boshqa ekstrasuyak sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Саркомы мягких тканей и другие вне-костные саркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Soft tissue and other extraosseous sarcomas"
* #IX #IXa "Rabdomiosarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рабдомиосаркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rhabdomyosarcomas"
* #IX #IXb "Fibrosarkomalar, periferik nerv qobig‘i o‘smalari va boshqa fibroz o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фибросаркомы, опухоли оболочек периферических нервов и другие фиброзные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibrosarcomas, peripheral nerve sheath tumors, and other fibrous neoplasms"
* #IX #IXb #IXb1 "Fibroblastik va miofibroblastik o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фибробластические и миофибробластические опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibroblastic and myofibroblastic tumors"
* #IX #IXb #IXb2 "Nerv qobig‘i o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли оболочек нервов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nerve sheath tumors"
* #IX #IXb #IXb3 "Boshqa fibromatoz o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие фиброматозные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other fibromatous neoplasms"
* #IX #IXc "Kaposi sarkomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Саркома Капоши"
  * ^designation[+].language = #en
  * ^designation[=].value = "Kaposi sarcoma"
* #IX #IXd "Boshqa aniqlangan yumshoq to‘qima sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточнённые саркомы мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other specified soft tissue sarcomas"
* #IX #IXd #IXd1 "Yumshoq to‘qimalarning Ewing va Askin o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоль Юинга и опухоль Аскина мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ewing tumor and Askin tumor of soft tissue"
* #IX #IXd #IXd2 "Yumshoq to‘qima pPNET"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pPNET мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "pPNET of soft tissue"
* #IX #IXd #IXd3 "Ekstrarenal rabdoid o‘sma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внепочечная рабдоидная опухоль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extrarenal rhabdoid tumor"
* #IX #IXd #IXd4 "Liposarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Липосаркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Liposarcomas"
* #IX #IXd #IXd5 "Fibrogistiotsitar o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фиброгистиоцитарные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibrohistiocytic tumors"
* #IX #IXd #IXd6 "Leyomiosarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лейомиосаркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Leiomyosarcomas"
* #IX #IXd #IXd7 "Sinovial sarkomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Синовиальные саркомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Synovial sarcomas"
* #IX #IXd #IXd8 "Qon tomir o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли кровеносных сосудов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood vessel tumors"
* #IX #IXd #IXd9 "Yumshoq to‘qimaning suyak va tog‘ay o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Костные и хрящевые новообразования мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Osseous and chondromatous neoplasms of soft tissue"
* #IX #IXd #IXd10 "Alveolyar yumshoq to‘qima sarkomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альвеолярная саркома мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Alveolar soft parts sarcoma"
* #IX #IXd #IXd11 "Boshqa yumshoq to‘qima sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие саркомы мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Miscellaneous soft tissue sarcomas"
* #IX #IXe "Aniqlanmagan yumshoq to‘qima sarkomalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточнённые саркомы мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified soft tissue sarcomas"

// ===== X =====
* #X "Jinsiy hujayra o‘smalari, trofoblastik o‘smalar va gonada o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоли зародышевых клеток, трофобластические опухоли и новообразования гонад"
  * ^designation[+].language = #en
  * ^designation[=].value = "Germ cell tumors, trophoblastic tumors, and neoplasms of gonads"
* #X #Xa "Intrakranial va intraspinal jinsiy hujayra o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные опухоли зародышевых клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal germ cell tumors"
* #X #Xa #Xa1 "Intrakranial va intraspinal germinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные герминомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal germinomas"
* #X #Xa #Xa2 "Intrakranial va intraspinal teratomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные тератомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal teratomas"
* #X #Xa #Xa3 "Intrakranial va intraspinal embrional karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные эмбриональные карциномы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal embryonal carcinomas"
* #X #Xa #Xa4 "Intrakranial va intraspinal sariq xalta o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепная и внутриспинальная опухоль желточного мешка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal yolk sac tumor"
* #X #Xa #Xa5 "Intrakranial va intraspinal xoriokarsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепная и внутриспинальная хориокарцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal choriocarcinoma"
* #X #Xa #Xa6 "Intrakranial va intraspinal aralash turdagi o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутричерепные и внутриспинальные опухоли смешанных форм"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial and intraspinal tumors of mixed forms"
* #X #Xb "Ekstrakranial va ekstragonadal yomon sifatli jinsiy hujayra o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные внечерепные и внегональные опухоли зародышевых клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant extracranial and extragonadal germ cell tumors"
* #X #Xb #Xb1 "Ekstrakranial va ekstragonadal joylashuvdagi yomon sifatli germinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные герминомы внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant germinomas of extracranial and extragonadal sites"
* #X #Xb #Xb2 "Ekstrakranial va ekstragonadal joylashuvdagi yomon sifatli teratomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные тератомы внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant teratomas of extracranial and extragonadal sites"
* #X #Xb #Xb3 "Ekstrakranial va ekstragonadal embrional karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эмбриональные карциномы внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Embryonal carcinomas of extracranial and extragonadal sites"
* #X #Xb #Xb4 "Ekstrakranial va ekstragonadal sariq xalta o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоль желточного мешка внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yolk sac tumor of extracranial and extragonadal sites"
* #X #Xb #Xb5 "Ekstrakranial va ekstragonadal xoriokarsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хориокарциномы внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Choriocarcinomas of extracranial and extragonadal sites"
* #X #Xb #Xb6 "Ekstrakranial va ekstragonadal boshqa va aniqlanmagan aralash jinsiy hujayra o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие и неуточнённые злокачественные смешанные опухоли зародышевых клеток внечерепных и внегональных локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other and unspecified malignant mixed germ cell tumors of extracranial and extragonadal sites"
* #X #Xc "Gonadal yomon sifatli jinsiy hujayra o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные гонадные опухоли зародышевых клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant gonadal germ cell tumors"
* #X #Xc #Xc1 "Gonadal yomon sifatli germinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные гонадные герминомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant gonadal germinomas"
* #X #Xc #Xc2 "Gonadal yomon sifatli teratomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные гонадные тератомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant gonadal teratomas"
* #X #Xc #Xc3 "Gonadal embrional karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонадные эмбриональные карциномы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gonadal embryonal carcinomas"
* #X #Xc #Xc4 "Gonadal sariq xalta o‘smalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонадная опухоль желточного мешка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gonadal yolk sac tumor"
* #X #Xc #Xc5 "Gonadal xoriokarsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонадная хориокарцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gonadal choriocarcinoma"
* #X #Xc #Xc6 "Gonadal aralash turdagi yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные гонадные опухоли смешанных форм"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant gonadal tumors of mixed forms"
* #X #Xc #Xc7 "Gonadal yomon sifatli gonadoblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественная гонадная гонадобластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant gonadal gonadoblastoma"
* #X #Xd "Gonadal karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гонадные карциномы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gonadal carcinomas"
* #X #Xe "Boshqa va aniqlanmagan gonadal yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие и неуточнённые злокачественные гонадные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other and unspecified malignant gonadal tumors"

// ===== XI =====
* #XI "Boshqa yomon sifatli epitelial o‘smalar va melanomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие злокачественные эпителиальные новообразования и злокачественные меланомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other malignant epithelial neoplasms and malignant melanomas"
* #XI #XIa "Adrenokortikal karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Адренокортикальные карциномы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adrenocortical carcinomas"
* #XI #XIb "Qalqonsimon bez karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы щитовидной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thyroid carcinomas"
* #XI #XIc "Nazofaringeal karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы носоглотки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nasopharyngeal carcinomas"
* #XI #XId "Yomon sifatli melanomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Злокачественные меланомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Malignant melanomas"
* #XI #XIe "Teri karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы кожи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Skin carcinomas"
* #XI #XIf "Boshqa va aniqlanmagan karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие и неуточнённые карциномы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other and unspecified carcinomas"
* #XI #XIf #XIf1 "So‘lak bezlari karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы слюнных желез"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of salivary glands"
* #XI #XIf #XIf2 "Yo‘g‘on va to‘g‘ri ichak karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы толстой и прямой кишки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of colon and rectum"
* #XI #XIf #XIf3 "Apendiks karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы аппендикса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of appendix"
* #XI #XIf #XIf4 "O‘pka karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы лёгких"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of lung"
* #XI #XIf #XIf5 "Timus karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы тимуса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of thymus"
* #XI #XIf #XIf6 "Ko‘krak bezi karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of breast"
* #XI #XIf #XIf7 "Bachadon bo‘yni karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы шейки матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of cervix uteri"
* #XI #XIf #XIf8 "Siydik pufagi karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы мочевого пузыря"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of bladder"
* #XI #XIf #XIf9 "Ko‘z karsinomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы глаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of eye"
* #XI #XIf #XIf10 "Boshqa aniqlangan joylashuvdagi karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы других уточнённых локализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of other specified sites"
* #XI #XIf #XIf11 "Aniqlanmagan joylashuvdagi karsinomalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карциномы неуточнённой локализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carcinomas of unspecified site"

// ===== XII =====
* #XII "Boshqa va aniqlanmagan yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие и неуточнённые злокачественные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other and unspecified malignant neoplasms"
* #XII #XIIa "Boshqa aniqlangan yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточнённые злокачественные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other specified malignant tumors"
* #XII #XIIa #XIIa1 "Gastrointestinal stromal o‘sma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гастроинтестинальная стромальная опухоль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gastrointestinal stromal tumor"
* #XII #XIIa #XIIa2 "Pankreatoblastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Панкреатобластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pancreatoblastoma"
* #XII #XIIa #XIIa3 "O‘pka blastomasi va plevropulmonal blastoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лёгочная бластома и плевропульмональная бластома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary blastoma and pleuropulmonary blastoma"
* #XII #XIIa #XIIa4 "Boshqa murakkab aralash va stromal o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие сложные смешанные и стромальные новообразования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other complex mixed and stromal neoplasms"
* #XII #XIIa #XIIa5 "Mezotelioma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мезотелиома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mesothelioma"
* #XII #XIIa #XIIa6 "Boshqa aniqlangan yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточнённые злокачественные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other specified malignant tumors"
* #XII #XIIb "Boshqa aniqlanmagan yomon sifatli o‘smalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие неуточнённые злокачественные опухоли"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other unspecified malignant tumors"
