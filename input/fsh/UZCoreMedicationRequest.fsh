Profile: UZCoreMedicationRequest
Parent: MedicationRequest
Id: uz-core-medication-request
Title: "UZ Core Medication Request"
Description: "Uzbekistan Core profile for MedicationRequest, used to order medications for a patient"
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор заказа или рецепта"

* identifier.use MS
* identifier.use ^short = "Определяет вид использования идентификатора (официальный, вторичный, временный, старый, обычный)"

* identifier.type MS
* identifier.type ^short = "Код типа идентификатора"

* identifier.value MS
* identifier.value ^short = "Значение идентификатора"

* status MS
* status ^short = "Статус запроса"

* statusReason MS
* statusReason ^short = "Причина текущего статуса"
* statusReason ^definition = "Причина текущего статуса. В системе DMED (MIS) этот процесс вводится вручную врачами и фармацевтами"

* statusChanged MS
* statusChanged ^short = "Когда статус был изменен"

* intent MS
* intent ^short = "Цель заказа"

* category MS
* category ^short = "Категория места приема лекарства"

* medication MS
* medication ^short = "Лекарства, которые необходимо принять"
* medication ^definition = "Лекарства, которые необходимо принять. При назначении лекарственного препарата сложного состава врач укажет его торговое название. В других случаях используется международное непатентованное название"

* subject MS
* subject ^short = "Лицо, для которого выписывается рецепт"

* informationSource MS
* informationSource ^short = "Источник информации о заказе препарата"
* informationSource ^definition = "Используется для указания источника информации о заказе препарата. То есть, указывается, кто или какой источник предоставил информацию об этом препарате"

* extension contains trustee named trustee 0..* MS
* extension[trustee] ^short = "Доверенное лицо {Патронажная медсестра | Родственник}"
* extension[trustee] ^definition = "Доверенное лицо — это лицо, уполномоченное забирать лекарства из аптеки от имени пациента на основании письменного рецепта"

* encounter MS
* encounter ^short = "Прием, во время которого сделан запрос"

* authoredOn MS
* authoredOn ^short = "Когда был сделан запрос"

* requester MS
* requester ^short = "Кто сделал запрос"

* reason MS
* reason ^short = "Причина или показание для назначения или неназначения лекарственного средства"

* effectiveDosePeriod MS
* effectiveDosePeriod ^short = "Период, в течение которого следует принимать лекарство"

* insurance MS
* insurance ^short = "Сопутствующее страховое покрытие"

* dosageInstruction MS
* dosageInstruction ^short = "Конкретные инструкции по приему лекарств"

* dosageInstruction.patientInstruction MS
* dosageInstruction.patientInstruction ^short = "Текстовая инструкция по дозировке и приему лекарства для пациента"

* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "This section contains a few types of mechanism"
* dosageInstruction.timing ^definition = """SHOULD BE USED:
- frequency should be used with period and periodUntil
- frequency should be used with timeOfDay 
SHOULD NOT BE USED:
- 'when' should not be used with 'timeOfDay'
- event should not be used with bounds[x]
- bounds[x] should not be used with count
- event should not be used with period and Frequency
- event should not be used with timeOfDay and DayOfWeek
- period should not be used if timeOfDay + Exact Times (Count)
- period should not be used if when + countMax
- period should not be used with boundsRange
- 'dayOfWeek' and 'periodUnit' should not be used together
- dayOfWeek and timeOfDay should not be used with count
- dayOfWeek should not be used with boundsRange
- frequency should not be used with count alone unless there is a cycle"""

* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat.bounds[x] MS
* dosageInstruction.timing.repeat.bounds[x] ^short = "Длина/диапазон длин или (начальные и/или конечные) пределы"

* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.count ^short = "Продолжительность определяется количеством, а не временем"

* dosageInstruction.timing.repeat.countMax MS
* dosageInstruction.timing.repeat.countMax ^short = "максимально допустимое количество повторений"

* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.duration ^short = "Продолжительность выполнения действия"

* dosageInstruction.timing.repeat.durationUnit MS
* dosageInstruction.timing.repeat.durationUnit ^short = "с | мин | ч | д | нед | мес | год - единица времени"

* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequency ^short = "Указывает количество повторений, которые должны произойти в течение периода"

* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.period ^short = "Продолжительность, к которой применяется частота"

* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit ^short = "с | мин | ч | д | нед | мес | год - единица времени"

* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.timeOfDay ^short = "Время суток для действия"

* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.dayOfWeek ^short = "пн | вт | ср | чт | пт | сб | вс"

* dosageInstruction.timing.repeat.when MS
* dosageInstruction.timing.repeat.when ^short = "Код периода времени возникновения"

* dosageInstruction.timing.code MS
* dosageInstruction.timing.code ^short = "C | BID | TID | QID | AM | PM | QD | QOD | +"

* dosageInstruction.route MS
* dosageInstruction.route ^short = "Способ введения лекарства"

* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate ^short = "Количество вводимого лекарства, которое должно быть введено"

* dosageInstruction.doseAndRate.doseQuantity MS
* dosageInstruction.doseAndRate.doseQuantity.value MS
* dosageInstruction.doseAndRate.doseQuantity.value ^short = "Количество лекарства"

* dosageInstruction.doseAndRate.doseQuantity.unit MS
* dosageInstruction.doseAndRate.doseQuantity.unit ^short = "Значение единицы измерения количества"

* dispenseRequest MS
* dispenseRequest ^short = "Разрешение на поставку лекарственных препаратов"

* dispenseRequest.quantity MS
* dispenseRequest.quantity ^short = "Количество из общего, сколько можно взять"

* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod ^short = "Срок поставки разрешен на"

* dispenseRequest.validityPeriod.start MS
* dispenseRequest.validityPeriod.start ^short = "Время выписки рецепта"

* dispenseRequest.validityPeriod.end MS
* dispenseRequest.validityPeriod.end ^short = "Срок действия рецепта"

* dispenseRequest.dispenser MS
* dispenseRequest.dispenser ^short = "В какой аптеке я могу получить этот рецепт"

* note MS
* note ^short = "Информация о рецепте"

* medication only CodeableReference(Medication)
* subject only Reference(Patient)
* informationSource only Reference(Patient or Practitioner or PractitionerRole or RelatedPerson or Organization)
* extension[trustee].valueReference only Reference(RelatedPerson or PractitionerRole)
* encounter only Reference(Encounter)
* requester only Reference(PractitionerRole)
* reason only CodeableReference(Condition or Observation)
* insurance only Reference(Coverage)
* dispenseRequest.dispenser only Reference (Organization)


* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* statusReason from MedicationRequestStatusReasonVS (required)
* intent from MedicationRequestIntentVS (required)
* category from MedicationRequestAdminLocationVS (required)
// * medication from ... (required)
// * reason from ClinicalStatusVS (required)
* medication from GTSAbbreviationVS (required)
* dosageInstruction.timing.repeat.dayOfWeek from DaysOfWeekVS (required)
* dosageInstruction.timing.repeat.when from EventTimingVS (required)
* dosageInstruction.timing.repeat.durationUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.repeat.periodUnit from UnitsOfTimeVS (required)
* dosageInstruction.timing.repeat.dayOfWeek from DaysOfWeekVS (required)
* dosageInstruction.timing.repeat.when from EventTimingVS (required)
* dosageInstruction.timing.code from TimingAbbreviationVS (preferred)
* dosageInstruction.route from RouteCodesVS (required)
* dosageInstruction.doseAndRate.doseQuantity.code from UnitOfMeasurementVS (required)


Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Пример с одной инструкцией"
Usage: #example

* identifier
  * use = #official
  * type = $identifier-type#PLAC "Placer Identifier"
  * value = "12345678"

* status = #active
* intent = #order
* category = $medicationrequest-admin-location#outpatient
* medication.concept.text = "авитриптан"
* subject = Reference(example-salim)

// Extension: trustee
// * extension[trustee].url = "http://dmed.uz/"
* extension[trustee].valueReference.display = "Ruslan Isakhov (Father)"

* authoredOn = "2026-03-02T06:44:12+05:00"
* reason.concept.text = "headache"
* effectiveDosePeriod.start = "2026-03-02" 
// Обозначено как 3 month, для примера:
* effectiveDosePeriod.end = "2026-06-02"

* dosageInstruction[0]
  * timing
    * repeat
      * boundsPeriod
        * start = "2026-01-27"
        * end = "2026-02-01" // 5d из таблицы
      * count = 5
      * countMax = 5
      * duration = 6
      * durationUnit = #mo
      * frequency = 2
      * period = 1
      * periodUnit = #d
      * timeOfDay[0] = "08:00:00"
      * timeOfDay[1] = "16:00:00"
      * dayOfWeek[0] = #mon
    * code.text = "Two times a day at institution specified time"
  * route.coding[0]
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/route-codes-cs" 
    * code = #pharm.0001.00062 
    * display = "External"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "dona"
    * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/unit-of-measurement-cs"
    * code = #252

* dispenseRequest
  * quantity.value = 10
  * validityPeriod
    * start = "2026-01-27"
    * end = "2026-02-27"