Instance: countries-mvd-to-iso3166-alpha2-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Countries Digital MVD to ISO 3166-1 Alpha-2 Mapping"
Description: "ConceptMap for translating Uzbekistan MVD numeric codes to ISO 3166-1 alpha-2 (2-letter) country codes."
* name = "CountriesMVDtoISO3166Alpha2CM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/countries-mvd-to-iso3166-alpha2-cm"
* purpose = "To facilitate interoperability between systems using MVD numeric country codes and standard ISO 3166-1 alpha-2 codes."
* status = #active
* experimental = false
* sourceScopeCanonical = Canonical(CountriesDigitalMVDVS)
* targetScopeUri = "urn:iso:std:iso:3166"
* group.source = Canonical(CountriesDigitalMVDCS)
* group.target = $iso-3166

* group.element[+].code = #0
* group.element[=].display = "AVSTRIYA"
* group.element[=].target.code = #AT
* group.element[=].target.display = "Austria"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #1
* group.element[=].display = "A'ZERBAYJAN"
* group.element[=].target.code = #AZ
* group.element[=].target.display = "Azerbaijan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #2
* group.element[=].display = "JAZAIR"
* group.element[=].target.code = #DZ
* group.element[=].target.display = "Algeria"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #3
* group.element[=].display = "AMERIKALI SAMOA"
* group.element[=].target.code = #AS
* group.element[=].target.display = "American Samoa"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #5
* group.element[=].display = "ANTARKTIKA"
* group.element[=].target.code = #AQ
* group.element[=].target.display = "Antarctica"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #6
* group.element[=].display = "ANTIGUA HA'M BARBUDA"
* group.element[=].target.code = #AG
* group.element[=].target.display = "Antigua and Barbuda"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #8
* group.element[=].display = "MISR"
* group.element[=].target.code = #EG
* group.element[=].target.display = "Egypt"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #9
* group.element[=].display = "ARGENTINA"
* group.element[=].target.code = #AR
* group.element[=].target.display = "Argentina"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #10
* group.element[=].display = "BARBADOS"
* group.element[=].target.code = #BB
* group.element[=].target.display = "Barbados"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #11
* group.element[=].display = "BELIZ"
* group.element[=].target.code = #BZ
* group.element[=].target.display = "Belize"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #12
* group.element[=].display = "BERMUD ATAWLARI"
* group.element[=].target.code = #BM
* group.element[=].target.display = "Bermuda"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #13
* group.element[=].display = "BOSNIYA HA'M GERSEGOVINA"
* group.element[=].target.code = #BA
* group.element[=].target.display = "Bosnia and Herzegovina"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #15
* group.element[=].display = "BRITANIYA VIRGINIYA ATAWLARI"
* group.element[=].target.code = #VG
* group.element[=].target.display = "Virgin Islands, British"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #16
* group.element[=].display = "BRUNEY-DORUSSALOM"
* group.element[=].target.code = #BN
* group.element[=].target.display = "Brunei Darussalam"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #17
* group.element[=].display = "BURKINA-FASO"
* group.element[=].target.code = #BF
* group.element[=].target.display = "Burkina Faso"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #18
* group.element[=].display = "LYUKSEMBURG"
* group.element[=].target.code = #LU
* group.element[=].target.display = "Luxembourg"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #19
* group.element[=].display = "VENGRIYA"
* group.element[=].target.code = #HU
* group.element[=].target.display = "Hungary"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #20
* group.element[=].display = "VIRGINIYA ATAWLARI"
* group.element[=].target.code = #VI
* group.element[=].target.display = "Virgin Islands, U.S."
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #21
* group.element[=].display = "URUGHA'MY"
* group.element[=].target.code = #UY
* group.element[=].target.display = "Uruguay"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #22
* group.element[=].display = "SHIG'IS TIMOR"
* group.element[=].target.code = #TL
* group.element[=].target.display = "Timor-Leste"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #23
* group.element[=].display = "GABON"
* group.element[=].target.code = #GA
* group.element[=].target.display = "Gabon"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #24
* group.element[=].display = "GVADELUPA"
* group.element[=].target.code = #GP
* group.element[=].target.display = "Guadeloupe"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #26
* group.element[=].display = "GVINEYA"
* group.element[=].target.code = #GN
* group.element[=].target.display = "Guinea"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #27
* group.element[=].display = "ALMANIYA"
* group.element[=].target.code = #DE
* group.element[=].target.display = "Germany"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #28
* group.element[=].display = "GIBRALTAR"
* group.element[=].target.code = #GI
* group.element[=].target.display = "Gibraltar"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #29
* group.element[=].display = "GONKONG"
* group.element[=].target.code = #HK
* group.element[=].target.display = "Hong Kong"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #30
* group.element[=].display = "BAXRAYN"
* group.element[=].target.code = #BH
* group.element[=].target.display = "Bahrain"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #31
* group.element[=].display = "ISRAIL"
* group.element[=].target.code = #IL
* group.element[=].target.display = "Israel"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #32
* group.element[=].display = "KAMBODJA"
* group.element[=].target.code = #KH
* group.element[=].target.display = "Cambodia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #33
* group.element[=].display = "QATAR"
* group.element[=].target.code = #QA
* group.element[=].target.display = "Qatar"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #34
* group.element[=].display = "QUVAYT"
* group.element[=].target.code = #KW
* group.element[=].target.display = "Kuwait"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #35
* group.element[=].display = "VATIKAN"
* group.element[=].target.code = #VA
* group.element[=].target.display = "Holy See (Vatican City State)"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #36
* group.element[=].display = "GRENADA"
* group.element[=].target.code = #GD
* group.element[=].target.display = "Grenada"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #37
* group.element[=].display = "GRENLANDIYA"
* group.element[=].target.code = #GL
* group.element[=].target.display = "Greenland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #38
* group.element[=].display = "GRETSIYA"
* group.element[=].target.code = #GR
* group.element[=].target.display = "Greece"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #39
* group.element[=].display = "GUAM"
* group.element[=].target.code = #GU
* group.element[=].target.display = "Guam"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #40
* group.element[=].display = "MADAGASKAR"
* group.element[=].target.code = #MG
* group.element[=].target.display = "Madagascar"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #41
* group.element[=].display = "SAN-TOME HA'M PRINSIPI"
* group.element[=].target.code = #ST
* group.element[=].target.display = "Sao Tome and Principe"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #42
* group.element[=].display = "SHRI-LANKA"
* group.element[=].target.code = #LK
* group.element[=].target.display = "Sri Lanka"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #44
* group.element[=].display = "DOMINIKAN RESPUBLIKASI"
* group.element[=].target.code = #DO
* group.element[=].target.display = "Dominican Republic"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #45
* group.element[=].display = "BATIS SAXARA"
* group.element[=].target.code = #EH
* group.element[=].target.display = "Western Sahara"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #47
* group.element[=].display = "IORDANIYA"
* group.element[=].target.code = #JO
* group.element[=].target.display = "Jordan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #48
* group.element[=].display = "IRAQ"
* group.element[=].target.code = #IQ
* group.element[=].target.display = "Iraq"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #49
* group.element[=].display = "IRLANDIYA"
* group.element[=].target.code = #IE
* group.element[=].target.display = "Ireland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #50
* group.element[=].display = "IRAN ISLAM RESPUBLIKASI"
* group.element[=].target.code = #IR
* group.element[=].target.display = "Iran, Islamic Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #51
* group.element[=].display = "MAVRITANIYA"
* group.element[=].target.code = #MR
* group.element[=].target.display = "Mauritania"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #52
* group.element[=].display = "PAKISTAN"
* group.element[=].target.code = #PK
* group.element[=].target.display = "Pakistan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #53
* group.element[=].display = "AWG'ANISTAN"
* group.element[=].target.code = #AF
* group.element[=].target.display = "Afghanistan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #54
* group.element[=].display = "ITALIYA"
* group.element[=].target.code = #IT
* group.element[=].target.display = "Italy"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #55
* group.element[=].display = "KANADA"
* group.element[=].target.code = #CA
* group.element[=].target.display = "Canada"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #56
* group.element[=].display = "XITAY"
* group.element[=].target.code = #CN
* group.element[=].target.display = "China"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #57
* group.element[=].display = "ANDORRA"
* group.element[=].target.code = #AD
* group.element[=].target.display = "Andorra"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #58
* group.element[=].display = "LIXTENSHTEYN"
* group.element[=].target.code = #LI
* group.element[=].target.display = "Liechtenstein"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #59
* group.element[=].display = "MONAKO"
* group.element[=].target.code = #MC
* group.element[=].target.display = "Monaco"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #60
* group.element[=].display = "KOKOS ATAWLARI"
* group.element[=].target.code = #CC
* group.element[=].target.display = "Cocos (Keeling) Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #61
* group.element[=].display = "GAYANA"
* group.element[=].target.code = #GY
* group.element[=].target.display = "Guyana"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #62
* group.element[=].display = "KOREYS XALQ DEMOKRATIK RESPUBLIKASI"
* group.element[=].target.code = #KP
* group.element[=].target.display = "Korea, Democratic People's Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #63
* group.element[=].display = "BELGIYA"
* group.element[=].target.code = #BE
* group.element[=].target.display = "Belgium"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #64
* group.element[=].display = "BUTAN"
* group.element[=].target.code = #BT
* group.element[=].target.display = "Bhutan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #65
* group.element[=].display = "DANIYA"
* group.element[=].target.code = #DK
* group.element[=].target.display = "Denmark"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #66
* group.element[=].display = "ISPANIYA"
* group.element[=].target.code = #ES
* group.element[=].target.display = "Spain"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #67
* group.element[=].display = "LESOTO"
* group.element[=].target.code = #LS
* group.element[=].target.display = "Lesotho"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #68
* group.element[=].display = "MAROKKO"
* group.element[=].target.code = #MA
* group.element[=].target.display = "Morocco"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #69
* group.element[=].display = "NEPAL"
* group.element[=].target.code = #NP
* group.element[=].target.display = "Nepal"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #70
* group.element[=].display = "NIDERLAND"
* group.element[=].target.code = #NL
* group.element[=].target.display = "Netherlands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #71
* group.element[=].display = "NORVEGIYA"
* group.element[=].target.code = #NO
* group.element[=].target.display = "Norway"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #72
* group.element[=].display = "SAUDIYA ARABISTANI"
* group.element[=].target.code = #SA
* group.element[=].target.display = "Saudi Arabia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #73
* group.element[=].display = "SHA'MZILEND"
* group.element[=].target.code = #SZ
* group.element[=].target.display = "Eswatini"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #74
* group.element[=].display = "TAILAND"
* group.element[=].target.code = #TH
* group.element[=].target.display = "Thailand"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #75
* group.element[=].display = "TONGA"
* group.element[=].target.code = #TO
* group.element[=].target.display = "Tonga"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #76
* group.element[=].display = "SHVETSIYA"
* group.element[=].target.code = #SE
* group.element[=].target.display = "Sweden"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #77
* group.element[=].display = "LAOS XALQ DEMOKRATIK RESPUBLIKASI"
* group.element[=].target.code = #LA
* group.element[=].target.display = "Lao People's Democratic Republic"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #78
* group.element[=].display = "LATVIYA"
* group.element[=].target.code = #LV
* group.element[=].target.display = "Latvia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #79
* group.element[=].display = "LIVAN"
* group.element[=].target.code = #LB
* group.element[=].target.display = "Lebanon"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #80
* group.element[=].display = "LITVA"
* group.element[=].target.code = #LT
* group.element[=].target.display = "Lithuania"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #81
* group.element[=].display = "MAVRIKIY"
* group.element[=].target.code = #MU
* group.element[=].target.display = "Mauritius"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #82
* group.element[=].display = "MAKAO"
* group.element[=].target.code = #MO
* group.element[=].target.display = "Macao"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #83
* group.element[=].display = "MAKEDONIYA"
* group.element[=].target.code = #MK
* group.element[=].target.display = "North Macedonia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #84
* group.element[=].display = "MALAYZIYA"
* group.element[=].target.code = #MY
* group.element[=].target.display = "Malaysia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #86
* group.element[=].display = "MALDIVI"
* group.element[=].target.code = #MV
* group.element[=].target.display = "Maldives"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #87
* group.element[=].display = "MARTINIKA"
* group.element[=].target.code = #MQ
* group.element[=].target.display = "Martinique"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #88
* group.element[=].display = "MARSHAL ATAWLARI"
* group.element[=].target.code = #MH
* group.element[=].target.display = "Marshall Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #89
* group.element[=].display = "MEKSIKA"
* group.element[=].target.code = #MX
* group.element[=].target.display = "Mexico"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #90
* group.element[=].display = "MANG'OLISTAN"
* group.element[=].target.code = #MN
* group.element[=].target.display = "Mongolia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #91
* group.element[=].display = "MONTSERRAT"
* group.element[=].target.code = #MS
* group.element[=].target.display = "Montserrat"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #92
* group.element[=].display = "NAMIBIYA"
* group.element[=].target.code = #NA
* group.element[=].target.display = "Namibia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #93
* group.element[=].display = "ANGOLA XALQ RESPUBLIKASI"
* group.element[=].target.code = #AO
* group.element[=].target.display = "Angola"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #94
* group.element[=].display = "BANGLADESH"
* group.element[=].target.code = #BD
* group.element[=].target.display = "Bangladesh"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #95
* group.element[=].display = "BENIN"
* group.element[=].target.code = #BJ
* group.element[=].target.display = "Benin"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #96
* group.element[=].display = "VETNAM"
* group.element[=].target.code = #VN
* group.element[=].target.display = "Viet Nam"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #97
* group.element[=].display = "KONGO"
* group.element[=].target.code = #CG
* group.element[=].target.display = "Congo"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #98
* group.element[=].display = "MOZAMBIK"
* group.element[=].target.code = #MZ
* group.element[=].target.display = "Mozambique"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #100
* group.element[=].display = "NIUE"
* group.element[=].target.code = #NU
* group.element[=].target.display = "Niue"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #101
* group.element[=].display = "JAN'A ZELANDIYA"
* group.element[=].target.code = #NZ
* group.element[=].target.display = "New Zealand"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #102
* group.element[=].display = "JAN'A KALEDONIYA"
* group.element[=].target.code = #NC
* group.element[=].target.display = "New Caledonia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #103
* group.element[=].display = "NORFOLK ATAWI"
* group.element[=].target.code = #NF
* group.element[=].target.display = "Norfolk Island"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #104
* group.element[=].display = "TANZANIYA BIRLESGEN RESPUBLIKASI"
* group.element[=].target.code = #TZ
* group.element[=].target.display = "Tanzania, United Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #105
* group.element[=].display = "BIRLESGEN ARAB AMIRLIKLERI"
* group.element[=].target.code = #AE
* group.element[=].target.display = "United Arab Emirates"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #106
* group.element[=].display = "ARUBA"
* group.element[=].target.code = #AW
* group.element[=].target.display = "Aruba"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #107
* group.element[=].display = "BUVE ATAWI"
* group.element[=].target.code = #BV
* group.element[=].target.display = "Bouvet Island"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #109
* group.element[=].display = "MEN ATAWI"
* group.element[=].target.code = #IM
* group.element[=].target.display = "Isle of Man"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #111
* group.element[=].display = "MUQA'DDES ELENA ATAWI"
* group.element[=].target.code = #SH
* group.element[=].target.display = "Saint Helena, Ascension and Tristan da Cunha"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #113
* group.element[=].display = "KAYMAN ATAWLARI"
* group.element[=].target.code = #KY
* group.element[=].target.display = "Cayman Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #114
* group.element[=].display = "KUKA ATAWLARI"
* group.element[=].target.code = #CK
* group.element[=].target.display = "Cook Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #115
* group.element[=].display = "UOLLIS HA'M FUTUNA ATAWLARI"
* group.element[=].target.code = #WF
* group.element[=].target.display = "Wallis and Futuna"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #117
* group.element[=].display = "PAPUA-JAN'A GVINEYA"
* group.element[=].target.code = #PG
* group.element[=].target.display = "Papua New Guinea"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #118
* group.element[=].display = "PITKERN"
* group.element[=].target.code = #PN
* group.element[=].target.display = "Pitcairn"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #119
* group.element[=].display = "PORTUGALIYA"
* group.element[=].target.code = #PT
* group.element[=].target.display = "Portugal"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #120
* group.element[=].display = "PUERTO-RIKO"
* group.element[=].target.code = #PR
* group.element[=].target.display = "Puerto Rico"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #121
* group.element[=].display = "ALBANIYA"
* group.element[=].target.code = #AL
* group.element[=].target.display = "Albania"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #122
* group.element[=].display = "ARMENISTAN"
* group.element[=].target.code = #AM
* group.element[=].target.display = "Armenia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #123
* group.element[=].display = "BELORUS"
* group.element[=].target.code = #BY
* group.element[=].target.display = "Belarus"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #124
* group.element[=].display = "BOLGARIYA"
* group.element[=].target.code = #BG
* group.element[=].target.display = "Bulgaria"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #125
* group.element[=].display = "BOLIVIYA"
* group.element[=].target.code = #BO
* group.element[=].target.display = "Bolivia, Plurinational State of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #126
* group.element[=].display = "BOTSVANA"
* group.element[=].target.code = #BW
* group.element[=].target.display = "Botswana"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #127
* group.element[=].display = "BURUNDI"
* group.element[=].target.code = #BI
* group.element[=].target.display = "Burundi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #128
* group.element[=].display = "HA'MNUATU"
* group.element[=].target.code = #VU
* group.element[=].target.display = "Vanuatu"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #129
* group.element[=].display = "VENESUELA"
* group.element[=].target.code = #VE
* group.element[=].target.display = "Venezuela, Bolivarian Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #130
* group.element[=].display = "GAITI"
* group.element[=].target.code = #HT
* group.element[=].target.display = "Haiti"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #131
* group.element[=].display = "GAMBIYA"
* group.element[=].target.code = #GM
* group.element[=].target.display = "Gambia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #132
* group.element[=].display = "GANA"
* group.element[=].target.code = #GH
* group.element[=].target.display = "Ghana"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #133
* group.element[=].display = "GVATEMALA"
* group.element[=].target.code = #GT
* group.element[=].target.display = "Guatemala"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #134
* group.element[=].display = "GVINEYA-BISAU"
* group.element[=].target.code = #GW
* group.element[=].target.display = "Guinea-Bissau"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #135
* group.element[=].display = "GONDURAS"
* group.element[=].target.code = #HN
* group.element[=].target.display = "Honduras"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #136
* group.element[=].display = "GRUZIYA"
* group.element[=].target.code = #GE
* group.element[=].target.display = "Georgia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #137
* group.element[=].display = "DJIBUTI"
* group.element[=].target.code = #DJ
* group.element[=].target.display = "Djibouti"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #138
* group.element[=].display = "ZOIR RESPUBLIKASI"
* group.element[=].target.code = #CD
* group.element[=].target.display = "Congo, Democratic Republic of the"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #139
* group.element[=].display = "ZAMBIYA"
* group.element[=].target.code = #ZM
* group.element[=].target.display = "Zambia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #140
* group.element[=].display = "ZIMBABVE"
* group.element[=].target.code = #ZW
* group.element[=].target.display = "Zimbabwe"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #141
* group.element[=].display = "HINDISTAN"
* group.element[=].target.code = #IN
* group.element[=].target.display = "India"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #142
* group.element[=].display = "INDONEZIYA"
* group.element[=].target.code = #ID
* group.element[=].target.display = "Indonesia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #143
* group.element[=].display = "ISLANDIYA"
* group.element[=].target.code = #IS
* group.element[=].target.display = "Iceland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #144
* group.element[=].display = "IYEMEN"
* group.element[=].target.code = #YE
* group.element[=].target.display = "Yemen"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #145
* group.element[=].display = "KABO-VERDE"
* group.element[=].target.code = #CV
* group.element[=].target.display = "Cabo Verde"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #146
* group.element[=].display = "QAZAG'ISTAN"
* group.element[=].target.code = #KZ
* group.element[=].target.display = "Kazakhstan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #147
* group.element[=].display = "KAMERUN"
* group.element[=].target.code = #CM
* group.element[=].target.display = "Cameroon"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #148
* group.element[=].display = "KENIYA"
* group.element[=].target.code = #KE
* group.element[=].target.display = "Kenya"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #149
* group.element[=].display = "KIPR"
* group.element[=].target.code = #CY
* group.element[=].target.display = "Cyprus"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #150
* group.element[=].display = "KIRIBATI"
* group.element[=].target.code = #KI
* group.element[=].target.display = "Kiribati"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #151
* group.element[=].display = "KOLUMBIYA"
* group.element[=].target.code = #CO
* group.element[=].target.display = "Colombia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #152
* group.element[=].display = "KOREYA RESPUBLIKASI"
* group.element[=].target.code = #KR
* group.element[=].target.display = "Korea, Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #153
* group.element[=].display = "KOSTA-RIKA"
* group.element[=].target.code = #CR
* group.element[=].target.display = "Costa Rica"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #154
* group.element[=].display = "KOT-D`IVUAR"
* group.element[=].target.code = #CI
* group.element[=].target.display = "Côte d'Ivoire"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #155
* group.element[=].display = "KUBA"
* group.element[=].target.code = #CU
* group.element[=].target.display = "Cuba"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #156
* group.element[=].display = "QIRG'IZISTAN RESPUBLIKASI"
* group.element[=].target.code = #KG
* group.element[=].target.display = "Kyrgyzstan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #157
* group.element[=].display = "LIBERIYA"
* group.element[=].target.code = #LR
* group.element[=].target.display = "Liberia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #158
* group.element[=].display = "MALAVI"
* group.element[=].target.code = #MW
* group.element[=].target.display = "Malawi"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #159
* group.element[=].display = "MALI"
* group.element[=].target.code = #ML
* group.element[=].target.display = "Mali"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #160
* group.element[=].display = "MALTA"
* group.element[=].target.code = #MT
* group.element[=].target.display = "Malta"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #161
* group.element[=].display = "MOLDOVA RESPUBLIKASI"
* group.element[=].target.code = #MD
* group.element[=].target.display = "Moldova, Republic of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #162
* group.element[=].display = "NAURU"
* group.element[=].target.code = #NR
* group.element[=].target.display = "Nauru"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #163
* group.element[=].display = "NIGER"
* group.element[=].target.code = #NE
* group.element[=].target.display = "Niger"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #164
* group.element[=].display = "NIKARAGUA"
* group.element[=].target.code = #NI
* group.element[=].target.display = "Nicaragua"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #165
* group.element[=].display = "PALAU"
* group.element[=].target.code = #PW
* group.element[=].target.display = "Palau"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #166
* group.element[=].display = "PANAMA"
* group.element[=].target.code = #PA
* group.element[=].target.display = "Panama"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #167
* group.element[=].display = "PARAGHA'MY"
* group.element[=].target.code = #PY
* group.element[=].target.display = "Paraguay"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #168
* group.element[=].display = "PERU"
* group.element[=].target.code = #PE
* group.element[=].target.display = "Peru"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #169
* group.element[=].display = "POLSHA"
* group.element[=].target.code = #PL
* group.element[=].target.display = "Poland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #170
* group.element[=].display = "RUMINIYA"
* group.element[=].target.code = #RO
* group.element[=].target.display = "Romania"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #171
* group.element[=].display = "SAN-MARINO"
* group.element[=].target.code = #SM
* group.element[=].target.display = "San Marino"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #172
* group.element[=].display = "SEYSHEL ATAWLARI"
* group.element[=].target.code = #SC
* group.element[=].target.display = "Seychelles"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #173
* group.element[=].display = "SENEGAL"
* group.element[=].target.code = #SN
* group.element[=].target.display = "Senegal"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #174
* group.element[=].display = "SINGAPUR"
* group.element[=].target.code = #SG
* group.element[=].target.display = "Singapore"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #175
* group.element[=].display = "SLOVENIYA"
* group.element[=].target.code = #SI
* group.element[=].target.display = "Slovenia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #176
* group.element[=].display = "SUDAN"
* group.element[=].target.code = #SD
* group.element[=].target.display = "Sudan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #177
* group.element[=].display = "SURINAM"
* group.element[=].target.code = #SR
* group.element[=].target.display = "Suriname"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #178
* group.element[=].display = "SERRA-LEONE"
* group.element[=].target.code = #SL
* group.element[=].target.display = "Sierra Leone"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #179
* group.element[=].display = "TAJIKISTAN"
* group.element[=].target.code = #TJ
* group.element[=].target.display = "Tajikistan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #180
* group.element[=].display = "TRINIDAD HA'M TOBAGO"
* group.element[=].target.code = #TT
* group.element[=].target.display = "Trinidad and Tobago"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #181
* group.element[=].display = "UGANDA"
* group.element[=].target.code = #UG
* group.element[=].target.display = "Uganda"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #182
* group.element[=].display = "O'ZBEKISTAN"
* group.element[=].target.code = #UZ
* group.element[=].target.display = "Uzbekistan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #183
* group.element[=].display = "FIDJI"
* group.element[=].target.code = #FJ
* group.element[=].target.display = "Fiji"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #184
* group.element[=].display = "FILIPPIN"
* group.element[=].target.code = #PH
* group.element[=].target.display = "Philippines"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #187
* group.element[=].display = "CHILI"
* group.element[=].target.code = #CL
* group.element[=].target.display = "Chile"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #188
* group.element[=].display = "EKVADOR"
* group.element[=].target.code = #EC
* group.element[=].target.display = "Ecuador"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #189
* group.element[=].display = "GVINEYA EKVATORIAL RESPUBLIKASI"
* group.element[=].target.code = #GQ
* group.element[=].target.display = "Equatorial Guinea"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #191
* group.element[=].display = "REYUNON"
* group.element[=].target.code = #RE
* group.element[=].target.display = "Réunion"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #192
* group.element[=].display = "ROSSIYA FEDERATSIYASI"
* group.element[=].target.code = #RU
* group.element[=].target.display = "Russian Federation"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #193
* group.element[=].display = "RUANDA"
* group.element[=].target.code = #RW
* group.element[=].target.display = "Rwanda"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #194
* group.element[=].display = "SAMOA"
* group.element[=].target.code = #WS
* group.element[=].target.display = "Samoa"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #195
* group.element[=].display = "SENT-VINSENT HA'M GRENADINLAR"
* group.element[=].target.code = #VC
* group.element[=].target.display = "Saint Vincent and the Grenadines"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #196
* group.element[=].display = "SENT-PER HA'M MIKELON"
* group.element[=].target.code = #PM
* group.element[=].target.display = "Saint Pierre and Miquelon"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #197
* group.element[=].display = "SENT-LYUSIYA"
* group.element[=].target.code = #LC
* group.element[=].target.display = "Saint Lucia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #198
* group.element[=].display = "SIRIYA ARAB RESPUBLIKASI"
* group.element[=].target.code = #SY
* group.element[=].target.display = "Syrian Arab Republic"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #199
* group.element[=].display = "SLOHA'MKIYA"
* group.element[=].target.code = #SK
* group.element[=].target.display = "Slovakia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #200
* group.element[=].display = "BAGAM ATAWLARI"
* group.element[=].target.code = #BS
* group.element[=].target.display = "Bahamas"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #201
* group.element[=].display = "DOMINIKA"
* group.element[=].target.code = #DM
* group.element[=].target.display = "Dominica"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #202
* group.element[=].display = "ARQA MARIAN ATAWLARI"
* group.element[=].target.code = #MP
* group.element[=].target.display = "Northern Mariana Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #204
* group.element[=].display = "AMERIKA QOSPA SHTATLARI"
* group.element[=].target.code = #US
* group.element[=].target.display = "United States"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #205
* group.element[=].display = "SOLOMONOV ATAWLARI"
* group.element[=].target.code = #SB
* group.element[=].target.display = "Solomon Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #206
* group.element[=].display = "SOMALI"
* group.element[=].target.code = #SO
* group.element[=].target.display = "Somalia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #207
* group.element[=].display = "LIVIYA ARAB JAMAXIRIYASI"
* group.element[=].target.code = #LY
* group.element[=].target.display = "Libya"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #208
* group.element[=].display = "MYANMA"
* group.element[=].target.code = #MM
* group.element[=].target.display = "Myanmar"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #210
* group.element[=].display = "OMAN"
* group.element[=].target.code = #OM
* group.element[=].target.display = "Oman"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #211
* group.element[=].display = "TAYHA'MN"
* group.element[=].target.code = #TW
* group.element[=].target.display = "Taiwan, Province of China"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #212
* group.element[=].display = "TERKS HA'M KAYKOS ATAWLARI"
* group.element[=].target.code = #TC
* group.element[=].target.display = "Turks and Caicos Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #213
* group.element[=].display = "TOGO"
* group.element[=].target.code = #TG
* group.element[=].target.display = "Togo"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #214
* group.element[=].display = "TOKELAU"
* group.element[=].target.code = #TK
* group.element[=].target.display = "Tokelau"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #215
* group.element[=].display = "TUHA'MLU"
* group.element[=].target.code = #TV
* group.element[=].target.display = "Tuvalu"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #216
* group.element[=].display = "TUNIS"
* group.element[=].target.code = #TN
* group.element[=].target.display = "Tunisia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #217
* group.element[=].display = "TURKIYA"
* group.element[=].target.code = #TR
* group.element[=].target.display = "Turkey"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #218
* group.element[=].display = "TURKMENISTAN"
* group.element[=].target.code = #TM
* group.element[=].target.display = "Turkmenistan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #219
* group.element[=].display = "UKRAINA"
* group.element[=].target.code = #UA
* group.element[=].target.display = "Ukraine"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #220
* group.element[=].display = "FARER ATAWLARI"
* group.element[=].target.code = #FO
* group.element[=].target.display = "Faroe Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #221
* group.element[=].display = "KOMOR ATAWLARI"
* group.element[=].target.code = #KM
* group.element[=].target.display = "Comoros"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #222
* group.element[=].display = "BRAZILIYA"
* group.element[=].target.code = #BR
* group.element[=].target.display = "Brazil"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #223
* group.element[=].display = "NIGERIYA"
* group.element[=].target.code = #NG
* group.element[=].target.display = "Nigeria"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #224
* group.element[=].display = "MIKRONEZIYA FEDERATIV SHTATLARI"
* group.element[=].target.code = #FM
* group.element[=].target.display = "Micronesia, Federated States of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #225
* group.element[=].display = "SENT-KITS HA'M NEVIS"
* group.element[=].target.code = #KN
* group.element[=].target.display = "Saint Kitts and Nevis"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #226
* group.element[=].display = "FINLYANDIYA"
* group.element[=].target.code = #FI
* group.element[=].target.display = "Finland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #227
* group.element[=].display = "FOLKLEND ATAWLARI"
* group.element[=].target.code = #FK
* group.element[=].target.display = "Falkland Islands (Malvinas)"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #228
* group.element[=].display = "FRANSIYA POLINEZIYASI"
* group.element[=].target.code = #PF
* group.element[=].target.display = "French Polynesia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #229
* group.element[=].display = "FRANSIYA"
* group.element[=].target.code = #FR
* group.element[=].target.display = "France"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #231
* group.element[=].display = "ORAYLIQ AFRIKA RESPUBLIKASI"
* group.element[=].target.code = #CF
* group.element[=].target.display = "Central African Republic"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #234
* group.element[=].display = "SHVEYSARIYA"
* group.element[=].target.code = #CH
* group.element[=].target.display = "Switzerland"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #235
* group.element[=].display = "SHPITSBERGEN HA'M YAN-MAYEN ATAWLARI"
* group.element[=].target.code = #SJ
* group.element[=].target.display = "Svalbard and Jan Mayen"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #236
* group.element[=].display = "ERITREYA"
* group.element[=].target.code = #ER
* group.element[=].target.display = "Eritrea"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #237
* group.element[=].display = "ESTONIYA"
* group.element[=].target.code = #EE
* group.element[=].target.display = "Estonia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #238
* group.element[=].display = "EFIOPIYA"
* group.element[=].target.code = #ET
* group.element[=].target.display = "Ethiopia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #239
* group.element[=].display = "YAMAYKA"
* group.element[=].target.code = #JM
* group.element[=].target.display = "Jamaica"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #240
* group.element[=].display = "YAPONIYA"
* group.element[=].target.code = #JP
* group.element[=].target.display = "Japan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #242
* group.element[=].display = "QIRG'IZSTAN"
* group.element[=].target.code = #KG
* group.element[=].target.display = "Kyrgyzstan"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #254
* group.element[=].display = "AVSTRALIYA"
* group.element[=].target.code = #AU
* group.element[=].target.display = "Australia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #255
* group.element[=].display = "ANGILYA"
* group.element[=].target.code = #AI
* group.element[=].target.display = "Anguilla"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #257
* group.element[=].display = "SALVADOR"
* group.element[=].target.code = #SV
* group.element[=].target.display = "El Salvador"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #263
* group.element[=].display = "FRANSIYA GVIANASI"
* group.element[=].target.code = #GF
* group.element[=].target.display = "French Guiana"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #273
* group.element[=].display = "CHEXIYA RESPUBLIKASI"
* group.element[=].target.code = #CZ
* group.element[=].target.display = "Czechia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #276
* group.element[=].display = "MAYOTTA"
* group.element[=].target.code = #YT
* group.element[=].target.display = "Mayotte"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #277
* group.element[=].display = "PALESTINA"
* group.element[=].target.code = #PS
* group.element[=].target.display = "Palestine, State of"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #284
* group.element[=].display = "QUBLA AFRIKA RESPUBLIKASI"
* group.element[=].target.code = #ZA
* group.element[=].target.display = "South Africa"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #285
* group.element[=].display = "XARHA'MTIYA"
* group.element[=].target.code = #HR
* group.element[=].target.display = "Croatia"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #500
* group.element[=].display = "KONGO DEMOKRATIK RESPUBLIKASI"
* group.element[=].target.code = #CD
* group.element[=].target.display = "Congo, Democratic Republic of the"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #501
* group.element[=].display = "ULLI BRITANIYA"
* group.element[=].target.code = #GB
* group.element[=].target.display = "United Kingdom"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #502
* group.element[=].display = "XERD HA'M MAKDONALD ATAWLARI"
* group.element[=].target.code = #HM
* group.element[=].target.display = "Heard Island and McDonald Islands"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #505
* group.element[=].display = "CHAD"
* group.element[=].target.code = #TD
* group.element[=].target.display = "Chad"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #739001136
* group.element[=].display = "КАБО ВЕРДЕ РЕСПУБЛИКА"
* group.element[=].target.code = #CV
* group.element[=].target.display = "Cabo Verde"
* group.element[=].target.relationship = #equivalent

* group.element[+].code = #739001137
* group.element[=].display = "НАРОДНО ДЕМОКРАТИЧЕСКАЯ РЕСПУБЛИКА КОРЕЯ"
* group.element[=].target.code = #KP
* group.element[=].target.display = "Korea, Democratic People's Republic of"
* group.element[=].target.relationship = #equivalent
