Instance: lab-units-to-ucum-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Laboratory source system units to UCUM"
Description: "Maps the units of measure sent by laboratory information systems in Uzbekistan to UCUM. Source spellings that denote a real unit map to the corresponding UCUM code; counts that UCUM cannot express dimensionally (per high-power field, copies, optical density) map to UCUM annotations; entries that are not units at all carry noMap. A handful of source strings are too ambiguous to map safely and are deliberately absent - they are listed in the LabUnitsCS notes and need clarification from the source system."
* name = "LabUnitsToUCUM"
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/lab-units-to-ucum-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(LabUnitsVS)
* targetScopeCanonical = $ucum-vs

* group.source = Canonical(LabUnitsCS)
* group.target = $ucum

* group[=].element[+].code = #"mcg/dl"
* group[=].element[=].display = "mcg/dl"
* group[=].element[=].target[+].code = #"ug/dL"
* group[=].element[=].target[=].display = "microgram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"10^12/L"
* group[=].element[=].display = "10^12/L"
* group[=].element[=].target[+].code = #"10*12/L"
* group[=].element[=].target[=].display = "trillion per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "10^ and 10* are both valid UCUM; 10* is the form carried by ucum-common"

* group[=].element[+].code = #"mmol/l"
* group[=].element[=].display = "mmol/l"
* group[=].element[=].target[+].code = #"mmol/L"
* group[=].element[=].target[=].display = "millimole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mlU/mL"
* group[=].element[=].display = "mlU/mL"
* group[=].element[=].target[+].code = #"m[IU]/mL"
* group[=].element[=].target[=].display = "milli-international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Source spells mIU with a lowercase L"

* group[=].element[+].code = #"yr"
* group[=].element[=].display = "yr"
* group[=].element[=].target[+].code = #"a"
* group[=].element[=].target[=].display = "year"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"KP"
* group[=].element[=].display = "KP"
* group[=].element[=].target[+].code = #"{index}"
* group[=].element[=].target[=].display = "index"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Koeffitsient pozitivnosti (positivity index); dimensionless, annotation only"

* group[=].element[+].code = #"nmol/l"
* group[=].element[=].display = "nmol/l"
* group[=].element[=].target[+].code = #"nmol/L"
* group[=].element[=].target[=].display = "nanomole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Копий/10^5 клеток"
* group[=].element[=].display = "Копий/10^5 клеток"
* group[=].element[=].target[+].code = #"{copies}/10*5{cell}"
* group[=].element[=].target[=].display = "copies per 100000 cells"
* group[=].element[=].target[=].relationship = #equivalent

// Not a unit of measure
* group[=].element[+].code = #"№"
* group[=].element[=].display = "№"
* group[=].element[=].noMap = true

* group[=].element[+].code = #"min"
* group[=].element[=].display = "min"
* group[=].element[=].target[+].code = #"min"
* group[=].element[=].target[=].display = "minute"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Mcg/ml"
* group[=].element[=].display = "Mcg/ml"
* group[=].element[=].target[+].code = #"ug/mL"
* group[=].element[=].target[=].display = "microgram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"g/l"
* group[=].element[=].display = "g/l"
* group[=].element[=].target[+].code = #"g/L"
* group[=].element[=].target[=].display = "gram per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mg/%"
* group[=].element[=].display = "mg/%"
* group[=].element[=].target[+].code = #"mg/dL"
* group[=].element[=].target[=].display = "milligram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "mg% is milligrams per 100 mL"

* group[=].element[+].code = #"EIU"
* group[=].element[=].display = "EIU"
* group[=].element[=].target[+].code = #"[ELU]"
* group[=].element[=].target[=].display = "ELISA unit"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Assumed ELISA unit; confirm with the source system"

* group[=].element[+].code = #"mkl"
* group[=].element[=].display = "mkl"
* group[=].element[=].target[+].code = #"uL"
* group[=].element[=].target[=].display = "microliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ug/dL"
* group[=].element[=].display = "ug/dL"
* group[=].element[=].target[+].code = #"ug/dL"
* group[=].element[=].target[=].display = "microgram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"sec"
* group[=].element[=].display = "sec"
* group[=].element[=].target[+].code = #"s"
* group[=].element[=].target[=].display = "second"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mg/l"
* group[=].element[=].display = "mg/l"
* group[=].element[=].target[+].code = #"mg/L"
* group[=].element[=].target[=].display = "milligram per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"п/з"
* group[=].element[=].display = "п/з"
* group[=].element[=].target[+].code = #"{per_HPF}"
* group[=].element[=].target[=].display = "per high-power field"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Per high-power field; UCUM has no HPF unit, so this is an annotation and carries no dimension"

* group[=].element[+].code = #"Mcg/l"
* group[=].element[=].display = "Mcg/l"
* group[=].element[=].target[+].code = #"ug/L"
* group[=].element[=].target[=].display = "microgram per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mkmol/l"
* group[=].element[=].display = "mkmol/l"
* group[=].element[=].target[+].code = #"umol/L"
* group[=].element[=].target[=].display = "micromole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"yed/ml"
* group[=].element[=].display = "yed/ml"
* group[=].element[=].target[+].code = #"U/mL"
* group[=].element[=].target[=].display = "unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "ed/ml (enzyme units per millilitre)"

* group[=].element[+].code = #"mmol/L"
* group[=].element[=].display = "mmol/L"
* group[=].element[=].target[+].code = #"mmol/L"
* group[=].element[=].target[=].display = "millimole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"минут"
* group[=].element[=].display = "минут"
* group[=].element[=].target[+].code = #"min"
* group[=].element[=].target[=].display = "minute"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"me/l"
* group[=].element[=].display = "me/l"
* group[=].element[=].target[+].code = #"[IU]/L"
* group[=].element[=].target[=].display = "international unit per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "ME/l (international units per litre)"

* group[=].element[+].code = #"U/ml"
* group[=].element[=].display = "U/ml"
* group[=].element[=].target[+].code = #"U/mL"
* group[=].element[=].target[=].display = "unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"IU/ml"
* group[=].element[=].display = "IU/ml"
* group[=].element[=].target[+].code = #"[IU]/mL"
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"yed/l"
* group[=].element[=].display = "yed/l"
* group[=].element[=].target[+].code = #"U/L"
* group[=].element[=].target[=].display = "unit per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"IU/L"
* group[=].element[=].display = "IU/L"
* group[=].element[=].target[+].code = #"[IU]/L"
* group[=].element[=].target[=].display = "international unit per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"в п/зр"
* group[=].element[=].display = "в п/зр"
* group[=].element[=].target[+].code = #"{per_HPF}"
* group[=].element[=].target[=].display = "per high-power field"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"AU/ml"
* group[=].element[=].display = "AU/ml"
* group[=].element[=].target[+].code = #"[arb'U]/mL"
* group[=].element[=].target[=].display = "arbitrary unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Arbitrary (antibody) units. Bare AU in UCUM is the astronomic unit"

// Rh factor is a qualitative attribute, not a unit
* group[=].element[+].code = #"RH"
* group[=].element[=].display = "RH"
* group[=].element[=].noMap = true

* group[=].element[+].code = #"µmol/l"
* group[=].element[=].display = "µmol/l"
* group[=].element[=].target[+].code = #"umol/L"
* group[=].element[=].target[=].display = "micromole per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "The micro sign U+00B5 is not valid UCUM; UCUM uses ASCII u"

* group[=].element[+].code = #"MYe/ml"
* group[=].element[=].display = "MYe/ml"
* group[=].element[=].target[+].code = #"[IU]/mL"
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Assumed a transliteration of ME/ml; confirm with the source system"

* group[=].element[+].code = #"mlU/ml"
* group[=].element[=].display = "mlU/ml"
* group[=].element[=].target[+].code = #"m[IU]/mL"
* group[=].element[=].target[=].display = "milli-international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Source spells mIU with a lowercase L"

* group[=].element[+].code = #"Me/l"
* group[=].element[=].display = "Me/l"
* group[=].element[=].target[+].code = #"[IU]/L"
* group[=].element[=].target[=].display = "international unit per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"pmol/L"
* group[=].element[=].display = "pmol/L"
* group[=].element[=].target[+].code = #"pmol/L"
* group[=].element[=].target[=].display = "picomole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"GE/ml"
* group[=].element[=].display = "GE/ml"
* group[=].element[=].target[+].code = #"{copies}/mL"
* group[=].element[=].target[=].display = "copies per milliliter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Genome equivalents per millilitre"

* group[=].element[+].code = #"pg/ml"
* group[=].element[=].display = "pg/ml"
* group[=].element[=].target[+].code = #"pg/mL"
* group[=].element[=].target[=].display = "picogram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"pg"
* group[=].element[=].display = "pg"
* group[=].element[=].target[+].code = #"pg"
* group[=].element[=].target[=].display = "picogram"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mmol/d"
* group[=].element[=].display = "mmol/d"
* group[=].element[=].target[+].code = #"mmol/d"
* group[=].element[=].target[=].display = "millimole per day"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Mmol/D"
* group[=].element[=].display = "Mmol/D"
* group[=].element[=].target[+].code = #"mmol/d"
* group[=].element[=].target[=].display = "millimole per day"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "M is the mega prefix and D is not a UCUM unit"

* group[=].element[+].code = #"sek"
* group[=].element[=].display = "sek"
* group[=].element[=].target[+].code = #"s"
* group[=].element[=].target[=].display = "second"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mkg/ml"
* group[=].element[=].display = "mkg/ml"
* group[=].element[=].target[+].code = #"ug/mL"
* group[=].element[=].target[=].display = "microgram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Ml"
* group[=].element[=].display = "Ml"
* group[=].element[=].target[+].code = #"mL"
* group[=].element[=].target[=].display = "milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Ml is the megalitre in UCUM: a 10^6 error if taken literally"

* group[=].element[+].code = #"day"
* group[=].element[=].display = "day"
* group[=].element[=].target[+].code = #"d"
* group[=].element[=].target[=].display = "day"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ml"
* group[=].element[=].display = "ml"
* group[=].element[=].target[+].code = #"mL"
* group[=].element[=].target[=].display = "milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// Semi-quantitative result, not a unit: send as Observation.valueCodeableConcept
* group[=].element[+].code = #"+"
* group[=].element[=].display = "+"
* group[=].element[=].noMap = true

* group[=].element[+].code = #"µmol/L"
* group[=].element[=].display = "µmol/L"
* group[=].element[=].target[+].code = #"umol/L"
* group[=].element[=].target[=].display = "micromole per liter"
* group[=].element[=].target[=].relationship = #equivalent

// Data type marker, not a unit: send as Observation.valueString
* group[=].element[+].code = #"text"
* group[=].element[=].display = "text"
* group[=].element[=].noMap = true

* group[=].element[+].code = #"10^3/ml"
* group[=].element[=].display = "10^3/ml"
* group[=].element[=].target[+].code = #"10*3/mL"
* group[=].element[=].target[=].display = "thousand per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"fL"
* group[=].element[=].display = "fL"
* group[=].element[=].target[+].code = #"fL"
* group[=].element[=].target[=].display = "femtoliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mg/L"
* group[=].element[=].display = "mg/L"
* group[=].element[=].target[+].code = #"mg/L"
* group[=].element[=].target[=].display = "milligram per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ng/mL"
* group[=].element[=].display = "ng/mL"
* group[=].element[=].target[+].code = #"ng/mL"
* group[=].element[=].target[=].display = "nanogram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mm/h"
* group[=].element[=].display = "mm/h"
* group[=].element[=].target[+].code = #"mm/h"
* group[=].element[=].target[=].display = "millimeter per hour"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"G/L"
* group[=].element[=].display = "G/L"
* group[=].element[=].target[+].code = #"10*9/L"
* group[=].element[=].target[=].display = "billion per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "G is giga (10^9) here. Bare G in UCUM is the gauss"

* group[=].element[+].code = #"pH"
* group[=].element[=].display = "pH"
* group[=].element[=].target[+].code = #"[pH]"
* group[=].element[=].target[=].display = "pH"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Unbracketed pH parses as picohenry"

* group[=].element[+].code = #"mg/dL"
* group[=].element[=].display = "mg/dL"
* group[=].element[=].target[+].code = #"mg/dL"
* group[=].element[=].target[=].display = "milligram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Mk ME/ml"
* group[=].element[=].display = "Mk ME/ml"
* group[=].element[=].target[+].code = #"u[IU]/mL"
* group[=].element[=].target[=].display = "micro-international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "mkME/ml (micro-international units per millilitre)"

* group[=].element[+].code = #"nmol/L"
* group[=].element[=].display = "nmol/L"
* group[=].element[=].target[+].code = #"nmol/L"
* group[=].element[=].target[=].display = "nanomole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ng/dl"
* group[=].element[=].display = "ng/dl"
* group[=].element[=].target[+].code = #"ng/dL"
* group[=].element[=].target[=].display = "nanogram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ml%"
* group[=].element[=].display = "ml%"
* group[=].element[=].target[+].code = #"mL/dL"
* group[=].element[=].target[=].display = "milliliter per deciliter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Volumes percent (ob.%): millilitres per 100 mL"

* group[=].element[+].code = #"mkg/l"
* group[=].element[=].display = "mkg/l"
* group[=].element[=].target[+].code = #"ug/L"
* group[=].element[=].target[=].display = "microgram per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"U/L"
* group[=].element[=].display = "U/L"
* group[=].element[=].target[+].code = #"U/L"
* group[=].element[=].target[=].display = "unit per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mIU/mL"
* group[=].element[=].display = "mIU/mL"
* group[=].element[=].target[+].code = #"m[IU]/mL"
* group[=].element[=].target[=].display = "milli-international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"10^9/L"
* group[=].element[=].display = "10^9/L"
* group[=].element[=].target[+].code = #"10*9/L"
* group[=].element[=].target[=].display = "billion per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"μg/dL"
* group[=].element[=].display = "μg/dL"
* group[=].element[=].target[+].code = #"ug/dL"
* group[=].element[=].target[=].display = "microgram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "The Greek letter mu U+03BC is not valid UCUM; UCUM uses ASCII u"

// Semi-quantitative result, not a unit: send as Observation.valueCodeableConcept
* group[=].element[+].code = #"+/-"
* group[=].element[=].display = "+/-"
* group[=].element[=].noMap = true

* group[=].element[+].code = #"Klet./mkl"
* group[=].element[=].display = "Klet./mkl"
* group[=].element[=].target[+].code = #"{cell}/uL"
* group[=].element[=].target[=].display = "cells per microliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "klet./mkl (cells per microlitre)"

* group[=].element[+].code = #"ug/dl"
* group[=].element[=].display = "ug/dl"
* group[=].element[=].target[+].code = #"ug/dL"
* group[=].element[=].target[=].display = "microgram per deciliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mIU/ml"
* group[=].element[=].display = "mIU/ml"
* group[=].element[=].target[+].code = #"m[IU]/mL"
* group[=].element[=].target[=].display = "milli-international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"мкл"
* group[=].element[=].display = "мкл"
* group[=].element[=].target[+].code = #"uL"
* group[=].element[=].target[=].display = "microliter"
* group[=].element[=].target[=].relationship = #equivalent

// Not a unit of measure
* group[=].element[+].code = #","
* group[=].element[=].display = ","
* group[=].element[=].noMap = true

* group[=].element[+].code = #"Me/ml"
* group[=].element[=].display = "Me/ml"
* group[=].element[=].target[+].code = #"[IU]/mL"
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

// Not a unit of measure
* group[=].element[+].code = #"."
* group[=].element[=].display = "."
* group[=].element[=].noMap = true

* group[=].element[+].code = #"ratio"
* group[=].element[=].display = "ratio"
* group[=].element[=].target[+].code = #"{ratio}"
* group[=].element[=].target[=].display = "ratio"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Dimensionless; annotation only"

* group[=].element[+].code = #"pg/mL"
* group[=].element[=].display = "pg/mL"
* group[=].element[=].target[+].code = #"pg/mL"
* group[=].element[=].target[=].display = "picogram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ng/ml"
* group[=].element[=].display = "ng/ml"
* group[=].element[=].target[+].code = #"ng/mL"
* group[=].element[=].target[=].display = "nanogram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mmol/h"
* group[=].element[=].display = "mmol/h"
* group[=].element[=].target[+].code = #"mmol/h"
* group[=].element[=].target[=].display = "millimole per hour"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mkmol/L"
* group[=].element[=].display = "mkmol/L"
* group[=].element[=].target[+].code = #"umol/L"
* group[=].element[=].target[=].display = "micromole per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"IU/mL"
* group[=].element[=].display = "IU/mL"
* group[=].element[=].target[+].code = #"[IU]/mL"
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"cm"
* group[=].element[=].display = "cm"
* group[=].element[=].target[+].code = #"cm"
* group[=].element[=].target[=].display = "centimeter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"uU/ml"
* group[=].element[=].display = "uU/ml"
* group[=].element[=].target[+].code = #"uU/mL"
* group[=].element[=].target[=].display = "microunit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Mg/l"
* group[=].element[=].display = "Mg/l"
* group[=].element[=].target[+].code = #"mg/L"
* group[=].element[=].target[=].display = "milligram per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Mg is the megagram in UCUM: a 10^6 error if taken literally"

* group[=].element[+].code = #"%"
* group[=].element[=].display = "%"
* group[=].element[=].target[+].code = #"%"
* group[=].element[=].target[=].display = "percent"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"в п/з"
* group[=].element[=].display = "в п/з"
* group[=].element[=].target[+].code = #"{per_HPF}"
* group[=].element[=].target[=].display = "per high-power field"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"number"
* group[=].element[=].display = "number"
* group[=].element[=].target[+].code = #"{count}"
* group[=].element[=].target[=].display = "count"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Dimensionless count; annotation only"

* group[=].element[+].code = #"ml/min"
* group[=].element[=].display = "ml/min"
* group[=].element[=].target[+].code = #"mL/min"
* group[=].element[=].target[=].display = "milliliter per minute"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"ME/ml"
* group[=].element[=].display = "ME/ml"
* group[=].element[=].target[+].code = #"[IU]/mL"
* group[=].element[=].target[=].display = "international unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"mIU/L"
* group[=].element[=].display = "mIU/L"
* group[=].element[=].target[+].code = #"m[IU]/L"
* group[=].element[=].target[=].display = "milli-international unit per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Mmol/L"
* group[=].element[=].display = "Mmol/L"
* group[=].element[=].target[+].code = #"mmol/L"
* group[=].element[=].target[=].display = "millimole per liter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Mmol is the megamole in UCUM: a 10^6 error if taken literally"

* group[=].element[+].code = #"U"
* group[=].element[=].display = "U"
* group[=].element[=].target[+].code = #"U"
* group[=].element[=].target[=].display = "unit"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"f/l"
* group[=].element[=].display = "f/l"
* group[=].element[=].target[+].code = #"fL"
* group[=].element[=].target[=].display = "femtoliter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Assumed femtolitre (MCV); confirm with the source system"

* group[=].element[+].code = #"PH"
* group[=].element[=].display = "PH"
* group[=].element[=].target[+].code = #"[pH]"
* group[=].element[=].target[=].display = "pH"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Unbracketed PH parses as petahenry"

* group[=].element[+].code = #"сек"
* group[=].element[=].display = "сек"
* group[=].element[=].target[+].code = #"s"
* group[=].element[=].target[=].display = "second"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"AU/mL"
* group[=].element[=].display = "AU/mL"
* group[=].element[=].target[+].code = #"[arb'U]/mL"
* group[=].element[=].target[=].display = "arbitrary unit per milliliter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"У. е."
* group[=].element[=].display = "У. е."
* group[=].element[=].target[+].code = #"[arb'U]"
* group[=].element[=].target[=].display = "arbitrary unit"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "uslovnaya edinitsa (conventional unit)"

* group[=].element[+].code = #"S/CO"
* group[=].element[=].display = "S/CO"
* group[=].element[=].target[+].code = #"{S/CO}"
* group[=].element[=].target[=].display = "signal to cutoff ratio"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Signal-to-cutoff ratio; dimensionless, annotation only"

* group[=].element[+].code = #"mME/ml"
* group[=].element[=].display = "mME/ml"
* group[=].element[=].target[+].code = #"m[IU]/mL"
* group[=].element[=].target[=].display = "milli-international unit per milliliter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Assumed mME/ml; confirm with the source system"

* group[=].element[+].code = #"10^g/L"
* group[=].element[=].display = "10^g/L"
* group[=].element[=].target[+].code = #"10*9/L"
* group[=].element[=].target[=].display = "billion per liter"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Assumed a typo for 10^9/L; confirm with the source system"

* group[=].element[+].code = #"OP"
* group[=].element[=].display = "OP"
* group[=].element[=].target[+].code = #"{OD_unit}"
* group[=].element[=].target[=].display = "optical density unit"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Optical density"

* group[=].element[+].code = #"lg"
* group[=].element[=].display = "lg"
* group[=].element[=].target[+].code = #"{log10}"
* group[=].element[=].target[=].display = "log10"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Base-10 logarithm of a titre; annotation only"

* group[=].element[+].code = #"на 100 лейк."
* group[=].element[=].display = "на 100 лейк."
* group[=].element[=].target[+].code = #"/100{WBC}"
* group[=].element[=].target[=].display = "per 100 white blood cells"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"10*9/L"
* group[=].element[=].display = "10*9/L"
* group[=].element[=].target[+].code = #"10*9/L"
* group[=].element[=].target[=].display = "billion per liter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #"Ng/ml"
* group[=].element[=].display = "Ng/ml"
* group[=].element[=].target[+].code = #"ng/mL"
* group[=].element[=].target[=].display = "nanogram per milliliter"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "N is the nano prefix in lowercase"

* group[=].element[+].code = #"mmol/sperm"
* group[=].element[=].display = "mmol/sperm"
* group[=].element[=].target[+].code = #"mmol/{sperm}"
* group[=].element[=].target[=].display = "millimole per sperm sample"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[=].target[=].comment = "Annotation preserves the source term; confirm the denominator (per ejaculate or per mL)"
