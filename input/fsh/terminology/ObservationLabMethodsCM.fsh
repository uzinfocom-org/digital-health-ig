Instance: lab-methods-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Local Lab Methods to SNOMED CT Mapping"
Description: "Maps local UZ laboratory methods to SNOMED CT codes for laboratory diagnostics."

* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/lab-methods-to-snomed"
* name = "LabMethodsToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationLabMethodsCS)
* sourceScopeCanonical = Canonical(ObservationLabMethodVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #lab-method-1
* group.element[=].display = "PZR (Polimeraza zanjir reaksiyasi)"
* group.element[=].target[+].code = #9718006
* group.element[=].target[=].display = "Polymerase chain reaction"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-2
* group.element[=].display = "IFA (Immunoferment tahlili)"
* group.element[=].target[+].code = #414111007
* group.element[=].target[=].display = "Enzyme immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-3
* group.element[=].display = "ELISA"
* group.element[=].target[+].code = #76978006
* group.element[=].target[=].display = "Enzyme-linked immunosorbent assay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-4
* group.element[=].display = "Kultural usul"
* group.element[=].target[+].code = #273973005
* group.element[=].target[=].display = "Cultural method"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-5
* group.element[=].display = "Immunoanaliz"
* group.element[=].target[+].code = #414464004
* group.element[=].target[=].display = "Immunoassay"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-6
* group.element[=].display = "Spektrofotometriya"
* group.element[=].target[+].code = #70621000052105
* group.element[=].target[=].display = "Spectrophotometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-7
* group.element[=].display = "Oqim sitometriyasi"
* group.element[=].target[+].code = #708058007
* group.element[=].target[=].display = "Flow cytometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-8
* group.element[=].display = "Mikroskopiya"
* group.element[=].target[+].code = #278289002
* group.element[=].target[=].display = "Microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-9
* group.element[=].display = "Xromatografiya"
* group.element[=].target[+].code = #1303858005
* group.element[=].target[=].display = "Chromatography"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-10
* group.element[=].display = "Mass-spektrometriya"
* group.element[=].target[+].code = #1306402001
* group.element[=].target[=].display = "Mass spectrometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-11
* group.element[=].display = "Sekvensiyalash"
* group.element[=].target[+].code = #304646005
* group.element[=].target[=].display = "Sequencing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-12
* group.element[=].display = "Tezkor immunoanaliz"
* group.element[=].target[+].code = #708099001
* group.element[=].target[=].display = "Rapid immunoassay technique"
* group.element[=].target[=].relationship = #equivalent
