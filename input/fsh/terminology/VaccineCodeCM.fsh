// Instance: vaccine-code-conceptmap
// InstanceOf: ConceptMap
// Usage: #definition
// Title: "Vaccine codes to CVX to SNOMED CT"
// Description: "Maps CVX and URN vaccine codes to SNOMED CT."
// * url = "https://terminology.dhp.uz/fhir/core/ConceptMap/vaccine-code-conceptmap"
// * name = "VaccineCodeToSnomedAndCVX"
// * status = #draft
// * experimental = false
// * publisher = "Uzinfocom"

// * group[+].source = Canonical(CVXVaccineTranslationsCS)
// * group[=].target = $sct
// * targetScopeCanonical = $sct-vs


// * group[=].element[+].code = #immun-1
// * group[=].element[=].display = "Adenovirusga qarshi emlash, 4-toifa, jonli, og'iz orqali"
// * group[=].element[=].target[+].code = #871722007
// * group[=].element[=].target[=].display = "Vaccine product containing only Adenovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-2
// * group[=].element[=].display = "Adenovirusga qarshi emlash, 7-toifa, jonli, og'iz orqali"
// * group[=].element[=].target[+].code = #836400005
// * group[=].element[=].target[=].display = "Adenovirus antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-3
// * group[=].element[=].display = "Adenovirusga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #871722007
// * group[=].element[=].target[=].display = "Vaccine product containing only Adenovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-4
// * group[=].element[=].display = "Kuydirgiga qarshi emlash, adsorbsiyalangan, ta'sir qilishdan oldingi va keyingi profilaktika uchun"
// * group[=].element[=].target[+].code = #860818003
// * group[=].element[=].target[=].display = "Vaccine product containing only Bacillus anthracis antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-5
// * group[=].element[=].display = "Bacillus Calmette-Guerin vaktsinasi"
// * group[=].element[=].target[+].code = #1861000221106
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-6
// * group[=].element[=].display = "botulinum antitoksini"
// * group[=].element[=].target[+].code = #774893001
// * group[=].element[=].target[=].display = "Botulinum antitoxin only product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-7
// * group[=].element[=].display = "vaboga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #991000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-8
// * group[=].element[=].display = "sitomegalovirus immunoglobulini, tomir ichiga yuborish"
// * group[=].element[=].target[+].code = #116792006
// * group[=].element[=].target[=].display = "Intravenous infusion of Cytomegalovirus immune globulin (procedure)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-9
// * group[=].element[=].display = "dangga qarshi emlash, to'rt valentli"
// * group[=].element[=].target[+].code = #871720004
// * group[=].element[=].target[=].display = "Vaccine product containing only Dengue virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-10
// * group[=].element[=].display = "difteriyaga qarshi toksin"
// * group[=].element[=].target[+].code = #412175006
// * group[=].element[=].target[=].display = "Diphtheria antitoxin (substance)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-11
// * group[=].element[=].display = "bolalarda foydalanish uchun adsorbsiyalangan difteriya va tetanoz toksoidlari"
// * group[=].element[=].target[+].code = #871827009
// * group[=].element[=].target[=].display = "Clostridium tetani and low dose Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-12
// * group[=].element[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash"
// * group[=].element[=].target[+].code = #871876003
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-13
// * group[=].element[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash, 5 ta ko'kyo'tal antijeni"
// * group[=].element[=].target[+].code = #871876003
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-14
// * group[=].element[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #871875004
// * group[=].element[=].target[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-15
// * group[=].element[=].display = "DTaP-gepatit B va poliovirusga qarshi emlash"
// * group[=].element[=].target[+].code = #871891001
// * group[=].element[=].target[=].display = "Vaccine product containing only Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Hepatitis B virus and inactivated whole Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-16
// * group[=].element[=].display = "DTaP-Haemophilus influenzae turi b konjugat vaktsinasi"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Haemophilus influenzae type b capsular polysaccharide antigen conjugated only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-17
// * group[=].element[=].display = "difteriya, qoqshol, hujayrasiz ko'kyo'talga qarshi vaktsina, Haemophilus influenzae turi b konjugati va poliovirus vaktsinasi, inaktivatsiyalangan (DTaP-Hib-IPV)"
// * group[=].element[=].target[+].code = #871888001
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and inactivated whole Human poliovirus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-18
// * group[=].element[=].display = "difteriya, qoqshol, hujayrali ko'kyo'talga qarshi vaktsina va poliovirusga qarshi vaktsina, inaktivatsiyalangan"
// * group[=].element[=].target[+].code = #871887006
// * group[=].element[=].target[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-19
// * group[=].element[=].display = "difteriya, qoqshol va ko'kyo'talga qarshi emlash"
// * group[=].element[=].target[+].code = #871875004
// * group[=].element[=].target[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-20
// * group[=].element[=].display = "DTP-Haemophilus influenzae turi b konjugat vaktsinasi"
// * group[=].element[=].target[+].code = #871839001
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-21
// * group[=].element[=].display = "DTP-Haemophilus influenzae turi b konjugat vaktsinasi va gepatit B vaktsinasi"
// * group[=].element[=].target[+].code = #871886002
// * group[=].element[=].target[=].display = "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-22
// * group[=].element[=].display = "hantavirusga qarshi emlash"
// * group[=].element[=].target[+].code = #709342008
// * group[=].element[=].target[=].display = "Hantavirus Ag"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-23
// * group[=].element[=].display = "gepatit A vaktsinasi, kattalar dozasi"
// * group[=].element[=].target[+].code = #865997008
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only adult vaccine"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-24
// * group[=].element[=].display = "gepatit A vaktsinasi, bolalar / o'smirlar dozasi, 2 dozali sxema"
// * group[=].element[=].target[+].code = #871750007
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only pediatric vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-25
// * group[=].element[=].display = "gepatit A vaktsinasi, bolalar / o'smirlar dozasi, 3 dozali sxema"
// * group[=].element[=].target[+].code = #871750007
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only pediatric vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-26
// * group[=].element[=].display = "gepatit A vaktsinasi, bolalar dozasi, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #871750007
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only pediatric vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-27
// * group[=].element[=].display = "gepatit A vaktsinasi, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-28
// * group[=].element[=].display = "gepatit A va gepatit B ga qarshi emlash"
// * group[=].element[=].target[+].code = #871803007
// * group[=].element[=].target[=].display = "Hepatitis A and Hepatitis B virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-29
// * group[=].element[=].display = "gepatit B immunoglobulini"
// * group[=].element[=].target[+].code = #116801004
// * group[=].element[=].target[=].display = "Hepatitis B Virus immune globulin, human, issued (situation)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-30
// * group[=].element[=].display = "gepatit B vaktsinasi, bolalar yoki bolalar / o'smirlar dozasi"
// * group[=].element[=].target[+].code = #1296864005
// * group[=].element[=].target[=].display = "Pediatric vaccine product containing only adsorbed Hepatitis B virus recombinant surface antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-31
// * group[=].element[=].display = "gepatit B ga qarshi emlash, yuqori xavfli bolalar uchun o'smirlar / bolalar dozalari"
// * group[=].element[=].target[+].code = #1296864005
// * group[=].element[=].target[=].display = "Pediatric vaccine product containing only adsorbed Hepatitis B virus recombinant surface antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-32
// * group[=].element[=].display = "gepatit B vaktsinasi, kattalar dozasi"
// * group[=].element[=].target[+].code = #871925000
// * group[=].element[=].target[=].display = "Hepatitis B surface antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-33
// * group[=].element[=].display = "gepatit B ga qarshi emlash, dializ dozasi"
// * group[=].element[=].target[+].code = #871925000
// * group[=].element[=].target[=].display = "Hepatitis B surface antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-34
// * group[=].element[=].display = "gepatit B vaktsinasi, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #871925000
// * group[=].element[=].target[=].display = "Hepatitis B surface antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent





// * group[=].element[+].code = #immun-37
// * group[=].element[=].display = "2-toifa herpes simplex virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #120995009
// * group[=].element[=].target[=].display = "Antigen of Human alphaherpesvirus 2 (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-38
// * group[=].element[=].display = "Haemophilus influenzae turi b vaktsinasi, PRP-D konjugati"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-39
// * group[=].element[=].display = "Haemophilus influenzae turi b vaktsinasi, HbOC konjugati"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-40
// * group[=].element[=].display = "Haemophilus influenzae turi b vaktsinasi, PRP-T konjugati"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-41
// * group[=].element[=].display = "Haemophilus influenzae turi b vaktsinasi, PRP-OMP konjugati"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-42
// * group[=].element[=].display = "Haemophilus influenzae turi b vaktsinasi, aniqlanmagan konjugat"
// * group[=].element[=].target[+].code = #836380007
// * group[=].element[=].target[=].display = "Vaccine product containing Haemophilus influenzae type b antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-43
// * group[=].element[=].display = "Haemophilus influenzae turi b konjugati va gepatit B vaktsinasi"
// * group[=].element[=].target[+].code = #871806004
// * group[=].element[=].target[=].display = "Haemophilus influenzae type b and Hepatitis B virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-45
// * group[=].element[=].display = "inson papillomavirusiga qarshi vaktsina, ikki valentli"
// * group[=].element[=].target[+].code = #1991000221106
// * group[=].element[=].target[=].display = "Human papillomavirus 16 and 18 antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-46
// * group[=].element[=].display = "inson papillomavirusiga qarshi emlash, to'rt valentli"
// * group[=].element[=].target[+].code = #2001000221108
// * group[=].element[=].target[=].display = "Human papillomavirus 6, 11, 16 and 18 antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-47
// * group[=].element[=].display = "immunoglobulin, mushak ichiga"
// * group[=].element[=].target[+].code = #776947000
// * group[=].element[=].target[=].display = "Normal human immunoglobulin only product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-48
// * group[=].element[=].display = "immunoglobulin, tomir ichiga yuborish"
// * group[=].element[=].target[+].code = #776947000
// * group[=].element[=].target[=].display = "Normal human immunoglobulin only product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-49
// * group[=].element[=].display = "immunoglobulin, aniqlanmagan"
// * group[=].element[=].target[+].code = #776947000
// * group[=].element[=].target[=].display = "Normal human immunoglobulin only product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-50
// * group[=].element[=].display = "Gripp, jonli, uch valentli, intranazal"
// * group[=].element[=].target[+].code = #1010313002
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-51
// * group[=].element[=].display = "grippga qarshi emlash, split virus (shu jumladan, tozalangan sirt antijeni) - pensiya bo'yicha KOD"
// * group[=].element[=].target[+].code = #836377006
// * group[=].element[=].target[=].display = "Vaccine product containing influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-52
// * group[=].element[=].display = "grippga qarshi emlash, butun virus"
// * group[=].element[=].target[+].code = #836377006
// * group[=].element[=].target[=].display = "Vaccine product containing influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-53
// * group[=].element[=].display = "gripp virusiga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #836377006
// * group[=].element[=].target[=].display = "Vaccine product containing influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-54
// * group[=].element[=].display = "gripp virusiga qarshi emlash, H5N1, A/Vyetnam/1203/2004 (milliy zaxira)"
// * group[=].element[=].target[+].code = #1003499009
// * group[=].element[=].target[=].display = "Influenza A virus subtype H5N1 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-55
// * group[=].element[=].display = "poliovirusga qarshi emlash, faolsizlangan"
// * group[=].element[=].target[+].code = #871740006
// * group[=].element[=].target[=].display = "Inactivated whole Human poliovirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-56
// * group[=].element[=].display = "trivalent poliovirus vaktsinasi, jonli, og'iz"
// * group[=].element[=].target[+].code = #1051000221104
// * group[=].element[=].target[=].display = "Live attenuated Human poliovirus serotypes 1 and 3 antigens only vaccine product in oral dose form"
// * group[=].element[=].target[=].relationship = #source-is-broader-than-target

// * group[=].element[+].code = #immun-57
// * group[=].element[=].display = "poliovirusga qarshi emlash, aniqlanmagan dozalash shakli"
// * group[=].element[=].target[+].code = #1031000221108
// * group[=].element[=].target[=].display = "Human poliovirus antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-58
// * group[=].element[=].display = "Yapon ensefalitiga qarshi emlash SC"
// * group[=].element[=].target[+].code = #871724008
// * group[=].element[=].target[=].display = "Japanese encephalitis virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-59
// * group[=].element[=].display = "Junin virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #860722004
// * group[=].element[=].target[=].display = "Junin virus antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-60
// * group[=].element[=].display = "Leyshmaniozga qarshi emlash"
// * group[=].element[=].target[+].code = #170392001
// * group[=].element[=].target[=].display = "Leishmaniasis vaccination (procedure)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-61
// * group[=].element[=].display = "Moxovga qarshi emlash"
// * group[=].element[=].target[+].code = #1861000221106
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-62
// * group[=].element[=].display = "Lyme kasalligiga qarshi emlash"
// * group[=].element[=].target[+].code = #871911001
// * group[=].element[=].target[=].display = "Borrelia burgdorferi antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-63
// * group[=].element[=].display = "Qizamiq, parotit, qizilcha virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #871831003
// * group[=].element[=].target[=].display = "Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-64
// * group[=].element[=].display = "Qizamiq va qizilchaga qarshi emlash"
// * group[=].element[=].target[+].code = #871817003
// * group[=].element[=].target[=].display = "Measles morbillivirus and Rubella virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-65
// * group[=].element[=].display = "Qizamiq, qizilcha, qizilcha va qizilchaga qarshi emlash"
// * group[=].element[=].target[+].code = #871831003
// * group[=].element[=].target[=].display = "Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-66
// * group[=].element[=].display = "Bezgakga qarshi emlash"
// * group[=].element[=].target[+].code = #45861000087106
// * group[=].element[=].target[=].display = "Plasmodium falciparum antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-67
// * group[=].element[=].display = "Qizamiq virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #871765008
// * group[=].element[=].target[=].display = "Measles morbillivirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-68
// * group[=].element[=].display = "melanoma vaktsinasi"
// * group[=].element[=].target[+].code = #1228967001
// * group[=].element[=].target[=].display = "Melanoma antigen (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-69
// * group[=].element[=].display = "meningokokk polisakkarid vaktsinasi (MPSV4)"
// * group[=].element[=].target[+].code = #871873006
// * group[=].element[=].target[=].display = "Neisseria meningitidis serogroup A, C, W135 and Y antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-70
// * group[=].element[=].display = "meningokokkka qarshi konjugat vaktsina C"
// * group[=].element[=].target[+].code = #951000221102
// * group[=].element[=].target[=].display = "Neisseria meningitidis serogroup C capsular polysaccharide conjugated antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-71
// * group[=].element[=].display = "meningokokk polisakkaridli vaktsina (A, C, Y va W-135 guruhlari) difteriya toksoid konjugat vaktsinasi (MCV4P)"
// * group[=].element[=].target[+].code = #1971000221105
// * group[=].element[=].target[=].display = "Neisseria meningitidis serogroup A, C, W135 and Y capsular polysaccharide conjugated antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-72
// * group[=].element[=].display = "meningokokk ACWY vaktsinasi, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #836401009
// * group[=].element[=].target[=].display = "Neisseria meningitidis antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-73
// * group[=].element[=].display = "parotitga qarshi emlash"
// * group[=].element[=].target[+].code = #871737006
// * group[=].element[=].target[=].display = "Mumps orthorubulavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-74
// * group[=].element[=].display = "parainfluenza virusi-3 vaktsinasi"
// * group[=].element[=].target[+].code = #122067001
// * group[=].element[=].target[=].display = "Measurement of Human parainfluenza virus 3 antibody"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-75
// * group[=].element[=].display = "ko'k yo'talga qarshi emlash"
// * group[=].element[=].target[+].code = #871758000
// * group[=].element[=].target[=].display = "Bordetella pertussis antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-76
// * group[=].element[=].display = "vaboga qarshi emlash"
// * group[=].element[=].target[+].code = #871718002
// * group[=].element[=].target[=].display = "Yersinia pestis antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-77
// * group[=].element[=].display = "pnevmokokk polisakkaridga qarshi emlash, 23 valentli"
// * group[=].element[=].target[+].code = #1119220001
// * group[=].element[=].target[=].display = "Streptococcus pneumoniae Danish serotype 1, 2, 3, 4, 5, 6B, 7F, 8, 9N, 9V, 10A, 11A, 12F, 14, 15B, 17F, 18C, 19A, 19F, 20, 22F, 23F, and 33F capsular polysaccharide antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-78
// * group[=].element[=].display = "pnevmokokk konjugat vaktsinasi, 7 valentli"
// * group[=].element[=].target[+].code = #1052328007
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 4, 6B, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-79
// * group[=].element[=].display = "pnevmokokkka qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #836398006
// * group[=].element[=].target[=].display = "Streptococcus pneumoniae antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-80
// * group[=].element[=].display = "Ku isitmasi vaktsinasi"
// * group[=].element[=].target[+].code = #871723002
// * group[=].element[=].target[=].display = "Vaccine product containing only Coxiella burnetii antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-81
// * group[=].element[=].display = "quturganga qarshi emlash, mushak ichiga yuborish uchun OLD CODE"
// * group[=].element[=].target[+].code = #1131000221109
// * group[=].element[=].target[=].display = "Vaccine product containing only inactivated whole Rabies lyssavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-82
// * group[=].element[=].display = "quturishga qarshi emlash, intradermal in'ektsiya uchun"
// * group[=].element[=].target[+].code = #1131000221109
// * group[=].element[=].target[=].display = "Vaccine product containing only inactivated whole Rabies lyssavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-83
// * group[=].element[=].display = "quturishga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #871726005
// * group[=].element[=].target[=].display = "Rabies lyssavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-84
// * group[=].element[=].display = "revmatik isitmaga qarshi emlash"
// * group[=].element[=].target[+].code = #121096003
// * group[=].element[=].target[=].display = "Streptococcus pyogenes antigen"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-85
// * group[=].element[=].display = "Rift vodiysi isitmasi vaktsinasi"
// * group[=].element[=].target[+].code = #709177003
// * group[=].element[=].target[=].display = "Rift valley fever virus Ag"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-86
// * group[=].element[=].display = "quturgan immunoglobulini"
// * group[=].element[=].target[+].code = #422303009
// * group[=].element[=].target[=].display = "Rabies immune globulin"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-87
// * group[=].element[=].display = "rotavirus vaktsinasi, jonli, monovalent"
// * group[=].element[=].target[+].code = #871761004
// * group[=].element[=].target[=].display = "Rotavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-88
// * group[=].element[=].display = "rotavirusga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #836387005
// * group[=].element[=].target[=].display = "Rotavirus antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-89
// * group[=].element[=].display = "rotavirus, jonli, pentavalent vaktsina"
// * group[=].element[=].target[+].code = #871761004
// * group[=].element[=].target[=].display = "Rotavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-90
// * group[=].element[=].display = "rotavirus, jonli, to'rt vaktsina"
// * group[=].element[=].target[+].code = #1081000221109
// * group[=].element[=].target[=].display = "Live attenuated Rotavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-91
// * group[=].element[=].display = "respirator sinsitial virus immunoglobulini, tomir ichiga yuborish"
// * group[=].element[=].target[+].code = #777424002
// * group[=].element[=].target[=].display = "Respiratory syncytial virus immune globulin only product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-92
// * group[=].element[=].display = "respirator sinsitial virus monoklonal antikor (palivizumab), mushak ichiga"
// * group[=].element[=].target[+].code = #777050007
// * group[=].element[=].target[=].display = "Product containing only palivizumab (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-93
// * group[=].element[=].display = "qizilcha virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #871732000
// * group[=].element[=].target[=].display = "Rubella virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-94
// * group[=].element[=].display = "qizilcha va parotit virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #1252703004
// * group[=].element[=].target[=].display = "Measles morbillivirus and Mumps orthorubulavirus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-95
// * group[=].element[=].display = "stafilokokk bakteriofag lizati"
// * group[=].element[=].target[+].code = #3092008
// * group[=].element[=].target[=].display = "Staphylococcus aureus (organism)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-96
// * group[=].element[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (5 l tetanus va 2 l difteriya toksoidi)"
// * group[=].element[=].target[+].code = #2031000221103
// * group[=].element[=].target[=].display = "Clostridium tetani and Corynebacterium diphtheriae toxoids only adult vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-97
// * group[=].element[=].display = "qoqshol va difteriya toksoidlari, adsorbsiyalangan, konservantlarsiz, kattalar uchun (2 Lf tetanus va 2 Lf difteriya toksoidi)"
// * group[=].element[=].target[+].code = #2031000221103
// * group[=].element[=].target[=].display = "Clostridium tetani and Corynebacterium diphtheriae toxoids only adult vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-98
// * group[=].element[=].display = "tetanoz, difteriya toksini va hujayrali ko'kyo'talga qarshi emlash, adsorbsiyalangan"
// * group[=].element[=].target[+].code = #2081000221102
// * group[=].element[=].target[=].display = "Pediatric vaccine product containing only acellular Bordetella pertussis, Clostridium tetani and Corynebacterium diphtheriae toxoids, Haemophilus influenzae type b capsular polysaccharide conjugated, Hepatitis B virus surface antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-99
// * group[=].element[=].display = "tetanus toksoidi, adsorbsiyalangan"
// * group[=].element[=].target[+].code = #2021000221101
// * group[=].element[=].target[=].display = "Vaccine product containing only Clostridium tetani toxoid (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-100
// * group[=].element[=].display = "tetanoz toksoidi, aniqlanmagan"
// * group[=].element[=].target[+].code = #2021000221101
// * group[=].element[=].target[=].display = "Vaccine product containing only Clostridium tetani toxoid (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-101
// * group[=].element[=].display = "Shomil ensefalitiga qarshi emlash (AQShdan tashqari)"
// * group[=].element[=].target[+].code = #871719005
// * group[=].element[=].target[=].display = "Tick-borne encephalitis virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-102
// * group[=].element[=].display = "tetanoz immunoglobulini"
// * group[=].element[=].target[+].code = #117091004
// * group[=].element[=].target[=].display = "Tetanus immune globulin, human, issued (situation)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-103
// * group[=].element[=].display = "tuberkulin teri testi; eski tuberkulin, ko'p teshikli qurilma"
// * group[=].element[=].target[+].code = #424294008
// * group[=].element[=].target[=].display = "Delayed hypersensitivity skin test for tuberculin purified protein derivative (procedure)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-104
// * group[=].element[=].display = "tuberkulin teri testi; tozalangan protein lotin eritmasi, intradermal"
// * group[=].element[=].target[+].code = #424294008
// * group[=].element[=].target[=].display = "Delayed hypersensitivity skin test for tuberculin purified protein derivative (procedure)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-105
// * group[=].element[=].display = "tuberkulin teri testi; tozalangan oqsil hosilasi, ko'p teshikli qurilma"
// * group[=].element[=].target[+].code = #424294008
// * group[=].element[=].target[=].display = "Delayed hypersensitivity skin test for tuberculin purified protein derivative (procedure)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-106
// * group[=].element[=].display = "tuberkulin teri testi; aniqlanmagan formula"
// * group[=].element[=].target[+].code = #424294008
// * group[=].element[=].target[=].display = "Delayed hypersensitivity skin test for tuberculin purified protein derivative (procedure)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-107
// * group[=].element[=].display = "tulyaremiyaga qarshi emlash"
// * group[=].element[=].target[+].code = #871716003
// * group[=].element[=].target[=].display = "Francisella tularensis antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-108
// * group[=].element[=].display = "tifga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "typhoid vaccine"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-109
// * group[=].element[=].display = "tifga qarshi emlash, jonli, og'iz"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-110
// * group[=].element[=].display = "tifoid vaktsina, parenteral, aseton bilan o'ldirilgandan tashqari, quritilgan"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-111
// * group[=].element[=].display = "Tifoga qarshi emlash, parenteral, aseton o'ldirilgan, quritilgan (AQSh harbiylari)"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-112
// * group[=].element[=].display = "Qorin tifiga qarshi emlash, kapsulali polisaxarid Vi"
// * group[=].element[=].target[+].code = #871755002
// * group[=].element[=].target[=].display = "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi capsular polysaccharide Vi antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-113
// * group[=].element[=].display = "Chechakka qarshi emlash (chechakka qarshi vaktsina)"
// * group[=].element[=].target[+].code = #871727001
// * group[=].element[=].target[=].display = "Vaccine product containing only Vaccinia virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-114
// * group[=].element[=].display = "Chechakka qarshi emlash, suyultirilgan"
// * group[=].element[=].target[+].code = #871727001
// * group[=].element[=].target[=].display = "Vaccine product containing only Vaccinia virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-115
// * group[=].element[=].display = "immunoglobulin vaktsinasi"
// * group[=].element[=].target[+].code = #717220006
// * group[=].element[=].target[=].display = "Vaccinia human immune globulin (substance)"
// * group[=].element[=].target[=].relationship = #equivalent





// * group[=].element[+].code = #immun-118
// * group[=].element[=].display = "Venesuela ot ensefaliti, jonli, zaiflashgan"
// * group[=].element[=].target[+].code = #121093006
// * group[=].element[=].target[=].display = "Antigen of Venezuelan equine encephalitis virus (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target



// * group[=].element[+].code = #immun-120
// * group[=].element[=].display = "herpes zosterga qarshi immunoglobulin"
// * group[=].element[=].target[+].code = #777919007
// * group[=].element[=].target[=].display = "Product containing only Varicella-zoster virus antibody (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-121
// * group[=].element[=].display = "zoster immun globulin (yangi tadqiqot preparati)"
// * group[=].element[=].target[+].code = #62294009
// * group[=].element[=].target[=].display = "Product containing Varicella-zoster virus antibody (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-122
// * group[=].element[=].display = "sariq isitmaga qarshi emlash, jonli"
// * group[=].element[=].target[+].code = #836385002
// * group[=].element[=].target[=].display = "Vaccine product containing Yellow fever virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent



// * group[=].element[+].code = #immun-124
// * group[=].element[=].display = "vaktsina berilmagan"
// * group[=].element[=].target[+].code = #1296689002
// * group[=].element[=].target[=].display = "Vaccine product full volume not administered (finding)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-125
// * group[=].element[=].display = "noma'lum vaktsina yoki immun globulin"
// * group[=].element[=].target[+].code = #51116004
// * group[=].element[=].target[=].display = "Passive immunization (procedure)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target



// * group[=].element[+].code = #immun-127
// * group[=].element[=].display = "pnevmokokk konjugat vaktsinasi, 13 valentli"
// * group[=].element[=].target[+].code = #51451000087105
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 1, 3, 4, 5, 6A, 6B, 7F, 9V, 14, 18C, 19A, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-128
// * group[=].element[=].display = "Mushak ichiga yuborish uchun yapon ensefalitiga qarshi emlash"
// * group[=].element[=].target[+].code = #871724008
// * group[=].element[=].target[=].display = "Vaccine product containing only Japanese encephalitis virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-129
// * group[=].element[=].display = "HPV, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #836379009
// * group[=].element[=].target[=].display = "Human papillomavirus antigen-containing vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-132
// * group[=].element[=].display = "Tifoga qarshi emlashning tarixiy rekordi"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "Salmonella enterica subspecies enterica serovar Typhi antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-133
// * group[=].element[=].display = "Difteriya va qoqshol, hujayrasiz ko'kyo'tal, poliovirus, Haemophilus influenzae b konjugati va gepatit B (rekombinant) ga qarshi emlashning tarixiy rekordi."
// * group[=].element[=].target[+].code = #871895005
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus and Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-134
// * group[=].element[=].display = "Eng yangi gripp-H1N1-09, barcha formulalar"
// * group[=].element[=].target[+].code = #836377006
// * group[=].element[=].target[=].display = "Vaccine product containing influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-135
// * group[=].element[=].display = "Eng yangi gripp-H1N1-09, burundan foydalanish uchun jonli virus"
// * group[=].element[=].target[+].code = #871772009
// * group[=].element[=].target[=].display = "Influenza A virus subtype H1N1 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-136
// * group[=].element[=].display = "Eng yangi gripp-H1N1-09, konservantlarsiz, in'ektsiya"
// * group[=].element[=].target[+].code = #871772009
// * group[=].element[=].target[=].display = "Influenza A virus subtype H1N1 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-137
// * group[=].element[=].display = "Yangi gripp-H1N1-09, in'ektsiya uchun"
// * group[=].element[=].target[+].code = #871772009
// * group[=].element[=].target[=].display = "Influenza A virus subtype H1N1 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-138
// * group[=].element[=].display = "tetanoz va difteriya toksoidlari, adsorbsiyalanmagan, kattalar uchun foydalanish uchun"
// * group[=].element[=].target[+].code = #2031000221103
// * group[=].element[=].target[=].display = "Clostridium tetani and Corynebacterium diphtheriae toxoids only adult vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-139
// * group[=].element[=].display = "Td (kattalar uchun) aniqlanmagan formula"
// * group[=].element[=].target[+].code = #871826000
// * group[=].element[=].target[=].display = "Vaccine product containing only Clostridium tetani and Corynebacterium diphtheriae antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-140
// * group[=].element[=].display = "Gripp, split virus, trivalent, in'ektsiya, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-141
// * group[=].element[=].display = "Yapon ensefalitiga qarshi emlash, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #871724008
// * group[=].element[=].target[=].display = "Vaccine product containing only Japanese encephalitis virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-142
// * group[=].element[=].display = "Gripp, split virus, trivalent, in'ektsiya, konservantni o'z ichiga oladi"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-143
// * group[=].element[=].display = "tetanus toksoidi, adsorbsiyalanmagan"
// * group[=].element[=].target[+].code = #871742003
// * group[=].element[=].target[=].display = "Vaccine product containing only Clostridium tetani antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-144
// * group[=].element[=].display = "Adenovirus, 4-toifa va 7-toifa, jonli, og'zaki"
// * group[=].element[=].target[+].code = #871722007
// * group[=].element[=].target[=].display = "Vaccine product containing only Adenovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-145
// * group[=].element[=].display = "mavsumiy gripp, intradermal, konservantlarsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-146
// * group[=].element[=].display = "respirator sinsitial virusga monoklonal antikor (motavizumab), mushak ichiga"
// * group[=].element[=].target[+].code = #386900007
// * group[=].element[=].target[=].display = "Palivizumab (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-147
// * group[=].element[=].display = "Difteriya va qoqshol toksoidlari va adsorbsiyalangan hujayrali ko'k yo'tal, inaktivatsiyalangan poliovirus, Haemophilus influenzae b konjugati (meningokokk oqsil konjugati) va gepatit B vaktsinasi (rekombinant)."
// * group[=].element[=].target[+].code = #871895005
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus and Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-148
// * group[=].element[=].display = "Meningokokk, MCV4, aniqlanmagan konjugat formulasi (A, C, Y va W-135 guruhlari)"
// * group[=].element[=].target[+].code = #871873006
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup A, C, W135 and Y antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-149
// * group[=].element[=].display = "Meningokokk konjugat vaktsinasi C va Y guruhlari va tetanoz konjugati vaktsina b"
// * group[=].element[=].target[+].code = #1119351006
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b and Neisseria meningitidis serogroup C and Y antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-150
// * group[=].element[=].display = "Gripp, jonli, to'rt valentli, intranazal"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-151
// * group[=].element[=].display = "Gripp, split virus, tetravalent, in'ektsion, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-152
// * group[=].element[=].display = "Pnevmokokk konjugati, aniqlanmagan"
// * group[=].element[=].target[+].code = #981000221107
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-153
// * group[=].element[=].display = "Gripp, Madin Darby Canin buyrak, subunit, trivalent, in'ektsiya, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-154
// * group[=].element[=].display = "Gepatit A immunoglobulin"
// * group[=].element[=].target[+].code = #776947000
// * group[=].element[=].target[=].display = "Normal human immunoglobulin only product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-155
// * group[=].element[=].display = "Gripp, rekombinant, trivalent, in'ektsion, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-156
// * group[=].element[=].display = "Rho (D) Immunoglobulin - tomir ichiga yoki mushak ichiga"
// * group[=].element[=].target[+].code = #769102002
// * group[=].element[=].target[=].display = "Human anti-D immunoglobulin (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-157
// * group[=].element[=].display = "Rho(D) immunoglobulin - IM"
// * group[=].element[=].target[+].code = #1222886001
// * group[=].element[=].target[=].display = "Intramuscular injection of human anti-D immunoglobulin (procedure)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-158
// * group[=].element[=].display = "Gripp, split virus, tetravalent, in'ektsiya, konservantni o'z ichiga oladi"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-159
// * group[=].element[=].display = "Rho(D) Aniqlanmagan formula"
// * group[=].element[=].target[+].code = #769102002
// * group[=].element[=].target[=].display = "Human anti-D immunoglobulin (substance)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-160
// * group[=].element[=].display = "A grippi monovalent (H5N1), adjuvant, milliy zahira 2013 yil"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-161
// * group[=].element[=].display = "AS03 yordamchi"
// * group[=].element[=].target[+].code = #427067006
// * group[=].element[=].target[=].display = "Immunologic adjuvant (substance)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-162
// * group[=].element[=].display = "Gripp, in'ektsiya, to'rt valentli, konservantlarsiz, pediatrik"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-163
// * group[=].element[=].display = "meningokokk B vaktsinasi, to'liq rekombinant"
// * group[=].element[=].target[+].code = #1981000221108
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup B antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-164
// * group[=].element[=].display = "meningokokk B vaktsinasi, rekombinant, OMV, yordamchi"
// * group[=].element[=].target[+].code = #1981000221108
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup B antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-165
// * group[=].element[=].display = "meningokokk B, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #1981000221108
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup B antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-166
// * group[=].element[=].display = "Odam papillomavirusiga qarshi emlash, 9 valentli"
// * group[=].element[=].target[+].code = #836379009
// * group[=].element[=].target[=].display = "Vaccine product containing human papillomavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-167
// * group[=].element[=].display = "gripp, intradermal, tetravalent, konservantsiz, in'ektsiya"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-168
// * group[=].element[=].display = "noma'lum tarkibli va noma'lum serogruplarning meningokokk vaktsinasi"
// * group[=].element[=].target[+].code = #921000221108
// * group[=].element[=].target[=].display = "Neisseria meningitidis antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-169
// * group[=].element[=].display = "Gripp, adjuvant, inaktiv, trivalent, in'ektsiya, konservantlarsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-170
// * group[=].element[=].display = "Gepatit A, jonli zaiflashgan-IM"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-171
// * group[=].element[=].display = "difteriya, qoqshol, hujayrasiz ko'kyo'talga qarshi vaktsina, Haemophilus influenzae turi b konjugati va poliovirus vaktsinasi, inaktivatsiyalangan (DTaP-Hib-IPV), AQShdan tashqari"
// * group[=].element[=].target[+].code = #871887006
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-172
// * group[=].element[=].display = "Gripp, Madin Darby Canin buyrak, subunit, to'rt valentli, in'ektsiya, konservantlarsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-173
// * group[=].element[=].display = "vabo, WC-rBS"
// * group[=].element[=].target[+].code = #991000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-174
// * group[=].element[=].display = "vabo, BivWC"
// * group[=].element[=].target[+].code = #991000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-175
// * group[=].element[=].display = "vabo, jonli zaiflashgan"
// * group[=].element[=].target[+].code = #991000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Vibrio cholerae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-176
// * group[=].element[=].display = "Inson diploid hujayra madaniyatidan odam quturgan vaktsinasi"
// * group[=].element[=].target[+].code = #871726005
// * group[=].element[=].target[=].display = "Vaccine product containing only Rabies lyssavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-177
// * group[=].element[=].display = "Tovuq fibroblast madaniyatidan odam quturishga qarshi emlash"
// * group[=].element[=].target[+].code = #871726005
// * group[=].element[=].target[=].display = "Vaccine product containing only Rabies lyssavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-178
// * group[=].element[=].display = "Pnevmokokk konjugat vaktsinasi, 10 valentli"
// * group[=].element[=].target[+].code = #1052330009
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 1, 4, 5, 6B, 7F, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-179
// * group[=].element[=].display = "AQShdan tashqari poliomielitga qarshi ikki valentli og'iz vaktsinasi (1 va 3 turdagi)"
// * group[=].element[=].target[+].code = #871739009
// * group[=].element[=].target[=].display = "Vaccine product containing only Human poliovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-180
// * group[=].element[=].display = "AQShdan tashqari bir valentli og'iz poliomielitga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #871739009
// * group[=].element[=].target[=].display = "Vaccine product containing only Human poliovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-181
// * group[=].element[=].display = "tetanoz immunoglobulini"
// * group[=].element[=].target[+].code = #777723009
// * group[=].element[=].target[=].display = "Product containing only tetanus antitoxin (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-182
// * group[=].element[=].display = "kuydirgi immunoglobulini"
// * group[=].element[=].target[+].code = #120876003
// * group[=].element[=].target[=].display = "Antibody to Bacillus anthracis (substance)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-183
// * group[=].element[=].display = "Og'iz orqali poliomielitga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #871739009
// * group[=].element[=].target[=].display = "Vaccine product containing only Human poliovirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-184
// * group[=].element[=].display = "Sariq isitmaga qarshi emlash, jonli - vaktsina etishmovchiligi bo'lgan taqdirda muqobil formula"
// * group[=].element[=].target[+].code = #871717007
// * group[=].element[=].target[=].display = "Vaccine product containing only Yellow fever virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-185
// * group[=].element[=].display = "Sariq isitmaga qarshi emlash, aniqlanmagan"
// * group[=].element[=].target[+].code = #871717007
// * group[=].element[=].target[=].display = "Vaccine product containing only Yellow fever virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-186
// * group[=].element[=].display = "Gripp, rekombinant, tetravalent, in'ektsiya, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-187
// * group[=].element[=].display = "Gripp, Madin Darbi Canin buyrak, subunit, tetravalent, in'ektsiya, konservantni o'z ichiga oladi"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-188
// * group[=].element[=].display = "Zoster vaktsinasi rekombinanti"
// * group[=].element[=].target[+].code = #1156183006
// * group[=].element[=].target[=].display = "Human alphaherpesvirus 3 recombinant surface glycoprotein E antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-189
// * group[=].element[=].display = "zoster vaktsinasi, aniqlanmagan"
// * group[=].element[=].target[+].code = #871919004
// * group[=].element[=].target[=].display = "Human alphaherpesvirus 3 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-190
// * group[=].element[=].display = "Gepatit B vaktsinasi (rekombinant), CpG adjuvant"
// * group[=].element[=].target[+].code = #871822003
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-191
// * group[=].element[=].display = "Tifoga qarshi konjugat vaktsina (AQShdan tashqari)"
// * group[=].element[=].target[+].code = #961000221100
// * group[=].element[=].target[=].display = "Vaccine product containing only Salmonella enterica subspecies enterica serovar Typhi antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-192
// * group[=].element[=].display = "meningokokk polisakkarid vaktsinasi A (AQShdan tashqari)"
// * group[=].element[=].target[+].code = #1252690003
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup A antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-193
// * group[=].element[=].display = "meningokokk polisakkarid vaktsinasi AC (AQShdan tashqari)"
// * group[=].element[=].target[+].code = #871871008
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup A and C antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-194
// * group[=].element[=].display = "gepatit A va gepatit B vaktsinasi, bolalar/o'smirlar (AQShdan tashqari)"
// * group[=].element[=].target[+].code = #871803007
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis A and Hepatitis B virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-195
// * group[=].element[=].display = "gripp, janubiy yarim shar, aniqlanmagan"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-196
// * group[=].element[=].display = "Difteriya, tetanoz, poliomielit adsorbsiyalangan"
// * group[=].element[=].target[+].code = #871837004
// * group[=].element[=].target[=].display = "Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-197
// * group[=].element[=].display = "Qoqshol va difteriya toksoidlari, adsorbsiyalangan, saqlanmagan, kattalar uchun foydalanish, Lf aniqlanmagan"
// * group[=].element[=].target[+].code = #871827009
// * group[=].element[=].target[=].display = "Vaccine product containing only Clostridium tetani and low dose Corynebacterium diphtheriae antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-198
// * group[=].element[=].display = "Gripp, yuqori dozali, split virus, tetravalent, in'ektsiya, saqlanmagan"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-199
// * group[=].element[=].display = "gripp, mavsumiy, janubiy yarim shar, tetravalent, bolalar dozasi 0,25 ml, konservantlarsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-200
// * group[=].element[=].display = "gripp, mavsumiy, janubiy yarim shar, tetravalent, dozasi 0,5 ml, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-201
// * group[=].element[=].display = "gripp, mavsumiy, janubiy yarim shar, tetravalent, dozasi 0,5 ml, konservant bilan"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-202
// * group[=].element[=].display = "difteriya, ko'k yo'tal, qoqshol, gepatit B, gemofil influenzae turi b, (besh valentli)"
// * group[=].element[=].target[+].code = #871886002
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-203
// * group[=].element[=].display = "Meningokokk polisakkaridlari (A, C, Y, W-135 guruhlari) tetanoz konjugati vaktsinasi 0,5 ml dozada, konservantsiz"
// * group[=].element[=].target[+].code = #871873006
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup A, C, W135 and Y antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-204
// * group[=].element[=].display = "Gripp, adjuvantlangan, inaktivatsiyalangan, tetravalent, in'ektsion, konservantsiz"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-205
// * group[=].element[=].display = "Maymunchechakka qarshi emlash, jonli zaiflashtirilgan, konservantlarsiz, teri ostiga yoki teri ichiga yuborish."
// * group[=].element[=].target[+].code = #1293025000
// * group[=].element[=].target[=].display = "Vaccine product containing only modified Vaccinia virus Ankara antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-206
// * group[=].element[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 100 mkg/0,5 ml yoki 50 mkg/0,25 ml doza"
// * group[=].element[=].target[+].code = #1119349007
// * group[=].element[=].target[=].display = "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-207
// * group[=].element[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, mRNK, boshoq oqsili, LNP, konservantlarsiz, 30 mkg/0,3 ml doza"
// * group[=].element[=].target[+].code = #1119349007
// * group[=].element[=].target[=].display = "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-208
// * group[=].element[=].display = "SARS-COV-2 (COVID-19) vaksinasi, RUKSAT BERILMAGAN"
// * group[=].element[=].target[+].code = #1119305005
// * group[=].element[=].target[=].display = "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-209
// * group[=].element[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoqli oqsil-ChAdOx1, konservantsiz, 0,5 ml"
// * group[=].element[=].target[+].code = #1119305005
// * group[=].element[=].target[=].display = "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-210
// * group[=].element[=].display = "SARS-COV-2 (COVID-19) vaktsinasi, takrorlanmaydigan vektor, rekombinant boshoq oqsili-Ad26, konservantsiz, 0,5 ml"
// * group[=].element[=].target[+].code = #1119305005
// * group[=].element[=].target[=].display = "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-211
// * group[=].element[=].display = "Ebola vaktsinasi Zaire, jonli, rekombinant, 1 ml doza"
// * group[=].element[=].target[+].code = #45891000087103
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Zaire ebolavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-212
// * group[=].element[=].display = "Ebola, aniqlanmagan"
// * group[=].element[=].target[+].code = #871721000
// * group[=].element[=].target[=].display = "Vaccine product containing only Ebolavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-213
// * group[=].element[=].display = "SARS-CoV-2 (COVID-19) ga qarshi vaksina, subbirlikli, rekombinant spike-oqsil nanozarrachali + Matrix-M1 ad’yuvantli, konservantsiz, har doza 0,5 ml"
// * group[=].element[=].target[+].code = #1162643001
// * group[=].element[=].target[=].display = "SARS-CoV-2 recombinant spike protein antigen vaccine"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-214
// * group[=].element[=].display = "Agrippal"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Influenza virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-215
// * group[=].element[=].display = "Avaxim"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-216
// * group[=].element[=].display = "BCG"
// * group[=].element[=].target[+].code = #1861000221106
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-218
// * group[=].element[=].display = "Comvax"
// * group[=].element[=].target[+].code = #871806004
// * group[=].element[=].target[=].display = "Haemophilus influenzae type b conjugate and Hepatitis B vaccine"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-219
// * group[=].element[=].display = "Uch komponentli vaksina (difteriya, qoqshol, ko‘kyo‘talga qarshi)"
// * group[=].element[=].target[+].code = #871875004
// * group[=].element[=].target[=].display = "Diphtheria, Tetanus, Pertussis vaccine"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-220
// * group[=].element[=].display = "Difteriya, qoqshol va atsellyulyar ko‘kyo‘talga qarshi vaksin"
// * group[=].element[=].target[+].code = #871876003
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-221
// * group[=].element[=].display = "Gepatit B ga qarshi vaksina"
// * group[=].element[=].target[+].code = #871925000
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis B virus surface protein antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-222
// * group[=].element[=].display = "Inaktivatsiyalangan grippga qarshi vaksina"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-223
// * group[=].element[=].display = "Fluvax"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Influenza virus vaccine, inactivated"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-224
// * group[=].element[=].display = "Fluvirin"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-225
// * group[=].element[=].display = "Fluvax vaksinasining bolalar uchun shakli"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-226
// * group[=].element[=].display = "Difteriyaga qarshi vaksina"
// * group[=].element[=].target[+].code = #871729003
// * group[=].element[=].target[=].display = "Corynebacterium diphtheriae antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-227
// * group[=].element[=].display = "Grippga qarshi vaksina"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Influenza virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-228
// * group[=].element[=].display = "Gepatit B ga qarshi vaksina"
// * group[=].element[=].target[+].code = #871822003
// * group[=].element[=].target[=].display = "Hepatitis B virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-229
// * group[=].element[=].display = "Haemophilus influenzae b turi ga qarshi vaksina"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-230
// * group[=].element[=].display = "Gepatit A ga qarshi vaksina"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Hepatitis A virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-231
// * group[=].element[=].display = "Yapon ensefalitiga qarshi vaksina"
// * group[=].element[=].target[+].code = #871724008
// * group[=].element[=].target[=].display = "Japanese encephalitis virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-232
// * group[=].element[=].display = "Qizamiqqa qarshi vaksina"
// * group[=].element[=].target[+].code = #871765008
// * group[=].element[=].target[=].display = "Measles morbillivirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-233
// * group[=].element[=].display = "Meningokokk C seroguruhiga qarshi vaksina"
// * group[=].element[=].target[+].code = #871866001
// * group[=].element[=].target[=].display = "Neisseria meningitidis serogroup C antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-234
// * group[=].element[=].display = "Epidemik parotitga qarshi vaksina"
// * group[=].element[=].target[+].code = #871737006
// * group[=].element[=].target[=].display = "Mumps orthorubulavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-235
// * group[=].element[=].display = "Pnevmokokkga qarshi vaksina"
// * group[=].element[=].target[+].code = #981000221107
// * group[=].element[=].target[=].display = "Streptococcus pneumoniae antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-236
// * group[=].element[=].display = "Poliomiyelit"
// * group[=].element[=].target[+].code = #871739009
// * group[=].element[=].target[=].display = "Human poliovirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-237
// * group[=].element[=].display = "Rotavirus"
// * group[=].element[=].target[+].code = #871761004
// * group[=].element[=].target[=].display = "Rotavirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-238
// * group[=].element[=].display = "Qizilcha"
// * group[=].element[=].target[+].code = #871732000
// * group[=].element[=].target[=].display = "Rubella virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-239
// * group[=].element[=].display = "Qoqshol"
// * group[=].element[=].target[+].code = #871742003
// * group[=].element[=].target[=].display = "Clostridium tetani antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-240
// * group[=].element[=].display = "Suvchechak"
// * group[=].element[=].target[+].code = #871919004
// * group[=].element[=].target[=].display = "Human alphaherpesvirus 3 antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-241
// * group[=].element[=].display = "Twinrix Junior"
// * group[=].element[=].target[+].code = #871803007
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis A and Hepatitis B virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-242
// * group[=].element[=].display = "Vakta Ped/Adol"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-243
// * group[=].element[=].display = "Havrix Junior"
// * group[=].element[=].target[+].code = #871751006
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-244
// * group[=].element[=].display = "HibTITER"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-245
// * group[=].element[=].display = "HBV"
// * group[=].element[=].target[+].code = #871822003
// * group[=].element[=].target[=].display = "Hepatitis B virus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-246
// * group[=].element[=].display = "HBVAX II"
// * group[=].element[=].target[+].code = #871822003
// * group[=].element[=].target[=].display = "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-247
// * group[=].element[=].display = "Hiberix"
// * group[=].element[=].target[+].code = #2041000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b capsular polysaccharide antigen conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-248
// * group[=].element[=].display = "Infanrix Hexa (olti komponentli vaktsina: difteriya, ko'kyo'tal, tetanoz, poliomielit, Hib, gepatit B)"
// * group[=].element[=].target[+].code = #871895005
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and Hepatitis B virus and Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target



// * group[=].element[+].code = #immun-250
// * group[=].element[=].display = "Infanrix Penta (beshlik: difteriya, ko'kyo'tal, qoqshol, poliomielit, Hib)"
// * group[=].element[=].target[+].code = #871888001
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and inactivated whole Human poliovirus antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-251
// * group[=].element[=].display = "Infanrix (odatda uch komponentli vaktsina: difteriya, ko'kyo'tal, qoqshol)"
// * group[=].element[=].target[+].code = #871876003
// * group[=].element[=].target[=].display = "Acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-252
// * group[=].element[=].display = "Infanrix hepB (to'rtta: difteriya, ko'kyo'tal, qoqshol, gepatit B)"
// * group[=].element[=].target[+].code = #1156879008
// * group[=].element[=].target[=].display = "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Hepatitis B virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-253
// * group[=].element[=].display = "Influvac (inaktivlangan grippga qarshi emlash)"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target



// * group[=].element[+].code = #immun-255
// * group[=].element[=].display = "JE-VAX (Yapon ensefalitiga qarshi emlash)"
// * group[=].element[=].target[+].code = #871724008
// * group[=].element[=].target[=].display = "Vaccine product containing only Japanese encephalitis virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-256
// * group[=].element[=].display = "Menjugat (meningokokk C guruhidan himoya qiluvchi meningokokk konjugatli vaktsina)"
// * group[=].element[=].target[+].code = #871866001
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup C antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-257
// * group[=].element[=].display = "Meningitec (A, C, W135, Y seroguruhlaridan himoya qiluvchi meningokokk konjugatli vaktsina)"
// * group[=].element[=].target[+].code = #871866001
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup C antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-258
// * group[=].element[=].display = "Menomen (meningokokk kasalligiga qarshi polisaxaridli emlash, A va C seroguruhlari)"
// * group[=].element[=].target[+].code = #871871008
// * group[=].element[=].target[=].display = "Neisseria meningitidis serogroup A and C antigens only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-259
// * group[=].element[=].display = "MencevaxACWY (meningokokk polisakkaridiga qarshi vaktsinalar A, C, W135 va Y seroguruhlari)"
// * group[=].element[=].target[+].code = #871873006
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup A, C, W135 and Y antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-260
// * group[=].element[=].display = "MMR (qizamiq, parotit va qizilchaga qarshi emlash)"
// * group[=].element[=].target[+].code = #871831003
// * group[=].element[=].target[=].display = "MMR (measles and mumps and rubella) vaccine"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-261
// * group[=].element[=].display = "M-M-RII (MMR vaktsinasining brend nomi, M-M-RII kabi)"
// * group[=].element[=].target[+].code = #2241000221103
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-262
// * group[=].element[=].display = "Priorix (GSK tomonidan ishlab chiqarilgan MMR vaktsinasi)"
// * group[=].element[=].target[+].code = #2241000221103
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Measles morbillivirus and Mumps orthorubulavirus and Rubella virus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-263
// * group[=].element[=].display = "Menitorix (konjugat meningokokk-irsiy vaktsina, ehtimol Menitorix - Hib va ​​meningokokkka qarshi)"
// * group[=].element[=].target[+].code = #836500008
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b and Neisseria meningitidis serogroup C antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-264
// * group[=].element[=].display = "NeisVac-C (meningokokk seroguruhi C ga qarshi konjugat vaktsina)"
// * group[=].element[=].target[+].code = #871866001
// * group[=].element[=].target[=].display = "Vaccine product containing only Neisseria meningitidis serogroup C antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-265
// * group[=].element[=].display = "IPV/Poliomielit (poliomielitga qarshi emlash)"
// * group[=].element[=].target[+].code = #871740006
// * group[=].element[=].target[=].display = "Inactivated whole Human poliovirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-266
// * group[=].element[=].display = "Ko'k yo'tal (ko'k yo'talga qarshi emlash)"
// * group[=].element[=].target[+].code = #871758000
// * group[=].element[=].target[=].display = "Bordetella pertussis antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-267
// * group[=].element[=].display = "Panvax (vaksina nomi - ehtimol kombinatsiya, aniq ma'lumotlar topilmadi)"
// * group[=].element[=].target[+].code = #871772009
// * group[=].element[=].target[=].display = "Vaccine product containing only Influenza A virus subtype H1N1 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-268
// * group[=].element[=].display = "Pediacel (beshlik vaktsina: difteriya, ko'kyo'tal, tetanoz, poliomielit, Hib)"
// * group[=].element[=].target[+].code = #871888001
// * group[=].element[=].target[=].display = "Vaccine product containing only acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Haemophilus influenzae type b and inactivated whole Human poliovirus antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-269
// * group[=].element[=].display = "Polyacel (poliomielitga qarshi emlash; ehtimol IPV ga o'xshaydi)"
// * group[=].element[=].target[+].code = #871740006
// * group[=].element[=].target[=].display = "Inactivated whole Human poliovirus antigen only vaccine product"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-270
// * group[=].element[=].display = "Pneumovax (pnevmokokka qarshi polisaxaridli vaktsina)"
// * group[=].element[=].target[+].code = #981000221107
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-271
// * group[=].element[=].display = "ProHIBit (Haemophilus influenzae turi b - Hibga qarshi vaktsina)"
// * group[=].element[=].target[+].code = #871764007
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-272
// * group[=].element[=].display = "Proquad (qizamiq, parotit, qizilcha va suvchechakka qarshi to'rtta vaktsina)"
// * group[=].element[=].target[+].code = #2251000221101
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Measles morbillivirus and Mumps orthorubulavirus and Rubella virus and Human alphaherpesvirus 3 antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-273
// * group[=].element[=].display = "PedvaxHib (Haemophilus influenzae b turiga qarshi konjugat vaktsina)"
// * group[=].element[=].target[+].code = #871764007
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-274
// * group[=].element[=].display = "AktHIB (Hibga qarshi boshqa vaktsina)"
// * group[=].element[=].target[+].code = #871764007
// * group[=].element[=].target[=].display = "Vaccine product containing only Haemophilus influenzae type b antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-275
// * group[=].element[=].display = "Prevenar7 (pnevmokokk konjugatli vaktsina, 7 valentli)"
// * group[=].element[=].target[+].code = #1052328007
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 4, 6B, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-276
// * group[=].element[=].display = "Prevenar13 (pnevmokokk konjugatli vaktsina, 13 valentli)"
// * group[=].element[=].target[+].code = #51451000087105
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 1, 3, 4, 5, 6A, 6B, 7F, 9V, 14, 18C, 19A, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-277
// * group[=].element[=].display = "Priorix-Tetra (GSK dan to'rtta MMR + suvchechak vaktsinasi)"
// * group[=].element[=].target[+].code = #2251000221101
// * group[=].element[=].target[=].display = "Vaccine product containing only live attenuated Measles morbillivirus and Mumps orthorubulavirus and Rubella virus and Human alphaherpesvirus 3 antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-279
// * group[=].element[=].display = "Rotarix (rotavirusga qarshi og'iz vaktsinasi, monovalent vaktsina)"
// * group[=].element[=].target[+].code = #871761004
// * group[=].element[=].target[=].display = "Vaccine product containing only Rotavirus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-280
// * group[=].element[=].display = "RotaTeq (rotavirusga qarshi og'iz vaktsinasi, besh valentli)"
// * group[=].element[=].target[+].code = #1290764006
// * group[=].element[=].target[=].display = "Vaccine product containing only Human-bovine reassortant Rotavirus G1, G2, G3, G4, and P1A[8] antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-281
// * group[=].element[=].display = "Synflorix (pnevmokokkka qarshi konjugat vaktsina, 10 valentli)"
// * group[=].element[=].target[+].code = #1052330009
// * group[=].element[=].target[=].display = "Vaccine product containing only Streptococcus pneumoniae Danish serotype 1, 4, 5, 6B, 7F, 9V, 14, 18C, 19F, and 23F capsular polysaccharide antigens conjugated (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-282
// * group[=].element[=].display = "Ripasel (uchlik difteriya, ko'kyo'tal, qoqshol)"
// * group[=].element[=].target[+].code = #871876003
// * group[=].element[=].target[=].display = "Vaccine product containing only acellular Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-283
// * group[=].element[=].display = "Vaxigrip (inaktivlangan split grippga qarshi emlash)"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-284
// * group[=].element[=].display = "Vaxigrip Junior (grippga qarshi emlashning bolalar versiyasi)"
// * group[=].element[=].target[+].code = #1181000221105
// * group[=].element[=].target[=].display = "Vaccine product containing only influenza virus antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #source-is-narrower-than-target

// * group[=].element[+].code = #immun-285
// * group[=].element[=].display = "Varilrix (jonli zaiflashtirilgan suvchechak vaktsinasi, Oka shtammi)"
// * group[=].element[=].target[+].code = #871919004
// * group[=].element[=].target[=].display = "Vaccine product containing only Human alphaherpesvirus 3 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-286
// * group[=].element[=].display = "Varivax (jonli suvchechak vaktsinasi, o'xshash - xuddi shu Oka shtammiga asoslangan)"
// * group[=].element[=].target[+].code = #871919004
// * group[=].element[=].target[=].display = "Vaccine product containing only Human alphaherpesvirus 3 antigen (medicinal product)"
// * group[=].element[=].target[=].relationship = #equivalent


// //CVX codes
// * group[+].source = Canonical(CVXVaccineTranslationsCS)
// * group[=].target = $cvx
// * targetScopeCanonical = $cvx-vs

// * group[=].element[+].code = #immun-116
// * group[=].element[=].display = "varikella-zoster vaktsinasi"
// * group[=].element[=].target[+].code = #21
// * group[=].element[=].target[=].display = "varicella"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-117
// * group[=].element[=].display = "Venesuela ot ensefaliti, faolsizlangan"
// * group[=].element[=].target[+].code = #81
// * group[=].element[=].target[=].display = "VEE, inactivated"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-119
// * group[=].element[=].display = "Venesuela ot ensefalitiga qarshi emlash, aniqlanmagan formulasi"
// * group[=].element[=].target[+].code = #92
// * group[=].element[=].target[=].display = "VEE, unspecified formulation"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-126
// * group[=].element[=].display = "zaxiralangan - foydalanmang"
// * group[=].element[=].target[+].code = #99
// * group[=].element[=].target[=].display = "RESERVED - do not use"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-130
// * group[=].element[=].display = "meningokokk oligosakkarid (A, C, Y va W-135 guruhlari) difteriya toksoid konjugat vaktsinasi (MCV4O)"
// * group[=].element[=].target[+].code = #136
// * group[=].element[=].target[=].display = "Meningococcal MCV4O"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-35
// * group[=].element[=].display = "gepatit C vaktsinasi"
// * group[=].element[=].target[+].code = #58
// * group[=].element[=].target[=].display = "Hep C"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-36
// * group[=].element[=].display = "gepatit E vaktsinasi"
// * group[=].element[=].target[+].code = #59
// * group[=].element[=].target[=].display = "Hep E"
// * group[=].element[=].target[=].relationship = #equivalent

// * group[=].element[+].code = #immun-44
// * group[=].element[=].display = "inson immunitet tanqisligi virusiga qarshi emlash"
// * group[=].element[=].target[+].code = #61
// * group[=].element[=].target[=].display = "HIV"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-123
// * group[=].element[=].display = "zoster vaktsinasi, jonli"
// * group[=].element[=].target[+].code = #121
// * group[=].element[=].target[=].display = "zoster live"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-131
// * group[=].element[=].display = "Gripp, yuqori dozali, split virus, trivalent, in'ektsion, konservantsiz"
// * group[=].element[=].target[+].code = #135
// * group[=].element[=].target[=].display = "Influenza, high dose seasonal"
// * group[=].element[=].target[=].relationship = #equivalent


// * group[=].element[+].code = #immun-254
// * group[=].element[=].display = "IPOL (poliomielitga qarshi emlash, poliomielitga qarshi vaktsinalar)"
// * group[=].element[=].target[+].code = #10
// * group[=].element[=].target[=].display = "poliovirus vaccine, inactivated"
// * group[=].element[=].target[=].relationship = #equivalent

