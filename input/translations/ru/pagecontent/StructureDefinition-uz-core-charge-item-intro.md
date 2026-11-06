> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ChargeItem фиксирует фактическую стоимость отпущенного пациенту лекарства. Ресурс связывает начисление с пациентом и записью об отпуске лекарства, а также указывает оплачиваемую услугу. Срез идентификатора профиля содержит идентификатор ChargeItem, присвоенный медицинской информационной системой.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны присутствовать всегда (обязательные) или поддерживаться при наличии данных ([Must Support](must-support.html)). Must Support сам по себе не делает элемент обязательным. [Формальный профиль](#profile) задаёт точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core ChargeItem должен содержать

Базовый ChargeItem требует `status`, `code`, описывающий оплачиваемую услугу, и `subject`, указывающий, кому выставлено начисление. В этом профиле значение `status` фиксировано как `billable`.

#### Каждый UZ Core ChargeItem должен поддерживать

- `identifier` с системой, назначенной медицинской информационной системой;
- статус `billable` и `code` оплачиваемой услуги;
- `subject` и `occurrence[x]`, если они известны;
- `performer` и `performingOrganization`;
- `quantity` и `totalPriceComponent`;
- `service`, связанный с начислением, например MedicationDispense, в котором зарегистрирован отпуск лекарства.

### Составление JSON шаг за шагом

Ниже приведены минимальный ChargeItem и пример с идентификатором и сведениями об отпуске. В каждом примере профиль указан в `meta.profile`.

#### Минимальный ChargeItem

Минимальный ChargeItem содержит статус, код услуги и пациента. В профиле статус равен `billable`, а в примере код обозначает отпуск лекарства:

```json
{
  "resourceType": "ChargeItem",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
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
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item"]
  },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/dmed/preferential-referral",
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
  "occurrenceDateTime": "2026-11-06T10:30:00+05:00",
  "quantity": {
    "value": 10,
    "unit": "dona",
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
    "code": "piece"
  },
  "totalPriceComponent": [{
    "type": {
      "coding": [{
        "system": "http://hl7.org/fhir/invoice-price-component-type",
        "code": "base"
      }]
    },
    "amount": { "value": 15000, "currency": "UZS" }
  }],
  "service": {
    "reference": { "reference": "MedicationDispense/example-medication-dispense-outpatient" }
  }
}
```

`service` имеет тип `CodeableReference`: целевая ссылка находится внутри `reference`. Используйте фактические идентификатор, время, количество, сумму и ссылку на отпуск из исходной системы. Полный пример FSH: [пример ChargeItem](ChargeItem-example-charge-item-medication-dispense.html).
