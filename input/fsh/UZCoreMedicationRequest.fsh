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
* identifier.type MS
* status MS
* intent MS
* category MS
* medication MS

* dosageInstruction MS
* dosageInstruction.patientInstruction MS

* dosageInstruction.timing MS
// --- Start of dosageInstruction.timing.repeat ---
* dosageInstruction.timing.repeat MS
// --- Bounds (Длительность/Диапазон приема) ---
// Определяем, что поддерживаются все три варианта
* dosageInstruction.timing.repeat.bounds[x] MS
// --- Count (Количество повторений) ---
* dosageInstruction.timing.repeat.count MS
* dosageInstruction.timing.repeat.countMax MS
// --- Duration (Длительность одного приема) ---
* dosageInstruction.timing.repeat.duration MS
* dosageInstruction.timing.repeat.durationUnit MS
// --- Frequency & Period (Частота) ---
* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.periodUnit MS // В вашей таблице это "periodUntil"
// --- Timing Details (Время и дни) ---
* dosageInstruction.timing.repeat.timeOfDay MS
* dosageInstruction.timing.repeat.dayOfWeek MS
* dosageInstruction.timing.repeat.when MS
// --- End of dosageInstruction.timing.repeat ---
* dosageInstruction.timing.code MS

* dosageInstruction.route MS
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate.dose[x] MS

* dispenseRequest.quantity MS
* dispenseRequest.validityPeriod MS
* dispenseRequest.dispenser MS
* note MS


* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)


Instance: example-medication-request
InstanceOf: UZCoreMedicationRequest
Description: "Пример с одной инструкцией"
Usage: #example

// --- Идентификатор ---
* identifier
  * use = $identifier-use#official
  * type = $identifier-type#PLAC "Placer Identifier"
  * system = "https://hospital.uz/prescription-ids"
  * value = "12345678"

// --- Статус и Категория ---
* status = #active
* intent = #order
* category = $medicationrequest-admin-location#outpatient "Outpatient"
// --- Лекарство ---
* medication.concept.text = "авитриптан"
// --- Пациент ---
* subject = Reference(example-david)
// --- Автор ---
* authoredOn = "2026-01-27T09:00:00+05:00"

* dosageInstruction[0]
  * text = "Принимать 2 раза в день во время еды"
  
  * timing.repeat
    // --- 1. Bounds (Границы времени) ---
    // В FHIR можно выбрать ТОЛЬКО ОДИН вариант. 
    // Я выбрал Period, так как в примере указаны конкретные даты.
    
    // ВАРИАНТ A (Выбран): boundsPeriod
    * boundsPeriod.start = "2026-01-27"
    * boundsPeriod.end = "2026-02-01"
    // ВАРИАНТ B (Из таблицы: 5d): 
    // * boundsDuration = 5 'd'
    // ВАРИАНТ C (Из таблицы: 5d-7d):
    // * boundsRange.low = 5 'd'
    // * boundsRange.high = 7 'd'

    // --- 2. Count (Количество) ---
    * count = 5
    * countMax = 5 // "no more than 5 times"
    // --- 3. Duration (Длительность приема) ---
    // Из таблицы: "6 месяцев". (Хотя для таблетки это странно, но ставим как в примере)
    * duration = 6
    * durationUnit = $ucum#mo 
    // --- 4. Frequency (Частота) ---
    * frequency = 2
    * period = 1
    * periodUnit = $ucum#d
    // --- 5. Time and Day (Время и День) ---
    * timeOfDay[0] = "08:00:00"
    * timeOfDay[1] = "16:00:00"
    * dayOfWeek[0] = $days-of-week#mon

  // --- Code (Код режима) ---
  * timing.code = $v3-GTSAbbreviation#BID 
  // --- Route (Путь введения) ---
  * route.text = "External"
  // --- Dose (Дозировка) ---
  * doseAndRate.doseQuantity
    * value = 1
    * unit = "шт"

// --- Запрос на выдачу (Dispense Request) ---
* dispenseRequest
  * quantity
    * value = 10
    * unit = "шт"
  * validityPeriod
    * start = "2026-01-27"
    * end = "2026-02-27"