ValueSet: PositionAndProfessionVS
Id: position-and-profession-vs
Title: "Defines the possible positions and professions"
Description: "State classification of positions of employees and worker professions (KODP-2020)"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs"
* ^experimental = true
* ^language = #uz

// The valueset-supplement extensions for DMEDROleClassCS and DMEDPositionSctCS belong
// here, but are temporarily off. A value set that declares any valueset-supplement makes
// the validator resolve every include up front, and it dereferences the result without a
// null check (ValueSetValidator.resolveCodeSystem, core 6.10.0) - so the SNOMED CT include
// below crashes it, and every code checked against this value set is reported as
// "cannot be checked due to special rules around the code system". Expansion is fine; the
// expander has the null guard the validator is missing. Restore the extensions once the
// publisher carries the fix. Do not delete the two supplements in the meantime.
// Reported as https://github.com/hapifhir/org.hl7.fhir.core/issues/2540

* include codes from system position-and-profession-cs
* include codes from system position-and-profession-cs-2
* include codes from system $v3-RoleClass

// Borrowed codes that DMEDPositionToDHPPositionCM maps to. Enumerated rather than
// pulled in wholesale, so that a required binding on PractitionerRole.code cannot
// accept arbitrary SNOMED CT or role codes.
* $v3-RoleCode#TPA "Third party administrator"
* $v3-RoleCode#PAYOR "Payor"
* $v3-RoleCode#ORG "Organization"
* $v3-RoleCode#VALIDATOR "Validator"

* $sct#224577009 "Healthcare Assistant"
* $sct#158965000 "Medical practitioner"
* $sct#24794006 "Government administrator"
* $sct#446050000 "Primary care physician"
* $sct#1255514008 "Regulatory affairs pharmacist"
* $sct#405279007 "Attending physician"
* $sct#159143006 "Histologist"
* $sct#25855006 "Neurological rehabilitation"
* $sct#309372007 "Ear, nose and throat surgeon"
* $sct#431488007 "Doppler ultrasound of myocardium for tissue strain rate"
