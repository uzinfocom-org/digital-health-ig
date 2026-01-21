Profile: UZCoreEncounter
Parent: Encounter
Id: uz-core-encounter
Title: "UZ Core Encounter"
Description: "Uzbekistan Core Encounter profile, used to represent clinical encounters"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* identifier 0..1 MS
* identifier ^short = "Идентификатор, по которым известна эта встреча"

* status MS
* status from EncounterStatusVS (required)
* status ^short = "Текущее состояние встречи"

* class MS
* class from EncounterClassVS (required)
* class ^short = "Классификация встречи с пациентом"

* priority MS
* priority from EncounterPriorityVS (required)
* priority ^short = "Указывает срочность встречи"

* type MS
* type from EncounterTypeVS (required)
* type ^short = "Конкретный тип встречи"

* serviceType MS
* serviceType ^short = "Широкая категоризация услуг, которые должны быть предоставлены"

* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Пациент, связанный с этой встречей"

* subjectStatus MS
* subjectStatus from EncounterSubjectStatusVS (required)
* subjectStatus ^short = "Отслеживание статуса пациента в ходе встречи"

* episodeOfCare MS
* episodeOfCare ^short = "Эпизод(ы) ухода, в отношении которого следует записать эту встречу"

* basedOn MS
* basedOn ^short = "Запрос, который инициировал эту встречу"

* careTeam MS
* careTeam ^short = "Группа(ы), выделенная для участия в этой встрече"

* partOf MS
* partOf ^short = "Другая встреча, частью которой является данная встреча"

* serviceProvider MS
* serviceProvider ^short = "Организация (учреждение), ответственная за данную встречу"

* participant MS
* participant ^short = "Список участников, участвовавших во встрече"
* participant.actor MS
* participant.actor ^short = "Лицо, устройство или служба, участвующее во встрече"
* participant.period MS
* participant.period ^short = "Период времени во время встречи, в котором участвовал участник"
* participant
  * type MS
  * type from EncounterParticipantTypeVS (extensible)
  * ^short = "Роль участника встречи"

* appointment MS
* appointment ^short = "Appointment, на котором была запланирована эта встреча"

* reason MS
* reason ^short = "Перечень медицинских показаний, которые, как ожидается, будут рассмотрены в ходе оказания помощи"
* reason.use MS
* reason.use from EncounterReasonUseVS (preferred)
* reason.use ^short = "Для чего/как следует использовать значение причины"

* reason.value MS
* reason.value only CodeableReference (UZCoreClinicalCondition or DiagnosticReport or Procedure or UZCoreObservation)
* reason.value ^short = "Медицинская причина, требующая рассмотрения"

* virtualService MS
* virtualService ^short = "Телемедицина"

* actualPeriod MS
* actualPeriod ^short = "Фактическое время начала и окончания встречи"

* plannedStartDate MS
* plannedStartDate ^short = "Планируемая дата/время начала (или дата приема) встречи"

* plannedEndDate MS
* plannedEndDate ^short = "Планируемая дата/время окончания (или дата выписки) встречи"

* length MS
* length ^short = "Фактическое количество времени, в течение которого длилась встреча (за вычетом времени отсутствия)"

* diagnosis MS
* diagnosis ^short = "Список диагнозов, имеющих отношение к данному случаю"
* diagnosis.condition MS
* diagnosis.condition ^short = "Диагноз, относящийся к встрече"
* diagnosis.use MS

* account MS
* account ^short = "Набор счетов, которые могут быть использованы для выставления счетов за эту встречу"

* admission MS
* admission ^short = "Подробности о пребывании, во время которого предоставляется медицинская услуга"
* admission.origin MS
* admission.origin ^short = "Место/организация, из которой пациент прибыл до поступления"
* admission.admitSource MS
* admission.admitSource from EncounterAdmitSourceVS (required)
* admission.admitSource ^short = "Откуда пациент был принят"
* admission.reAdmission MS
* admission.reAdmission from EncounterReAdmissionVS (required)
* admission.reAdmission ^short = "Указывает, что пациент повторно госпитализирован"
* admission.destination MS
* admission.destination ^short = "Место/организация, в которую выписывается пациент"
* admission.dischargeDisposition MS
* admission.dischargeDisposition from EncounterDischargeDispositionVS (required)
* admission.dischargeDisposition ^short = "Категория или вид местоположения после выписки"

* location MS
* location.location 1..1 MS
* location.location ^short = "Место, где происходит встреча"

// Instance for UzCoreEncounter

Instance: example-encounter
InstanceOf: UZCoreEncounter
Title: "Example Encounter"
Description: "Example of an psychiatric encounter"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#IMP "Inpatient encounter"
* priority = $v3ActPriority#EM "Emergency"
* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
* serviceType[0] = Reference(example-healthcareservice)
* subject = Reference(example-patient)
* subjectStatus = encounter-subject-status-cs#gencl-0003-00001 "Awake"

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.period
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* reason[0]
  * use = encounter-reason-use-cs#mserv-0002-00001 "Disease"
  * value = Reference(Condition/example-headache)

* actualPeriod
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* plannedStartDate = "2024-01-01T10:00:00Z"
* plannedEndDate = "2024-01-01T11:00:00Z" 

* diagnosis[0].condition = Reference(Condition/example-headache)

* admission
  * admitSource = $encounter-admit-source#psych "From psychiatric hospital"
  * reAdmission = $v2-admission#R "Re-admission"
  * dischargeDisposition = $encounter-discharge-disposition#home "Home"

* location[0].location = Reference(example-location)
* location[0].status = #completed
