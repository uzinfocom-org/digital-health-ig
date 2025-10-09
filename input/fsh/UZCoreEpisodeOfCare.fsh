Profile: UZCoreEpisodeOfCare
Parent: EpisodeOfCare
Id: uz-core-episodeofcare 
Title: "UZ Core EpisodeOfCare"
Description: "Uzbekistan Core profile for EpisodeOfCare, representing a patient's period of long-term care"
* ^experimental = true
* ^status = #active
//rules
* identifier MS
  * ^short = "Идентификатор, соответствующий этому Episode of Care"
* status MS
  * ^short = "Текущий статус Episode of Care (Required)"
* status from EpisodeOfCareStatusVS (required)
* statusHistory MS
  * ^short = "Список прошлых кодов статуса"
* statusHistory.status MS
  * ^short = "Прошлый статус Episode of Care"
* statusHistory.status from EpisodeOfCareStatusVS
* statusHistory.period MS
  * ^short = "Продолжительность EpisodeOfCare в указанном статусе"
* type MS
  * ^short = "Классификация типа эпизода оказания помощи"
* type from EpisodeOfCareTypeVS
* reason MS
  * ^short = "Перечень медицинских показаний, которые, как ожидается, будут рассмотрены в ходе оказания помощи"
* reason.use MS
  * ^short = "Для чего/как следует использовать значение причины"
* reason.use from EpisodeOfCareReasonUseVS
* reason.value MS
  * ^short = "Медицинская причина, требующая рассмотрения."
  //TODO UZCoreProcedure 
* reason.value only CodeableReference(UZCoreCondition or Procedure or UZCoreObservation or UZCoreHealthcareService)
* reason.value from $icd-10-vs
* diagnosis.use MS
  * ^short = "Список медицинских состояний, которые были рассмотрены во время эпизода оказания помощи"
* diagnosis.condition MS
* diagnosis.condition only CodeableReference(UZCoreCondition)
* diagnosis.condition from $icd-10-vs
  * ^short = "Диагноз, относящийся к встрече МКБ-10"
* patient MS
  * ^short = "Пациент, относящийся к данному эпизоду ​​оказания помощи"
* patient only Reference(UZCorePatient)
* managingOrganization MS 
  * ^short = "Организация, которая берет на себя ответственность за координацию ухода"
* managingOrganization only Reference(UZCoreOrganization)
* period MS
* referralRequest MS
* referralRequest only Reference(ServiceRequest)
* careManager MS
  * ^short = "Координатор (ответственный) по уходу за пациентом"
* careManager only Reference(UZCorePractitioner or UZCorePractitionerRole)
* careTeam MS
  * ^short = "Другие специалисты, оказывающие помощь в этом эпизоде ​​лечения"
* careTeam only Reference(CareTeam)

Instance: UZCoreEpisodeOfCare-Example
InstanceOf: UZCoreEpisodeOfCare
Title: "Example for EpisodeOfCare"
Description: "Test example of an episode of care for the UZCoreEpisodeOfCare profile."
Usage: #example

* identifier[0].system = "http://dhp.uz/ids/episode-of-care"
* identifier[0].value = "EOC-2025-0001"

* status = #active
* statusHistory[0].status = #planned
* statusHistory[0].period.start = "2025-07-28"
* statusHistory[0].period.end = "2025-08-01"

* type[0].coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs"
* type[0].coding[0].code = #mserv-0001-00001
* type[0].text = "Preventive services"

* reason[0].use.coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-reason-use-cs"
* reason[0].use.coding[0].code = #mserv-0002-00002
* reason[0].use.text = "Preventive visit"
* reason[0].value = Reference(example-headache)
* diagnosis[0].condition = Reference(example-headache)
* diagnosis[0].use.coding[0].system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[0].use.coding[0].code = #DD
* diagnosis[0].use.text = "Primary diagnosis"
* patient = Reference(example-salim)
* managingOrganization = Reference(example-organization)

* period.start = "2025-08-01"


* careManager = Reference(example-practitioner)


Instance: UZCoreEpisodeOfCare-Example02
InstanceOf: UZCoreEpisodeOfCare
Title: "Example of EpisodeOfCare"
Description: "Example EpisodeOfCare for pregnancy management and related treatment services"
Usage: #example

* identifier[0].system = "http://dhp.uz/ids/episode-of-care"
* identifier[0].value = "EOC-2025-0001"
* status = #planned
* statusHistory[0].status = #active
* statusHistory[0].period.start = "2025-08-16"
* statusHistory[0].period.end = "2025-09-01"

* type[0].coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs"
* type[0].coding[0].code = #mserv-0001-00004
* type[0].text = "Treatment services"

* reason[0].use.coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-reason-use-cs"
* reason[0].use.coding[0].code = #mserv-0002-00001
* reason[0].use.text = "Disease"
* reason[0].value = Reference(example-pregnancy)
* diagnosis[0].condition = Reference(example-pregnancy)
* diagnosis[0].use.coding[0].system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[0].use.coding[0].code = #DD
* diagnosis[0].use.text = "Primary diagnosis"
* patient = Reference(example-emma)
* managingOrganization = Reference(example-organization)

* period.start = "2025-08-01"
* careManager = Reference(example-practitioner)
