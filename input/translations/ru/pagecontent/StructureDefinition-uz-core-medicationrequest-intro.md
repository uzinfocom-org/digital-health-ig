> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core MedicationRequest - это электронный рецепт: назначение лекарственного средства одному пациенту, выписанное в DMED или в локальной медицинской информационной системе. Ресурс указывает, какое [Medication](StructureDefinition-uz-core-medication.html) назначено, какому [Patient](StructureDefinition-uz-core-patient.html), кем и в ходе какого [Encounter](StructureDefinition-uz-core-encounter.html), зачем ([Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html)), как его принимать, а также сколько аптека может отпустить и до какого срока. Распечатанный рецепт содержит QR-код, который идентифицирует этот ресурс. [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) ссылается на него в `authorizingPrescription`, когда аптека отпускает лекарство, [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) - в `request`, когда вводится доза, [Claim](StructureDefinition-uz-core-claim.html) на возмещение - в `prescription`, а [CarePlan](StructureDefinition-uz-core-careplan.html) - в `activity.plannedActivityReference`. Процесс [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html) показывает, как они связаны между собой.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core MedicationRequest должен содержать

Этот профиль не добавляет обязательных элементов, но базовый ресурс MedicationRequest требует четыре: `status`, `intent`, `medication` и `subject`.

#### Каждый UZ Core MedicationRequest должен поддерживать

- номер рецепта в DMED или локальной МИС (`identifier`, с его `use`, `type` и `value`);
- статус рецепта `status` (active / on-hold / ended / stopped / completed / cancelled / entered-in-error / draft / unknown), причину статуса `statusReason` и время последнего изменения статуса (`statusChanged`);
- намерение `intent` (обычно order);
- категорию `category`: где будет приниматься лекарство (inpatient / outpatient / community), или заказ с возмещением;
- лекарственное средство `medication` - ссылку на [UZ Core Medication](StructureDefinition-uz-core-medication.html) или код;
- пациента (`subject`) и обращение `encounter`, в ходе которого выписан рецепт;
- расширение trustee: родственника или патронажную медсестру, уполномоченных получить лекарство за пациента;
- когда выписан рецепт (`authoredOn`), кто его выписал (`requester`) и кто сообщил сведения (`informationSource`);
- причину назначения (`reason`);
- период, в течение которого принимаются дозы (`effectiveDosePeriod`);
- страхование `insurance`: покрытие или решение о возмещении, за счёт которого оплачивается лекарство;
- дозировку: указания для пациента, режим приёма, путь введения и дозу (`dosageInstruction`);
- что может отпустить аптека: количество `quantity`, срок действия рецепта и аптеку (`dispenseRequest`);
- примечания в свободной форме для фармацевта или пациента (`note`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного рецепта до рецепта с возмещением, который получает родственник. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [амбулаторный рецепт на парацетамол](MedicationRequest-example-medication-request.html).

#### Наименьший MedicationRequest, который вам следует отправлять

Каждый ресурс UZ Core указывает свой профиль в `meta.profile` - так сервер узнаёт, по каким правилам выполнять валидацию. Кроме того, базовый ресурс требует `status`, `intent`, `medication` и `subject`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "active",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`medication` - это `CodeableReference`: ссылка на [UZ Core Medication](StructureDefinition-uz-core-medication.html) находится в `reference` (на уровень глубже, чем обычный `Reference`), а код лекарства - в `concept`. См. [Ссылки и CodeableReference](how-to-read.html#references-and-codeablereferences). Используйте ссылку, когда препарат есть в каталоге лекарственных средств, чтобы аптека видела точный зарегистрированный продукт.

#### Амбулаторный рецепт

Семейный врач назначает при головной боли парацетамол 500 мг два раза в день в течение пяти дней, всего десять таблеток. Номер рецепта указывается в `identifier`, показание - в `reason`, дозировка - в `dosageInstruction`, а то, что может отпустить аптека, - в `dispenseRequest`:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "identifier": [
    {
      "use": "official",
      "type": { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v2-0203", "code": "PLAC" } ] },
      "value": "12345678"
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location", "code": "outpatient" }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-encounter" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "reason": [ { "reference": { "reference": "Condition/example-headache" } } ],
  "effectiveDosePeriod": { "start": "2026-03-02", "end": "2026-03-06" },
  "dosageInstruction": [
    {
      "patientInstruction": "Take one tablet at 08:00 and one at 16:00 for five days",
      "timing": {
        "repeat": {
          "boundsPeriod": { "start": "2026-03-02", "end": "2026-03-06" },
          "frequency": 2,
          "period": 1,
          "periodUnit": "d",
          "timeOfDay": ["08:00:00", "16:00:00"]
        }
      },
      "route": { "coding": [ { "system": "http://snomed.info/sct", "code": "26643006", "display": "Oral route" } ] },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 10,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    }
  }
}
```

`status`, `intent` и `category` используют коды HL7. Их английские отображаемые названия берутся из базовых систем кодирования, а узбекские и русские - из дополнений DHP, поэтому `display` можно не указывать. `reason` - тоже `CodeableReference`: укажите ссылку на Condition пациента, если оно записано, или поместите код диагноза в `concept`. `dispenseRequest.validityPeriod` длится от даты выписки рецепта до даты окончания его действия. `dispenseRequest.quantity` - общее количество, которое может отпустить аптека, в [единицах общего объёма](ValueSet-medication-total-volume-units-vs.html): UCUM для массы и объёма, локальная система единиц для штучных единиц, таких как `piece`.

#### Запись режима приёма

`dosageInstruction.timing.repeat` указывает, как часто принимается доза. Сочетайте его поля одним из следующих способов и сохраняйте понятное человеку описание в `timing.code.text` или `patientInstruction`:

| Указание | `timing.repeat` |
|---|---|
| Два раза в день, в 08:00 и 16:00 | `frequency` 2, `period` 1, `periodUnit` d, `timeOfDay` 08:00:00 и 16:00:00 |
| Три раза в день после еды | `frequency` 3, `period` 1, `periodUnit` d, `when` PC |
| Каждые 8 часов | `frequency` 1, `period` 8, `periodUnit` h |
| По понедельникам, средам и пятницам | `dayOfWeek` mon, wed и fri |
| Всего 10 доз | `count` 10 |

Передавайте `boundsPeriod` с датами лечения. `when` и `timeOfDay` - альтернативы: используйте одно или другое, но не оба. Формальное представление `dosageInstruction.timing` перечисляет, какие ещё поля нельзя сочетать.

#### Рецепт с возмещением, который получает родственник

Рецепт, оплачиваемый Государственным фондом медицинского страхования, содержит в `category` национальный код заказа с возмещением и ссылается на решение о возмещении в `insurance`. Если лекарство получит другой человек, добавьте расширение trustee. `dispenseRequest.dispenser` называет аптеку, в которой можно отпустить лекарство по рецепту:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/trustee",
      "valueReference": { "reference": "RelatedPerson/example-related-person" }
    }
  ],
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-request-order-type-cs",
          "code": "rembr-0001-00001"
        }
      ]
    }
  ],
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-03-02T06:44:12+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "insurance": [ { "reference": "ClaimResponse/example-claim-response" } ],
  "dosageInstruction": [
    {
      "timing": {
        "code": { "text": "Three times a day after meals" },
        "repeat": { "frequency": 3, "period": 1, "periodUnit": "d", "when": ["PC"] }
      },
      "doseAndRate": [
        { "doseQuantity": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" } }
      ]
    }
  ],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": {
      "value": 30,
      "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece"
    },
    "dispenser": { "reference": "Organization/tashkent-diseases-hospital" }
  }
}
```

Расширение [trustee](StructureDefinition-trustee.html) может повторяться; его значение - ссылка на [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) (родственника) или [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) (патронажную медсестру). `insurance` ссылается на Coverage или [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html).

#### Прекращение или отмена рецепта

Отозванный рецепт не удаляется. Обновите его: `status` установите в `stopped` (часть лекарства уже отпущена или принята) или `cancelled` (ничего не отпущено), причину укажите в `statusReason`, а время изменения - в `statusChanged`:

```json
{
  "resourceType": "MedicationRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medicationrequest"] },
  "status": "stopped",
  "statusReason": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason", "code": "salg" } ]
  },
  "statusChanged": "2026-03-04T09:15:00+05:00",
  "intent": "order",
  "medication": { "reference": { "reference": "Medication/example-medication" } },
  "subject": { "reference": "Patient/example-salim" }
}
```

`statusReason` имеет обязательную (required) связку с набором значений [причин статуса](ValueSet-medicationrequest-status-reason-vs.html); `salg` означает, что у пациента развилась аллергия. Полностью отпущенный рецепт переходит в статус `completed`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
