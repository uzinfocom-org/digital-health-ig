> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Claim - это то, что медицинская организация отправляет плательщику, чтобы получить оплату за оказанную помощь или заранее узнать, покроет ли её плательщик. Сегодня единственный плательщик - Государственный фонд медицинского страхования (ФГМС), а заявки входят в компонент [Реимбурсация](components.html#reimbursement). Заявка указывает [пациента](StructureDefinition-uz-core-patient.html), [организацию](StructureDefinition-uz-core-organization.html)-поставщика, заключившую договор с плательщиком (она идентифицируется так, как описано на странице [Идентификация плательщиков](payor-identification.html)), страховщика, учреждение, где оказывается помощь, диагнозы, страховое покрытие и общую сумму. Её обоснованием служит направление ([ServiceRequest](StructureDefinition-uz-core-servicerequest.html)) или льготный рецепт ([MedicationRequest](StructureDefinition-uz-core-medicationrequest.html)), на котором она основана. Плательщик отвечает ресурсом [ClaimResponse](StructureDefinition-uz-core-claim-response.html), который ссылается на заявку в `request`.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Claim должно содержать

Профиль не добавляет собственных обязательных элементов; обязательные элементы приходят из базового ресурса: `status`, `type`, `use`, пациент `patient` и дата создания `created`. Каждая запись `insurance`, если она передаётся, должна содержать свой `sequence`, флаг `focal` и `coverage`, а каждая запись `diagnosis` - свой `sequence` и сам диагноз.

#### Каждое UZ Core Claim должно поддерживать

- номер заявки (`identifier`);
- статус заявки `status` (active / cancelled / draft / entered-in-error);
- тип заявки `type` (institutional / oral / pharmacy / professional / vision);
- назначение заявки (`use`: claim / preauthorization / predetermination);
- пациента `patient`, который получил или получит помощь;
- дату создания заявки `created`;
- страховщика `insurer`, которому направлена заявка, и поставщика `provider`, ответственного за неё;
- льготный рецепт (`prescription`) или направление (`referral`), которые её обосновывают;
- учреждение `facility`, где оказывается помощь;
- диагнозы (`diagnosis`) в виде кода или ссылки на Condition;
- используемое страховое покрытие (`insurance`, с `focal` и `coverage`);
- общую сумму `total` с её значением и валютой.

### Заявка, предварительное разрешение и предварительная оценка

`use` сообщает плательщику, о чём просит поставщик:

| `use` | Когда | Что отвечает плательщик |
|---|---|---|
| `preauthorization` | До оказания помощи, для услуг, требующих предварительного одобрения, например плановой госпитализации по направлению государственного страхования | Одобрение или отказ, номер разрешения в `ClaimResponse.preAuthRef` и период его действия в `ClaimResponse.preAuthPeriod` |
| `predetermination` | До оказания помощи, чтобы узнать, сколько заплатит плательщик, без обязательства оказать помощь | Суммы, которые заплатил бы плательщик |
| `claim` | После оказания помощи, чтобы получить оплату | Суммы, принятые к оплате |

Предварительное разрешение и последующая заявка на ту же помощь - это два отдельных ресурса Claim. Система поставщика сохраняет номер разрешения из ответа, а [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html), одобренный плательщиком, ссылается на ответ из своего `insurance`.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного экземпляра к заявке по льготному рецепту. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [пример заявки](Claim-example-claim.html).

#### Наименьший Claim, который вам следует отправлять

Обязательные элементы приходят из базового ресурса. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, чтобы сервер знал, по каким правилам его проверять. Такой экземпляр проходит валидацию:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03"
}
```

`status` и `use` - простые коды, поэтому передавайте само значение. `type` - это `CodeableConcept` с кодами HL7; их узбекские и русские отображаемые названия берутся из дополнений DHP, поэтому `display` можно не указывать.

#### Предварительное разрешение на плановую госпитализацию

Онкологический центр, заключивший договор с ФГМС, запрашивает одобрение перед госпитализацией пациента по [направлению государственного страхования](workflow-referral.html). `referral` ссылается на направление, `diagnosis` содержит код МКБ-10, обосновывающий госпитализацию, а `total` - ожидаемую стоимость:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-nodira" },
  "created": "2026-03-06",
  "provider": { "reference": "Organization/example-organization" },
  "referral": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "facility": { "reference": "Organization/example-organization" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "C50.9" } ]
      }
    }
  ],
  "total": { "value": 4500000, "currency": "UZS" }
}
```

`provider` - это юридическое лицо, с которым плательщик заключил договор. Если помощь оказывает филиал, укажите филиал в `facility`, а головную организацию оставьте в `provider`, потому что договор проверяется по организации, у которой есть код плательщика (см. [Идентификация плательщиков](payor-identification.html)). `facility` принимает [Location](StructureDefinition-uz-core-location.html) или Organization. `diagnosis` повторяется; нумеруйте записи с 1 в `sequence`. `total.currency` - код ISO 4217, `UZS` для узбекского сума.

#### Заявка по льготному рецепту

После оказания помощи поставщик требует оплату. Для льготного лекарства `type` равен `pharmacy`, а `prescription` ссылается на рецепт вместо направления. Здесь диагноз указан кодом МКБ-10; можно также сослаться на [Condition](StructureDefinition-uz-core-condition.html) через `diagnosisReference`:

```json
{
  "resourceType": "Claim",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "pharmacy" } ]
  },
  "use": "claim",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-03-03",
  "provider": { "reference": "Organization/tashkent-diseases-hospital" },
  "prescription": { "reference": "MedicationRequest/example-medication-request" },
  "diagnosis": [
    {
      "sequence": 1,
      "diagnosisCodeableConcept": {
        "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "R51" } ]
      }
    }
  ],
  "total": { "value": 12000, "currency": "UZS" }
}
```

Чтобы указать, какое страховое покрытие оплачивает помощь, добавьте запись `insurance` с её `sequence`, `focal: true` для покрытия, которое должен использовать плательщик, и ссылкой на `coverage`. Покрытие - это базовый ресурс FHIR Coverage; профиля Coverage в UZ Core пока нет. `insurer` - это организация-плательщик с `type` `pay`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
