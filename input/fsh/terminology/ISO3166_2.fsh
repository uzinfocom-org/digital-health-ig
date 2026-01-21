ValueSet: ISO3166_2
Id: iso-3166-2-vs
Title: "ISO 3166 part 1 2-letter codes"
Description: "Defines Uzbek and Russian translations for ISO 3166 part 1 2-letter codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs"
* ^experimental = true
* ^extension.url = $valueset-supplement
* ^extension.valueCanonical = Canonical(ISO3166_TwoLetter_CS)

* include codes from system $iso-3166

ValueSet: ISO3166_2SansUZ
Id: iso-3166-2-vs-sans-uz
Title: "ISO 3166 part 1 2-letter codes, sans Uzbekistan"
Description: "Defines Uzbek and Russian translations for ISO 3166 part 1 2-letter codes, sans Uzbekistan, for international addresses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs-sans-uz"
* ^experimental = true
* ^extension.url = $valueset-supplement
* ^extension.valueCanonical = Canonical(ISO3166_TwoLetter_CS)

* include codes from system $iso-3166
* exclude $iso-3166#UZ
* exclude $iso-3166#UZB
* exclude $iso-3166#860
