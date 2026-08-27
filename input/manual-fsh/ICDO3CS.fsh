CodeSystem: ICDO3CS
Id: icd-o-3
Title: "International Classification of Diseases for Oncology, 3rd Edition, 2nd Revision (ICD-O-3.2)"
Description: "Topography and morphology codes of the International Classification of Diseases for Oncology, 3rd edition, 2nd revision (ICD-O-3.2, WHO/IARC, 2019, final table of 9 October 2020). Topography codes (C00.0-C80.9) point to their three-character site and the `T` grouper through the `parent` property; morphology codes (histology/behaviour, 8000/0-9993/3) point to the `M` grouper. Grouper concepts are marked `notSelectable`. Morphology terms flagged obsolete in ICD-O-3.2 carry `status = deprecated` and stay valid for historical records. Uzbek and Russian designations are the terms used by the Cancer ID registry."
* ^url = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* ^version = "3.2"
* ^status = #active
* ^experimental = true
* ^publisher = "World Health Organization / International Agency for Research on Cancer"
* ^copyright = "International Classification of Diseases for Oncology, 3rd edition, 2nd revision. Copyright World Health Organization / International Agency for Research on Cancer. Source tables: IACR, https://www.iacr.com.fr (ICD-O-3.2 final table, 9 October 2020). Reproduced for the DHP terminology service; redistribution is subject to WHO/IARC permission. Uzbek and Russian designations are the Ministry of Health of the Republic of Uzbekistan translations."
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "Grouper concept, not for use in patient data"
* ^property[=].type = #boolean
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "deprecated for morphology terms marked obsolete in ICD-O-3.2"
* ^property[=].type = #code
* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "Parent concept: the three-character site for topography codes, `T` for sites, `M` for morphology codes"
* ^property[=].type = #code

* #T "Topography"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #C00 "Lip"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C00.0 "External upper lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuqori lab tashqi yuzasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "верхней губы наружн.поверхность"
* #C00.1 "External lower lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "pastki lab tashqi yuzasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "нижней губы наружн.поверхность"
* #C00.2 "External lip, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "lablar tashqi yuzasi qo'shimcha aniqlashtirishsiz (QA)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "губы наружн.поверхность БДУ"
* #C00.3 "Mucosa of upper lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuqori lab shilliq qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слизистая верхней губы"
* #C00.4 "Mucosa of lower lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "pastki lab shilliq qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слизистая нижней губы"
* #C00.5 "Mucosa of lip, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "lablar shilliq qismi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слизистая губы БДУ"
* #C00.6 "Commissure of lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz burchagi (lab bitishmalari)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "угол рта (спайка губ)"
* #C00.8 "Overlapping lesion of lip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "labning bir nechta qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких смежных отделов губы"
* #C00.9 "Lip, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C00
  * ^designation[0].language = #uz
  * ^designation[=].value = "lab QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "губа БДУ"
* #C01 "Base of tongue"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C01.9 "Base of tongue, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C01
  * ^designation[0].language = #uz
  * ^designation[=].value = "til asosi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "основание языка БДУ"
* #C02 "Other and unspecified parts of tongue"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C02.0 "Dorsal surface of tongue, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "tilning yuqori yuzasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "языка верхняя поверхность БДУ"
* #C02.1 "Border of tongue"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "tilning yon yuzasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "языка боковая поверхность"
* #C02.2 "Ventral surface of tongue, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "tilning pastki yuzasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "языка нижняя поверхность БДУ"
* #C02.3 "Anterior 2/3 of tongue, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "tilning old qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "языка передняя часть"
* #C02.4 "Lingual tonsil"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "til bodomcha bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "миндалина язычная"
* #C02.8 "Overlapping lesion of tongue"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "tilning chegeralangan sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "языка пограничная зона"
* #C02.9 "Tongue, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C02
  * ^designation[0].language = #uz
  * ^designation[=].value = "til QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "язык БДУ"
* #C03 "Gum"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C03.0 "Upper gum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C03
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuqori jag' milki"
  * ^designation[+].language = #ru
  * ^designation[=].value = "десна верхней челюсти"
* #C03.1 "Lower gum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C03
  * ^designation[0].language = #uz
  * ^designation[=].value = "pastki jag' milki"
  * ^designation[+].language = #ru
  * ^designation[=].value = "десна нижней челюсти"
* #C03.9 "Gum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C03
  * ^designation[0].language = #uz
  * ^designation[=].value = "milk QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "десна БДУ"
* #C04 "Floor of mouth"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C04.0 "Anterior floor of mouth"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C04
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i tubi old qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дна полости рта передн.часть"
* #C04.1 "Lateral floor of mouth"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C04
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i tubi yon qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дна полости рта боков.отдел"
* #C04.8 "Overlapping lesion of floor of mouth"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C04
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i tubi kuplab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов дна полости рта"
* #C04.9 "Floor of mouth, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C04
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i tubi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дно полости рта БДУ"
* #C05 "Palate"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C05.0 "Hard palate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C05
  * ^designation[0].language = #uz
  * ^designation[=].value = "qattiq tanglay"
  * ^designation[+].language = #ru
  * ^designation[=].value = "небо твердое"
* #C05.1 "Soft palate, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C05
  * ^designation[0].language = #uz
  * ^designation[=].value = "yumshoq tanglay QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "небо мягкое БДУ"
* #C05.2 "Uvula"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C05
  * ^designation[0].language = #uz
  * ^designation[=].value = "tanglay tilchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "язычок небный"
* #C05.8 "Overlapping lesion of palate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C05
  * ^designation[0].language = #uz
  * ^designation[=].value = "tanglayning ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов неба"
* #C05.9 "Palate, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C05
  * ^designation[0].language = #uz
  * ^designation[=].value = "tanglay QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "небо БДУ"
* #C06 "Other and unspecified parts of mouth"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C06.0 "Cheek mucosa"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C06
  * ^designation[0].language = #uz
  * ^designation[=].value = "yonoq shilliq qavati"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слизистая оболочка щеки"
* #C06.1 "Vestibule of mouth"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C06
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz dahliz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "преддверие рта"
* #C06.2 "Retromolar area"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C06
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i retromolyar sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ретромолярная область полости рта"
* #C06.8 "Overlapping lesion of other and unspecified parts of mouth"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C06
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов полости рта"
* #C06.9 "Mouth, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C06
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz bo'shlig'i QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "полость рта БДУ"
* #C07 "Parotid gland"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C07.9 "Parotid gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C07
  * ^designation[0].language = #uz
  * ^designation[=].value = "quloq oldi so'lak bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "околоушная слюнная железа"
* #C08 "Other and unspecified major salivary glands"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C08.0 "Submandibular gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C08
  * ^designation[0].language = #uz
  * ^designation[=].value = "jag' osti so'lak bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поднижнечелюстная слюнная железа"
* #C08.1 "Sublingual gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C08
  * ^designation[0].language = #uz
  * ^designation[=].value = "til osti so'lak bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "подъязычная слюнная железа"
* #C08.8 "Overlapping lesion of major salivary glands"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C08
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'plab katta so'lak bezlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких смежных больших слюнных желез"
* #C08.9 "Major salivary gland, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C08
  * ^designation[0].language = #uz
  * ^designation[=].value = "katta so'lak bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "большая слюнная железа"
* #C09 "Tonsil"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C09.0 "Tonsillar fossa"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C09
  * ^designation[0].language = #uz
  * ^designation[=].value = "bodomchasimon chuqurcha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ямка миндаликовая"
* #C09.1 "Tonsillar pillar"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C09
  * ^designation[0].language = #uz
  * ^designation[=].value = "tanglay bodomcha bezi yoyi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дужка небной миндалины"
* #C09.8 "Overlapping lesion of tonsil"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C09
  * ^designation[0].language = #uz
  * ^designation[=].value = "tanglay bodomcha bezining ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных частей небной миндалины"
* #C09.9 "Tonsil, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C09
  * ^designation[0].language = #uz
  * ^designation[=].value = "bodomsimon bez QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "миндалина БДУ"
* #C10 "Oropharynx"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C10.0 "Vallecula"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq usti chuqurchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "надгортанника ямка"
* #C10.1 "Anterior surface of epiglottis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq usti old yuzasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "надгортанника передняя поверхность"
* #C10.2 "Lateral wall of oropharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz-halqum yon devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ротоглотки боковая стенка"
* #C10.3 "Posterior wall of oropharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz-halqum orqa devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ротоглотки задняя стенка"
* #C10.4 "Branchial cleft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "jabrasmon yoriq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "щель жаберная"
* #C10.8 "Overlapping lesion of oropharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "ohiz-halqum ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов ротоглотки"
* #C10.9 "Oropharynx, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C10
  * ^designation[0].language = #uz
  * ^designation[=].value = "og'iz-halqum QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ротоглотка БДУ"
* #C11 "Nasopharynx"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C11.0 "Superior wall of nasopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum yuqori devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "носоглотки верхняя стенка"
* #C11.1 "Posterior wall of nasopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum orqa devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "носоглотки задняя стенка"
* #C11.2 "Lateral wall of nasopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum yon devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "носоглотки боковая стенка"
* #C11.3 "Anterior wall of nasopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum old devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "носоглотки передняя стенка"
* #C11.8 "Overlapping lesion of nasopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов носоглотки"
* #C11.9 "Nasopharynx, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C11
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun-halqum QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "носоглотка БДУ"
* #C12 "Pyriform sinus"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C12.9 "Pyriform sinus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C12
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq-halqumning noksimon cho'ntagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "грушевидный карман гортаноглотки"
* #C13 "Hypopharynx"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C13.0 "Postcricoid region"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C13
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq-halqumning uzuksimon ort sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "заперстневидная область гортаноглотки"
* #C13.1 "Hypopharyngeal aspect of aryepiglottic fold"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C13
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq usti cho'michsimon pastki halqum burmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "складка нижнеглоточная черпалонадгортанная"
* #C13.2 "Posterior wall of hypopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C13
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq-halqum orqa devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортаноглотки задняя стенка"
* #C13.8 "Overlapping lesion of hypopharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C13
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq-halqum ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных частей гортаноглотки"
* #C13.9 "Hypopharynx, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C13
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq-halqum QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортаноглотка БДУ"
* #C14 "Other and ill-defined sites in lip, oral cavity and pharynx"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C14.0 "Pharynx, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C14
  * ^designation[0].language = #uz
  * ^designation[=].value = "halqum QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глотка БДУ"
* #C14.2 "Waldeyer ring"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C14
  * ^designation[0].language = #uz
  * ^designation[=].value = "Valdeyer halqum xalqasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глоточное кольцо Вальдейера БДУ"
* #C14.8 "Overlapping lesion of lip, oral cavity and pharynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C14
  * ^designation[0].language = #uz
  * ^designation[=].value = "lablar, og'iz bo'shlig'i va halqumning zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пораж-е отделов губы, полости рта и глотки"
* #C15 "Esophagus"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C15.0 "Cervical esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach bo'yin qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода шейный отдел"
* #C15.1 "Thoracic esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach ko'krak qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода грудной отдел"
* #C15.2 "Abdominal esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach qorin qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода брюшной отдел"
* #C15.3 "Upper third of esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach yuqori uchligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода верхняя треть"
* #C15.4 "Middle third of esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach o'rta uchligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода средняя треть"
* #C15.5 "Lower third of esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach pastki uchligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевода нижняя треть"
* #C15.8 "Overlapping lesion of esophagus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов пищевода"
* #C15.9 "Esophagus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C15
  * ^designation[0].language = #uz
  * ^designation[=].value = "qizilo'ngach QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пищевод БДУ"
* #C16 "Stomach"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C16.0 "Cardia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon kardiyasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кардия желудка БДУ"
* #C16.1 "Fundus of stomach"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon tubi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудка дно"
* #C16.2 "Body of stomach"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon tanasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудка тело"
* #C16.3 "Gastric antrum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozonning 12 barmoq ichakka o'tadigan qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудка привратниковая часть"
* #C16.4 "Pylorus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin bo'yni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "привратник"
* #C16.5 "Lesser curvature of stomach, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon kichik egriligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудка малая кривизна"
* #C16.6 "Greater curvature of stomach, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon katta egriligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудка большая кривизна"
* #C16.8 "Overlapping lesion of stomach"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пораж-е неск-ких смежных отделов желудка"
* #C16.9 "Stomach, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C16
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудок БДУ"
* #C17 "Small intestine"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C17.0 "Duodenum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "12 barmoq ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кишка двенадцатиперстная"
* #C17.1 "Jejunum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "och ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кишка тощая"
* #C17.2 "Ileum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "yonbosh ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кишка подвздошная"
* #C17.3 "Meckel diverticulum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mekkel divertikuli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дивертикул Меккеля"
* #C17.8 "Overlapping lesion of small intestine"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "ingichka ichak ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов тонкого кишечника"
* #C17.9 "Small intestine, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C17
  * ^designation[0].language = #uz
  * ^designation[=].value = "ingichka ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "тонкий кишечник"
* #C18 "Colon"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C18.0 "Cecum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'r ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слепая кишка"
* #C18.1 "Appendix"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "chuvalchangsimon o'simta"
  * ^designation[+].language = #ru
  * ^designation[=].value = "аппендикс"
* #C18.2 "Ascending colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'tariluvchi chambar ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "восходящая ободочная кишка"
* #C18.3 "Hepatic flexure of colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "yo'g'on ichak o'ng (jigar) burilishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ободочной кишки правый (печеночный) изгиб"
* #C18.4 "Transverse colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ndalang chambar ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поперечная ободочная кишка"
* #C18.5 "Splenic flexure of colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "yo'g'on ichak chap (taloq) burilishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ободочной кишки левый (селезеночный) изгиб"
* #C18.6 "Descending colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "tushuvchi chambar ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "нисходящая ободочная кишка"
* #C18.7 "Sigmoid colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "sigmasimon ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "сигмовидная кишка"
* #C18.8 "Overlapping lesion of colon"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "yo'g'on ichak ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов ободочной кишки"
* #C18.9 "Colon, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C18
  * ^designation[0].language = #uz
  * ^designation[=].value = "yo'g'on ichak QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ободочная кишка БДУ"
* #C19 "Rectosigmoid junction"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C19.9 "Rectosigmoid junction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C19
  * ^designation[0].language = #uz
  * ^designation[=].value = "rektosigmoid birikma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ректосигмоидное соединение"
* #C20 "Rectum"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C20.9 "Rectum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C20
  * ^designation[0].language = #uz
  * ^designation[=].value = "to'g'ri ichak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "прямая кишка"
* #C21 "Anus and anal canal"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C21.0 "Anus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C21
  * ^designation[0].language = #uz
  * ^designation[=].value = "anus"
  * ^designation[+].language = #ru
  * ^designation[=].value = "анус"
* #C21.1 "Anal canal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C21
  * ^designation[0].language = #uz
  * ^designation[=].value = "anal kanal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "анальный канал"
* #C21.2 "Cloacogenic zone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C21
  * ^designation[0].language = #uz
  * ^designation[=].value = "kloakogen soha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "клоакогенная зона"
* #C21.8 "Overlapping lesion of rectum, anus and anal canal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C21
  * ^designation[0].language = #uz
  * ^designation[=].value = "to'g'ri ichak va anusning ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких отделов прямой кишки и ануса"
* #C22 "Liver and intrahepatic bile ducts"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C22.0 "Liver"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C22
  * ^designation[0].language = #uz
  * ^designation[=].value = "jigar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "печень"
* #C22.1 "Intrahepatic bile duct"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C22
  * ^designation[0].language = #uz
  * ^designation[=].value = "jigar ichi o't yo'li"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внутрипеченочный желчный проток"
* #C23 "Gallbladder"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C23.9 "Gallbladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C23
  * ^designation[0].language = #uz
  * ^designation[=].value = "o't pufagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желчный пузырь"
* #C24 "Other and unspecified parts of biliary tract"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C24.0 "Extrahepatic bile duct"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C24
  * ^designation[0].language = #uz
  * ^designation[=].value = "jigardan tashqari o't yo'li"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внепеченочный желчный проток"
* #C24.1 "Ampulla of Vater"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C24
  * ^designation[0].language = #uz
  * ^designation[=].value = "jigar-oshqozon osti bezi Fater ampulasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ампула Фатера печеночно-поджелудочная"
* #C24.8 "Overlapping lesion of biliary tract"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C24
  * ^designation[0].language = #uz
  * ^designation[=].value = "o't yo'llari ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пораж-е неск-х отделов желчевыводящих путей"
* #C24.9 "Biliary tract, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C24
  * ^designation[0].language = #uz
  * ^designation[=].value = "jigar yo'llari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желчные пути БДУ"
* #C25 "Pancreas"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C25.0 "Head of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi boshchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочной железы головка"
* #C25.1 "Body of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi boshchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочной железы тело"
* #C25.2 "Tail of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi dumi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочной железы хвост"
* #C25.3 "Pancreatic duct"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi yo'li"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочной железы проток"
* #C25.4 "Islets of Langerhans"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi Langergans orolchalari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "островки Лангерганса поджелуд.железы"
* #C25.7 "Other specified parts of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezining boshqa qismlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочной железы др.части"
* #C25.8 "Overlapping lesion of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов поджелудочной ж-зы"
* #C25.9 "Pancreas, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C25
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon osti bezi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поджелудочная железа БДУ"
* #C26 "Other and ill-defined digestive organs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C26.0 "Intestinal tract, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C26
  * ^designation[0].language = #uz
  * ^designation[=].value = "ichaklar QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кишечник БДУ"
* #C26.8 "Overlapping lesion of digestive system"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C26
  * ^designation[0].language = #uz
  * ^designation[=].value = "hazm qilish tizimi ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких отделов пищеварительной системы"
* #C26.9 "Gastrointestinal tract, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C26
  * ^designation[0].language = #uz
  * ^designation[=].value = "oshqozon-ichak tizimi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудочно-кишечный тракт БДУ"
* #C30 "Nasal cavity and middle ear"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C30.0 "Nasal cavity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C30
  * ^designation[0].language = #uz
  * ^designation[=].value = "burun bo'shlig'i"
  * ^designation[+].language = #ru
  * ^designation[=].value = "полость носа"
* #C30.1 "Middle ear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C30
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'rta quloq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "среднее ухо"
* #C31 "Accessory sinuses"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C31.0 "Maxillary sinus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuqori jag' bo'shlig'i"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пазуха верхнечелюстная"
* #C31.1 "Ethmoid sinus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "g'alvirsimon bo'shliq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пазуха решетчатая"
* #C31.2 "Frontal sinus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "peshona bo'shlig'i"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пазуха лобная"
* #C31.3 "Sphenoid sinus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "ponasimon bo'shliq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пазуха клиновидная"
* #C31.8 "Overlapping lesion of accessory sinuses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'shimcha (yondosh) bo'shliqlarning qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных придаточных пазух"
* #C31.9 "Accessory sinus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C31
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'shimcha (yondosh) bo'shliqlar QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "придаточная пазуха БДУ"
* #C32 "Larynx"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C32.0 "Glottis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "ovoz yorig'i (boylam sohasi)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "голосовая щель"
* #C32.1 "Supraglottis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoqning boylam usti sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортань над голосовой щелью"
* #C32.2 "Subglottis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoqning boylam osti sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортань под голосовой щелью"
* #C32.3 "Laryngeal cartilage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq tog'aylari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортани хрящ"
* #C32.8 "Overlapping lesion of larynx"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов гортани"
* #C32.9 "Larynx, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C32
  * ^designation[0].language = #uz
  * ^designation[=].value = "hiqildoq QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гортань БДУ"
* #C33 "Trachea"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C33.9 "Trachea"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C33
  * ^designation[0].language = #uz
  * ^designation[=].value = "traxeya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "трахея"
* #C34 "Bronchus and lung"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C34.0 "Main bronchus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh bronx"
  * ^designation[+].language = #ru
  * ^designation[=].value = "главный бронх"
* #C34.1 "Upper lobe, lung"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'pkaning yuqori bo'lagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "легкого верхняя доля"
* #C34.2 "Middle lobe, lung"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'pkaning o'rta bo'lagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "легкого средняя доля"
* #C34.3 "Lower lobe, lung"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'pkaning pastki bo'lagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "легкого нижняя доля"
* #C34.8 "Overlapping lesion of lung"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'pka va bronxning ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких смежных отделов легкого или бронха"
* #C34.9 "Lung, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C34
  * ^designation[0].language = #uz
  * ^designation[=].value = "o'pka QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "легкое БДУ"
* #C37 "Thymus"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C37.9 "Thymus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C37
  * ^designation[0].language = #uz
  * ^designation[=].value = "ayrisimon bez"
  * ^designation[+].language = #ru
  * ^designation[=].value = "тимус"
* #C38 "Heart, mediastinum, and pleura"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C38.0 "Heart"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "yurak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "сердце"
* #C38.1 "Anterior mediastinum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ks old sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "средостение переднее"
* #C38.2 "Posterior mediastinum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ks orqa sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "средостение заднее"
* #C38.3 "Mediastinum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ks oralig'i QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "средостение БДУ"
* #C38.4 "Pleura, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "plevra QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "плевра БДУ"
* #C38.8 "Overlapping lesion of heart, mediastinum and pleura"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C38
  * ^designation[0].language = #uz
  * ^designation[=].value = "yurak, ko'ks oralig'i va plevraning ko'plab qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "смежное множеств.пораж-е сердца, средостения и плевры"
* #C39 "Other and ill-defined sites within respiratory system and intrathoracic organs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C39.0 "Upper respiratory tract, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C39
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuqori nafas yo'llari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "верхние дыхательные пути"
* #C39.8 "Overlapping lesion of respiratory system and intrathoracic organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C39
  * ^designation[0].language = #uz
  * ^designation[=].value = "nafas tizimi ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких отделов дыхательной системы"
* #C39.9 "Ill-defined sites within respiratory system"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C39
  * ^designation[0].language = #uz
  * ^designation[=].value = "nafas tizimi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "дыхательная система БДУ"
* #C40 "Bones, joints and articular cartilage of limbs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C40.0 "Long bones of upper limb, scapula and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'lning uzun va kurak suyagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "длинная кость верх.конечности, лопатка"
* #C40.1 "Short bones of upper limb and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'lning kalta suyagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "короткая кость верх.конечности"
* #C40.2 "Long bones of lower limb and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoqning uzun suyagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "длинная кость нижн.конечности"
* #C40.3 "Short bones of lower limb and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoqning kalta suyagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "короткая кость нижн.конечности"
* #C40.8 "Overlapping lesion of bones, joints and articular cartilage of limbs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoo'-qo'llarning ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "множеств.поражение костей конечности"
* #C40.9 "Bone of limb, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C40
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoq-qo'llar suyaklari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кость конечности БДУ"
* #C41 "Bones, joints and articular cartilage of other and unspecified sites"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C41.0 "Bones of skull and face and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh va yuz suyaklari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кость черепа и лица"
* #C41.1 "Mandible"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "pastki jag' suyagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кость нижней челюсти"
* #C41.2 "Vertebral column"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "umurtqa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "позвоночник"
* #C41.3 "Rib, sternum, clavicle and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "qovurg'a, to'sh, o'mrov"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ребро, грудина, ключица"
* #C41.4 "Pelvic bones, sacrum, coccyx and associated joints"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "chanoq, dumg'aza va dum suyaklari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "тазовая кость, крестец, копчик"
* #C41.8 "Overlapping lesion of bones, joints and articular cartilage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "suyak, bo'g'im, bo'g'im tog'ayining ma'lum chegaradan chiqib zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пораж-е костей, суставов, суставных хрящей, выходящее за пределы одной лок-ции"
* #C41.9 "Bone, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C41
  * ^designation[0].language = #uz
  * ^designation[=].value = "suyak QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кость БДУ"
* #C42 "Hematopoietic and reticuloendothelial systems"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C42.0 "Blood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C42
  * ^designation[0].language = #uz
  * ^designation[=].value = "qon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кровь"
* #C42.1 "Bone marrow"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C42
  * ^designation[0].language = #uz
  * ^designation[=].value = "suyak ko'migi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "костный мозг"
* #C42.2 "Spleen"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C42
  * ^designation[0].language = #uz
  * ^designation[=].value = "taloq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "селезенка"
* #C42.3 "Reticuloendothelial system, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C42
  * ^designation[0].language = #uz
  * ^designation[=].value = "retikuloendotelial tizim QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ретикулоэндотелиальная система БДУ"
* #C42.4 "Hematopoietic system, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C42
  * ^designation[0].language = #uz
  * ^designation[=].value = "qon ishlab chiqaruvchi tizim QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кроветворная система БДУ"
* #C44 "Skin"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C44.0 "Skin of lip, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "lab terisi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа губы БДУ"
* #C44.1 "Eyelid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "qovoq terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа века"
* #C44.2 "External ear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "tashqi quloq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "наружное ухо"
* #C44.3 "Skin of other and unspecified parts of face"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "yuz terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа лица"
* #C44.4 "Skin of scalp and neck"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "boshning sochli qismi va bo'yin terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа волосистой части головы и шеи"
* #C44.5 "Skin of trunk"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "tana terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа туловища"
* #C44.6 "Skin of upper limb and shoulder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'l va elka terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа верхней конечности, плеча"
* #C44.7 "Skin of lower limb and hip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoq va son terisi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа нижней конечности, бедра"
* #C44.8 "Overlapping lesion of skin"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "terining ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "множественное поражение кожи"
* #C44.9 "Skin, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C44
  * ^designation[0].language = #uz
  * ^designation[=].value = "teri QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кожа БДУ"
* #C47 "Peripheral nerves and autonomic nervous system"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C47.0 "Peripheral nerves and autonomic nervous system of head, face, and neck"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh, yuz va bo'yinning periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегетат.НС головы, лица и шеи (за искл-ем НС орбиты)"
* #C47.1 "Peripheral nerves and autonomic nervous system of upper limb and shoulder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'l va elka kamarining periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС верхн.кон-ти и надплечья"
* #C47.2 "Peripheral nerves and autonomic nervous system of lower limb and hip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoq va sonningperiferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС нижней кон-ти, бедра"
* #C47.3 "Peripheral nerves and autonomic nervous system of thorax"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'krak qafasining periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС грудной клетки"
* #C47.4 "Peripheral nerves and autonomic nervous system of abdomen"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorinning periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС живота"
* #C47.5 "Peripheral nerves and autonomic nervous system of pelvis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "chanoqning periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС таза"
* #C47.6 "Peripheral nerves and autonomic nervous system of trunk, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "orqa (tana orqa qismi) ning periferik nervlari va vegetativ AT"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периф.нервы и вегет.НС спины"
* #C47.8 "Overlapping lesion of peripheral nerves and autonomic nervous system"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "periferik nervlar va vegetativ ATning ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "множественное поражение периферических нервов и вегетативной НС"
* #C47.9 "Autonomic nervous system, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C47
  * ^designation[0].language = #uz
  * ^designation[=].value = "periferik nervlar va vegetativ ATQA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "периферические нервы и вегетативная НС БДУ"
* #C48 "Retroperitoneum and peritoneum"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C48.0 "Retroperitoneum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C48
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin orti bo'shlig'i"
  * ^designation[+].language = #ru
  * ^designation[=].value = "забрюшинное пространство"
* #C48.1 "Specified parts of peritoneum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C48
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin parda, aniq sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "брюшина, уточн.часть"
* #C48.2 "Peritoneum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C48
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin parda, noaniq sohasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "брюшина, неуточн.часть"
* #C48.8 "Overlapping lesion of retroperitoneum and peritoneum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C48
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin orti bo'shlig'i va qorin pardaning ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-х отделов забрюшинного пространства и брюшины"
* #C49 "Connective, subcutaneous and other soft tissues"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C49.0 "Connective, Subcutaneous and other soft tissues of head, face, and neck"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh, yuz, bo'yinning yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мягкие ткани головы, лица, шеи"
* #C49.1 "Connective, Subcutaneous and other soft tissues of upper limb and shoulder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'l, elkaning biriktiruvchi va yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "соед.и мягкие ткани верхней конечности, плеча"
* #C49.2 "Connective, Subcutaneous and other soft tissues of lower limb and hip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoq va sonning biriktiruvchi va yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "соед.и мягкие ткани нижней конечности и бедра"
* #C49.3 "Connective, Subcutaneous and other soft tissues of thorax"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'krak devori yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мягкие ткани грудной стенки"
* #C49.4 "Connective, Subcutaneous and other soft tissues of abdomen"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin devori yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мягкие ткани брюшной стенки"
* #C49.5 "Connective, Subcutaneous and other soft tissues of pelvis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "chanoqning biriktiruvchi va yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "соед.и мягкие ткани таза"
* #C49.6 "Connective, Subcutaneous and other soft tissues of trunk, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "orqa (tana orqa qismi) ning yumshoq to'qimasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мягкие ткани спины"
* #C49.8 "Overlapping lesion of connective, subcutaneous and other soft tissues"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "tananing ko'plab qismlari yumshoq to'qimasining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "пораж-е мягких тканей неск-ких областей тела"
* #C49.9 "Connective, Subcutaneous and other soft tissues, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C49
  * ^designation[0].language = #uz
  * ^designation[=].value = "biriktiruvchi va yumshoq to'qima QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "соединительные и мягкие ткани БДУ"
* #C50 "Breast"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C50.0 "Nipple"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi, so'rg'ich va so'rg'ich atrofi (areola)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы сосок и околососковый кружок"
* #C50.1 "Central portion of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi markaziy qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы центральная часть"
* #C50.2 "Upper-inner quadrant of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi yuqori-ichki kvadranti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы верхне-внутренний квадрант"
* #C50.3 "Lower-inner quadrant of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi pastki-ichki kvadranti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы нижне-внутренний квадрант"
* #C50.4 "Upper-outer quadrant of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi yuqori-tashqi kvadranti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы верхне-наружный квадрант"
* #C50.5 "Lower-outer quadrant of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi pastki-tashqi kvadranti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы нижне-наружный квадрант"
* #C50.6 "Axillary tail of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi qo'ltiq osti o'simtasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочной железы подмышечный отросток"
* #C50.8 "Overlapping lesion of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezining ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поpаж-е неск-ких смежных отделов молочной ж-зы"
* #C50.9 "Breast, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C50
  * ^designation[0].language = #uz
  * ^designation[=].value = "sut bezi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "молочная железа БДУ"
* #C51 "Vulva"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C51.0 "Labium majus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C51
  * ^designation[0].language = #uz
  * ^designation[=].value = "katta uyatli lab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "большая срамная губа"
* #C51.1 "Labium minus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C51
  * ^designation[0].language = #uz
  * ^designation[=].value = "kichik uyatli lab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "малая срамная губа"
* #C51.2 "Clitoris"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C51
  * ^designation[0].language = #uz
  * ^designation[=].value = "klitor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "клитор"
* #C51.8 "Overlapping lesion of vulva"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C51
  * ^designation[0].language = #uz
  * ^designation[=].value = "qin dahlizining ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов вульвы"
* #C51.9 "Vulva, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C51
  * ^designation[0].language = #uz
  * ^designation[=].value = "qin dahlizi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "вульва БДУ"
* #C52 "Vagina"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C52.9 "Vagina, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C52
  * ^designation[0].language = #uz
  * ^designation[=].value = "qin QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "влагалище БДУ"
* #C53 "Cervix uteri"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C53.0 "Endocervix"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C53
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon bo'ynining ichki qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "шейки матки внутренняя часть"
* #C53.1 "Exocervix"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C53
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon bo'ynining tashqi qismi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "шейки матки наружная часть"
* #C53.8 "Overlapping lesion of cervix uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C53
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon bo'yniningko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов шейки матки"
* #C53.9 "Cervix uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C53
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon bo'yni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "шейка матки"
* #C54 "Corpus uteri"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C54.0 "Isthmus uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon bo'yinchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "матки перешеек"
* #C54.1 "Endometrium"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "endometriy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "эндометрий"
* #C54.2 "Myometrium"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "miometriy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "миометрий"
* #C54.3 "Fundus uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon tubi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "матки дно"
* #C54.8 "Overlapping lesion of corpus uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon tanasining ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов тела матки"
* #C54.9 "Corpus uteri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C54
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon tanasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "тело матки"
* #C55 "Uterus, NOS"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C55.9 "Uterus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C55
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "матка БДУ"
* #C56 "Ovary"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C56.9 "Ovary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C56
  * ^designation[0].language = #uz
  * ^designation[=].value = "tuxumdon"
  * ^designation[+].language = #ru
  * ^designation[=].value = "яичник"
* #C57 "Other and unspecified female genital organs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C57.0 "Fallopian tube"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "fallopiev nayi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "труба фаллопиева"
* #C57.1 "Broad ligament"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon keng boylami"
  * ^designation[+].language = #ru
  * ^designation[=].value = "матки широкая связка"
* #C57.2 "Round ligament"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon yumaloq boylami"
  * ^designation[+].language = #ru
  * ^designation[=].value = "матки круглая связка"
* #C57.3 "Parametrium"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "parametriy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "параметрий"
* #C57.4 "Uterine adnexa"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "bachadon ortiqlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "придаток матки"
* #C57.7 "Other specified parts of female genital organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "ayollar jinsiy a'zolarining boshqa sohalari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "др.отделы женских половых органов"
* #C57.8 "Overlapping lesion of female genital organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "ayollar ko'plab jinsiy a'zolarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких женских половых органов"
* #C57.9 "Female genital tract, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C57
  * ^designation[0].language = #uz
  * ^designation[=].value = "ayollar jinsiy a'zolari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "женские половые органы БДУ"
* #C58 "Placenta"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C58.9 "Placenta"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C58
  * ^designation[0].language = #uz
  * ^designation[=].value = "plasenta (yo'ldosh)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "плацента"
* #C60 "Penis"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C60.0 "Prepuce"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C60
  * ^designation[0].language = #uz
  * ^designation[=].value = "jinsiy olat cheka kertmagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "полового члена крайняя плоть"
* #C60.1 "Glans penis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C60
  * ^designation[0].language = #uz
  * ^designation[=].value = "jinsiy olat boshchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "полового члена головка"
* #C60.2 "Body of penis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C60
  * ^designation[0].language = #uz
  * ^designation[=].value = "jinsiy olat tanasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "полового члена тело"
* #C60.8 "Overlapping lesion of penis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C60
  * ^designation[0].language = #uz
  * ^designation[=].value = "jinsiy olat ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов полового члена"
* #C60.9 "Penis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C60
  * ^designation[0].language = #uz
  * ^designation[=].value = "jinsiy olat QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "половой член БДУ"
* #C61 "Prostate gland"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C61.9 "Prostate gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C61
  * ^designation[0].language = #uz
  * ^designation[=].value = "prostata bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "предстательная железа"
* #C62 "Testis"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C62.0 "Undescended testis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C62
  * ^designation[0].language = #uz
  * ^designation[=].value = "yorg'oqqa tushmagan moyak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "яичко неопустившееся"
* #C62.1 "Descended testis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C62
  * ^designation[0].language = #uz
  * ^designation[=].value = "yorg'oqqa tushgan moyak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "яичко опустившееся"
* #C62.9 "Testis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C62
  * ^designation[0].language = #uz
  * ^designation[=].value = "moyak QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "яичко БДУ"
* #C63 "Other and unspecified male genital organs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C63.0 "Epididymis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "moyakning ortiqlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "придаток яичка"
* #C63.1 "Spermatic cord"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "urug' tizimchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "семенной канатик"
* #C63.2 "Scrotum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "yorg'oq QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мошонка БДУ"
* #C63.7 "Other specified parts of male genital organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "erkaklar jinsiy a'zolarining boshqa sohalari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "др.отделы мужских половых органов"
* #C63.8 "Overlapping lesion of male genital organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "erkaklar ko'plab jinsiy a'zolarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение несколькихмужских половых органов"
* #C63.9 "Male genital organs, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C63
  * ^designation[0].language = #uz
  * ^designation[=].value = "erkaklar jinsiy a'zolari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мужские половые органы БДУ"
* #C64 "Kidney"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C64.9 "Kidney, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C64
  * ^designation[0].language = #uz
  * ^designation[=].value = "buyrak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "почка"
* #C65 "Renal pelvis"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C65.9 "Renal pelvis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C65
  * ^designation[0].language = #uz
  * ^designation[=].value = "buyrak jomi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "почечная лоханка"
* #C66 "Ureter"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C66.9 "Ureter"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C66
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik nayi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочеточник"
* #C67 "Bladder"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C67.0 "Trigone of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi uchburchagi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря треугольник"
* #C67.1 "Dome of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi gumbazi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря купол"
* #C67.2 "Lateral wall of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi yon devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря боковая стенка"
* #C67.3 "Anterior wall of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi old devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря передняя стенка"
* #C67.4 "Posterior wall of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi orqa devori"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря задняя стенка"
* #C67.5 "Bladder neck"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi bo'yinchasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевого пузыря шейка"
* #C67.6 "Ureteric orifice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik nayi teshigi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "устье мочеточника"
* #C67.7 "Urachus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "uraxus (birlamchi siydik yo'li)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "урахус (проток первичный мочевой)"
* #C67.8 "Overlapping lesion of bladder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagining ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов мочевого пузыря"
* #C67.9 "Bladder, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C67
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik pufagi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевой пузырь БДУ"
* #C68 "Other and unspecified urinary organs"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C68.0 "Urethra"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C68
  * ^designation[0].language = #uz
  * ^designation[=].value = "siydik kanali"
  * ^designation[+].language = #ru
  * ^designation[=].value = "канал мочеиспускательный"
* #C68.1 "Paraurethral gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C68
  * ^designation[0].language = #uz
  * ^designation[=].value = "parauretral bez"
  * ^designation[+].language = #ru
  * ^designation[=].value = "железа парауретральная"
* #C68.8 "Overlapping lesion of urinary organs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C68
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'plab ayirish a'zolarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение нескольких мочевых органов"
* #C68.9 "Urinary system, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C68
  * ^designation[0].language = #uz
  * ^designation[=].value = "ayirish a'zolari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мочевыделительная система БДУ"
* #C69 "Eye and adnexa"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C69.0 "Conjunctiva"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "kon'yunktiva"
  * ^designation[+].language = #ru
  * ^designation[=].value = "конъюнктива"
* #C69.1 "Cornea, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "shox parda QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "роговица БДУ"
* #C69.2 "Retina"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "to'r parda QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "сетчатка"
* #C69.3 "Choroid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'z tomirli pardasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глаза сосудистая оболочка"
* #C69.4 "Ciliary body"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'z kipriksimon tanasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глаза ресничное тело"
* #C69.5 "Lacrimal gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "yosh bezi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слезная железа БДУ"
* #C69.6 "Orbit, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'z kosasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глазница БДУ"
* #C69.8 "Overlapping lesion of eye and adnexa"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'zning ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов глаза"
* #C69.9 "Eye, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C69
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'z QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "глаз БДУ"
* #C70 "Meninges"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C70.0 "Cerebral meninges"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C70
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh miya pardasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "оболочка головного мозга"
* #C70.1 "Spinal meninges"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C70
  * ^designation[0].language = #uz
  * ^designation[=].value = "orqa miya pardasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "оболочка спинного мозга"
* #C70.9 "Meninges, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C70
  * ^designation[0].language = #uz
  * ^designation[=].value = "miya pardasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "оболочка мозга БДУ"
* #C71 "Brain"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C71.0 "Cerebrum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "katta miya (bo'lma va qorinchalardan tashqari)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "большой мозг (кроме долей и желудочков)"
* #C71.1 "Frontal lobe"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miyaning peshona bo'lmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "лобная доля мозга"
* #C71.2 "Temporal lobe"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miyaning chakka bo'lmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "височная доля мозга"
* #C71.3 "Parietal lobe"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miyaning tepa bo'lmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "теменная доля мозга"
* #C71.4 "Occipital lobe"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miyaning ensa bo'lmasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "затылочная доля мозга"
* #C71.5 "Ventricle, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miya qorinchalari QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "желудочек мозга БДУ"
* #C71.6 "Cerebellum, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "miyacha"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мозжечок"
* #C71.7 "Brain stem"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh miya ustuni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ствол головного мозга"
* #C71.8 "Overlapping lesion of brain"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh miyaning ko'plab qismlarining qo'shma zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких смежных отделов головного мозга"
* #C71.9 "Brain, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C71
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh miya QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "головной мозг БДУ"
* #C72 "Spinal cord, cranial nerves, and other parts of central nervous system"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C72.0 "Spinal cord"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "orqa miya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "спинной мозг"
* #C72.1 "Cauda equina"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "ot dumi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "конский хвост"
* #C72.2 "Olfactory nerve"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "hid sezish nervi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "обонятельный нерв"
* #C72.3 "Optic nerve"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ruv nervi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "зрительный нерв"
* #C72.4 "Acoustic nerve"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "eshitish nervi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "слуховой нерв"
* #C72.5 "Cranial nerve, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh miya nervi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "черепномозговой нерв"
* #C72.8 "Overlapping lesion of brain and central nervous system"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "miya va MATning ko'plab qismlarining zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "поражение неск-ких отделов мозга и ЦНС"
* #C72.9 "Nervous system, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C72
  * ^designation[0].language = #uz
  * ^designation[=].value = "MAT QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ЦНС БДУ"
* #C73 "Thyroid gland"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C73.9 "Thyroid gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C73
  * ^designation[0].language = #uz
  * ^designation[=].value = "qalqonsimon bez"
  * ^designation[+].language = #ru
  * ^designation[=].value = "щитовидная железа"
* #C74 "Adrenal gland"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C74.0 "Cortex of adrenal gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C74
  * ^designation[0].language = #uz
  * ^designation[=].value = "buyrak usti bezi po'stlog'i"
  * ^designation[+].language = #ru
  * ^designation[=].value = "кора надпочечника"
* #C74.1 "Medulla of adrenal gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C74
  * ^designation[0].language = #uz
  * ^designation[=].value = "buyrak usti bezi miya (mag'iz) qavati"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мозговое вещество надпочечника"
* #C74.9 "Adrenal gland, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C74
  * ^designation[0].language = #uz
  * ^designation[=].value = "burak usti bezi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "надпочечник БДУ"
* #C75 "Other endocrine glands and related structures"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C75.0 "Parathyroid gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "qalqon oldi bezi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "паращитовидная железа"
* #C75.1 "Pituitary gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "gipofiz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "гипофиз"
* #C75.2 "Craniopharyngeal duct"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "kriniofaringeal yo'l"
  * ^designation[+].language = #ru
  * ^designation[=].value = "краниофарингеальный проток"
* #C75.3 "Pineal gland"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "g'uddasimon bez"
  * ^designation[+].language = #ru
  * ^designation[=].value = "шишковидная железа"
* #C75.4 "Carotid body"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "karotid glomus"
  * ^designation[+].language = #ru
  * ^designation[=].value = "каротидный гломус"
* #C75.5 "Aortic body and other paraganglia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "aortal glomus va boshqa paragangliylar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "аортальный гломус и др.параганглии"
* #C75.8 "Overlapping lesion of endocrine glands and related structures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "endokrin bezlarining ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "эндокринных желез множественное поражение"
* #C75.9 "Endocrine gland, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C75
  * ^designation[0].language = #uz
  * ^designation[=].value = "endokrin bez QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "эндокринная железа БДУ"
* #C76 "Other and ill-defined sites"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C76.0 "Head, face or neck, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh, yuz, bo'yin QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "голова, лицо, шея БДУ"
* #C76.1 "Thorax, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'krak bo'shlig'i QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "грудная полость БДУ"
* #C76.2 "Abdomen, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "живот БДУ"
* #C76.3 "Pelvis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "chanoq QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "таз БДУ"
* #C76.4 "Upper limb, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "qo'llar QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "верхняя конечность БДУ"
* #C76.5 "Lower limb, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "oyoqlar QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "нижняя конечность БДУ"
* #C76.7 "Other ill-defined sites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "noaniq lokalizatsiyali boshqa o'smalar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "др.неуточненные локализации"
* #C76.8 "Overlapping lesion of ill-defined sites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C76
  * ^designation[0].language = #uz
  * ^designation[=].value = "aniqlanmagan a'zolarning ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "множественное поражение неуточненных органов"
* #C77 "Lymph nodes"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C77.0 "Lymph nodes of head, face and neck"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "bosh va bo'yin l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "л.у головы и шеи"
* #C77.1 "Intrathoracic lymph nodes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'krak ichi l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внутригрудные л.у"
* #C77.2 "Intra-abdominal lymph nodes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "qorin ichi l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внутрибрюшные л.у"
* #C77.3 "Lymph nodes of axilla or arm"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'ltiq osti va qo'llar l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "л.у подмышки и верхней конечности"
* #C77.4 "Lymph nodes of inguinal region or leg"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "chov va oyoqlar l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "л.у паха и нижней конености"
* #C77.5 "Pelvic lymph nodes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "chanoq ichi l.t"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внутритазовые л.у"
* #C77.8 "Lymph nodes of multiple regions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "limfa tugunlarning ko'plab zararlanishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "множественное поражение лимфоузлов"
* #C77.9 "Lymph node, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C77
  * ^designation[0].language = #uz
  * ^designation[=].value = "limfa tugun QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "лимфоузел БДУ"
* #C80 "Unknown primary site"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #C80.9 "Unknown primary site"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C80
  * ^designation[0].language = #uz
  * ^designation[=].value = "noaniq lokalizatsiyali"
  * ^designation[+].language = #ru
  * ^designation[=].value = "неизвестная локализация"

* #M "Morphology"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #8000/0 "Neoplasm, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8000/1 "Neoplasm, uncertain whether benign or malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8000/3 "Neoplasm, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli o‘smalar QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Новообразование злокачественное БДУ"
* #8000/6 "Neoplasm, metastatic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8000/9 "Neoplasm, malignant, uncertain whether primary or metastatic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8001/0 "Tumor cells, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8001/1 "Tumor cells, uncertain whether benign or malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8001/3 "Tumor cells, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli o‘sma hujayralari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Клетки опухолевые злокачественные"
* #8002/3 "Malignant tumor, small cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda hujayrali xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль мелкоклеточного типа злокачеств."
* #8003/3 "Malignant tumor, giant cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гигантоклеточного типа злокачеств."
* #8004/3 "Malignant tumor, spindle cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon hujayrali xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль веретеноклеточного типа злокачеств."
* #8005/0 "Clear cell tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8005/3 "Malignant tumor, clear cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль светлоклеточного типа злокачественная"
* #8010/0 "Epithelial tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8010/2 "Carcinoma in situ, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8010/3 "Carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома БДУ"
* #8010/6 "Carcinoma, metastatic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8010/9 "Carcinomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8011/0 "Epithelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8011/3 "Epithelioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli epitelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Эпителиома злокачественная"
* #8012/3 "Large cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома крупноклеточная БДУ"
* #8013/3 "Large cell neuroendocrine carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Neyroendokrin yirik hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома крупноклеточная нейроэндокринная"
* #8014/3 "Large cell carcinoma with rhabdoid phenotype"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali karsinoma rabdoid fenotip bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома крупноклеточная с рабдоидным фенотипом"
* #8015/3 "Glassy cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shishasimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома стекловидноклеточная"
* #8020/3 "Carcinoma, undifferentiated, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Nodifferensial karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома недифференцированная БДУ"
* #8021/3 "Carcinoma, anaplastic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplastik karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома анапластическая БДУ"
* #8022/3 "Pleomorphic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pleomorf karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плеоморфная"
* #8023/3 "Nuclear protein in testis (NUT)-associated carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8030/3 "Giant cell and spindle cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik va duksimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома гигантоклеточная и веретеноклеточная"
* #8031/3 "Giant cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома гигантоклеточная"
* #8032/3 "Spindle cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома веретеноклеточная"
* #8033/3 "Pseudosarcomatous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Psevdosarkomatozli karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома псевдосаркоматозная"
* #8034/3 "Polygonal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Poligonal hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома полигонально-клеточная"
* #8035/3 "Carcinoma with osteoclast-like giant cells"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Osteoklastsimon yirik hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома с остеокластоподобными гигантскими клетками"
* #8040/0 "Tumorlet, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8040/1 "Tumorlet, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8041/3 "Small cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мелкоклеточная БДУ"
* #8042/3 "Oat cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sulisimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома овсяноклеточная"
* #8043/3 "Small cell carcinoma, fusiform cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Maydaduksimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мелкоклеточная веретеноклеточная"
* #8044/3 "Small cell carcinoma, intermediate cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oraliq tipdagi hujayradan chiqqan mayda hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мелкоклеточная из клеток промежуточного типа"
* #8045/3 "Combined small cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kombinirlangan mayda hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мелкоклеточная комбинированная"
* #8046/3 "Non-small cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda bo‘lmagan hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома не-мелкоклеточная"
* #8050/0 "Papilloma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8050/2 "Papillary carcinoma in situ, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8050/3 "Papillary carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная БДУ"
* #8051/0 "Verrucous papilloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8051/3 "Verrucous carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "So‘galsimon karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома бородавчатая БДУ"
* #8052/0 "Squamous cell papilloma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8052/2 "Papillary squamous cell carcinoma, non-invasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8052/3 "Papillary squamous cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar yassi hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная плоскоклеточная"
* #8053/0 "Squamous cell papilloma, inverted"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8054/0 "Warty dyskeratoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8054/3 "Warty carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8060/0 "Squamous papillomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8070/0 "Actinic keratosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8070/2 "Squamous cell carcinoma in situ, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8070/3 "Squamous cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali karsinomaQA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная БДУ"
* #8070/6 "Squamous cell carcinoma, metastatic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8071/2 "Differentiated intraepithelial neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8071/3 "Squamous cell carcinoma, keratinizing, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali muguzlanuvchi karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная ороговевающая БДУ"
* #8072/0 "Large cell acanthoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8072/3 "Squamous cell carcinoma, large cell, nonkeratinizing, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi yirik hujayrali muguzlanmaydigan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная крупноклеточная неороговевающая"
* #8073/3 "Squamous cell carcinoma, small cell, nonkeratinizing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi mayda hujayrali muguzlanmaydigan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная мелкоклеточная неороговевающая"
* #8074/3 "Squamous cell carcinoma, spindle cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi duksimon hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная веретеноклеточная"
* #8075/3 "Squamous cell carcinoma, adenoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali adenoid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная аденоидная"
* #8076/2 "Squamous cell carcinoma in situ with questionable stromal invasion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8076/3 "Squamous cell carcinoma, microinvasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali mikroinvaziv karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная микроинвазивная"
* #8077/0 "Squamous intraepithelial neoplasia, low grade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8077/2 "Squamous intraepithelial neoplasia, high grade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8078/3 "Squamous cell carcinoma with horn formation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali shoxsimon karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная рогообразующая"
* #8080/2 "Queyrat erythroplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8081/2 "Bowen disease"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8082/3 "Lymphoepithelial carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfoepitelial karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома лимфоэпителиальная"
* #8083/3 "Basaloid squamous cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yassi hujayrali bazaloid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базалоидно-плоскоклеточная"
* #8084/0 "Clear cell acanthoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8084/3 "Squamous cell carcinoma, clear cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayra tipidagi yassi hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома плоскоклеточная светлоклеточного типа"
* #8085/3 "Squamous cell carcinoma, HPV positive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8086/3 "Squamous cell carcinoma, HPV negative"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8090/1 "Basal cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8090/3 "Basal cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-клеточная БДУ"
* #8091/3 "Superficial basal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali multisentrik yuzaki karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-клеточная мультицентрическая поверхностная"
* #8092/3 "Infiltrating basal cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali infiltrlangan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-клеточная инфильтрирующая БДУ"
* #8093/3 "Basal cell carcinoma, fibroepithelial"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali fibroepitelial karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-клеточная фибриоэпителиальная"
* #8094/3 "Basosquamous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal-yassi hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-плоскоклеточная"
* #8095/3 "Metatypical carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Metatipik karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома метатипичная"
* #8096/0 "Intraepidermal epithelioma of Jadassohn"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8097/3 "Basal cell carcinoma, nodular"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali nodulyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базально-клеточная нодулярная"
* #8098/3 "Adenoid basal carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal adenoid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базальная аденоидная"
* #8100/0 "Trichoepithelioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8100/3 "Trichoblastic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8101/0 "Trichofolliculoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8102/0 "Trichilemmoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8102/3 "Trichilemmocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Trixolemmokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Трихолеммокарцинома"
* #8103/0 "Pilar tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8103/1 "Proliferating trichilemmal cyst"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8104/0 "Pilar sheath acanthoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8110/0 "Pilomatricoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8110/3 "Pilomatrical carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pilomatrikskarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пиломатрикскарцинома"
* #8120/0 "Urothelial papilloma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8120/2 "Urothelial carcinoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8120/3 "Transitional cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tish hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома переходно-клеточная БДУ"
* #8121/0 "Sinonasal papilloma, exophytic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8121/1 "Sinonasal papilloma, inverted"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8121/3 "Schneiderian carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shneyder karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома Шнейдера"
* #8122/3 "Urothelial carcinoma, sarcomatoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tish hujayrali duksimon karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома переходно-клеточная веретеноклеточная"
* #8123/3 "Basaloid carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazaloid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базалоидная"
* #8124/3 "Cloacogenic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kloakogen karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома клоакогенная"
* #8130/1 "Papillary urothelial neoplasm of low malignant potential"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8130/2 "Papillary urothelial carcinoma, non-invasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8130/3 "Papillary urothelial carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tish hujayrali papillyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная переходно-клеточная"
* #8131/3 "Urothelial carcinoma, micropapillary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tish hujayrali mikropapillyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома переходно-клеточная микропапиллярная"
* #8140/0 "Adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8140/1 "Atypical adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8140/2 "Adenocarcinoma in situ, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8140/3 "Adenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома БДУ"
* #8140/6 "Adenocarcinoma, metastatic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8141/3 "Scirrhous adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Skirroz adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома скиррозная"
* #8142/3 "Linitis plastica"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Plastik linit"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Линит пластический"
* #8143/3 "Superficial spreading adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuzaki tarqalgan adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома поверхностно распространяющаяся"
* #8144/0 "Adenoma, intestinal type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8144/3 "Adenocarcinoma, intestinal type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ichak tipidagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома кишечного типа"
* #8145/3 "Carcinoma, diffuse type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Diffuz tipdagi karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома диффузного типа"
* #8146/0 "Monomorphic adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8147/0 "Basal cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8147/3 "Basal cell adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazal hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома базально-клеточная"
* #8148/0 "Glandular intraepithelial neoplasia, low grade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8148/2 "Glandular intraepithelial neoplasia, high grade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8149/0 "Canalicular adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8150/0 "Pancreatic neuroendocrine microadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8150/3 "Pancreatic neuroendocrine tumor, nonfunctioning"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Orolcha hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома островковоклеточная"
* #8151/3 "Insulinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli insulinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Инсулинома злокачественная"
* #8152/3 "Glucagonoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli glyukagonoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глюкагонома злокачественная"
* #8153/3 "Gastrinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli gastrinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гастринома злокачественная"
* #8154/3 "Mixed neuroendocrine non-neuroendocrine neoplasm (MiNEN)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Orolcha hujayrali va ekzokrin aralash adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома смешанная островковоклеточная и экзокринная"
* #8155/3 "Vipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli vipoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Випома злокачественная"
* #8156/3 "Somatostatinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli somatostatinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Соматостатинома злокачественная"
* #8158/3 "ACTH-producing tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8160/0 "Bile duct adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8160/3 "Cholangiocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xolangiokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Холангиокарцинома"
* #8161/0 "Bile duct cystadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8161/3 "Bile duct cystadenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘t yo‘li sistadenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома желчного протока"
* #8162/3 "Perihilar cholangiocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Klaskin o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль Клацкина"
* #8163/0 "Pancreatobiliary neoplasm, non-invasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8163/2 "Papillary neoplasm, pancreatobiliary type, with high grade intraepithelial neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8163/3 "Pancreatobiliary type carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8170/0 "Liver cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8170/3 "Hepatocellular carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jigar hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная БДУ"
* #8171/3 "Hepatocellular carcinoma, fibrolamellar"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibrozplastinkali jigar hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная фибрознопластинчатая"
* #8172/3 "Hepatocellular carcinoma, scirrhous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Skirroz jigar hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная скиррозная"
* #8173/3 "Hepatocellular carcinoma, spindle cell variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jigar hujayrali karsinoma duksimon hujayrali varianti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная, веретеноклеточная вариант"
* #8174/3 "Hepatocellular carcinoma, clear cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali tipdagi jigar hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная светлоклеточного типа"
* #8175/3 "Hepatocellular carcinoma, pleomorphic type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pleomorf tipdagi jigar hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная плеоморфного типа"
* #8180/3 "Combined hepatocellular carcinoma and cholangiocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xolangiokarsinoma bilan kombinirlangan jigar hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома печеночноклеточная комбинир.с холангиокарциномой"
* #8190/0 "Trabecular adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8190/3 "Trabecular adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Trabekulyar adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома трабекулярная"
* #8191/0 "Embryonal adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8200/0 "Eccrine dermal cylindroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8200/3 "Adenoid cystic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokistoz karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома аденокистозная"
* #8201/2 "Cribriform carcinoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8201/3 "Cribriform carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kribri shaklli karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома крибриформная"
* #8202/0 "Microcystic adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8204/0 "Lactating adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8210/0 "Adenomatous polyp, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8210/2 "Adenocarcinoma in situ in adenomatous polyp"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8210/3 "Adenocarcinoma in adenomatous polyp"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenomatoz polipdagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома в аденоматозном полипе"
* #8211/0 "Tubular adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8211/3 "Tubular adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tubulyar adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома тубулярная"
* #8212/0 "Flat adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8213/0 "Serrated adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8213/3 "Serrated adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8214/3 "Parietal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Parietal hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома париетально-клеточная"
* #8215/3 "Adenocarcinoma of anal glands"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anal bezi adenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома анальных желез"
* #8220/0 "Adenomatous polyposis coli"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8220/3 "Adenocarcinoma in adenomatous polyposis coli"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenomatoz polipozdagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома в аденоматозном полипозе"
* #8221/0 "Multiple adenomatous polyps"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8221/3 "Adenocarcinoma in multiple adenomatous polyps"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko‘plab adenomatoz poliplardagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома в множественных аденоматозных полипах"
* #8230/2 "Ductal carcinoma in situ, solid type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8230/3 "Solid carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Solid karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома солидная БДУ"
* #8231/3 "Carcinoma simplex"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Simplex karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома simplex"
* #8240/3 "Neuroendocrine tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Karsinoid QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциноид БДУ"
* #8241/3 "Enterochromaffin cell carcinoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Enteroxromaffin hujayrali karsinoid"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциноид энтерохромаффинно-клеточный"
* #8242/3 "Enterochromaffin-like cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Enteroxromaffinsimon hujayradan chiqqan xavfli hujayrali o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль из энтерохромаффинно-подобных клеток злокачественная"
* #8243/3 "Goblet cell carcinoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qadahsimon hujayrali karsinoid"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциноид бокаловидноклеточная"
* #8244/3 "Mixed adenoneuroendocrine carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash karsinoid"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциноид смешанный"
* #8245/1 "Tubular carcinoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8245/3 "Adenocarcinoid tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoidli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль аденокарциноидная"
* #8246/3 "Neuroendocrine carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Neyroendokrin karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома нейроэндокринный БДУ"
* #8247/3 "Merkel cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Merkel hujayralaridan chiqqan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома из клеток Меркеля"
* #8248/1 "Apudoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8249/3 "Neuroendocrine tumor, grade 2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Atipik karsinoidli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль каpциноидная атипичная"
* #8250/0 "Atypical adenomatous hyperplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8250/1 "Pulmonary adenomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8250/2 "Adenocarcinoma in situ of lung, non-mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8250/3 "Lepidic adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bronxiolo-alveolyar adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома бронхиоло-альвеолярная БДУ"
* #8251/0 "Alveolar adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8251/3 "Alveolar adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Alveolyar adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома альвеолярная"
* #8252/3 "Bronchiolo-alveolar carcinoma, non-mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bronxiolo-alveolyar shilliqsiz karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома бронхиоло-альвеолярная неслизистая"
* #8253/2 "Adenocarcinoma in situ of lung, mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8253/3 "Adenocarcinoma of lung, mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bronxiolo-alveolyar shilliq karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома бронхиоло-альвеолярная слизистая"
* #8254/3 "Adenocarcinoma of lung, mixed mucinous and non-mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bronxiolo-alveolyar shilliqsiz va shilliq aralash karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома бронхиоло-альвеолярная смешанная слизистая и неслизистая"
* #8255/3 "Adenocarcinoma with mixed subtypes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash tip ostidagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома смешанных подтипов"
* #8256/3 "Minimally invasive adenocarcinoma, non-mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8257/3 "Minimally invasive adenocarcinoma, mucinous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8260/0 "Papillary adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8260/1 "Aggressive papillary tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8260/3 "Papillary adenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома папиллярная БДУ"
* #8261/0 "Villous adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8261/2 "Adenocarcinoma in situ in villous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8261/3 "Adenocarcinoma in villous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vorsinkali adenomadagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома в ворсинчатой аденоме"
* #8262/3 "Villous adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vorsinkali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома ворсинчатая"
* #8263/0 "Tubulovillous adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8263/2 "Adenocarcinoma in situ in tubulovillous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8263/3 "Adenocarcinoma in tubulovillous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tubulyar-vorsinkali adenomadagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома в тубулярно-ворсинчатой аденоме"
* #8264/0 "Papillomatosis, glandular"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8265/3 "Micropapillary carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8270/0 "Chromophobe adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8270/3 "Chromophobe carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xromofob hujayradan chiqqan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома из хромофобных клеток"
* #8271/0 "Lactotroph adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8272/0 "Pituitary adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8272/3 "Pituitary carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gipofizar karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома гипофизарная БДУ"
* #8273/3 "Pituitary blastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8280/0 "Acidophil adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8280/3 "Acidophil carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asidofil karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома ацидофильная"
* #8281/0 "Mixed acidophil-basophil adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8281/3 "Mixed acidophil-basophil carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asidofil-bazofil aralash karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома смешанная ацидофильно-базофильная"
* #8290/0 "Oxyphilic adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8290/3 "Oxyphilic adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oksifil adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома оксифильная"
* #8300/0 "Basophil adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8300/3 "Basophil carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazofil karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома базофильная"
* #8310/0 "Clear cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8310/3 "Clear cell adenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома светлоклеточная БДУ"
* #8311/1 "Hypernephroid tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8311/3 "Hereditary leiomyomatosis and renal cell carcinoma (HLRCC) syndrome-associated renal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8312/3 "Renal cell carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buyrak hujayrali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома почечно-клеточная БДУ"
* #8313/0 "Clear cell adenofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8313/1 "Clear cell borderline tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8313/3 "Clear cell adenocarcinofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali adenokarsinofibroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинофиброма светлоклеточная"
* #8314/3 "Lipid-rich carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yog‘ saqlovchi karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома липидсодержащая"
* #8315/3 "Glycogen-rich carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Glikogen saqlovchi karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома гликогенсодержащая"
* #8316/1 "Multilocular cystic renal neoplasm of low malignant potential"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8316/3 "Cyst-associated renal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kista bilan qo‘shilgan buyrak hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома почечноклеточная ассоциированная с кистой"
* #8317/3 "Renal cell carcinoma, chromophobe type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xromofob tipdagi buyrak hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома почечноклеточная хромофобного типа"
* #8318/3 "Renal cell carcinoma, sarcomatoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sarkomatoidli buyrak hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома почечноклеточная саркоматоидная"
* #8319/3 "Collecting duct carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kollektor yo‘li karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома коллекторного протока"
* #8320/3 "Granular cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Donador hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома зернисто-клеточная"
* #8321/0 "Chief cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8322/0 "Water-clear cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8322/3 "Water-clear cell adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Suvli aniq hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома водянисто-светлоклеточная"
* #8323/0 "Mixed cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8323/1 "Clear cell papillary renal cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8323/3 "Mixed cell adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома смешанно-клеточная"
* #8324/0 "Lipoadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8325/0 "Metanephric adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8330/0 "Follicular adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8330/1 "Atypical follicular adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8330/3 "Follicular carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома фолликулярная БДУ"
* #8331/3 "Follicular adenocarcinoma, well differentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar yuqori differensiallashgan adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома фолликулярная высокодифференцированная"
* #8332/3 "Follicular adenocarcinoma, trabecular"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Trabekulyar follikulyar adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома фолликулярная трабекулярная"
* #8333/0 "Microfollicular adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8333/3 "Fetal adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fetal adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома фетальная"
* #8334/0 "Macrofollicular adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8335/1 "Follicular tumor of uncertain malignant potential"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8335/3 "Follicular carcinoma, minimally invasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar kam invaziv karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома фолликулярная малоинвазивная"
* #8336/1 "Hyalinizing trabecular tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8337/3 "Poorly differentiated thyroid carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Insulyar (orolchali) karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома инсулярная (островковая)"
* #8339/3 "Follicular carcinoma, encapsulated, angioinvasive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8340/3 "Papillary carcinoma, follicular variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar karsinoma, follikulyar varianti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная, фолликулярная вариант"
* #8341/3 "Papillary microcarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar mikrokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Микрокарцинома папиллярная"
* #8342/3 "Papillary carcinoma, oncocytic variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oksifil hujayrali papillyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная оксифильноклеточная"
* #8343/3 "Papillary carcinoma, encapsulated, of thyroid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Inkapsulyar papillyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная инкапсулированная"
* #8344/3 "Papillary carcinoma, columnar cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qatorli hujayradan chiqqan papillyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома папиллярная из колонновидных клеток"
* #8345/3 "Medullary thyroid carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Amiloid stromali medullyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома медуллярная с амилоидной стромой"
* #8346/3 "Mixed medullary-follicular carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medullyar-follikulyar aralash karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома смешанная медуллярно-фолликулярная"
* #8347/3 "Mixed medullary-papillary carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medullyar-papillyar aralash karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома смешанная медуллярно-папиллярная"
* #8348/1 "Well differentiated tumor of uncertain malignant potential"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8349/1 "Non-invasive follicular thyroid neoplasm with papillary-like nuclear features (NIFTP)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8350/3 "Nonencapsulated sclerosing carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noinkapsulyar sklerozlashgan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома неинкапсулированная склерозирующая"
* #8360/1 "Multiple endocrine adenomas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8361/0 "Juxtaglomerular tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8370/0 "Adrenal cortical adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8370/3 "Adrenal cortical carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Buyrak usti bezi po‘stlog‘i karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома коры надпочечника"
* #8371/0 "Adrenal cortical adenoma, compact cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8372/0 "Adrenal cortical adenoma, pigmented"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8373/0 "Adrenal cortical adenoma, clear cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8374/0 "Adrenal cortical adenoma, glomerulosa cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8375/0 "Adrenal cortical adenoma, mixed cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8380/0 "Endometrioid adenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8380/1 "Endometrioid adenoma, borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8380/2 "Endometrioid intraepithelial neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8380/3 "Endometrioid adenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endometroid adenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома эндометриоидная БДУ"
* #8381/0 "Endometrioid adenofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8381/1 "Endometrioid adenofibroma, borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8381/3 "Endometrioid adenofibroma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endometroid xavfli adenofibroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденофиброма эндометриоидная злокачественная"
* #8382/3 "Endometrioid adenocarcinoma, secretory variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endometroid adenokarsinomasekretor varianti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома эндометриоидная секреторный вариант"
* #8383/3 "Endometrioid adenocarcinoma, ciliated cell variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endometroid adenokarsinoma kiprik hujayrali varianti"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома эндометриоидная реснитчато-клеточный вариант"
* #8384/3 "Adenocarcinoma, endocervical type, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endoservikal tipdagi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома эндоцервикального типа"
* #8390/0 "Skin appendage adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8390/3 "Adnexal adenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Teri ortiqlari adenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома кожных придатков"
* #8391/0 "Follicular fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8392/0 "Syringofibroadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8400/0 "Sweat gland adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8400/1 "Sweat gland tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8400/3 "Sweat gland adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ter bezlari adenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома потовой железы"
* #8401/0 "Apocrine adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8401/3 "Apocrine adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Apokrin adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома апокринная"
* #8402/0 "Hidradenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8402/3 "Hidradenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli nodulyar (tugunli) gidradenoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гидраденома нодулярная (узелковая) злокачественная"
* #8403/0 "Spiradenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8403/3 "Malignant eccrine spiradenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli ekkrin spiradenoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Спираденома эккринная злокачественная"
* #8404/0 "Hidrocystoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8405/0 "Papillary hidradenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8406/0 "Syringocystadenoma papilliferum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8406/3 "Syringocystadenocarcinoma papilliferum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8407/0 "Syringoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8407/3 "Microcystic adnexal carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ter yo‘llari sklerozlashgan karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома потового протока склерозирующая"
* #8408/0 "Eccrine papillary adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8408/3 "Digital papillary adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar ekkrin adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома папиллярная эккринная"
* #8409/0 "Poroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8409/2 "Porocarcinoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8409/3 "Porocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli ekkrin poroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Порома эккринная злокачественная"
* #8410/0 "Sebaceoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8410/3 "Sebaceous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yog‘ bezlari adenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома сальных желез"
* #8413/3 "Eccrine adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ekkrin adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома эккринная"
* #8420/0 "Ceruminous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8420/3 "Ceruminous adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sera (quloq kiri) bezlari adenokarsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома серных желез"
* #8430/1 "Mucoepidermoid tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8430/3 "Mucoepidermoid carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mukoepidermoid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мукоэпидермоидная"
* #8440/0 "Cystadenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8440/3 "Cystadenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sistadenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома БДУ"
* #8441/0 "Serous cystadenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8441/2 "Serous intraepithelial carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8441/3 "Serous carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Seroz sistadenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома серозная БДУ"
* #8442/1 "Serous borderline tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8443/0 "Clear cell cystadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8450/0 "Papillary cystadenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8450/3 "Papillary cystadenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar sistadenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома папиллярная БДУ"
* #8451/1 "Papillary cystadenoma, borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8452/1 "Solid pseudopapillary tumor of ovary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8452/3 "Solid pseudopapillary neoplasm of pancreas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Psevdopapillyar solid karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома солидная псевдопапиллярная"
* #8453/0 "Intraductal papillary mucinous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8453/2 "Intraductal papillary mucinous neoplasm with high grade dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8453/3 "Intraductal papillary mucinous neoplasm with an associated invasive carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo‘l ichi papillyar-musinoz invaziv karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома внутрипротоковая папиллярно-муцинозная инвазивная"
* #8454/0 "Cystic tumor of atrio-ventricular node"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8460/2 "Serous borderline tumor, micropapillary variant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8460/3 "Low grade serous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar seroz sistadenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома папиллярная серозная"
* #8461/0 "Serous surface papilloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8461/3 "High grade serous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuzaki papillyar seroz karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома серозная поверхностная папиллярная"
* #8470/0 "Mucinous cystadenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8470/2 "Mucinous cystic neoplasm with high grade dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8470/3 "Mucinous cystadenocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Musinoz sistadenokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома муцинозная БДУ"
* #8472/1 "Mucinous cystic tumor of borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8474/0 "Seromucinous cystadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8474/1 "Seromucinous borderline tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8474/3 "Seromucinous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8480/0 "Mucinous adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8480/1 "Low grade appendiceal mucinous neoplasm"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8480/3 "Mucinous adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Musinoz adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома муцинозная"
* #8480/6 "Pseudomyxoma peritonei"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8481/3 "Mucin-producing adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shilliq ishlab chiqaruvchi adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома слизьпродуцирующая"
* #8482/3 "Mucinous carcinoma, gastric type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Musinoz adenokarsinoma endoservikal tipi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома муцинозная эндоцервикального типа"
* #8490/3 "Signet ring cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uzuksimon hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома перстневидно-клеточная"
* #8490/6 "Metastatic signet ring cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8500/2 "Intraductal carcinoma, noninfiltrating, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8500/3 "Infiltrating duct carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Infiltrlanadigan naychadagi karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома протоковая инфильтрирующая"
* #8501/2 "Comedocarcinoma, noninfiltrating"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8501/3 "Comedocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Komedokarsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Комедокарцинома БДУ"
* #8502/3 "Secretory carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sut bezining sekret ishlab chiqaruvchi karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома молочной железы секретирующая"
* #8503/0 "Intraductal papilloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8503/2 "Noninfiltrating intraductal papillary adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8503/3 "Intraductal papillary adenocarcinoma with invasion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Naycha ichidagi papillyar adenokarsinoma invaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома внутрипротоковая папиллярная с инвазией"
* #8504/0 "Intracystic papillary adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8504/2 "Encapsulated papillary carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8504/3 "Encapsulated papillary carcinoma with invasion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kista ichi karsinomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома внутрикистозная БДУ"
* #8505/0 "Intraductal papillomatosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8506/0 "Adenoma of nipple"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8507/2 "Intraductal micropapillary carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8507/3 "Invasive micropapillary carcinoma of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8508/3 "Cystic hypersecretory carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko‘p sekret ishlab chiqaruvchi kistoz karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома кистозная гиперсекретирующая"
* #8509/2 "Solid papillary carcinoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8509/3 "Solid papillary carcinoma with invasion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8510/3 "Medullary carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medullyar adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома медуллярная"
* #8512/3 "Medullary carcinoma with lymphoid stroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfoid stromali medullyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома медуллярная с лимфоидной стромой"
* #8513/3 "Atypical medullary carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Atipik medullyar karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома медуллярная атипическая"
* #8514/3 "Duct carcinoma, desmoplastic type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Nay ichi desmoplastik karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома протоковая десмопластическая"
* #8519/2 "Lobular carcinoma in situ, pleomorphic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8520/2 "Lobular carcinoma in situ, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8520/3 "Lobular carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bo‘lakchali karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома дольковая БДУ"
* #8521/3 "Infiltrating ductular carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Infiltrlanadigan mayda naychali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома мелких протоков инфильтрирующая"
* #8522/2 "Intraductal carcinoma and lobular carcinoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8522/3 "Infiltrating duct and lobular carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Infiltrlanadigan naychali va bo‘lakcha karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома протоковая инфильтрирующая и дольковая"
* #8523/3 "Infiltrating duct mixed with other types of carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa tiplar bilan aralashgan infiltrlanadigan naychali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома протоковая инфильтрирующая смешанная с др.типами"
* #8524/3 "Infiltrating lobular mixed with other types of carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa tiplar bilan aralashgan infiltrlanadigan bo‘lakchali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома дольковая инфильтрирующая смешанная с др.типами"
* #8525/3 "Polymorphous adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Past darajali polimorf adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома полиморфная низкой степени"
* #8530/3 "Inflammatory carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yallig‘langan karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома воспалительная"
* #8540/3 "Paget disease, mammary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sut bezining Pedjet kasalligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь Педжета молочной железы"
* #8541/3 "Paget disease and infiltrating duct carcinoma of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sut bezining infiltrlanadigan naychali karsinomasi va Pedjet kasalligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь Педжета и протоковая инфильтрирующая карцинома молочной железы"
* #8542/3 "Paget disease, extramammary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ekstramammar Pedjet karsinomasi (suyakning Pedjet kasalligidan tashqari)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома Педжета экстрамаммарная (искл-я б-нь Педжета костей)"
* #8543/3 "Paget disease and intraductal carcinoma of breast"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sut bezining nay ichi karsinomasi va Pedjet karsinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома Педжета и внутрипротоковая карцинома молочной железы"
* #8550/0 "Acinar cell adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8550/1 "Acinar cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8550/3 "Acinar cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asinar hujayrali adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома ацинарно-клеточная"
* #8551/3 "Acinar cell cystadenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Asinar hujayrali sistadenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цистаденокарцинома ацинарно-клеточная"
* #8552/3 "Mixed acinar-ductal carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8560/0 "Mixed squamous cell and glandular papilloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8560/3 "Adenosquamous carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bezli yassi hujayrali karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома железисто-плоскоклеточная"
* #8561/0 "Adenolymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8562/3 "Epithelial-myoepithelial carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelial-mioepitelial karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома эпителиально-миоэпителиальная"
* #8563/0 "Lymphadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8570/3 "Adenocarcinoma with squamous metaplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma yassi hujayrali metaplaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома с плоскоклеточной метаплазией"
* #8571/3 "Adenocarcinoma with cartilaginous and osseous metaplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma suyak va tog‘ayli metaplaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома с костной и хрящевой метаплазией"
* #8572/3 "Adenocarcinoma with spindle cell metaplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma duksimon metaplaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома с веретеноклеточной метаплазией"
* #8573/3 "Adenocarcinoma with apocrine metaplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma apokrin metaplaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома с апокринной метаплазией"
* #8574/3 "Adenocarcinoma with neuroendocrine differentiation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenokarsinoma neyroendokrin differensiasiya (modifikasiya) bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома с нейроэндокринной дифференциацией (модификацией)"
* #8575/3 "Metaplastic carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Metaplastik karsinoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома метапластическая БДУ"
* #8576/3 "Hepatoid adenocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gepatoid adenokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинома гепатоидная"
* #8580/0 "Microscopic thymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8580/1 "Micronodular thymoma with lymphoid stroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8580/3 "Thymoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli timoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома злокачественная БДУ"
* #8581/3 "Thymoma, type A"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "A tipdagi xavfli timoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома типа А злокачественная"
* #8582/3 "Thymoma, type AB"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "AV tipdagi xavfli timoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома типа АВ злокачественная"
* #8583/3 "Thymoma, type B1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "V1 tipdagi xavfli timoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома типа В1 злокачественная"
* #8584/3 "Thymoma, type B2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "V2 tipdagi xavfli timoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома типа В2 злокачественная"
* #8585/3 "Thymoma, type B3"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "V3 tipdagi xavfli timoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тимома типа В3 злокачественная"
* #8586/3 "Thymic carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ayrisimon bez karsinomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома тимусная БДУ"
* #8587/0 "Ectopic hamartomatous thymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8588/3 "Spindle epithelial tumor with thymus-like element"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ayrisimon komponentli duksimon epitelial o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль веретено-эпителиальная с тимусоподобным компонентом"
* #8589/3 "Intrathyroid thymic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ayrisimon komponentli karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома с проявлением тимусоподобного компонента"
* #8590/0 "Sex cord-stromal tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8590/1 "Sex cord-gonadal stromal tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8591/1 "Sex cord-gonadal stromal tumor, incompletely differentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8592/1 "Sex cord-gonadal stromal tumor, mixed forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8593/1 "Stromal tumor with minor sex cord elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8594/1 "Mixed germ cell-sex cord-stromal tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8600/0 "Thecoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8600/3 "Thecoma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli tekoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Текома злокачественная"
* #8601/0 "Thecoma, luteinized"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8602/0 "Sclerosing stromal tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8610/0 "Luteoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8620/1 "Adult granulosa cell tumor of testis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8620/3 "Adult granulosa cell tumor of ovary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli granulema hujayrali o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гранулезоклеточная злокачественная"
* #8621/1 "Granulosa cell-theca cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8622/0 "Granulosa cell tumor of testis, juvenile"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8622/1 "Granulosa cell tumor, juvenile"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8623/1 "Sex cord tumor with annular tubules"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8630/0 "Androblastoma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8630/1 "Androblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8630/3 "Androblastoma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli androblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Андробластома злокачественная"
* #8631/0 "Sertoli-Leydig cell tumor, well differentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8631/1 "Sertoli-Leydig cell tumor of intermediate differentiation, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8631/3 "Sertoli-Leydig cell tumor, poorly differentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sertoli-Leydig hujayralaridan chiqqan sust differensallashgan o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль из клеток Сертоли-Лейдига слабодифференцированная"
* #8632/1 "Gynandroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8633/1 "Sertoli-Leydig cell tumor, retiform"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8634/1 "Sertoli-Leydig cell tumor, intermediate differentiation, with heterologous elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8634/3 "Sertoli-Leydig cell tumor, poorly differentiated, with heterologous elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sertoli-Leydig hujayralaridan chiqqan sust differensallashgan o‘sma geterologik komponent bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль из клеток Сертоли-Лейдига слабодифференцированная с гетерологичными компонентами"
* #8640/1 "Sertoli cell tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8640/3 "Sertoli cell carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sertoli hujayrasidan chiqqan saraton"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рак из клеток Сертоли"
* #8641/0 "Sertoli cell tumor with lipid storage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8642/1 "Large cell calcifying Sertoli cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8643/1 "Intratubular large cell hyalinizing Sertoli cell neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8650/0 "Leydig cell tumor of ovary, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8650/1 "Leydig cell tumor of testis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8650/3 "Leydig cell tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Leydig hujayrasidan chiqqan xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль из клеток Лейдига злокачественная"
* #8660/0 "Hilus cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8670/0 "Lipid cell tumor of ovary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8670/3 "Steroid cell tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli steroid-hujayrali o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль стероидно-клеточная злокачественная"
* #8671/0 "Adrenal rest tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8680/3 "Paraganglioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli paraganglioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Параганглиома злокачественная"
* #8681/3 "Sympathetic paraganglioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8682/3 "Parasympathetic paraganglioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8683/0 "Gangliocytic paraganglioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8690/3 "Middle ear paraganglioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8691/3 "Aortic body tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8692/3 "Carotid body paraganglioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8693/3 "Extra-adrenal paraganglioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli ekstraadrenal paraganglioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Параганглиома экстраадреналовая злокачественая"
* #8700/3 "Pheochromocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli feoxromositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Феохромоцитома злокачественная"
* #8710/3 "Glomangiosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Glomangiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гломангиосаркома"
* #8711/0 "Glomus tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8711/1 "Glomangiomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8711/3 "Glomus tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli glomus o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гломусная злокачественная"
* #8712/0 "Glomangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8713/0 "Glomangiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8714/0 "Perivascular epithelioid tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8714/3 "Perivascular epithelioid tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8720/0 "Pigmented nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8720/2 "Melanoma in situ"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8720/3 "Malignant melanoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli melanoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома злокачественная БДУ"
* #8721/3 "Nodular melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugunli melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома узловая"
* #8722/0 "Balloon cell nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8722/3 "Balloon cell melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ballonsimon hujayradan chiqqan melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома из баллонообразных клеток"
* #8723/0 "Halo nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8723/3 "Malignant melanoma, regressing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Regressivlashadigan melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома регрессирующая"
* #8725/0 "Neuronevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8726/0 "Magnocellular nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8727/0 "Dysplastic nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8728/0 "Meningeal melanocytosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8728/1 "Meningeal melanocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8728/3 "Meningeal melanomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Meningeal melanomatoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланоматоз менингеальный"
* #8730/0 "Nonpigmented nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8730/3 "Amelanotic melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Amelonotik melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома амеланотическая"
* #8740/0 "Junctional nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8740/3 "Malignant melanoma in junctional nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chegaralangan nevusdagi xavfli melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома злокачественная в пограничном невусе"
* #8741/2 "Precancerous melanosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8741/3 "Malignant melanoma in precancerous melanosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rak oldi melanozdagi xavfli melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома злокачественная в предраковом меланозе"
* #8742/0 "Lentiginous melanocytic nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8742/2 "Lentigo maligna"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8742/3 "Lentigo maligna melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli lentigo melanomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома злокачественного лентиго"
* #8743/3 "Low cumulative sun damage melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuzaki tarqalgan melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома поверхностно распространяющаяся"
* #8744/0 "Acral nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8744/3 "Acral melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Akral lentiginoz xavfli melanomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома акральная лентигинозная злокачеств."
* #8745/3 "Desmoplastic melanoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli desmoplastik melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома десмопластическая злокачественная"
* #8746/3 "Mucosal lentiginous melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shilliq lentiginoz melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома слизистая лентигинозная"
* #8750/0 "Dermal nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8760/0 "Compound nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8761/0 "Congenital melanocytic nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8761/1 "Giant pigmented nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8761/3 "Malignant melanoma arising in giant congenital nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik pigmentli nevusdagi xavfli melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома злокачественная в гигантском пигментном невусе"
* #8762/1 "Proliferative dermal lesion in congenital nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8770/0 "Epithelioid and spindle cell nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8770/3 "Malignant Spitz tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelioid-duksimon hujayrali aralash melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома смешанная эпителиоидно- и веретеноклеточная"
* #8771/0 "Epithelioid cell nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8771/3 "Epithelioid cell melanoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelioid hujayrali melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома эпителиоидно-клеточная"
* #8772/0 "Spindle cell nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8772/3 "Spindle cell melanoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon hujayrali melanoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома веретеноклеточная БДУ"
* #8773/3 "Spindle cell melanoma, type A"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "A tipdagi duksimon hujayrali melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома веретеноклеточная типа А"
* #8774/3 "Spindle cell melanoma, type B"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "B tipdagi duksimon hujayrali melanoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Меланома веретеноклеточная типа Б"
* #8780/0 "Blue nevus, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8780/1 "Pigmented epithelioid melanocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8780/3 "Blue nevus, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli ko‘k nevus"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Невус голубой злокачественный"
* #8790/0 "Cellular blue nevus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8800/0 "Soft tissue tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8800/3 "Sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома БДУ"
* #8800/9 "Sarcomatosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8801/3 "Spindle cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon hujayrali sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома веретеноклеточная"
* #8802/1 "Pleomorphic hyalinizing angiectatic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8802/3 "Giant cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali (suyaklardan tashqari) sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома гигантоклеточная (исключая костную)"
* #8803/3 "Small cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda hujayrali sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома мелкоклеточная"
* #8804/3 "Epithelioid sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelioid sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома эпителиоидная"
* #8805/3 "Undifferentiated sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Differensiallashmagan sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома недифференцированная"
* #8806/3 "Desmoplastic small round cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Desmoplastik mayda-yirik hujayrali o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль десмопластическая мелко-круглоклеточная"
* #8810/0 "Fibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8810/1 "Cellular fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8810/3 "Fibrosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibrosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибросаркома БДУ"
* #8811/0 "Fibromyxoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8811/1 "Myxoinflammatory fibroblastic sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8811/3 "Myxofibrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibromiksosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибромиксосаркома"
* #8812/0 "Periosteal fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8812/3 "Periosteal fibrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Periostal fibrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибросаркома периостальная"
* #8813/0 "Fibroma of tendon sheath"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8813/1 "Palmar/plantar type fibromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8813/3 "Fascial fibrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fassial fibrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибросаркома фасциальная"
* #8814/3 "Infantile fibrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Infantil (bolalarga xos) fibrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибросаркома инфантильная (детская)"
* #8815/0 "Solitary fibrous tumor/Hemangiopericytoma, grade 1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8815/1 "Solitary fibrous tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8815/3 "Solitary fibrous tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli solitar fibroz o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль солитарная фиброзная злокачественная"
* #8816/0 "Calcifying aponeurotic fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8817/0 "Calcifying fibrous tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8818/0 "Fibrous dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8820/0 "Elastofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8821/1 "Aggressive fibromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8822/1 "Abdominal fibromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8823/0 "Sclerotic fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8823/1 "Desmoplastic fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8824/0 "Myofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8824/1 "Myofibromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8825/0 "Myofibroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8825/1 "Myofibroblastic tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8825/3 "Myofibroblastic sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8826/0 "Angiomyofibroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8827/1 "Myofibroblastic tumor, peribronchial"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8828/0 "Nodular fasciitis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8830/0 "Benign fibrous histiocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8830/1 "Atypical fibrous histiocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8830/3 "Malignant fibrous histiocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli fibroz gistiositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гистиоцитома фиброзная злокачественная"
* #8831/0 "Histiocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8832/0 "Dermatofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8832/1 "Dermatofibrosarcoma protuberans, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8832/3 "Dermatofibrosarcoma protuberans, fibrosarcomatous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dermatofibrosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дерматофибросаркома БДУ"
* #8833/1 "Pigmented dermatofibrosarcoma protuberans"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pigmentlangan bo‘kkan dermatofibrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дерматофибросаркома выбухающая пигментированная"
* #8834/1 "Giant cell fibroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8835/1 "Plexiform fibrohistiocytic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8836/1 "Angiomatoid fibrous histiocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8840/0 "Myxoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8840/3 "Myxosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miksosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миксосаркома"
* #8841/0 "Angiomyxoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8842/0 "Ossifying fibromyxoid tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8842/3 "Ossifying fibromyxoid tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8850/0 "Lipoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8850/1 "Atypical lipomatous tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8850/3 "Liposarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Liposarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома БДУ"
* #8851/0 "Fibrolipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8851/1 "Lipofibromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8851/3 "Liposarcoma, well differentiated, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuqori differensiallashgan liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома высокодифференцированная"
* #8852/0 "Fibromyxolipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8852/3 "Myxoid liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miksoid liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома миксоидная"
* #8853/3 "Round cell liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома круглоклеточная"
* #8854/0 "Pleomorphic lipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #8854/3 "Pleomorphic liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pleomorf (polimorf) liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома плеоморфная (полиморфная)"
* #8855/3 "Mixed liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома смешанная"
* #8856/0 "Intramuscular lipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8857/0 "Spindle cell lipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8857/3 "Fibroblastic liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibroblastik liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома фибробластическая"
* #8858/3 "Dedifferentiated liposarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kam differensiallashgan liposarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Липосаркома недостаточно дифференцированная"
* #8860/0 "Angiomyolipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8860/1 "Angiomyolipoma, epithelioid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8861/0 "Angiolipoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8862/0 "Chondroid lipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8870/0 "Myelolipoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8880/0 "Hibernoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8881/0 "Lipoblastomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8890/0 "Leiomyoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8890/1 "Leiomyomatosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8890/3 "Leiomyosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Leyomiosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейомиосаркома БДУ"
* #8891/0 "Epithelioid leiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8891/3 "Epithelioid leiomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelioid leyomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейомиосаркома эпителиоидная"
* #8892/0 "Cellular leiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8893/0 "Bizarre leiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8894/0 "Angioleiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8894/3 "Angiomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Angiomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ангиомиосаркома"
* #8895/0 "Myoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8895/3 "Myosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миосаркома"
* #8896/0 "Myxoid leiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8896/3 "Myxoid leiomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miksoid leyomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейомиосаркома миксоидная"
* #8897/1 "Smooth muscle tumor of uncertain malignant potential"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8898/1 "Metastasizing leiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8900/0 "Rhabdomyoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8900/3 "Rhabdomyosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rabdomiosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома БДУ"
* #8901/3 "Pleomorphic rhabdomyosarcoma, adult type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Etilgan tipdagi pleomorf (polimorf) rabdomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома плеоморфная (полиморфная) зрелого типа"
* #8902/3 "Mixed type rhabdomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash tipdagi rabdomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома смешанного типа"
* #8903/0 "Fetal rhabdomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8904/0 "Adult cellular rhabdomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8905/0 "Genital rhabdomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8910/3 "Embryonal rhabdomyosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Embrional rabdomiosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома эмбриональная БДУ"
* #8912/3 "Spindle cell rhabdomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon rabdomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома веретеноклеточная"
* #8920/3 "Alveolar rhabdomyosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Alveolyar rabdomiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома альвеолярная"
* #8921/3 "Ectomesenchymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rabdomiosarkoma ganglioz modifikasiya (differensiya) bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рабдомиосаркома с ганглиозной модификацией (дифференциацией)"
* #8930/0 "Endometrial stromal nodule"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8930/3 "Endometrial stromal sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Endometrial stromal sarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома эндометриальная стромальная БДУ"
* #8931/3 "Endometrial stromal sarcoma, low grade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Quyi gradasiyadagi endometrial stromal sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома эндометриальная стромальная низкой градации"
* #8932/0 "Adenomyoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8933/3 "Adenosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Adenosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденосаркома"
* #8934/3 "Carcinofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Karsinofibroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинофиброма"
* #8935/0 "Stromal tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8935/1 "Stromal tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8935/3 "Stromal sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Stromal sarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома стромальная БДУ"
* #8936/3 "Gastrointestinal stromal tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oshqozon-ichak stromal sarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома стромальная желудочно-кишечная"
* #8940/0 "Pleomorphic adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8940/3 "Mixed tumor, malignant, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli aralash o‘sma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль смешанная злокачественная БДУ"
* #8941/3 "Carcinoma ex pleomorphic adenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pleomorf (polimorf) adenomadagi karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома в плеоморфной (полиморфной) аденоме"
* #8950/3 "Mullerian mixed tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Myullerning aralash o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль мюллерова смешанная"
* #8951/3 "Mesodermal mixed tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mezodermal aralash o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль мезодермальная смешанная"
* #8959/0 "Benign cystic nephroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8959/1 "Cystic partially differentiated nephroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8959/3 "Malignant cystic nephroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kistoz xavfli nefroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нефрома кистозная злокачественная"
* #8960/1 "Mesoblastic nephroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8960/3 "Nephroblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Nefroblastoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нефробластома БДУ"
* #8963/3 "Rhabdoid tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli rabdoid o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль рабдоидная злокачественная"
* #8964/3 "Clear cell sarcoma of kidney"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali buyrak sarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома почки светлоклеточная"
* #8966/0 "Renomedullary interstitial cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8967/0 "Ossifying renal tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8970/3 "Hepatoblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gepatoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гепатобластома"
* #8971/3 "Pancreatoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pankreatoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Панкреатобластома"
* #8972/3 "Pulmonary blastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘pka blastomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бластома легочная"
* #8973/3 "Pleuropulmonary blastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Plevro-pulmonal (plevra-o‘pka) blastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бластома плевропульмонарная (плевро-легочная)"
* #8974/1 "Sialoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8975/1 "Calcifying nested stromal-epithelial tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8980/3 "Carcinosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Karsinosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциносаркома БДУ"
* #8981/3 "Carcinosarcoma, embryonal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Embrional karsinosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциносаркома эмбриональная"
* #8982/0 "Myoepithelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8982/3 "Myoepithelial carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mioepitelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миоэпителиома злокачественная"
* #8983/0 "Adenomyoepithelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8983/3 "Adenomyoepithelioma with carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8990/0 "Mesenchymoma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8990/1 "Mesenchymoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #8990/3 "Mesenchymoma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mezenximoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезенхимома злокачественная"
* #8991/3 "Embryonal sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Embrional sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома эмбриональная"
* #8992/0 "Pulmonary hamartoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9000/0 "Brenner tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9000/1 "Brenner tumor, borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9000/3 "Brenner tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Brenner xavfli o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль Бреннера злокачественная"
* #9010/0 "Fibroadenoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9011/0 "Intracanalicular fibroadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9012/0 "Pericanalicular fibroadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9013/0 "Adenofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9014/0 "Serous adenofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9014/1 "Serous adenofibroma of borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9014/3 "Serous adenocarcinofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Seroz adenokarsinofibroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинофиброма серозная"
* #9015/0 "Mucinous adenofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9015/1 "Mucinous adenofibroma of borderline malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9015/3 "Mucinous adenocarcinofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Musinoz adenokarsinofibroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аденокарцинофиброма муцинозная"
* #9016/0 "Giant fibroadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9020/0 "Phyllodes tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9020/1 "Phyllodes tumor, borderline"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9020/3 "Phyllodes tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli bargsimon (filloid) o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль листовидная (филлоидная) злокачественная"
* #9030/0 "Juvenile fibroadenoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9040/0 "Synovioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9040/3 "Synovial sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sinovial sarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома синовиальная БДУ"
* #9041/3 "Synovial sarcoma, spindle cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Duksimon sinovial sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома синовиальная веретеноклеточная"
* #9042/3 "Synovial sarcoma, epithelioid cell"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epitelioid hujayrali sinovial sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома синовиальная эпителиоидно-клеточная"
* #9043/3 "Synovial sarcoma, biphasic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ikki fazali (bifazali) sinovial sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома синовиальная двухфазная (бифазная)"
* #9044/3 "Clear cell sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq (buyrak hujayralidan tashqari) hujayrali sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома светлоклеточная (исключая почечную)"
* #9045/3 "Biphenotypic sinonasal sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9050/0 "Mesothelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9050/3 "Mesothelioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mezotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезотелиома злокачественная"
* #9051/0 "Fibrous mesothelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9051/3 "Fibrous mesothelioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli fibroz mezotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезотелиома фиброзная злокачественная"
* #9052/0 "Epithelioid mesothelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9052/1 "Well differentiated papillary mesothelioma of pleura"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9052/3 "Epithelioid mesothelioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli epitelioid mezotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезотелиома эпителиоидная злокачественная"
* #9053/3 "Mesothelioma, biphasic, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mezotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезотелиома двухфазная (бифазная) злокачественная"
* #9054/0 "Adenomatoid tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9055/0 "Peritoneal inclusion cysts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9060/3 "Dysgerminoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Disgerminoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дисгерминома"
* #9061/3 "Seminoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Seminoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семинома БДУ"
* #9062/3 "Seminoma, anaplastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplastik seminoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семинома анапластическая"
* #9063/3 "Spermatocytic seminoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Spermatositar seminoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семинома сперматоцитарная"
* #9064/2 "Intratubular malignant germ cells"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9064/3 "Germinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Germinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Герминома"
* #9065/3 "Germ cell tumor, nonseminomatous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Murtak hujayrali noseminomatoz o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль зародышевоклеточная несеминоматозная"
* #9070/3 "Embryonal carcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Embrional karsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карцинома эмбриональная БДУ"
* #9071/3 "Yolk sac tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘t qopi o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль желточного мешка"
* #9072/3 "Polyembryoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Poliembrioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Полиэмбриома"
* #9073/1 "Gonadoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9080/0 "Teratoma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9080/1 "Teratoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9080/3 "Teratoma, malignant, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli teratoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератома злокачественная БДУ"
* #9081/3 "Teratocarcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Teratokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератокарцинома"
* #9082/3 "Malignant teratoma, undifferentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Differensiallashmagan xavfli teratoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератома злокачественная недифференцированная"
* #9083/3 "Malignant teratoma, intermediate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli oraliq teratoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератома злокачественная промежуточная"
* #9084/0 "Dermoid cyst, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9084/3 "Teratoma with malignant transformation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli transformasiyali teratoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератома со злокачеств.трансформацией"
* #9085/3 "Mixed germ cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Murtak hujayrali aralash o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль смешанная зародышевоклеточная"
* #9086/3 "Germ cell tumor with associated hematological malignancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9090/0 "Struma ovarii, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9090/3 "Struma ovarii, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tuxumdon xavfli strumasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Струма яичника злокачественная"
* #9091/1 "Strumal carcinoid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9100/0 "Hydatidiform mole, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9100/1 "Invasive hydatidiform mole"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9100/3 "Choriocarcinoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xoriokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хориокарцинома"
* #9101/3 "Choriocarcinoma combined with other germ cell elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Boshqa murtak hujayrali elementlar bilan qo‘shilgan xoriokarsinoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хориокарцинома в сочетании с др.зародышевоклеочными элементами"
* #9102/3 "Malignant teratoma, trophoblastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli trofoblastik teratoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тератома злокачественная трофобластическая"
* #9103/0 "Partial hydatidiform mole"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9104/1 "Placental site trophoblastic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9105/3 "Trophoblastic tumor, epithelioid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Epiloid trofoblastik o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль трофобластическая эпителиоидная"
* #9110/0 "Adenoma of rete ovarii"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9110/1 "Wolffian tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9110/3 "Mesonephroma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mezonefroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мезонефрома злокачественная"
* #9120/0 "Hemangioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9120/3 "Hemangiosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gemangiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гемангиосаркома"
* #9121/0 "Cavernous hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9122/0 "Venous hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9123/0 "Racemose hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9124/3 "Kupffer cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kupfer hujayralaridan chiqqan sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома из купферовых клеток"
* #9125/0 "Epithelioid hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9126/0 "Atypical vascular lesion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9130/0 "Hemangioendothelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #9130/1 "Hemangioendothelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9130/3 "Hemangioendothelioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli gemangioendotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гемангиоэндотелиома злокачественная"
* #9131/0 "Capillary hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9132/0 "Intramuscular hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9133/3 "Epithelioid hemangioendothelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli epiloid gemangioendotelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гемангиоэндотелиома эпителиоидная злокачественная"
* #9135/1 "Papillary intralymphatic angioendothelioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9136/1 "Spindle cell hemangioendothelioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9137/0 "Myointimoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9137/3 "Intimal sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9138/1 "Pseudomyogenic (epithelioid sarcoma-like) hemangioendothelioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9140/3 "Kaposi sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kaposhi sarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома Капоши"
* #9141/0 "Angiokeratoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9142/0 "Verrucous keratotic hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9160/0 "Angiofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9161/0 "Acquired tufted hemangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9161/1 "Hemangioblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9170/0 "Lymphangioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9170/3 "Lymphangiosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfangiosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфангиосаркома"
* #9171/0 "Capillary lymphangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9172/0 "Cavernous lymphangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9173/0 "Cystic lymphangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9174/0 "Lymphangiomyoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9174/1 "Lymphangioleiomyomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9175/0 "Hemolymphangioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9180/0 "Osteoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9180/3 "Osteosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Osteosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома БДУ"
* #9181/3 "Chondroblastic osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xondroblastik osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома хондробластическая"
* #9182/3 "Fibroblastic osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibroblastik osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома фибробластическая"
* #9183/3 "Telangiectatic osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Teleangiektatik osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома телеангиэктатическая"
* #9184/3 "Osteosarcoma in Paget disease of bone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Suyaklarning Pedjet kasalligidagi osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома при болезни Педжета костей"
* #9185/3 "Small cell osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda hujayrali osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома мелкоклеточная"
* #9186/3 "Central osteosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Markaziy osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома центральная"
* #9187/3 "Low grade central osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuqori differensiallashgan suyak ichi osteosarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома внутрикостная высокодифференцированная"
* #9191/0 "Osteoid osteoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9192/3 "Parosteal osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yukstakortikal (parosteal) osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома юкстакортикальная (паростеальная)"
* #9193/3 "Periosteal osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Periostal osteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома периостальная"
* #9194/3 "High grade surface osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuqori gradasiyali yuzakiosteosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома поверхностная высокой градации"
* #9195/3 "Intracortical osteosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kortikal ichi (intrakortikal) osteosarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остеосаркома внутрикортикальная (интракортикальная)"
* #9200/0 "Osteoblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9200/1 "Aggressive osteoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9210/0 "Osteochondroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9210/1 "Osteochondromatosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9211/0 "Osteochondromyxoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9212/0 "Bizarre parosteal osteochondromatous proliferation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9213/0 "Subungual exostosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9220/0 "Chondroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9220/1 "Chondromatosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9220/3 "Chondrosarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xondrosarkoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома БДУ"
* #9221/0 "Periosteal chondroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9221/3 "Periosteal chondrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yukstakortikal xondrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома юкстакортикальная"
* #9222/1 "Atypical cartilaginous tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9230/1 "Chondroblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9230/3 "Chondroblastoma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli xondroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондробластома злокачественная"
* #9231/3 "Myxoid chondrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miksoid xondrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома миксоидная"
* #9240/3 "Mesenchymal chondrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mezenximal xondrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома мезенхимальная"
* #9241/0 "Chondromyxoid fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9242/3 "Clear cell chondrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniq hujayrali xondrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома светлоклеточная"
* #9243/3 "Dedifferentiated chondrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dedifferensiallashgan xondrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хондросаркома дедифференцированная"
* #9250/1 "Giant cell tumor of bone, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9250/3 "Giant cell tumor of bone, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Suyak xavfli yirik hujayrali o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гигантоклеточная кости злокачеств."
* #9251/1 "Giant cell tumor of soft parts, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9251/3 "Malignant giant cell tumor of soft parts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yumshoq to‘qima xavfli yirik hujayrali o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гигантоклеточная мягкотканная злокачеств."
* #9252/0 "Tenosynovial giant cell tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9252/1 "Tenosynovial giant cell tumor, diffuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9252/3 "Malignant tenosynovial giant cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali tenosinovial xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль гигантоклеточная теносиновиальная злокачественная"
* #9260/0 "Aneurysmal bone cyst"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9261/3 "Adamantinoma of long bones"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uzun suyaklar adamantinomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Адамантинома длинных костей"
* #9262/0 "Ossifying fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9270/0 "Odontogenic tumor, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9270/1 "Odontogenic tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9270/3 "Odontogenic tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Odontogen xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль одонтогенная злокачественная"
* #9271/0 "Ameloblastic fibrodentinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9272/0 "Cementoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9273/0 "Cementoblastoma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9274/0 "Cemento-ossifying fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9275/0 "Gigantiform cementoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9280/0 "Odontoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9281/0 "Compound odontoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9282/0 "Complex odontoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9290/0 "Ameloblastic fibro-odontoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9290/3 "Ameloblastic odontosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ameloblastik odontosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Одонтосаркома амелобластическая"
* #9300/0 "Adenomatoid odontogenic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9301/0 "Calcifying odontogenic cyst"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9302/0 "Dentinogenic ghost cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9302/3 "Ghost cell odontogenic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9310/0 "Ameloblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9310/3 "Ameloblastoma, metastasizing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli ameloblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амелобластома злокачественная"
* #9311/0 "Odontoameloblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9312/0 "Squamous odontogenic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9320/0 "Odontogenic myxoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9321/0 "Odontogenic fibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9322/0 "Peripheral odontogenic fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9330/0 "Ameloblastic fibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9330/3 "Ameloblastic fibrosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ameloblastik fibrosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Фибросаркома амелобластическая"
* #9340/0 "Calcifying epithelial odontogenic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9341/3 "Clear cell odontogenic carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9342/3 "Odontogenic carcinosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Odontogen karsinosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Карциносаркома одонтогенная"
* #9350/1 "Craniopharyngioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9351/1 "Craniopharyngioma, adamantinomatous"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9352/1 "Craniopharyngioma, papillary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9360/1 "Pinealoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #9361/1 "Pineocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9362/3 "Pineoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pineoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пинеобластома"
* #9363/0 "Melanotic neuroectodermal tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9364/3 "Ewing sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Periferik neyroektodermal o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль периферическая нейроэктодермальная"
* #9365/3 "Askin tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Askin o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль Аскина"
* #9370/0 "Benign notochordal cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9370/3 "Chordoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xordoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хордома БДУ"
* #9371/3 "Chondroid chordoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xondroid xordoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хордома хондроидная"
* #9372/3 "Dedifferentiated chordoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dedifferensiallashgan xordoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хордома дедифференцированная"
* #9373/0 "Parachordoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9380/3 "Glioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli glioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиома злокачественная"
* #9381/3 "Gliomatosis cerebri"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miya gliomatozi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиоматоз мозга"
* #9382/3 "Oligoastrocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash glioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиома смешанная"
* #9383/1 "Subependymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9384/1 "Subependymal giant cell astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9385/3 "Diffuse midline glioma, H3 K27M-mutant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9390/0 "Choroid plexus papilloma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9390/1 "Atypical choroid plexus papilloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9390/3 "Choroid plexus carcinoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tomir chigali (xoriodal) saratoni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рак сосудистого (хориоидального) сплетения"
* #9391/1 "Sellar ependymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9391/3 "Ependymoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ependimoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Эпендимома БДУ"
* #9392/3 "Ependymoma, anaplastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplastik ependimoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Эпендимома анапластическая"
* #9393/3 "Papillary ependymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar ependimoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Эпендимома папиллярная"
* #9394/1 "Myxopapillary ependymoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9395/3 "Papillary tumor of pineal region"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9396/3 "Ependymoma, RELA fusion positive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9400/3 "Astrocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Astrositoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астроцитома БДУ"
* #9401/3 "Astrocytoma, anaplastic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplastik astrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астроцитома анапластическая"
* #9410/3 "Protoplasmic astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Protoplazmatik astrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астроцитома протоплазматическая"
* #9411/3 "Gemistocytic astrocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gemistositar astrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астроцитома гемистоцитарная"
* #9412/1 "Desmoplastic infantile astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9413/0 "Dysembryoplastic neuroepithelial tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9420/3 "Fibrillary astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Fibrillyar astrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астроцитома фибриллярная"
* #9421/1 "Pilocytic astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9423/3 "Polar spongioblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Polyar spongioblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Спонгиобластома полярная"
* #9424/3 "Pleomorphic xanthoastrocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Pleomorf ksantoastrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ксантоастроцитома плеоморфная"
* #9425/3 "Pilomyxoid astrocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9430/3 "Astroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Astroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Астробластома"
* #9431/1 "Angiocentric glioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9432/1 "Pituicytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9440/3 "Glioblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Glioblastoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиобластома БДУ"
* #9441/3 "Giant cell glioblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali glioblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиобластома гигантоклеточная"
* #9442/1 "Gliofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9442/3 "Gliosarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gliosarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Глиосаркома"
* #9444/1 "Chordoid glioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9445/3 "Glioblastoma, IDH-mutant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9450/3 "Oligodendroglioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oligodendroglioma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Олигодендроглиома БДУ"
* #9451/3 "Oligodendroglioma, anaplastic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplastik oligodendroglioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Олигодендроглиома анапластическая"
* #9460/3 "Oligodendroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oligodendroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Олигодендробластома"
* #9470/3 "Medulloblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medulloblastoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медуллобластома БДУ"
* #9471/3 "Desmoplastic nodular medulloblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Desmoplastik nodulyar medulloblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медуллобластома десмопластическая нодулярная"
* #9472/3 "Medullomyoblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medullomioblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медулломиобластома"
* #9473/3 "CNS embryonal tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Primitiv neyroektodermal o‘sma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль нейроэктодермальная примитивная БДУ"
* #9474/3 "Large cell medulloblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik hujayrali medullomioblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медуллобластома крупноклеточная"
* #9475/3 "Medulloblastoma, WNT-activated, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9476/3 "Medulloblastoma, SHH-activated and TP53-mutant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9477/3 "Medulloblastoma, non-WNT/non-SHH"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9478/3 "Embryonal tumor with multilayered rosettes with C19MC alteration"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9480/3 "Cerebellar sarcoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Miyacha sarkomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома мозжечковая БДУ"
* #9490/0 "Ganglioneuroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9490/3 "Ganglioneuroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ganglioneyroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ганглионейробластома"
* #9491/0 "Ganglioneuromatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9492/0 "Gangliocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9493/0 "Dysplastic gangliocytoma of cerebellum (Lhermitte-Duclos)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9500/3 "Neuroblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Neyroblastoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нейробластома БДУ"
* #9501/0 "Medulloepithelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9501/3 "Medulloepithelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Medulloepitelioma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медуллоэпителиома БДУ"
* #9502/0 "Teratoid medulloepithelioma, benign"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9502/3 "Teratoid medulloepithelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Teratoid medulloepitelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медуллоэпителиома тератоидная"
* #9503/3 "Neuroepithelioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Neyroepitelioma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нейроэпителиома БДУ"
* #9504/3 "Spongioneuroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Spongioneyroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Спонгионейробластома"
* #9505/1 "Ganglioglioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9505/3 "Ganglioglioma, anaplastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anaplatsik ganglioglioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ганглиоглиома анапластическая"
* #9506/1 "Central neurocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9507/0 "Pacinian tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9508/3 "Atypical teratoid/rhabdoid tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Atipik, rabdoid teratoid o‘sma,"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль тератоидная, рабдоидная атипичная"
* #9509/1 "Papillary glioneuronal tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9510/0 "Retinocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9510/3 "Retinoblastoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Retinoblastoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ретинобластома БДУ"
* #9511/3 "Retinoblastoma, differentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Differensiallashgan retinoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ретинобластома дифференцированная"
* #9512/3 "Retinoblastoma, undifferentiated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Differensiallashmagan retinoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ретинобластома недифференцированная"
* #9513/3 "Retinoblastoma, diffuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Diffuz retinoblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ретинобластома диффузная"
* #9514/1 "Retinoblastoma, spontaneously regressed"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9520/3 "Olfactory neurogenic tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Olfaktor neyrogen o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль ольфакторная нейрогенная"
* #9521/3 "Olfactory neurocytoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Olfaktor neyrositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нейроцитома ольфакторная"
* #9522/3 "Olfactory neuroblastoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Olfaktor neyroblastoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нейробластома ольфакторная"
* #9523/3 "Olfactory neuroepithelioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Olfaktor neyroepitelioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нейроэпителиома ольфакторная"
* #9530/0 "Meningioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9530/3 "Meningioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli meningioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Менингиома злокачественная"
* #9531/0 "Meningothelial meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9532/0 "Fibrous meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9533/0 "Psammomatous meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9534/0 "Angiomatous meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9535/0 "Hemangioblastic meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
* #9537/0 "Transitional meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9538/1 "Clear cell meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9538/3 "Papillary meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Papillyar meningioma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Менингиома папиллярная"
* #9539/1 "Atypical meningioma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9539/3 "Meningeal sarcomatosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Menigial sarkomatoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркоматоз менингеальный"
* #9540/0 "Neurofibroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9540/3 "Malignant peripheral nerve sheath tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Periferik nerv qobig‘i xavfli o‘smasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль оболочки периф.нерва злокачественная"
* #9541/0 "Melanotic neurofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9542/3 "Malignant peripheral nerve sheath tumor, epithelioid"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9550/0 "Plexiform neurofibroma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9560/0 "Schwannoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9560/1 "Melanotic schwannoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9560/3 "Neurilemoma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli nevrilemmoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неврилеммома злокачественная"
* #9561/3 "Malignant peripheral nerve sheath tumor with rhabdomyoblastic differentiation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Periferik nerv qobig‘i xavfli o‘smasi rabdomioblastik modifikasiyasi bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль оболочки периф.нерва с рабдомиобластической модиф-цией злокачественная"
* #9562/0 "Nerve sheath myxoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9563/0 "Nerve sheath tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9570/0 "Neuroma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9571/0 "Perineurioma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9571/3 "Perineurioma, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli perinevroma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Периневрома злокачественная"
* #9580/0 "Granular cell tumor, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9580/3 "Granular cell tumor, malignant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Donador hujayrali xavfli o‘sma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Опухоль зернистоклеточная злокачественная"
* #9581/3 "Alveolar soft part sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yumshoq to‘qima alveolyar sarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома альвеолярная мягкотканная"
* #9582/0 "Granular cell tumor of sellar region"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9590/3 "Malignant lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома БДУ"
* #9591/1 "Monoclonal B-cell lymphocytosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9591/3 "Malignant lymphoma, non-Hodgkin, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noxojkin xavfli limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома неходжкинская злокачественная БДУ"
* #9596/3 "Composite Hodgkin and non-Hodgkin lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noxojkinlimfomasi bilan kombinirlangan Xojkin limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина комбинированная с неходжкинской"
* #9597/3 "Primary cutaneous follicle center lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9650/3 "Hodgkin lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина БДУ"
* #9651/3 "Hodgkin lymphoma, lymphocyte-rich"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfasitlarga boy Xojkin limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина богатая лимфоцитами"
* #9652/3 "Hodgkin lymphoma, mixed cellularity, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aralash hujayrali Xojkin limfomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина смешанно-клеточная БДУ"
* #9653/3 "Hodgkin lymphoma, lymphocyte depletion, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi limfoid kamayish bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с лимфоидн.истощением  БДУ"
* #9654/3 "Hodgkin lymphoma, lymphocyte depletion, diffuse fibrosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi limfoid kamayish va diffuz fibroz bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с лимфоидн.истощением и диффузным фиброзом"
* #9655/3 "Hodgkin lymphoma, lymphocyte depletion, reticular"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasiretikulyar limfoid kamayish bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с лимфоидн.истощением ретикулярная"
* #9659/3 "Hodgkin lymphoma, nodular lymphocyte predominant"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi nodulyar limfositar ko‘payish bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с лимфоцитарным преобладанием нодулярная"
* #9661/3 "Hodgkin granuloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin granulemasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гранулема Ходжкина"
* #9662/3 "Hodgkin sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin sarkomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома Ходжкина"
* #9663/3 "Hodgkin lymphoma, nodular sclerosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi nodulyar skleroz bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с нодулярным склерозом БДУ"
* #9664/3 "Hodgkin lymphoma, nodular sclerosis, cellular phase"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasinodulyar skleroz bilan, hujayra fazasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с нодулярным склерозом, клеточная фаза"
* #9665/3 "Hodgkin lymphoma, nodular sclerosis, grade 1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi 1 gradasiyadagi nodulyar skleroz bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с нодулярным склерозом градации 1"
* #9667/3 "Hodgkin lymphoma, nodular sclerosis, grade 2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xojkin limfomasi 2 gradasiyadagi nodulyar skleroz bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Ходжкина с нодулярным склерозом градации 2"
* #9671/3 "Lymphoplasmacytic lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli limfoplazmasitar limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома лимфоплазмоцитарная злокач."
* #9673/1 "In situ mantle cell neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9673/3 "Mantle cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Manti hujayralaridan chiqqan limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома из клеток мантии"
* #9675/3 "Malignant lymphoma, mixed small and large cell, diffuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mayda va yirik hujayrali aralash diffuz xavfli limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома смешанная мелко- и крупноклеточная диффузная злокач."
* #9678/3 "Primary effusion lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Birlamchi ekssudativ xavfli limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома первичная экссудатная злокач."
* #9679/3 "Mediastinal large B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik V-hujayralardan chiqqan mediastenal xavfli limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома медиастинальная из крупных В-клеток злокач."
* #9680/1 "EBV positive mucocutaneous ulcer"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9680/3 "Diffuse large B-cell lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik V-hujayralardan chiqqan diffuz xavfli limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома из крупных В-клеток диффузная злокач. БДУ"
* #9684/3 "Malignant lymphoma, large B-cell, diffuse, immunoblastic, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yirik V-hujayralardan chiqqan diffuz immunoblast xavfli limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома из крупных В-клеток диффузная иммунобластная злокачеств."
* #9687/3 "Burkitt lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Berkitt limfomasi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Беркитта БДУ"
* #9688/3 "T-cell/histiocyte rich large B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9689/3 "Splenic marginal zone B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Taloq marginal sohasining V-hujayralari limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома В-клеточная маргинальной зоны селезенки"
* #9690/3 "Follicular lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar limfoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома фолликулярная БДУ"
* #9691/3 "Follicular lymphoma, grade 2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "2 gradasiyadagi follikulyar limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома фолликулярная градации 2"
* #9695/1 "In situ follicular neoplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9695/3 "Follicular lymphoma, grade 1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "1 gradasiyadagi follikulyar limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома фолликулярная градации 1"
* #9698/3 "Follicular lymphoma, grade 3"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "3 gradasiyadagi follikulyar limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома фолликулярная градации 3"
* #9699/3 "Marginal zone B-cell lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Marginal soha V-hujayrali limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома В-клеточная маргинальной зоны БДУ"
* #9700/3 "Mycosis fungoides"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Zamburug‘li mikoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Микоз грибовидный"
* #9701/3 "Sezary syndrome"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sezari sindromi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Синдром Сезари"
* #9702/1 "Indolent T-cell lymphoproliferative disorder of gastrointestinal tract"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9702/3 "Mature T-cell lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali etilgan limfoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Т-клеточная зрелая БДУ"
* #9705/3 "Angioimmunoblastic T-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali angioimmunoblast limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Т-клеточная ангиоиммунобластная"
* #9708/3 "Subcutaneous panniculitis-like T-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali teri osti pannikulitsimon limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Т-клеточная подкожная панникулитоподобная"
* #9709/1 "Primary cutaneous CD4 positive small/medium T-cell lymphoproliferative disorder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9709/3 "Cutaneous T-cell lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali teri limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Т-клеточная кожная"
* #9712/3 "Intravascular large B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9714/3 "Anaplastic large cell lymphoma, T-cell and Null-cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayra, nol hujayradan chiqqan yirik hujayrali anaplastik limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома анапластическая крупноклеточная из Т-клеток, нуль-клеток"
* #9715/3 "Anaplastic large cell lymphoma, ALK negative"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9716/3 "Hepatosplenic T-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gamma-delta hujayrali gepatosplenik limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома гепатоспленическая гамма-дельта-клеточная"
* #9717/3 "Intestinal T-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali ichak limfomasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома Т-клеточная кишечная"
* #9718/1 "Primary cutaneous CD30 positive T-cell lymphoproliferative disorder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9718/3 "Primary cutaneous anaplastic large cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "CD30+ T-hujayrali birlamchi limfoproliferativ kasallik teri tipi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заболевание лимфопролиферативное первично кожного типа CD30+ Т-клеточное"
* #9719/3 "NK/T-cell lymphoma, nasal and nasal type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T, E-hujayrali nazal va nazal tipidagi limfoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома из Т, ЕК-клеток назальная и назального типа"
* #9724/3 "Systemic EBV positive T-cell lymphoproliferative disease of childhood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9725/1 "Hydroa vacciniforme-like lymphoproliferative disorder"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9726/3 "Primary cutaneous gamma-delta T-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9727/3 "Precursor cell lymphoblastic lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tmishdosh hujayralardan chiqqan limfoblast limfoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфома лимфобластная из клеток-предшественников БДУ"
* #9731/3 "Plasmacytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Plazmositoma QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Плазмоцитома БДУ"
* #9732/3 "Plasma cell myeloma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko‘plab mieloma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миелома множественная"
* #9733/3 "Plasma cell leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Plazmohujayrali leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз плазмоклеточный"
* #9734/3 "Plasmacytoma, extramedullary"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ekstramedullyar (suyakdan tashqari) plazmositoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Плазмоцитома экстрамедуллярная (не костная)"
* #9735/3 "Plasmablastic lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9737/3 "ALK positive large B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9738/3 "HHV8 positive diffuse large B-cell lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9740/1 "Mastocytoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9740/3 "Mast cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Semiz hujayrali sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома тучноклеточная"
* #9741/1 "Indolent systemic mastocytosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9741/3 "Malignant mastocytosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli mastositoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мастоцитоз злокачественный"
* #9742/3 "Mast cell leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Semiz hujayrali leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз тучноклеточный"
* #9749/3 "Erdheim-Chester disease"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9750/3 "Malignant histiocytosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xavfli gistiositoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гистиоцитоз злокачественный"
* #9751/1 "Langerhans cell histiocytosis, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9751/3 "Langerhans cell histiocytosis, disseminated"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9755/3 "Histiocytic sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gistiositar sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома гистиоцитарная"
* #9756/3 "Langerhans cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Langergans hujayrasidan chiqqan sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома из клеток Лангерганса"
* #9757/3 "Interdigitating dendritic cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muqovalangan dendritik hujayralardan chiqqan sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома из переплетающихся дендритических клеток"
* #9758/3 "Follicular dendritic cell sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Follikulyar dendritik hujayradan chiqqan sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома из фолликулярных дендритических клеток"
* #9759/3 "Fibroblastic reticular cell tumor"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9760/3 "Immunoproliferative disease, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Immunoproliferativ kasallik QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь иммунопролиферативная БДУ"
* #9761/1 "IgM monoclonal gammopathy of undetermined significance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9761/3 "Waldenstrom macroglobulinemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Valdenstrom makroglobulinemiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Макроглобулинемия Валденстрома"
* #9762/3 "Heavy chain disease, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Og‘ir zanjir kasalligi QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь тяжелых цепей БДУ"
* #9764/3 "Immunoproliferative small intestinal disease"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ingichka ichak immunoproliferativ kasalligi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь иммунопролиферативная тонкого кишечника"
* #9765/1 "Monoclonal gammopathy of undetermined significance, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9766/1 "Angiocentric immunoproliferative lesion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9766/3 "Lymphomatoid granulomatosis, grade 3"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9767/1 "Angioimmunoblastic lymphadenopathy (AIL)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9768/1 "T-gamma lymphoproliferative disease"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9769/1 "Immunoglobulin deposition disease"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9800/3 "Leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз БДУ"
* #9801/3 "Acute leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз острый БДУ"
* #9805/3 "Acute biphenotypic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ikki fenotipli (bifenotip) o‘tkir leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз двуфенотипный (бифенотипный) острый"
* #9806/3 "Mixed phenotype acute leukemia with t(9;22)(q34;q11.2); BCR-ABL1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9807/3 "Mixed phenotype acute leukemia with t(v;11q23); MLL rearranged"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9808/3 "Mixed phenotype acute leukemia, B/myeloid, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9809/3 "Mixed phenotype acute leukemia, T/myeloid, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9811/3 "B lymphoblastic leukemia/lymphoma, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9812/3 "B lymphoblastic leukemia/lymphoma with t(9;22)(q34;q11.2); BCR-ABL1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9813/3 "B lymphoblastic leukemia/lymphoma with t(v;11q23); MLL rearranged"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9814/3 "B lymphoblastic leukemia/lymphoma with t(12;21)(p13;q22); TEL-AML1 (ETV6-RUNX1)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9815/3 "B lymphoblastic leukemia/lymphoma with hyperdiploidy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9816/3 "B lymphoblastic leukemia/lymphoma with hypodiploidy (Hypodiploid ALL)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9817/3 "B lymphoblastic leukemia/lymphoma with t(5;14)(q31;q32); IL3-IGH"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9818/3 "B lymphoblastic leukemia/lymphoma with t(1;19)(q23;p13.3); E2A-PBX1 (TCF3-PBX1)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9819/3 "B lymphoblastic leukemia/lymphoma, BCR-ABL1-like"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9820/3 "Lymphoid leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Limfoleykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лимфолейкоз БДУ"
* #9823/1 "Monoclonal B-cell lymphocytosis, CLL type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9823/3 "B-cell chronic lymphocytic leukemia/small lymphocytic lymphoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "V-hujayrali surunkali limfositar leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз В-клеточный лимфоцитарный хронический"
* #9827/3 "Adult T-cell leukemia/lymphoma (HTLV-1 positive)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kattalar T-hujayrali (HTLV-1 pozitiv) limfomasi, leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз, лимфома Т-клеточный взрослых (HTLV-1 позитивный)"
* #9831/3 "T-cell large granular lymphocytic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9832/3 "Prolymphocytic leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Prolimfositar leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз пролимфоцитарный БДУ"
* #9833/3 "Prolymphocytic leukemia, B-cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "V-hujayrali prolimfositar leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз В-клеточный пролимфоцитарный"
* #9834/3 "Prolymphocytic leukemia, T-cell type"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayrali prolimfositar leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз Т-клеточный пролимфоцитарный"
* #9835/3 "Precursor cell lymphoblastic leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tmishdosh hujayralardan chiqqan limfoblast leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз лимфобластный из клеток-предшественников БДУ"
* #9837/3 "Precursor T-cell lymphoblastic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "T-hujayralar o‘tmishdoshlaridan chiqqan limfoblast leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз лимфобластный из Т-клеток-предшественников"
* #9840/3 "Acute erythroid leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "M6 tipdagi mieloid o‘tkir leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый типа М6"
* #9860/3 "Myeloid leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mieloleykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миелолейкоз БДУ"
* #9861/3 "Acute myeloid leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloleykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миелолейкоз острый БДУ"
* #9863/3 "Chronic myeloid leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Surunkali mieloleykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миелолейкоз хронический"
* #9865/3 "Acute myeloid leukemia with t(6;9)(p23;q34); DEK-NUP214"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9866/3 "Acute promyelocytic leukemia, t(15;17)(q22;q11-12)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Promielositar t(15;17)(q22;q11-12)  o‘tkir leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз промиелоцитарный острый t(15;17)(q22;q11-12)"
* #9867/3 "Acute myelomonocytic leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mielomonositar o‘tkir leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миеломоноцитарный острый"
* #9869/3 "Acute myeloid leukemia with inv(3)(q21;q26.2) or t(3;3)(q21;q26.2); RPN1-EVI1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9870/3 "Acute basophilic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bazofil o‘tkir leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз базофильный острый"
* #9871/3 "Acute myeloid leukemia with abnormal marrow eosinophils"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz suyak ko‘migi anomal eozinofillari bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый с аномальными эозинофилами костн.мозга"
* #9872/3 "Acute myeloid leukemia, minimal differentiation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Minimal differensiallashgan o‘tkir mieloid leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый минимально дифференцированный"
* #9873/3 "Acute myeloid leukemia without maturation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz etilish belgilarisiz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый без признаков созревания"
* #9874/3 "Acute myeloid leukemia with maturation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz etilish belgilari bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый с признаками созревания"
* #9875/3 "Chronic myeloid leukemia, BCR/ABL positive"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "BCR, ABL pozitiv surunkali mielogen leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелогенный хронический BCR, ABL позитивный"
* #9876/3 "Atypical chronic myeloid leukemia, BCR/ABL negative"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "BCR, ABL negativ surunkali atipik mieloid leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный атипичный хронический BCR, ABL негативный"
* #9877/3 "Acute myeloid leukemia with mutated NPM1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9878/3 "Acute myeloid leukemia with biallelic mutation of CEBPA"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9879/3 "Acute myeloid leukemia with mutated RUNX1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9891/3 "Acute monocytic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir monositar leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз моноцитарный острый"
* #9895/3 "Acute myeloid leukemia with myelodysplasia-related changes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz multi chiziqli displaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый с мультилинейной дисплазией"
* #9896/3 "Acute myeloid leukemia, t(8;21)(q22;q22)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz t(8;21)(q22;q22)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый t(8;21)(q22;q22)"
* #9897/3 "Acute myeloid leukemia, 11q23 abnormalities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir mieloid leykoz 11q23 anomaliyasi bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный острый с аномалиями 11q23"
* #9898/1 "Transient abnormal myelopoiesis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9898/3 "Myeloid leukemia associated with Down syndrome"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9910/3 "Acute megakaryoblastic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir megakarioblast leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз мегакариобластный острый"
* #9911/3 "Acute myeloid leukemia (megakaryoblastic) with t(1;22)(p13;q13); RBM15-MKL1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9912/3 "Acute myeloid leukemia with BCR-ABL1"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9920/3 "Therapy-related myeloid neoplasm"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Davodan keyingi mieloid leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миелоидный обусловленный лечением БДУ"
* #9930/3 "Myeloid sarcoma"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mieloid sarkoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Саркома миелоидная"
* #9931/3 "Acute panmyelosis with myelofibrosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘tkir panmieloz mielofibroz bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Панмиелоз острый с миелофиброзом"
* #9940/3 "Hairy cell leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tolali hujayrali leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз волосатоклеточный"
* #9945/3 "Chronic myelomonocytic leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Surunkali mielomonositar leykoz QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миеломоноцитарный хронический БДУ"
* #9946/3 "Juvenile myelomonocytic leukemia, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "O‘smirlar (yuvenil) mielomonositar leykozi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз миеломоноцитарный юношеский (ювенильный)"
* #9948/3 "Aggressive NK-cell leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Agressiv EK-hujayrali leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз ЕК-клеточный агрессивный"
* #9950/3 "Polycythemia vera"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Haqiqiy polisitemiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Полицитемия истинная"
* #9960/3 "Myeloproliferative neoplasm, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Surunkali mieloproliferativ kasallik QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь миелопролиферативная хроническая БДУ"
* #9961/3 "Primary myelofibrosis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mieloskleroz mieloid meetaplaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миелосклероз с миелоидной метаплазией"
* #9962/3 "Essential thrombocythemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Essensial trombositopeniya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тромбоцитемия эссенциальная"
* #9963/3 "Chronic neutrophilic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Surunkali neytrofil leykoz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лейкоз нейтрофильный хронический"
* #9964/3 "Chronic eosinophilic leukemia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gipereozinofil sindrom"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Синдром гиперэозинофильный"
* #9965/3 "Myeloid or lymphoid neoplasm with PDGFRA rearrangement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9966/3 "Myeloid neoplasm with PDGFRB rearrangement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9967/3 "Myeloid or lymphoid neoplasm with FGFR1 abnormalities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9968/3 "Myeloid or lymphoid neoplasm with PCM1-JAK2"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9970/1 "Lymphoproliferative disorder, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9971/1 "Post-transplant lymphoproliferative disorder, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9975/3 "Myeloproliferative neoplasm, unclassifiable"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #9980/3 "Myelodysplastic syndrome with single lineage dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refrakter kamqonlik QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анемия рефрактерная БДУ"
* #9982/3 "Myelodysplastic syndrome with ring sideroblasts and single lineage dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refrakter kamqonlik sideroblastlar bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анемия рефрактерная с сидеробластами"
* #9983/3 "Myelodysplastic syndrome with excess blasts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refrakter kamqonlik blast hujayralar ustunligi bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анемия рефрактерная с избытком бластных клеток"
* #9984/3 "Refractory anemia with excess blasts in transformation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^property[+].code = #status
  * ^property[=].valueCode = #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refrakter kamqonlik transformasiyalangan blast hujayralar ustunligi bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анемия рефрактерная с избытком трансформирующихся бластных клеток"
* #9985/3 "Myelodysplastic syndrome with multilineage dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Refrakter sitopeniya multipotent (multi chiziqli) displaziya bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цитопения рефрактерная с мультипотентной (мультилинейной) дисплазией"
* #9986/3 "Myelodysplastic syndrome with isolated del (5q)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mielodisplastik sindrom 5q buzilish sindromi bilan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Синдром миелодиспластический с синдромом  5q разрушения"
* #9987/3 "Therapy-related myelodysplastic syndrome, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Davodan keyingi mielodisplastik sindrom"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Синдром миелодиспластический обусловленный лечением"
* #9989/3 "Myelodysplastic syndrome, NOS"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mielodisplastik sindrom QA"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Синдром миелодиспластический БДУ"
* #9993/3 "Myelodysplastic syndrome with ring sideroblasts and multilineage dysplasia"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
