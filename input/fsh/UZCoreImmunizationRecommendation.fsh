Profile: UZCoreImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: uz-core-immunization-recommendation
Title: "UZ Core ImmunizationRecommendation"
Description: "Uzbekistan Core ImmunizationRecommendation profile, used to represent guidance or recommendations related to immunization."
* ^experimental = true
* ^status = #active
* ^date = "2026-05-07"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Business identifier"
* identifier ^definition = "Business identifier for this immunization recommendation."

* patient 1..1 MS
* patient only Reference(UZCorePatient)
* patient ^short = "Patient for whom the recommendation is intended"

* date 1..1 MS
* date ^short = "Recommendation creation date"
* date ^definition = "Date when the immunization recommendation was created."

* authority 0..1 MS
* authority only Reference(UZCoreOrganization)
* authority ^short = "Responsible organization"
* authority ^definition = "Organization responsible for the vaccination protocol."

* recommendation 1..* MS
* recommendation ^short = "Vaccination recommendation"
* recommendation ^definition = "Recommendation for immunization. Either vaccineCode or targetDisease SHALL be present."

* recommendation obeys uzcore-imrec-1

* recommendation.vaccineCode 0..* MS
* recommendation.vaccineCode from VaccineCodeVS (extensible)
* recommendation.vaccineCode ^short = "Recommended vaccine or vaccine group"

* recommendation.targetDisease 0..* MS
* recommendation.targetDisease from TargetDiseaseVS (example)
* recommendation.targetDisease ^short = "Disease against which immunization is recommended"

* recommendation.contraindicatedVaccineCode 0..* MS
* recommendation.contraindicatedVaccineCode from VaccineCodeVS (example)
* recommendation.contraindicatedVaccineCode ^short = "Contraindicated vaccine"

* recommendation.forecastStatus 1..1 MS
* recommendation.forecastStatus from RecommendationforecastStatusVS (example)
* recommendation.forecastStatus ^short = "Immunization recommendation status"

* recommendation.forecastReason 0..* MS
* recommendation.forecastReason from RecommendationReasonVS (example)
* recommendation.forecastReason ^short = "Reason for recommendation status"

* recommendation.dateCriterion 0..* MS
* recommendation.dateCriterion ^short = "Dates used to guide the recommended immunization"

* recommendation.dateCriterion.code 1..1 MS
* recommendation.dateCriterion.code from RecommendationDateCriterionVS (example)
* recommendation.dateCriterion.code ^short = "Date criterion type"

* recommendation.dateCriterion.value 1..1 MS
* recommendation.dateCriterion.value ^short = "Recommended date"

* recommendation.description 0..1 MS
* recommendation.description ^short = "Vaccination protocol details"

* recommendation.series 0..1 MS
* recommendation.series ^short = "Vaccination series name"

* recommendation.doseNumber 0..1 MS
* recommendation.doseNumber ^short = "Recommended dose number in the series"

* recommendation.seriesDoses 0..1 MS
* recommendation.seriesDoses ^short = "Recommended number of doses for immunity"

* recommendation.supportingImmunization 0..* MS
* recommendation.supportingImmunization only Reference(UZCoreImmunization or ImmunizationEvaluation)
* recommendation.supportingImmunization ^short = "Previous immunizations supporting the recommendation"

* recommendation.supportingPatientInformation 0..* MS
* recommendation.supportingPatientInformation only Reference(Resource)
* recommendation.supportingPatientInformation ^short = "Patient information supporting the recommendation"








///focus on
Invariant: uzcore-imrec-1
Description: "Either vaccineCode or targetDisease SHALL be present."
Expression: "vaccineCode.exists() or targetDisease.exists()"
Severity: #error




Instance: example-uz-core-immunization-recommendation
InstanceOf: UZCoreImmunizationRecommendation
Usage: #example
Title: "Example UZ Core ImmunizationRecommendation"
Description: "Example of an immunization recommendation with non-mandatory elements included."

* patient = Reference(example-emma)

* date = "2025-08-01T10:00:00+05:00"

* authority = Reference(example-organization)

* recommendation[0].vaccineCode[0] = $cvx#03 "measles, mumps and rubella virus vaccine"
* recommendation[0].targetDisease[0] = $sct#14189004 "Measles"
// * recommendation[0].contraindicatedVaccineCode[0] = $sct#1119305005 "COVID-19 vaccine"

* recommendation[0].forecastStatus = $immunization-recommendation-status#due "Due"
// * recommendation[0].forecastReason[1] = $sct#77176002 "Smoker"
* recommendation[0].forecastReason[0] = $sct#77386006 "Pregnancy"

* recommendation[0].dateCriterion[0].code = $loinc#30981-5 "Earliest date to give"
* recommendation[0].dateCriterion[0].value = "2025-08-10T09:00:00+05:00"

// * recommendation[0].dateCriterion[1].code = $loinc#30980-7 "Date vaccine due."
// * recommendation[0].dateCriterion[1].value = "2025-08-15T09:00:00+05:00"

// * recommendation[0].dateCriterion[2].code = $loinc#59778-1 "Date when overdue for immunization"
// * recommendation[0].dateCriterion[2].value = "2025-09-15T09:00:00+05:00"

* recommendation[0].description = "Patient is recommended to receive measles vaccination according to the national immunization schedule."
* recommendation[0].series = "Routine measles immunization series"
* recommendation[0].doseNumber = "1"
* recommendation[0].seriesDoses = "2"

* recommendation[0].supportingImmunization[0] = Reference(example-measles-immunization)
* recommendation[0].supportingPatientInformation[0] = Reference(example-pregnancy)



Instance: example-measles-immunization
InstanceOf: Immunization
Usage: #example
Title: "Immunization - Measles, Mumps and Rubella (MMR)"
Description: "Example Immunization resource representing administration of measles, mumps and rubella (MMR) vaccine to a patient."

* status = #completed
* vaccineCode = $sct#150971000119104 "Measles, mumps and rubella vaccination given (situation)"
* patient = Reference(example-emma)
* occurrenceDateTime = "2024-01-10"

