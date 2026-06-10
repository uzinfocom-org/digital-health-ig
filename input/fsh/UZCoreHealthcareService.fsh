Profile: UZCoreHealthcareService
Parent: HealthcareService
Id: uz-core-healthcareservice
Title: "UZ Core HealthcareService"
Description: "Uzbekistan Core HealthcareService profile, used to define healthcare services available"
* ^experimental = true
* ^status = #active
* ^date = "2025-03-11"
* ^publisher = "Uzinfocom"

* active and category and type and name MS


// Extension Turnaround Time
* extension contains
    TurnaroundTime named turnaroundTime 0..1 MS
* extension[turnaroundTime] ^short = "Time from specimen receipt to result availability"

* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Category of healthcare service"
* category.coding ^slicing.ordered = false

* category.coding contains
    dhpCategory 0..1 MS and
    labCategory 0..1 MS

* category.coding[dhpCategory]
  * system 1..1 MS
  * system = Canonical(CancerTypesCS)
  * code 1..1 MS
  * code from ServiceCategoriesVS (required)

* category.coding[labCategory]
  * system 1..1 MS
  * system = Canonical(LabCategoriesCS)
  * code 1..1 MS
  * code from lab-service-categories-vs (required)

* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = "Type of healthcare service"
* type.coding ^slicing.ordered = false

* type.coding contains
    dhpService 0..1 MS and
    labService 0..1 MS

* type.coding[dhpService]
  * system 1..1 MS
  * system = Canonical(CancerTypesCS)
  * code 1..1 MS
  * code from ServiceNamesVS (required)

* type.coding[labService]
  * system 1..1 MS
  * system = Canonical(LabPanelCS) 
  * code 1..1 MS
  * code from observation-codes-vs (required)

Instance: example-healthcareservice
InstanceOf: UZCoreHealthcareService
Description: "Example of a healthcare service"
Usage: #example
* active = true

* category.coding[dhpCategory]
  * code = #cancr0013.00000
* type.coding[dhpService]
  * code = #cancr0013.00001
* language = #uz
* name = "IHC-ga xos"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "ИГХ специфические"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #kaa
    * extension[content][+]
      * valueString = "IHC ushın arnawlı"




Instance: example-healthcareservice-complete-blood-count
InstanceOf: UZCoreHealthcareService
Description: "Example of a laboratory healthcare service"
Usage: #example

* active = true

// Example Turnaround Time
* extension[turnaroundTime].valueDuration.value = 4
* extension[turnaroundTime].valueDuration.unit = "hours"
* extension[turnaroundTime].valueDuration.system = "http://unitsofmeasure.org"
* extension[turnaroundTime].valueDuration.code = #h

* category.coding[labCategory]
  * code = #lab-category-02 "Hematology"

* type.coding[labService]
  * code = #lab-pan-E "CBC panel"

* language = #en

* name = "Complete Blood Count (CBC)"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][0]
      * valueString = "Общий анализ крови"

  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #uz
    * extension[content][0]
      * valueString = "Umumiy qon tahlili"

  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #en
    * extension[content][0]
      * valueString = "Complete Blood Count (CBC)"
