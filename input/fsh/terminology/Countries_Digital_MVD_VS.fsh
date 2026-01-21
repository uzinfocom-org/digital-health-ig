ValueSet: CountriesDigitalMVDVS
Id: countries-digital-mvd-vs
Title: "World countries name translations"
Description: "World countries names with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/countries-digital-mvd-vs"
* ^experimental = true
* ^status = #active
* ^language = #uz

* include codes from system countries-digital-mvd-cs

ValueSet: InternationalCountriesVS
Id: international-countries-vs
Title: "International countries (excluding Uzbekistan)"
Description: "World countries names excluding Uzbekistan for international address usage"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/international-countries-vs"
* ^experimental = true
* ^status = #active
* ^language = #uz

* include codes from system countries-digital-mvd-cs
* exclude countries-digital-mvd-cs#182 "O'ZBEKISTAN"
