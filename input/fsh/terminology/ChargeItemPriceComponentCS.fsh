CodeSystem: ChargeItemPriceComponentCS
Id: charge-item-price-component-cs
Title: "Charge item price component"
Description: "National codes for the parts of a charge item price in `ChargeItem.totalPriceComponent.code`, such as the part a reimbursement programme pays for a dispensed medicine"
* insert OriginalCodeSystemDraft(charge-item-price-component-cs)

* #reimbursement "Rembursatsiya"
  * ^definition = "The part of the price that the state reimbursement programme pays. The patient pays the rest of the base price."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реимбурсация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reimbursement"
