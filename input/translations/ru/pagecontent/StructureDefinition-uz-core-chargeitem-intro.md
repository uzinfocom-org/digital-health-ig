> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ChargeItem фиксирует оплачиваемую позицию: услугу, товар или лекарство, предоставленные [пациенту](StructureDefinition-uz-core-patient.html), с их количеством и стоимостью. Ресурс указывает, за что выставлено начисление, и связывает его с событием, в котором это было предоставлено, например с [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html), [Procedure](StructureDefinition-uz-core-procedure.html), [Observation](StructureDefinition-uz-core-observation.html) или [ServiceRequest](StructureDefinition-uz-core-servicerequest.html). Срез идентификатора профиля содержит идентификатор ChargeItem, присвоенный медицинской информационной системой.

### Обязательные и поддерживаемые (Must Support) элементы данных

Указанные ниже элементы должны либо всегда присутствовать (обязательные элементы), либо поддерживаться при наличии соответствующих данных ([Must Support](must-support.html)). Не все они обязательны, однако система должна заполнять каждый элемент Must Support при наличии данных и обрабатывать его при получении. Ниже приведено человекочитаемое резюме; [формальные представления](#profile) содержат точные кардинальности, типы и терминологические привязки.

#### Каждый UZ Core ChargeItem должен содержать

Базовый ChargeItem требует `status`, `code`, описывающий оплачиваемую услугу, и `subject`, указывающий, кому выставлено начисление.

#### Каждый UZ Core ChargeItem должен поддерживать

- `identifier` с системой, назначенной медицинской информационной системой;
- `status` (planned / billable / not-billable / aborted / billed / entered-in-error / unknown) и `code` оплачиваемой услуги или товара;
- `subject` и `occurrence[x]`, если они известны;
- `encounter`, в ходе которого возникло начисление, если он известен;
- `performer` и `performingOrganization`;
- `quantity` и `totalPriceComponent`;
- `service`, связанный с начислением, например отпуск лекарства, процедура или анализ.

### Составление JSON шаг за шагом

Ниже приведены минимальный ChargeItem и начисление за отпуск лекарства с идентификатором, количеством, стоимостью и записью об отпуске. В каждом примере профиль указан в `meta.profile`.

#### Минимальный ChargeItem

Минимальный ChargeItem содержит статус, код того, за что выставлено начисление, и пациента. Здесь начисление имеет статус `billable`, то есть готово к выставлению счёта, а код обозначает отпуск лекарства:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
  },
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

#### Начисление за отпуск лекарства

Добавьте идентификатор медицинской информационной системы, время начисления, количество и сумму, а также ссылку на запись об отпуске. Система идентификатора задана профилем; передавайте значение вместе с указанной системой:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-chargeitem"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/charge-item",
    "value": "CI-2026-0001"
  }],
  "status": "billable",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "373784005",
      "display": "Dispensing medication"
    }]
  },
  "subject": { "reference": "Patient/example-salim" },
  "occurrenceDateTime": "2026-03-02T11:00:00+05:00",
  "performer": [{
    "actor": { "reference": "Practitioner/example-practitioner" }
  }],
  "performingOrganization": { "reference": "Organization/tashkent-diseases-hospital" },
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": {
    "type": "base",
    "amount": { "value": 15000, "currency": "UZS" }
  },
  "service": [{
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }]
}
```

`service` имеет тип `CodeableReference`: целевая ссылка находится внутри `reference`. Используйте фактические идентификатор, время, количество, сумму и ссылку на услугу из исходной системы. Полный пример FSH: [пример ChargeItem](ChargeItem-example-charge-item-medication-dispense.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
