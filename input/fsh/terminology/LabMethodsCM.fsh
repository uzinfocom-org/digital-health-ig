Instance: lab-methods-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Laboratory methods codes to LOINC"
Description: "Maps local UZ laboratory method (technique of measurement) codes to LOINC method part codes."
* url = "https://dhp.uz/fhir/core/ConceptMap/lab-methods-to-loinc"
* name = "LaboratoryMethodsCodesToLOINC"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(LabMethodsCS)
* sourceScopeCanonical = Canonical(LabMethodsVS)
* group.target = $sct
* targetScopeCanonical = $sct

* group.element[+].code = #lab-method-1
* group.element[=].display = "PZR (Polimeraza zanjir reaksiyasi)"
* group.element[=].target[+].code = #258066000
* group.element[=].target[=].display = "PCR (Polymerase Chain Reaction)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-2
* group.element[=].display = "IFA (Immunoferment tahlil)"
* group.element[=].target[+].code = #703447009
* group.element[=].target[=].display = "Enzyme immunoassay technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-3
* group.element[=].display = "ELISA"
* group.element[=].target[+].code = #68431000052104
* group.element[=].target[=].display = "Enzyme-linked immunosorbent assay technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-4
* group.element[=].display = "Kultural usul"
* group.element[=].target[+].code = #703725008
* group.element[=].target[=].display = "Culture technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-5
* group.element[=].display = "Immunoanaliz"
* group.element[=].target[+].code = #726449005
* group.element[=].target[=].display = "Immunoassay technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-6
* group.element[=].display = "Spektrofotometriya"
* group.element[=].target[+].code = #70621000052105
* group.element[=].target[=].display = "Spectrophotometric technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-7
* group.element[=].display = "Oqim sitometriyasi"
* group.element[=].target[+].code = #708058007
* group.element[=].target[=].display = "Flow cytometry technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-8
* group.element[=].display = "Mikroskopiya"
* group.element[=].target[+].code = #278289002
* group.element[=].target[=].display = "Microscopy technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-9
* group.element[=].display = "Xromatografiya"
* group.element[=].target[+].code = #1303858005
* group.element[=].target[=].display = "Chromatography technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-10
* group.element[=].display = "Mass-spektrometriya"
* group.element[=].target[+].code = #LP95062-3
* group.element[=].target[=].display = "LC/MS/MS"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-method-11
* group.element[=].display = "Sekvensiyalash"
* group.element[=].target[+].code = #1306402001
* group.element[=].target[=].display = "Mass spectrometry technique"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-12
* group.element[=].display = "Tezkor immunoanaliz"
* group.element[=].target[+].code = #1304162005
* group.element[=].target[=].display = "Nucleic acid sequencing technique"
* group.element[=].target[=].relationship = #equivalent
