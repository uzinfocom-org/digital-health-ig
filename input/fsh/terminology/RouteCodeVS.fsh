ValueSet: RouteCodeVS
Id: route-code-vs
Title: "Route of administration value set"
Description: "Route of administration codes with Uzbek and Russian translations, including SNOMED CT and local codes"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/route-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RouteCodeCS)

// SNOMED CT routes, with uz/ru translations supplied by RouteCodeCS
* include codes from system $sct where concept is-a #284009009

// Local codes for the routes SNOMED CT does not cover
* include codes from system route-codes-cs

// * include codes from system $sct
// * $sct#36673005 "Intradermal injection"
// * $sct#76601001 "Injection, intramuscular"
// * $sct#26643006 "Swallow, oral"
// * $sct#300036000 "Subcutaneous infusion"
// * $sct#738987007 "Transdermal"
// * $sct#394841004 "Other category"

