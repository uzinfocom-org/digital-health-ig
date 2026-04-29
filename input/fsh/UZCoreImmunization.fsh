Profile: UZCoreImmunization
Parent: Immunization
Id: uz-core-immunization
Title: "UZ Core Immunization"
Description: "Uzbekistan Core Immunization profile, used to represent immunization events"

* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Бизнес-идентификатор"

* basedOn 0..* MS
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest or ImmunizationRecommendation)
* basedOn ^short = "Право, на котором основывается мероприятие"

* status 1..1 MS
* status from ImmunizationStatusVS (required)
* status ^short = "Статус вакцинации"

* statusReason 0..1 MS
* statusReason from ImmunizationStatusReasonVS (example)
* statusReason ^short = "Причина статуса"

* vaccineCode 1..1 MS
* vaccineCode from VaccineCodeVS (example)
* vaccineCode ^short = "Введённая вакцина"

* administeredProduct 0..1 MS
* administeredProduct only CodeableReference(Medication)
* administeredProduct ^short = "Препарат"


* lotNumber 0..1 MS
* lotNumber ^short = "Номер серии вакцины"

* expirationDate 0..1 MS
* expirationDate ^short = "Срок годности вакцины"

* patient 1..1 MS
* patient only Reference(UZCorePatient)
* patient ^short = "Пациент"

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Связанный контакт"

* supportingInformation 0..* MS
* supportingInformation only Reference(
    UZCoreObservation or
    UZCoreCondition
)
* supportingInformation ^short = "Дополнительная информация"

* occurrence[x] 1..1 MS
* occurrence[x] ^short = "Дата введения вакцины"

* occurrenceDateTime MS
* occurrenceDateTime ^short = "Дата (dateTime)"

* occurrenceString MS
* occurrenceString ^short = "Дата (string)"

* primarySource 0..1 MS
* primarySource ^short = "Первичный источник"

* informationSource 0..1 MS
* informationSource only CodeableReference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or RelatedPerson or UZCoreOrganization)
* informationSource from ImmunizationOriginVS (example)
* informationSource ^short = "Источник данных"

* location 0..1 MS
* location only Reference(UZCoreLocation)
* location ^short = "Место вакцинации"

* site 0..1 MS
* site from ImmunizationSiteVS (example)
* site ^short = "Место введения"

* route 0..1 MS
* route from RouteCodeVS (example)
* route ^short = "Способ введения"

* doseQuantity 0..1 MS
* doseQuantity ^short = "Доза"

* performer 0..* MS
* performer ^short = "Исполнитель"

* performer.function 0..1 MS
* performer.function ^short = "Роль"

* performer.actor 1..1 MS
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or RelatedPerson)
* performer.actor ^short = "Кто выполнил"

* note 0..* MS
* note ^short = "Примечания"

* reason 0..* MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or DiagnosticReport)
* reason ^short = "Причина вакцинации"

* isSubpotent 0..1 MS
* isSubpotent ^short = "Субпотентность"

* subpotentReason 0..* MS
* subpotentReason from SubpotentReasonVS (example)
* subpotentReason ^short = "Причина субпотентности"

* programEligibility 0..* MS
* programEligibility ^short = "Программа вакцинации"

* programEligibility.program 1..1 MS
* programEligibility.program ^short = "Программа"

* programEligibility.programStatus 1..1 MS
* programEligibility.programStatus ^short = "Статус участия"

* fundingSource 0..1 MS
* fundingSource from FundingSourceVS (example)
* fundingSource ^short = "Источник финансирования"

* reaction 0..* MS
* reaction ^short = "Реакции"

* reaction.date 0..1 MS
* reaction.date ^short = "Дата реакции"

* reaction.manifestation 0..1 MS
* reaction.manifestation only CodeableReference(UZCoreObservation)
* reaction.manifestation ^short = "Проявление"

* reaction.reported 0..1 MS
* reaction.reported ^short = "Самоотчёт"

* protocolApplied 0..* MS
* protocolApplied ^short = "Протокол"

* protocolApplied.series 0..1 MS
* protocolApplied.series ^short = "Серия"

* protocolApplied.authority 0..1 MS
* protocolApplied.authority only Reference(UZCoreOrganization)
* protocolApplied.authority ^short = "Организация"

* protocolApplied.targetDisease 0..* MS
* protocolApplied.targetDisease from TargetDiseaseVS (example)
* protocolApplied.targetDisease ^short = "Целевое заболевание"

* protocolApplied.doseNumber 1..1 MS
* protocolApplied.doseNumber ^short = "Номер дозы"

* protocolApplied.seriesDoses 0..1 MS
* protocolApplied.seriesDoses ^short = "Всего доз"




Instance: immunization-example-001
InstanceOf: UZCoreImmunization
Usage: #example
Title: "UZ Core Immunization Example"
Description: "Example immunization event for UZ Core Immunization profile."

* identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/immunization-identifier"
* identifier[0].value = "IMM-2026-0001"

* basedOn[0] = Reference(immunization-recommendation-example)

* status = #completed
* statusReason = $v3-ActReason#IMMUNE "immunity"

* vaccineCode = $sct#871722007 "Vaccine product containing only Adenovirus antigen (medicinal product)"

* administeredProduct.reference = Reference(medication-imm-001)

* lotNumber = "LOT-BCG-2026-01"
* expirationDate = "2027-01-31"

* patient = Reference(example-emma)
* encounter = Reference(example-encounter)

* supportingInformation[0] = Reference(observation-immunization-example)

* occurrenceDateTime = "2026-04-28T10:30:00+05:00"

* primarySource = true

* informationSource.concept = $immunization-origin#provider "Other Provider"
* informationSource.reference = Reference(example-practitioner)

* location = Reference(example-location-1)

* site = $v3-ActSite#LA "Left arm"
* route = $sct#36673005 "Intradermal injection"

* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL

* performer[0].function = $v2-0443#AP "Administering Provider"
* performer[0].actor = Reference(example-practitioner)

* reason[0].concept = $sct#26643006 "Oral route"

* isSubpotent = false

* programEligibility[0].program = $loinc#64994-7 "Vaccine funding program eligibility category"
* programEligibility[0].programStatus = $immunization-program-eligibility#uninsured "Uninsured"

* fundingSource = $immunization-funding-source#private "Private"

* reaction[0].date = "2026-04-28T12:00:00+05:00"
* reaction[0].manifestation.reference = Reference(observation-reaction-example)
* reaction[0].reported = false

* protocolApplied[0].series = "Routine childhood vaccination"
* protocolApplied[0].authority = Reference(example-organization)
* protocolApplied[0].targetDisease = $sct#186772009 "RMSF - Rocky Mountain spotted fever"
* protocolApplied[0].doseNumber = "1"
* protocolApplied[0].seriesDoses = "2"

* note[0].text = "Patient tolerated vaccination well."





Instance: medication-imm-001
InstanceOf: Medication
Usage: #example
Title: "Medication - Adenovirus Vaccine"
Description: "Example Medication resource representing an Adenovirus vaccine using SNOMED CT code."

* code = $sct#871722007 "Vaccine product containing only Adenovirus antigen (medicinal product)"


Instance: observation-reaction-example
InstanceOf: UZCoreObservation
Usage: #example
Title: "Observation - Post-immunization reaction"
Description: "Example Observation capturing a post-immunization reaction (fever) for a patient."

* status = #final
* code = $loinc#75325-1 "Symptom"
* subject = Reference(example-emma)
* effectiveDateTime = "2026-04-29T10:00:00+05:00"
* valueCodeableConcept = $sct#386661006 "Fever"



Instance: observation-immunization-example
InstanceOf: UZCoreObservation
Usage: #example
Title: "Observation - Body weight"
Description: "Example Observation representing body weight measurement of a patient."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2016-03-28"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 185 '[lb_av]' "lbs"



Instance: immunization-recommendation-example
InstanceOf: ImmunizationRecommendation
Usage: #example
Title: "Immunization Recommendation"
Description: "Example ImmunizationRecommendation resource indicating a due vaccine for a patient."
* patient = Reference(example-emma)
* date = "2026-04-27"
* recommendation[0].vaccineCode = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
* recommendation[0].forecastStatus = $sct#171279008 "Immunization due"