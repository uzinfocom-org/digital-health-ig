ValueSet: InventoryReportStatusVS
Id: inventory-report-status-vs
Title: "Inventory report status"
Description: "Inventory report statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventory-report-status-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryReportStatusCS)

* include codes from system $inventoryreport-status