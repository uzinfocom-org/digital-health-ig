// Local terminology defined in the Form 096 and Form 097 FHIR mapping workbooks.
// Integration artifacts should reference the core canonical URLs generated here.

CodeSystem: ApgarComponentScoreCS
Id: apgar-component-score-cs
Title: "Apgar Component Score"
Description: "Local coded concepts for Apgar Component Score, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(apgar-component-score-cs)

* #chr-0053-00001 "0 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "0 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "0 баллов"

* #chr-0053-00002 "1 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "1 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "1 балл"

* #chr-0053-00003 "2 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "2 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "2 баллов"

ValueSet: ApgarComponentScoreVS
Id: apgar-component-score-vs
Title: "Apgar Component Score"
Description: "Local coded values for Apgar Component Score, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/apgar-component-score-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/apgar-component-score-cs

CodeSystem: ApgarTotalScoreCS
Id: apgar-total-score-cs
Title: "Apgar Total Score"
Description: "Local coded concepts for Apgar Total Score, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(apgar-total-score-cs)

* #chr-0046-00001 "0 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "0 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "0 баллов"

* #chr-0046-00002 "1 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "1 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "1 балл"

* #chr-0046-00003 "2 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "2 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "2 баллов"

* #chr-0046-00004 "3 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "3 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "3 баллов"

* #chr-0046-00005 "4 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "4 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "4 баллов"

* #chr-0046-00006 "5 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "5 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "5 баллов"

* #chr-0046-00007 "6 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "6 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "6 баллов"

* #chr-0046-00008 "7 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "7 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "7 баллов"

* #chr-0046-00009 "8 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "8 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "8 баллов"

* #chr-0046-00010 "9 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "9 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "9 баллов"

* #chr-0046-00011 "10 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "10 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "10 баллов"

ValueSet: ApgarTotalScoreVS
Id: apgar-total-score-vs
Title: "Apgar Total Score"
Description: "Local coded values for Apgar Total Score, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/apgar-total-score-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/apgar-total-score-cs

CodeSystem: BallardArmRecoilCS
Id: ballard-arm-recoil-cs
Title: "Ballard Arm Recoil"
Description: "Local coded concepts for Ballard Arm Recoil, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-arm-recoil-cs)

* #chr-0081-00001 "180°"
  * ^designation[0].language = #en
  * ^designation[=].value = "180°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "180°"

* #chr-0081-00002 "140–180°"
  * ^designation[0].language = #en
  * ^designation[=].value = "140–180°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "140–180°"

* #chr-0081-00003 "110–140°"
  * ^designation[0].language = #en
  * ^designation[=].value = "110–140°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "110–140°"

* #chr-0081-00004 "90–110°"
  * ^designation[0].language = #en
  * ^designation[=].value = "90–110°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "90–110°"

* #chr-0081-00005 "<90°"
  * ^designation[0].language = #en
  * ^designation[=].value = "<90°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "<90°"

ValueSet: BallardArmRecoilVS
Id: ballard-arm-recoil-vs
Title: "Ballard Arm Recoil"
Description: "Local coded values for Ballard Arm Recoil, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-arm-recoil-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-arm-recoil-cs

CodeSystem: BallardBreastMaturityCS
Id: ballard-breast-maturity-cs
Title: "Ballard Physical Maturity — Breast"
Description: "Local coded concepts for Ballard Physical Maturity — Breast, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-breast-maturity-cs)
* ^language = #en

* #chr-0071-00001 "−1: imperceptible"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: ткань не определяется"

* #chr-0071-00002 "0: barely perceptible"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: едва определяется"

* #chr-0071-00003 "1: flat areola, no bud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: ареола плоская, сосок отсутствует"

* #chr-0071-00004 "2: stippled areola, 1–2 mm bud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: ареола припухшая, ткань 1–2 мм"

* #chr-0071-00005 "3: raised areola, 3–4 mm bud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: ареола приподнята, ткань 3–4 мм"

* #chr-0071-00006 "4: full areola, 5–10 mm bud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: полная ареола, ткань 5–10 мм"

ValueSet: BallardBreastMaturityVS
Id: ballard-breast-maturity-vs
Title: "Ballard Physical Maturity — Breast"
Description: "Local coded values for Ballard Physical Maturity — Breast, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-breast-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-breast-maturity-cs

CodeSystem: BallardEyeEarMaturityCS
Id: ballard-eye-ear-maturity-cs
Title: "Ballard Physical Maturity — Eye / Ear"
Description: "Local coded concepts for Ballard Physical Maturity — Eye / Ear, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-eye-ear-maturity-cs)
* ^language = #en

* #chr-0072-00001 "−2: lids fused tightly"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−2: веки плотно закрыты"

* #chr-0072-00002 "−1: lids fused loosely"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: веки закрыты неплотно"

* #chr-0072-00003 "0: lids open, pinna flat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: веки открыты, ушная раковина плоская"

* #chr-0072-00004 "1: soft pinna, slow recoil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: ушная раковина мягкая, легко складывается"

* #chr-0072-00005 "2: curved pinna, soft"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: ушная раковина изогнута, мягкая"

* #chr-0072-00006 "3: formed pinna, instant recoil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: ушная раковина сформирована, быстро расправляется"

* #chr-0072-00007 "4: thick cartilage, stiff ear"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: хрящ плотный, ухо твёрдое"

ValueSet: BallardEyeEarMaturityVS
Id: ballard-eye-ear-maturity-vs
Title: "Ballard Physical Maturity — Eye / Ear"
Description: "Local coded values for Ballard Physical Maturity — Eye / Ear, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-eye-ear-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-eye-ear-maturity-cs

CodeSystem: BallardFemaleGenitalMaturityCS
Id: ballard-female-genital-maturity-cs
Title: "Ballard Physical Maturity — Female Genitals"
Description: "Local coded concepts for Ballard Physical Maturity — Female Genitals, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-female-genital-maturity-cs)
* ^language = #en

* #chr-0074-00001 "−1: clitoris prominent, labia flat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: клитор выступает, губы плоские"

* #chr-0074-00002 "0: clitoris prominent, small labia minora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: клитор выступает, малые губы небольшие"

* #chr-0074-00003 "1: prominent clitoris and labia minora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: клитор и малые губы выступают"

* #chr-0074-00004 "2: labia majora and minora equally prominent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: большие и малые губы выступают одинаково"

* #chr-0074-00005 "3: labia majora larger"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: большие губы крупнее малых"

* #chr-0074-00006 "4: labia majora cover clitoris and minora"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: большие губы покрывают клитор и малые губы"

ValueSet: BallardFemaleGenitalMaturityVS
Id: ballard-female-genital-maturity-vs
Title: "Ballard Physical Maturity — Female Genitals"
Description: "Local coded values for Ballard Physical Maturity — Female Genitals, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-female-genital-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-female-genital-maturity-cs

CodeSystem: BallardLanugoMaturityCS
Id: ballard-lanugo-maturity-cs
Title: "Ballard Physical Maturity — Lanugo"
Description: "Local coded concepts for Ballard Physical Maturity — Lanugo, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-lanugo-maturity-cs)
* ^language = #en

* #chr-0069-00001 "−1: none"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: отсутствуют"

* #chr-0069-00002 "0: sparse"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: немного, разбросаны"

* #chr-0069-00003 "1: abundant"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: много"

* #chr-0069-00004 "2: thinning"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: редеют"

* #chr-0069-00005 "3: bald areas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: оголённые участки"

* #chr-0069-00006 "4: mostly bald"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: отсутствуют"

ValueSet: BallardLanugoMaturityVS
Id: ballard-lanugo-maturity-vs
Title: "Ballard Physical Maturity — Lanugo"
Description: "Local coded values for Ballard Physical Maturity — Lanugo, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-lanugo-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-lanugo-maturity-cs

CodeSystem: BallardMaleGenitalMaturityCS
Id: ballard-male-genital-maturity-cs
Title: "Ballard Physical Maturity — Male Genitals"
Description: "Local coded concepts for Ballard Physical Maturity — Male Genitals, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-male-genital-maturity-cs)
* ^language = #en

* #chr-0073-00001 "−1: scrotum flat and smooth"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: мошонка плоская и гладкая"

* #chr-0073-00002 "0: scrotum empty, faint rugae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: мошонка пустая, слабые складки"

* #chr-0073-00003 "1: testes in upper canal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: яички в верхней части канала"

* #chr-0073-00004 "2: testes descending, few rugae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: яички опускаются, немного складок"

* #chr-0073-00005 "3: testes down, good rugae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: яички опущены, складки выражены"

* #chr-0073-00006 "4: testes pendulous, deep rugae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: яички свисают, складки глубокие"

ValueSet: BallardMaleGenitalMaturityVS
Id: ballard-male-genital-maturity-vs
Title: "Ballard Physical Maturity — Male Genitals"
Description: "Local coded values for Ballard Physical Maturity — Male Genitals, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-male-genital-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-male-genital-maturity-cs

CodeSystem: BallardNeuromuscularScoreCS
Id: ballard-neuromuscular-score-cs
Title: "Ballard Neuromuscular Score"
Description: "Local coded concepts for Ballard Neuromuscular Score, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-neuromuscular-score-cs)

* #chr-0079-00001 "-1 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "-1 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "-1 балл"

* #chr-0079-00002 "0 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "0 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "0 баллов"

* #chr-0079-00003 "1 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "1 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "1 балл"

* #chr-0079-00004 "2 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "2 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "2 баллов"

* #chr-0079-00005 "3 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "3 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "3 баллов"

* #chr-0079-00006 "4 ball"
  * ^designation[0].language = #en
  * ^designation[=].value = "4 points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "4 баллов"

ValueSet: BallardNeuromuscularScoreVS
Id: ballard-neuromuscular-score-vs
Title: "Ballard Neuromuscular Score"
Description: "Local coded values for Ballard Neuromuscular Score, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-neuromuscular-score-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-neuromuscular-score-cs

CodeSystem: BallardPlantarSurfaceCS
Id: ballard-plantar-surface-cs
Title: "Ballard Physical Maturity — Plantar Surface"
Description: "Local coded concepts for Ballard Physical Maturity — Plantar Surface, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-plantar-surface-cs)
* ^language = #en

* #chr-0070-00001 "−2: heel-to-toe <40 mm"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−2: длина стопы <40 мм"

* #chr-0070-00002 "−1: heel-to-toe 40–50 mm"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: длина стопы 40–50 мм"

* #chr-0070-00003 "0: >50 mm, no crease"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: >50 мм, складок нет"

* #chr-0070-00004 "1: faint red marks"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: слабые красные полосы"

* #chr-0070-00005 "2: anterior transverse crease only"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: одна передняя поперечная складка"

* #chr-0070-00006 "3: creases on anterior two-thirds"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: складки на передних 2/3"

* #chr-0070-00007 "4: creases over entire sole"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: складки на всей подошве"

ValueSet: BallardPlantarSurfaceVS
Id: ballard-plantar-surface-vs
Title: "Ballard Physical Maturity — Plantar Surface"
Description: "Local coded values for Ballard Physical Maturity — Plantar Surface, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-plantar-surface-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-plantar-surface-cs

CodeSystem: BallardPoplitealAngleCS
Id: ballard-popliteal-angle-cs
Title: "Ballard Popliteal Angle"
Description: "Local coded concepts for Ballard Popliteal Angle, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-popliteal-angle-cs)

* #chr-0082-00001 "180°"
  * ^designation[0].language = #en
  * ^designation[=].value = "180°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "180°"

* #chr-0082-00002 "160°"
  * ^designation[0].language = #en
  * ^designation[=].value = "160°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "160°"

* #chr-0082-00003 "140°"
  * ^designation[0].language = #en
  * ^designation[=].value = "140°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "140°"

* #chr-0082-00004 "120°"
  * ^designation[0].language = #en
  * ^designation[=].value = "120°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "120°"

* #chr-0082-00005 "100°"
  * ^designation[0].language = #en
  * ^designation[=].value = "100°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "100°"

* #chr-0082-00006 "90°"
  * ^designation[0].language = #en
  * ^designation[=].value = "90°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "90°"

* #chr-0082-00007 "<90°"
  * ^designation[0].language = #en
  * ^designation[=].value = "<90°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "<90°"

ValueSet: BallardPoplitealAngleVS
Id: ballard-popliteal-angle-vs
Title: "Ballard Popliteal Angle"
Description: "Local coded values for Ballard Popliteal Angle, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-popliteal-angle-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-popliteal-angle-cs

CodeSystem: BallardSkinMaturityCS
Id: ballard-skin-maturity-cs
Title: "Ballard Physical Maturity — Skin"
Description: "Local coded concepts for Ballard Physical Maturity — Skin, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-skin-maturity-cs)
* ^language = #en

* #chr-0068-00001 "−1: sticky, friable, transparent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "−1: липкая, прозрачная, легко рвётся"

* #chr-0068-00002 "0: gelatinous, red, translucent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0: желатинозная, красная, просвечивающая"

* #chr-0068-00003 "1: smooth pink, visible veins"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1: розовая, видны вены"

* #chr-0068-00004 "2: superficial peeling/rash, few veins"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2: поверхностное шелушение/сыпь, немного вен"

* #chr-0068-00005 "3: cracking, pale areas, rare veins"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3: растрескивание, бледные участки, редкие вены"

* #chr-0068-00006 "4: parchment-like, deep cracking, no vessels"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4: пергаментная, глубокие трещины, вен нет"

ValueSet: BallardSkinMaturityVS
Id: ballard-skin-maturity-vs
Title: "Ballard Physical Maturity — Skin"
Description: "Local coded values for Ballard Physical Maturity — Skin, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-skin-maturity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-skin-maturity-cs

CodeSystem: BallardSquareWindowCS
Id: ballard-square-window-cs
Title: "Ballard Square Window"
Description: "Local coded concepts for Ballard Square Window, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ballard-square-window-cs)

* #chr-0080-00001 ">90°"
  * ^designation[0].language = #en
  * ^designation[=].value = ">90°"
  * ^designation[+].language = #ru
  * ^designation[=].value = ">90°"

* #chr-0080-00002 "90°"
  * ^designation[0].language = #en
  * ^designation[=].value = "90°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "90°"

* #chr-0080-00003 "60°"
  * ^designation[0].language = #en
  * ^designation[=].value = "60°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "60°"

* #chr-0080-00004 "45°"
  * ^designation[0].language = #en
  * ^designation[=].value = "45°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "45°"

* #chr-0080-00005 "30°"
  * ^designation[0].language = #en
  * ^designation[=].value = "30°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "30°"

* #chr-0080-00006 "0°"
  * ^designation[0].language = #en
  * ^designation[=].value = "0°"
  * ^designation[+].language = #ru
  * ^designation[=].value = "0°"

ValueSet: BallardSquareWindowVS
Id: ballard-square-window-vs
Title: "Ballard Square Window"
Description: "Local coded values for Ballard Square Window, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ballard-square-window-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ballard-square-window-cs

CodeSystem: BreastfeedingInitiationTimeCS
Id: breastfeeding-initiation-time-cs
Title: "Breastfeeding Initiation Time"
Description: "Local coded concepts for Breastfeeding Initiation Time, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(breastfeeding-initiation-time-cs)

* #chr-0066-00001 "Dastlabki 30–60 daqiqada"
  * ^designation[0].language = #en
  * ^designation[=].value = "Within 30–60 minutes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В первые 30–60 минут"

* #chr-0066-00002 "2 soatdan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After 2 hours"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Через 2 часа"

* #chr-0066-00003 "6 soatdan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After 6 hours"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Через 6 часов"

* #chr-0066-00004 "12 soatdan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After 12 hours"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Через 12 часов"

* #chr-0066-00005 "1 kundan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After 1 day"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Через 1 день"

ValueSet: BreastfeedingInitiationTimeVS
Id: breastfeeding-initiation-time-vs
Title: "Breastfeeding Initiation Time"
Description: "Local coded values for Breastfeeding Initiation Time, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/breastfeeding-initiation-time-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/breastfeeding-initiation-time-cs

CodeSystem: CardiacExaminationAspectCS
Id: cardiac-examination-aspect-cs
Title: "Cardiac Examination Aspect"
Description: "Local coded concepts for Cardiac Examination Aspect, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(cardiac-examination-aspect-cs)

* #chr-0062-00001 "Yurak chegaralari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cardiac borders"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Границы сердца"

* #chr-0062-00002 "Shovqinlar mavjudligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Presence of murmurs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наличие шумов"

* #chr-0062-00003 "Ritm xususiyati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Rhythm characteristic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Особенность ритма"

ValueSet: CardiacExaminationAspectVS
Id: cardiac-examination-aspect-vs
Title: "Cardiac Examination Aspect"
Description: "Local coded values for Cardiac Examination Aspect, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/cardiac-examination-aspect-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/cardiac-examination-aspect-cs

CodeSystem: CyanosisDistributionCS
Id: cyanosis-distribution-cs
Title: "Cyanosis Distribution"
Description: "Local coded concepts for Cyanosis Distribution, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(cyanosis-distribution-cs)

* #chr-0055-00001 "Umumiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Generalized"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общий"

* #chr-0055-00002 "Og‘iz atrofi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Perioral"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вокруг рта"

* #chr-0055-00003 "Akrosianoz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Acrocyanosis"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Акроцианоз"

ValueSet: CyanosisDistributionVS
Id: cyanosis-distribution-vs
Title: "Cyanosis Distribution"
Description: "Local coded values for Cyanosis Distribution, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/cyanosis-distribution-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/cyanosis-distribution-cs

CodeSystem: DeliveryTimelinessCS
Id: delivery-timeliness-cs
Title: "Delivery Timeliness"
Description: "Local coded concepts for Delivery Timeliness, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(delivery-timeliness-cs)

* #chr-0052-00001 "O‘z vaqtida tug‘ruq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Timely delivery"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Своевременные роды"

* #chr-0052-00002 "Muddatidan oldin tug‘ruq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Premature delivery"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Преждевременные роды"

ValueSet: DeliveryTimelinessVS
Id: delivery-timeliness-vs
Title: "Delivery Timeliness"
Description: "Local coded values for Delivery Timeliness, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/delivery-timeliness-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/delivery-timeliness-cs

CodeSystem: EarMorphologyCS
Id: ear-morphology-cs
Title: "Ear Morphology"
Description: "Local coded concepts for Ear Morphology, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(ear-morphology-cs)

* #chr-0059-00001 "Katta"
  * ^designation[0].language = #en
  * ^designation[=].value = "Large"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Большие"

* #chr-0059-00002 "Kichik"
  * ^designation[0].language = #en
  * ^designation[=].value = "Small"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Маленькие"

* #chr-0059-00003 "Yopishgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Adherent"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Прилегающие"

* #chr-0059-00004 "Chiqib turgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Protruding"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оттопыренные"

ValueSet: EarMorphologyVS
Id: ear-morphology-vs
Title: "Ear Morphology"
Description: "Local coded values for Ear Morphology, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ear-morphology-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/ear-morphology-cs

CodeSystem: ExternalGenitalPatternCS
Id: external-genital-pattern-cs
Title: "External Genital Pattern"
Description: "Local coded concepts for External Genital Pattern, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(external-genital-pattern-cs)

* #chr-0064-00001 "Erkak tipida"
  * ^designation[0].language = #en
  * ^designation[=].value = "Male pattern"
  * ^designation[+].language = #ru
  * ^designation[=].value = "По мужскому типу"

* #chr-0064-00002 "Ayol tipida"
  * ^designation[0].language = #en
  * ^designation[=].value = "Female pattern"
  * ^designation[+].language = #ru
  * ^designation[=].value = "По женскому типу"

* #chr-0064-00003 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"

ValueSet: ExternalGenitalPatternVS
Id: external-genital-pattern-vs
Title: "External Genital Pattern"
Description: "Local coded values for External Genital Pattern, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/external-genital-pattern-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/external-genital-pattern-cs

CodeSystem: EyelidShapeCS
Id: eyelid-shape-cs
Title: "Eyelid Shape"
Description: "Local coded concepts for Eyelid Shape, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(eyelid-shape-cs)

* #chr-0058-00001 "Bodom shaklida"
  * ^designation[0].language = #en
  * ^designation[=].value = "Almond-shaped"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Миндалиевидная"

* #chr-0058-00002 "Dumaloq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Round"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Круглая"

* #chr-0058-00003 "Tirqishsimon"
  * ^designation[0].language = #en
  * ^designation[=].value = "Slit-like"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Щелевидная"

ValueSet: EyelidShapeVS
Id: eyelid-shape-vs
Title: "Eyelid Shape"
Description: "Local coded values for Eyelid Shape, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/eyelid-shape-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/eyelid-shape-cs

CodeSystem: FetalLieCS
Id: fetal-lie-cs
Title: "Fetal Lie"
Description: "Local coded concepts for Fetal Lie, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(fetal-lie-cs)

* #chr-0045-00001 "Uzunasiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Longitudinal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Продольное"

* #chr-0045-00002 "Ko‘ndalang"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transverse"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Поперечное"

* #chr-0045-00003 "Qiyshiq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Oblique"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Косое"

ValueSet: FetalLieVS
Id: fetal-lie-vs
Title: "Fetal Lie"
Description: "Local coded values for Fetal Lie, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/fetal-lie-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/fetal-lie-cs

CodeSystem: FetalPresentationCS
Id: fetal-presentation-cs
Title: "Fetal Presentation"
Description: "Local coded concepts for Fetal Presentation, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(fetal-presentation-cs)

* #chr-0044-00001 "Bosh bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cephalic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Головное предлежание"

* #chr-0044-00002 "Dumba bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Breech"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ягодичное предлежание"

* #chr-0044-00003 "Oyoq bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Footling"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ножное предлежание"

ValueSet: FetalPresentationVS
Id: fetal-presentation-vs
Title: "Fetal Presentation"
Description: "Local coded values for Fetal Presentation, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/fetal-presentation-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/fetal-presentation-cs

CodeSystem: InfantFeedingTypeCS
Id: infant-feeding-type-cs
Title: "Infant Feeding Type"
Description: "Local coded concepts for Infant Feeding Type, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(infant-feeding-type-cs)

* #chr-0067-00001 "Faqat ona suti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Exclusive breastfeeding"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Только грудное"

* #chr-0067-00002 "Sun’iy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Formula feeding"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Искусственное"

* #chr-0067-00003 "Aralash"
  * ^designation[0].language = #en
  * ^designation[=].value = "Mixed feeding"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Смешанное"

ValueSet: InfantFeedingTypeVS
Id: infant-feeding-type-vs
Title: "Infant Feeding Type"
Description: "Local coded values for Infant Feeding Type, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/infant-feeding-type-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/infant-feeding-type-cs

CodeSystem: InterventionEffectivenessCS
Id: intervention-effectiveness-cs
Title: "Intervention Effectiveness"
Description: "Local coded concepts for Intervention Effectiveness, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(intervention-effectiveness-cs)

* #chr-0049-00001 "To‘liq samara"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fully effective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Полный эффект"

* #chr-0049-00002 "Qisman samara"
  * ^designation[0].language = #en
  * ^designation[=].value = "Partially effective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частичный эффект"

* #chr-0049-00003 "Samara yo‘q"
  * ^designation[0].language = #en
  * ^designation[=].value = "Ineffective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отсутствие эффекта"

ValueSet: InterventionEffectivenessVS
Id: intervention-effectiveness-vs
Title: "Intervention Effectiveness"
Description: "Local coded values for Intervention Effectiveness, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/intervention-effectiveness-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/intervention-effectiveness-cs

CodeSystem: MaritalStatusFormCS
Id: marital-status-form-cs
Title: "Marital Status for CHR Forms"
Description: "Local coded concepts for Marital Status for CHR Forms, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(marital-status-form-cs)

* #chr-0041-00001 "Turmush qurgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Married"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Замужем"

* #chr-0041-00002 "Turmush qurmagan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unmarried"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не замужем"

ValueSet: MaritalStatusFormVS
Id: marital-status-form-vs
Title: "Marital Status for CHR Forms"
Description: "Local coded values for Marital Status for CHR Forms, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/marital-status-form-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/marital-status-form-cs

CodeSystem: MaternalDeathTimingCS
Id: maternal-death-timing-cs
Title: "Maternal Death Timing"
Description: "Local coded concepts for Maternal Death Timing, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(maternal-death-timing-cs)

* #chr-0042-00001 "Tug‘ruqdan oldin"
  * ^designation[0].language = #en
  * ^designation[=].value = "Before childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "До родов"

* #chr-0042-00002 "Tug‘ruq vaqtida"
  * ^designation[0].language = #en
  * ^designation[=].value = "During childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Во время родов"

* #chr-0042-00003 "Tug‘ruqdan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "После родов"

ValueSet: MaternalDeathTimingVS
Id: maternal-death-timing-vs
Title: "Maternal Death Timing"
Description: "Local coded values for Maternal Death Timing, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/maternal-death-timing-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/maternal-death-timing-cs

CodeSystem: MaternalPelvimetryMeasurementCodeCS
Id: maternal-pelvimetry-measurement-code-cs
Title: "Maternal Pelvimetry Measurement Codes"
Description: "Local coded concepts for Maternal Pelvimetry Measurement Codes, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(maternal-pelvimetry-measurement-code-cs)

* #chr-0083-00001 "Distantia spinarum — chanoqning o‘simtalararo o‘lchami"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia spinarum — interspinous pelvic diameter; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia spinarum (межостистый размер таза)"

* #chr-0083-00002 "Distantia cristarum — chanoq qirralari orasidagi o‘lcham"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia cristarum — intercristal pelvic diameter; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia cristarum (межгребневый размер таза)"

* #chr-0083-00003 "Distantia trochanterica — katta ko‘stlar orasidagi o‘lcham"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia trochanterica — intertrochanteric pelvic diameter; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia trochanterica (межвертельный размер таза)"

* #chr-0083-00004 "Conjugata externa — tashqi konyugata"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata externa — external conjugate; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata externa (наружная конъюгата)"

* #chr-0083-00005 "Conjugata diagonalis — diagonal konyugata"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata diagonalis — diagonal conjugate; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata diagonalis (диагональная конъюгата)"

* #chr-0083-00006 "Conjugata vera — haqiqiy konyugata"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata vera — true conjugate; result is Observation.valueQuantity in cm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata vera (истинная конъюгата)"

ValueSet: MaternalPelvimetryMeasurementCodeVS
Id: maternal-pelvimetry-measurement-code-vs
Title: "Maternal Pelvimetry Measurement Codes"
Description: "Local coded values for Maternal Pelvimetry Measurement Codes, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/maternal-pelvimetry-measurement-code-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/maternal-pelvimetry-measurement-code-cs

CodeSystem: MedicationAdministrationRouteFormCS
Id: medication-administration-route-form-cs
Title: "Medication Administration Route for CHR Form"
Description: "Local coded concepts for Medication Administration Route for CHR Form, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(medication-administration-route-form-cs)

* #chr-0051-00001 "Vena ichiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intravenous"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внутривенный"

* #chr-0051-00002 "Teri ostiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Subcutaneous"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Подкожный"

* #chr-0051-00003 "Mushak ichiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intramuscular"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внутримышечный"

* #chr-0051-00004 "Intratekal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intrathecal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Интратекальный"

* #chr-0051-00005 "Til ostiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sublingual"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сублингвальный"

* #chr-0051-00006 "Yonoq orqali"
  * ^designation[0].language = #en
  * ^designation[=].value = "Buccal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Трансбуккальный"

* #chr-0051-00007 "Rektal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Rectal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ректальный"

* #chr-0051-00008 "Vaginal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Vaginal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вагинальный"

* #chr-0051-00009 "Teriga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Dermal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Кожный"

* #chr-0051-00010 "Burun ichiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intranasal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Интраназальный"

* #chr-0051-00011 "Ko‘z ichiga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intraocular"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внутриглазной"

* #chr-0051-00012 "Transdermal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transdermal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Трансдермальный"

* #chr-0051-00013 "Quloqqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Otic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ушной"

* #chr-0051-00014 "Ingalyatsion"
  * ^designation[0].language = #en
  * ^designation[=].value = "Inhalation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ингаляционный"

* #chr-0051-00015 "Nebulayzer orqali"
  * ^designation[0].language = #en
  * ^designation[=].value = "Nebulization"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Через небулайзер"

ValueSet: MedicationAdministrationRouteFormVS
Id: medication-administration-route-form-vs
Title: "Medication Administration Route for CHR Form"
Description: "Local coded values for Medication Administration Route for CHR Form, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-administration-route-form-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/medication-administration-route-form-cs

CodeSystem: MuscleToneStatusCS
Id: muscle-tone-status-cs
Title: "Muscle Tone Status"
Description: "Local coded concepts for Muscle Tone Status, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(muscle-tone-status-cs)

* #chr-0056-00001 "Normal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Normal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нормальная"

* #chr-0056-00002 "Pasaygan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Reduced"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сниженная"

ValueSet: MuscleToneStatusVS
Id: muscle-tone-status-vs
Title: "Muscle Tone Status"
Description: "Local coded values for Muscle Tone Status, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/muscle-tone-status-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/muscle-tone-status-cs

CodeSystem: NewbornActivityLevelCS
Id: newborn-activity-level-cs
Title: "Newborn Activity Level"
Description: "Local coded concepts for Newborn Activity Level, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(newborn-activity-level-cs)

* #chr-0076-00001 "Yuqori"
  * ^designation[0].language = #en
  * ^designation[=].value = "Increased"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Повышенная"

* #chr-0076-00002 "O‘rtacha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Moderate"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Умеренная"

* #chr-0076-00003 "Past"
  * ^designation[0].language = #en
  * ^designation[=].value = "Low"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Низкая"

ValueSet: NewbornActivityLevelVS
Id: newborn-activity-level-vs
Title: "Newborn Activity Level"
Description: "Local coded values for Newborn Activity Level, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/newborn-activity-level-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/newborn-activity-level-cs

CodeSystem: NewbornCareLocationCS
Id: newborn-care-location-cs
Title: "Newborn Care Location"
Description: "Local coded concepts for Newborn Care Location, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(newborn-care-location-cs)

* #chr-0065-00001 "Tug‘ruqxona"
  * ^designation[0].language = #en
  * ^designation[=].value = "Maternity hospital"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родильный дом"

* #chr-0065-00002 "Oilaviy shifokor punkti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Family doctor point"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семейный врачебный пункт"

* #chr-0065-00003 "Oilaviy poliklinika"
  * ^designation[0].language = #en
  * ^designation[=].value = "Family polyclinic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Семейная поликлиника"

ValueSet: NewbornCareLocationVS
Id: newborn-care-location-vs
Title: "Newborn Care Location"
Description: "Local coded values for Newborn Care Location, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/newborn-care-location-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/newborn-care-location-cs

CodeSystem: NewbornSkinColorBasicCS
Id: newborn-skin-color-basic-cs
Title: "Newborn Skin Color — Basic"
Description: "Local coded concepts for Newborn Skin Color — Basic, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(newborn-skin-color-basic-cs)

* #chr-0054-00001 "Pushti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pink"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Розовый"

* #chr-0054-00002 "Sariq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Yellow"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Жёлтый"

* #chr-0054-00003 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"

ValueSet: NewbornSkinColorBasicVS
Id: newborn-skin-color-basic-vs
Title: "Newborn Skin Color — Basic"
Description: "Local coded values for Newborn Skin Color — Basic, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/newborn-skin-color-basic-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/newborn-skin-color-basic-cs

CodeSystem: NewbornSkinColorDetailedCS
Id: newborn-skin-color-detailed-cs
Title: "Newborn Skin Color — Detailed"
Description: "Local coded concepts for Newborn Skin Color — Detailed, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(newborn-skin-color-detailed-cs)

* #chr-0078-00001 "Me’yoriy rang"
  * ^designation[0].language = #en
  * ^designation[=].value = "Normal color"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нормальный цвет"

* #chr-0078-00002 "Pushti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pink"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Розовый"

* #chr-0078-00003 "Och pushti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Light pink"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Светло-розовый"

* #chr-0078-00004 "Oqargan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pale"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бледный"

* #chr-0078-00005 "Marmarsimon"
  * ^designation[0].language = #en
  * ^designation[=].value = "Mottled"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мраморный"

* #chr-0078-00006 "Subikterik"
  * ^designation[0].language = #en
  * ^designation[=].value = "Subicteric"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Субжелтушный"

* #chr-0078-00007 "Sarg‘aygan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Icteric"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Желтушный"

* #chr-0078-00008 "Sianoz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cyanotic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Цианоз"

* #chr-0078-00009 "Akrosianoz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Acrocyanotic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Акроцианоз"

* #chr-0078-00010 "Toshma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Rash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сыпь"

* #chr-0078-00011 "Shaffof"
  * ^designation[0].language = #en
  * ^designation[=].value = "Transparent"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Прозрачный"

ValueSet: NewbornSkinColorDetailedVS
Id: newborn-skin-color-detailed-vs
Title: "Newborn Skin Color — Detailed"
Description: "Local coded values for Newborn Skin Color — Detailed, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/newborn-skin-color-detailed-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/newborn-skin-color-detailed-cs

CodeSystem: NewbornTermStatusCS
Id: newborn-term-status-cs
Title: "Newborn Term Status"
Description: "Local coded concepts for Newborn Term Status, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(newborn-term-status-cs)

* #chr-0075-00001 "Muddatidan oldin tug‘ilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Preterm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родился раньше срока"

* #chr-0075-00002 "Muddatida tug‘ilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Term"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родился в срок"

* #chr-0075-00003 "Muddatidan kech tug‘ilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Post-term"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родился позже срока"

ValueSet: NewbornTermStatusVS
Id: newborn-term-status-vs
Title: "Newborn Term Status"
Description: "Local coded values for Newborn Term Status, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/newborn-term-status-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/newborn-term-status-cs

CodeSystem: NormalAbnormalStatusCS
Id: normal-abnormal-status-cs
Title: "Normal / Abnormal Status"
Description: "Local coded concepts for Normal / Abnormal Status, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(normal-abnormal-status-cs)

* #chr-0057-00001 "Me’yor"
  * ^designation[0].language = #en
  * ^designation[=].value = "Normal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Норма"

* #chr-0057-00002 "Me’yordan chetga chiqish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Abnormal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отклонение от нормы"

ValueSet: NormalAbnormalStatusVS
Id: normal-abnormal-status-vs
Title: "Normal / Abnormal Status"
Description: "Local coded values for Normal / Abnormal Status, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/normal-abnormal-status-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/normal-abnormal-status-cs

CodeSystem: PlacentalSeparationMethodCS
Id: placental-separation-method-cs
Title: "Placental Separation Method"
Description: "Local coded concepts for Placental Separation Method, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(placental-separation-method-cs)

* #chr-0047-00001 "Tushdi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Descended"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отошла"

* #chr-0047-00002 "O‘zi ajraldi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Separated spontaneously"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отделилась самостоятельно"

* #chr-0047-00003 "Qo‘l bilan olindi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Removed manually"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удалена вручную"

* #chr-0047-00004 "Asbob bilan olindi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Removed instrumentally"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удалена инструментально"

ValueSet: PlacentalSeparationMethodVS
Id: placental-separation-method-vs
Title: "Placental Separation Method"
Description: "Local coded values for Placental Separation Method, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/placental-separation-method-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/placental-separation-method-cs

CodeSystem: PreviousPregnancyOutcomeCS
Id: previous-pregnancy-outcome-cs
Title: "Previous Pregnancy Outcome"
Description: "Local coded concepts for Previous Pregnancy Outcome, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(previous-pregnancy-outcome-cs)

* #chr-0043-00001 "Bola tug‘ilishi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рождение ребёнка"

* #chr-0043-00002 "Abort"
  * ^designation[0].language = #en
  * ^designation[=].value = "Abortion"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Аборт"

ValueSet: PreviousPregnancyOutcomeVS
Id: previous-pregnancy-outcome-vs
Title: "Previous Pregnancy Outcome"
Description: "Local coded values for Previous Pregnancy Outcome, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/previous-pregnancy-outcome-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/previous-pregnancy-outcome-cs

CodeSystem: PrimitiveReflexTypeCS
Id: primitive-reflex-type-cs
Title: "Primitive Reflex Type"
Description: "Local coded concepts for Primitive Reflex Type, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(primitive-reflex-type-cs)

* #chr-0077-00001 "Qidiruv refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Rooting reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Поисковый рефлекс"

* #chr-0077-00002 "So‘rish refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sucking reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сосательный рефлекс"

* #chr-0077-00003 "Ushlash refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Grasp reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хватательный рефлекс"

* #chr-0077-00004 "Asimmetrik tonik bo‘yin refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Asymmetric tonic neck reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Асимметричный тонический шейный рефлекс"

* #chr-0077-00005 "Simmetrik tonik bo‘yin refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Symmetric tonic neck reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Симметричный тонический шейный рефлекс"

* #chr-0077-00006 "Galant refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Galant reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекс Галанта"

* #chr-0077-00007 "Peres refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Perez reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекс Переса"

* #chr-0077-00008 "Moro refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Moro reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекс Моро"

* #chr-0077-00009 "Himoya refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Protective reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Защитный рефлекс"

* #chr-0077-00010 "Turish va avtomatik yurish refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Stepping reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекс стояния и автоматической ходьбы"

* #chr-0077-00011 "Emaklash refleksi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Crawling reflex"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рефлекс ползания"

* #chr-0077-00012 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"

ValueSet: PrimitiveReflexTypeVS
Id: primitive-reflex-type-vs
Title: "Primitive Reflex Type"
Description: "Local coded values for Primitive Reflex Type, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/primitive-reflex-type-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/primitive-reflex-type-cs

CodeSystem: RespiratoryAuscultationCS
Id: respiratory-auscultation-cs
Title: "Respiratory Auscultation"
Description: "Local coded concepts for Respiratory Auscultation, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(respiratory-auscultation-cs)

* #chr-0060-00001 "Vezikulyar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Vesicular"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Везикулярное"

* #chr-0060-00002 "Traxeal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Tracheal / physiological bronchial"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Трахеальное (физиологическое бронхиальное)"

* #chr-0060-00003 "Susaygan vezikulyar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Diminished vesicular"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ослабленное везикулярное"

* #chr-0060-00004 "Bronxial"
  * ^designation[0].language = #en
  * ^designation[=].value = "Bronchial"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бронхиальное"

* #chr-0060-00005 "Bronxovezikulyar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Bronchovesicular"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бронховезикулярное"

* #chr-0060-00006 "Uzaygan nafas chiqarish bilan bronxovezikulyar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Bronchovesicular with prolonged expiration"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бронховезикулярное с удлинённым выдохом"

* #chr-0060-00007 "Nafas eshitilmaydi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Absent breath sounds"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дыхание отсутствует"

ValueSet: RespiratoryAuscultationVS
Id: respiratory-auscultation-vs
Title: "Respiratory Auscultation"
Description: "Local coded values for Respiratory Auscultation, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/respiratory-auscultation-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/respiratory-auscultation-cs

CodeSystem: SatisfactoryStatusCS
Id: satisfactory-status-cs
Title: "Satisfactory Status"
Description: "Local coded concepts for Satisfactory Status, sourced from the Form 096 and Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(satisfactory-status-cs)

* #chr-0040-00001 "Qoniqarli"
  * ^designation[0].language = #en
  * ^designation[=].value = "Satisfactory"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удовлетворительное"

* #chr-0040-00002 "Qoniqarsiz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unsatisfactory"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неудовлетворительное"

ValueSet: SatisfactoryStatusVS
Id: satisfactory-status-vs
Title: "Satisfactory Status"
Description: "Local coded values for Satisfactory Status, sourced from the Form 096 and Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/satisfactory-status-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/satisfactory-status-cs

CodeSystem: SilvermanRespiratorySeverityCS
Id: silverman-respiratory-severity-cs
Title: "Silverman Respiratory Severity"
Description: "Local coded concepts for Silverman Respiratory Severity, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(silverman-respiratory-severity-cs)

* #chr-0061-00001 "0 ball — nafas yetishmovchiligi yo‘q"
  * ^designation[0].language = #en
  * ^designation[=].value = "0 points — no respiratory distress"
  * ^designation[+].language = #ru
  * ^designation[=].value = "0 баллов — дыхательная недостаточность отсутствует"

* #chr-0061-00002 "1–3 ball — boshlang‘ich belgilar"
  * ^designation[0].language = #en
  * ^designation[=].value = "1–3 points — initial signs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "1–3 балла — начальные признаки"

* #chr-0061-00003 "4–6 ball — o‘rtacha og‘irlik"
  * ^designation[0].language = #en
  * ^designation[=].value = "4–6 points — moderate severity"
  * ^designation[+].language = #ru
  * ^designation[=].value = "4–6 баллов — средняя тяжесть"

* #chr-0061-00004 "6 balldan yuqori — og‘ir"
  * ^designation[0].language = #en
  * ^designation[=].value = "More than 6 points — severe"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Более 6 баллов — тяжёлая степень"

ValueSet: SilvermanRespiratorySeverityVS
Id: silverman-respiratory-severity-vs
Title: "Silverman Respiratory Severity"
Description: "Local coded values for Silverman Respiratory Severity, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/silverman-respiratory-severity-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/silverman-respiratory-severity-cs

CodeSystem: TissueIntegrityStatusCS
Id: tissue-integrity-status-cs
Title: "Tissue Integrity Status"
Description: "Local coded concepts for Tissue Integrity Status, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(tissue-integrity-status-cs)

* #chr-0048-00001 "Butun"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intact"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостный"

* #chr-0048-00002 "Butunligi buzilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Integrity compromised"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостность нарушена"

ValueSet: TissueIntegrityStatusVS
Id: tissue-integrity-status-vs
Title: "Tissue Integrity Status"
Description: "Local coded values for Tissue Integrity Status, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/tissue-integrity-status-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/tissue-integrity-status-cs

CodeSystem: UrinationEaseCS
Id: urination-ease-cs
Title: "Urination Ease"
Description: "Local coded concepts for Urination Ease, sourced from the Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(urination-ease-cs)

* #chr-0063-00001 "Qiyinlashgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Difficult"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Затруднено"

* #chr-0063-00002 "Erkin"
  * ^designation[0].language = #en
  * ^designation[=].value = "Free"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Свободно"

ValueSet: UrinationEaseVS
Id: urination-ease-vs
Title: "Urination Ease"
Description: "Local coded values for Urination Ease, sourced from the Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/urination-ease-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/urination-ease-cs

CodeSystem: VaginalDischargeColorCS
Id: vaginal-discharge-color-cs
Title: "Vaginal Discharge Color"
Description: "Local coded concepts for Vaginal Discharge Color, sourced from the Form 096 FHIR mapping."
* insert OriginalCodeSystemDraft(vaginal-discharge-color-cs)

* #chr-0050-00001 "Qonli"
  * ^designation[0].language = #en
  * ^designation[=].value = "Bloody"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Кровянистые"

* #chr-0050-00002 "Jigarrang"
  * ^designation[0].language = #en
  * ^designation[=].value = "Brown"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Коричневые"

* #chr-0050-00003 "Sariq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Yellow"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Жёлтые"

* #chr-0050-00004 "Oq"
  * ^designation[0].language = #en
  * ^designation[=].value = "White"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Белые"

* #chr-0050-00005 "Yashil"
  * ^designation[0].language = #en
  * ^designation[=].value = "Green"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Зелёные"

* #chr-0050-00006 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"

ValueSet: VaginalDischargeColorVS
Id: vaginal-discharge-color-vs
Title: "Vaginal Discharge Color"
Description: "Local coded values for Vaginal Discharge Color, sourced from the Form 096 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/vaginal-discharge-color-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/vaginal-discharge-color-cs

CodeSystem: YesNoCS
Id: yes-no-cs
Title: "Yes / No"
Description: "Local coded concepts for Yes / No, sourced from the Form 096 and Form 097 FHIR mapping."
* insert OriginalCodeSystemDraft(yes-no-cs)

* #chr-0039-00001 "Ha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Yes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Да"

* #chr-0039-00002 "Yo‘q"
  * ^designation[0].language = #en
  * ^designation[=].value = "No"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нет"

ValueSet: YesNoVS
Id: yes-no-vs
Title: "Yes / No"
Description: "Local coded values for Yes / No, sourced from the Form 096 and Form 097 FHIR mapping."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/yes-no-vs"
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/yes-no-cs
