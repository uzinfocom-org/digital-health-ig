ValueSet: CountriesDigitalMVDVS
Id: countries-digital-mvd-vs
Title: "Uzbekistan MVD's international country codes"
Description: "Uzbekistan MVD's international country codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/countries-digital-mvd-vs"
* ^experimental = true
* ^status = #active
* ^language = #uz

* include codes from system countries-digital-mvd-cs

ValueSet: InternationalCountriesVS
Id: international-countries-vs
Title: "Uzbekistan MVD's international country codes (excluding Uzbekistan)"
Description: "Uzbekistan MVD's international country codes excluding Uzbekistan for international address use"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/international-countries-vs"
* ^experimental = true
* ^status = #active
* ^language = #uz

* include codes from system countries-digital-mvd-cs
* exclude countries-digital-mvd-cs#182 "O'ZBEKISTAN"
