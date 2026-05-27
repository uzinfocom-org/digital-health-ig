// CodeSystem: ImmunizationStatusReasonCS
// Id: immunization-status-reason-cs
// Title: "Immunization Status Reason translations"
// Description: "Immunization Status Reason supplement with Uzbek and Russian translations"
// * insert SupplementCodeSystem(immunization-status-reason-cs, $v3-ActReason, 2.1.0)

// * #IMMUNE "immunity"
//   * ^designation[0].language = #uz
//   * ^designation[=].value = "immunitet"
//   * ^designation[+].language = #ru
//   * ^designation[=].value = "иммунитет"

// * #MEDPREC "medical precaution"
//   * ^designation[0].language = #uz
//   * ^designation[=].value = "tibbiy ehtiyot chorasi"
//   * ^designation[+].language = #ru
//   * ^designation[=].value = "Временный отказ от вакцинации по медицинским показаниям"

// * #OSTOCK "product out of stock"
//   * ^designation[0].language = #uz
//   * ^designation[=].value = "sotuvda yo'q"
//   * ^designation[+].language = #ru
//   * ^designation[=].value = "отсутствие товара на складе"

// * #PATOBJ "patient objection"
//   * ^designation[0].language = #uz
//   * ^designation[=].value = "bemorning e'tirozi"
//   * ^designation[+].language = #ru
//   * ^designation[=].value = "возражение пациента"