Profile: UZCoreMedicationKnowledge
Parent: MedicationKnowledge
Id: uz-core-medicationknowledge
Title: "UZ Core MedicationKnowledge"
Description: "Uzbekistan Core MedicationKnowledge profile, used to represent reference information about a medicinal product in DHP, including its status and approved prices such as the price ceiling, wholesale, retail and SHIF prices"

* ^status = #active
* ^experimental = true
* ^date = "2026-10-30"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains medicationKnowledge 0..1 MS
* identifier[medicationKnowledge].system 1..1 MS
* identifier[medicationKnowledge].system = $medication-knowledge
* identifier[medicationKnowledge].value 1..1 MS
* identifier[medicationKnowledge] ^short = "Unique identifier of the medicinal product or medication reference entry in DHP or an external source system"

* status MS
* status from MedicationKnowledgeStatusVS (required)
* status ^short = "active | inactive | entered-in-error: whether the product is available for prescribing, reimbursement and price checks"

* associatedMedication 1..1 MS
* associatedMedication only Reference(UZCoreMedication)
* associatedMedication ^short = "Medicinal product to which this reference information applies"

* author MS
* author only Reference(UZCoreOrganization)
* author ^short = "Organization responsible for publishing, approving or maintaining this record in DHP (e.g. SHIF for reimbursement or price ceiling)"

* cost 1..* MS
* cost ^short = "Price information of the medicinal product (e.g. price ceiling, wholesale, retail, SHIF price)"
* cost.effectiveDate 1..1 MS
* cost.effectiveDate ^short = "Period during which the price applies: start date and, optionally, end date"
* cost.type 1..1 MS
* cost.type from MedicationKnowledgeCostTypeVS (extensible)
* cost.type ^short = "Type of price set for the medicinal product"
* cost.source ^short = "Organization or system that provided the price (e.g. UzPharmAgency, SHIF)"
* cost.cost[x] only Money
* cost.cost[x] ^short = "Monetary value of the price with its currency"

Instance: example-medication-knowledge-price-ceiling
InstanceOf: UZCoreMedicationKnowledge
Title: "Example UZ Core MedicationKnowledge - Price ceiling"
Description: "Example medication knowledge record with the price ceiling set by the State Health Insurance Fund."
Usage: #example

* identifier[medicationKnowledge].value = "MK-2026-000123"

* status = $medicationknowledge-status#active

* associatedMedication = Reference(Medication/example-medication)

* cost[0].effectiveDate.start = "2026-10-01"
* cost[0].type = medication-knowledge-cost-type-cs#price-type-0001-00001 "Price ceiling"
* cost[0].source = "DTSJ"
* cost[0].costMoney.value = 420025.00
* cost[0].costMoney.currency = urn:iso:std:iso:4217#UZS
