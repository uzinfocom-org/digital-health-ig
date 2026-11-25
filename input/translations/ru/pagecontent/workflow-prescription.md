Этот процесс показывает, как лекарственное средство назначается в электронном виде, отпускается в аптеке и сведения о нём передаются в Государственный фонд медицинского страхования (SHIF) для возмещения стоимости. Процесс представлен двумя ресурсами: [`MedicationRequest`](StructureDefinition-uz-core-medicationrequest.html) - это рецепт, то есть сведения о том, *что* было назначено; [`MedicationDispense`](StructureDefinition-uz-core-medication-dispense.html) - это факт отпуска, то есть сведения о том, *что* было фактически выдано и *в каком количестве*. Оба ресурса указывают лекарственное средство, как правило, через [`Medication`](StructureDefinition-uz-core-medication.html).

Участники: клиницист, выписывающий рецепт; фармацевт; DHP (Digital Health Platform - Цифровая платформа здравоохранения); Государственный фонд медицинского страхования (SHIF).

<div>{% include prescription-sequence.svg %}</div><br clear="all"/>

### 1. Выписка рецепта

Клиницист выписывает электронный рецепт в DMED или в локальной медицинской информационной системе в виде `MedicationRequest` (`intent = order`): номер рецепта указывается в `identifier`, лекарственное средство - в `medication`, пациент - в `subject`, клиницист, выписавший рецепт, - в `requester`, схема дозирования - в `dosageInstruction`, клиническое показание - в `reason` (ресурс [Condition](StructureDefinition-uz-core-condition.html), по поводу которого назначено лечение), а количество, которое аптека может отпустить, и срок действия рецепта - в `dispenseRequest`. Рецепт распечатывается с QR-кодом, который его идентифицирует.

```
POST [base]/MedicationRequest
{ "resourceType": "MedicationRequest", "status": "active", "intent": "order",
  "identifier": [{ "use": "official", "value": "[prescription number]" }],
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "reason": [{ "reference": { "reference": "Condition/[id]" } }],
  "dosageInstruction": [{ "text": "..." }],
  "dispenseRequest": {
    "validityPeriod": { "start": "2026-03-02", "end": "2026-04-01" },
    "quantity": { "value": 10, "unit": "piece",
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
      "code": "piece" } } }
```

#### Как указывается лекарственное средство

DMED назначает лекарственное средство по международному непатентованному наименованию (МНН), до выбора конкретного препарата. В этом случае `medication` рецепта ссылается на [Medication](StructureDefinition-uz-core-medication.html), который содержит только код МНН, например `000439` амоксициллин из [системы кодов МНН](CodeSystem-inn-medication-name-cs.html), а конкретный препарат указывает аптека при отпуске. Medication - это общие записи каталога, поэтому перед созданием нового [выполните поиск существующего](StructureDefinition-uz-core-medication.html#finding) по коду или идентификатору. Код можно также указать непосредственно в `medication.concept`. Те же коды МНН входят в [коды аллергенов](ValueSet-allergen-codes-vs.html), поэтому лекарственная аллергия, записанная в [AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html), может указывать то же вещество, что и рецепт.

| Что | Элемент | Коды или идентификаторы |
|---|---|---|
| Действующее вещество | `Medication.code` | Обязательная (required) привязка к набору значений [классификации лекарственных средств](ValueSet-medication-classification-vs.html): код МНН (`https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs`, например `005325` парацетамол) или код ATC (`http://www.whocc.no/atc`, например `N02BE01` Парацетамол) |
| Зарегистрированный препарат | `Medication.identifier`, нарезанный по `system` | Из реестра Фармкомитета: [номер регистрационного удостоверения](NamingSystem-registration-certificate-id.html) (`https://uzpharminfo.uz/registrationNumber`) и [ID групповой упаковки](NamingSystem-uz-pharm-box-id.html) (`https://uzpharminfo.uz/boxGroupId`) - запись реестра для торгового наименования, лекарственной формы, дозировки и упаковки; а также [GTIN](NamingSystem-global-trade-item-id.html) (`https://mobile-api.aslbelgisi.uz/gtin`) и [код ИКПУ](NamingSystem-product-service-id.html) (`https://uzpharminfo.uz/icps`) |
| Физическая упаковка | `Medication.identifier` | [ID маркировки Asl Belgisi](NamingSystem-uz-marking-id.html) (`https://mobile-api.aslbelgisi.uz/marking`) |
| Что отпущено или введено | `MedicationDispense.medication`, `MedicationAdministration.medication` | Ссылка на Medication или код МНН или ATC в `concept` (обязательная привязка к тому же набору значений) |
| Утверждённые цены | `MedicationKnowledge.associatedMedication` | Ссылается на Medication; см. шаг 3 |

### 2. Отпуск лекарственного средства

В аптеке фармацевт сканирует QR-код, чтобы получить `MedicationRequest`, а затем фиксирует фактически отпущенное лекарственное средство в `MedicationDispense`. Для рецепта, выписанного по МНН, `medication` указывает отпущенный зарегистрированный препарат: найдите его Medication по номеру регистрационного удостоверения или GTIN. Через `authorizingPrescription` `MedicationDispense` содержит reference на рецепт, что обеспечивает прослеживаемость всей цепочки:

```
GET [base]/Medication?identifier=https://uzpharminfo.uz/registrationNumber|[number]

POST [base]/MedicationDispense
{ "resourceType": "MedicationDispense", "status": "completed",
  "authorizingPrescription": [{ "reference": "MedicationRequest/[id]" }],
  "subject": { "reference": "Patient/[id]" },
  "medication": { "reference": { "reference": "Medication/[id]" } },
  "performer": [{ "actor": { "reference": "Organization/[id]" } }],
  "quantity": { "value": 10, "unit": "piece",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece" },
  "whenHandedOver": "2026-03-02T11:00:00+05:00" }
```

`quantity.code` имеет обязательную привязку к [единицам общего объёма](ValueSet-medication-total-volume-units-vs.html): UCUM для массы и объёма, `piece` для штучных единиц. Аптека может отпустить весь объём по рецепту сразу или по частям. Частичный отпуск оформляется как `MedicationDispense` со `status = completed` для фактически отпущенного количества; `MedicationRequest` остаётся `active` для неотпущенного остатка. Когда пациенту вводится доза, например в стационаре, запишите [`MedicationAdministration`](StructureDefinition-uz-core-medicationadministration.html), у которого `request` ссылается на рецепт.

| Ресурс | Изменение статуса |
|----------|-------------|
| `MedicationRequest` | `active` &rarr; `completed` (полностью отпущено) / `ended` (истёк срок или заменён) / `stopped` / `cancelled` |
| `MedicationDispense` | `in-progress` &rarr; `completed`; `declined`, если лекарственное средство не отпущено, с причиной в `notPerformedReason` |

Отозванный рецепт не удаляют, а обновляют: `stopped`, если часть лекарственного средства уже отпущена, `cancelled`, если ничего не отпущено, с причиной в `statusReason` - расширяемой (extensible) привязке к набору значений [причин статуса](ValueSet-medicationrequest-status-reason-vs.html). Для отмены электронного рецепта DMED набор значений содержит код SNOMED CT `438833006` Применение лекарственного средства противопоказано.

### 3. Передача данных в SHIF

Для лекарственного средства, стоимость которого подлежит возмещению, платформа передаёт рецепт и сведения об отпуске в SHIF для учёта возмещения. Передача выполняется асинхронно: DHP публикует ресурсы, а SHIF получает и обрабатывает их; DHP не рассматривает требование о возмещении и не принимает решение по нему. Связь `MedicationDispense.authorizingPrescription` позволяет SHIF сопоставить *назначенное лекарственное средство* с *фактически отпущенным*.

Рецепт с возмещением содержит в `category` код `rembr-0001-00001` Заказ Реимбурсационный из системы кодов [типов заказа MedicationRequest](CodeSystem-medication-request-order-type-cs.html) и ссылается в `insurance` на решение SHIF, которым он одобрен, - [ClaimResponse](StructureDefinition-uz-core-claim-response.html). [Claim](StructureDefinition-uz-core-claim.html) на возмещаемое лекарственное средство имеет `type` `pharmacy` Pharmacy и ссылается на рецепт в `prescription`.

> DHP передаёт медицинские данные, необходимые SHIF; решение о возмещении и выплата выполняются в собственной системе SHIF. Передаются только валидированные записи.

Утверждённые цены препарата - `price-type-0001-00001` Предельная цена, `price-type-0001-00002` Оптовая цена, `price-type-0001-00003` Розничная цена и `price-type-0001-00004` ФГМС цена - моделируются как запись [`MedicationKnowledge`](StructureDefinition-uz-core-medicationknowledge.html), которая ссылается на Medication препарата в `associatedMedication`; каждая цена - это `cost` со своим `type` и периодом действия. Серверы DHP пока не предоставляют endpoint MedicationKnowledge, поэтому сейчас это модель каталога цен, а не доступный вызов.

### 4. Получение данных

```
GET [base]/MedicationRequest?patient=Patient/[id]&status=active
GET [base]/MedicationDispense?prescription=MedicationRequest/[id]
GET [base]/MedicationAdministration?request=MedicationRequest/[id]
```

Связь `authorizingPrescription` позволяет всегда получить сведения об отпуске вместе с рецептом, на основании которого он был выполнен, благодаря чему SHIF и пациент видят полную историю отпуска по каждому назначению. MedicationAdministration получают так же, через `request`.

### Связанные материалы

- Профили: [Medication](StructureDefinition-uz-core-medication.html) &middot; [MedicationAdministration](StructureDefinition-uz-core-medicationadministration.html) &middot; [MedicationKnowledge](StructureDefinition-uz-core-medicationknowledge.html) &middot; [Claim](StructureDefinition-uz-core-claim.html) &middot; [ClaimResponse](StructureDefinition-uz-core-claim-response.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Patient](StructureDefinition-uz-core-patient.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html)
- Компонент: [Рецепты](components.html#prescription)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
