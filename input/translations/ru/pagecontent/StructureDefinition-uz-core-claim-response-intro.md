> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core ClaimResponse - это ответ плательщика на заявку [Claim](StructureDefinition-uz-core-claim.html): одобрено ли предварительное разрешение и на какой срок, сколько заплатил бы плательщик по предварительной оценке или какую сумму он принимает к оплате по заявке. Сегодня плательщик - Государственный фонд медицинского страхования (ФГМС), а ответы входят в компонент [Реимбурсация](components.html#reimbursement). Ответ ссылается на заявку, на которую он отвечает, в `request`, на [пациента](StructureDefinition-uz-core-patient.html) и на [организацию](StructureDefinition-uz-core-organization.html)-страховщика, принявшую решение. [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) на льготное лекарство ссылается на одобренный ответ из своего `insurance`.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core ClaimResponse должно содержать

Обязательные элементы приходят из базового ресурса: `status`, `type`, `use`, пациент `patient`, дата создания `created` и результат обработки `outcome`. Каждая запись `total`, если она передаётся, должна содержать `category` и `amount`. Расширение причины отмены, если оно передаётся, должно содержать код.

#### Каждое UZ Core ClaimResponse должно поддерживать

- номер ответа (`identifier`);
- статус ответа `status` (active / cancelled / draft / entered-in-error);
- тип заявки, на которую дан ответ, `type` (institutional / oral / pharmacy / professional / vision);
- назначение заявки (`use`: claim / preauthorization / predetermination);
- пациента `patient`, к которому относится заявка;
- дату создания ответа `created`;
- страховщика `insurer`, принявшего решение, и заявку Claim, на которую дан ответ (`request`);
- завершена ли обработка (`outcome`: queued / complete / error / partial) и решение `decision` (approved / denied / partial / pending);
- для предварительного разрешения - номер разрешения (`preAuthRef`) и период его действия (`preAuthPeriod`);
- суммы по категориям (`total`);
- почему ответ был отменён (расширение причины отмены), например потому что истёк срок предварительного разрешения.

### Результат, решение и отмена

`outcome` и `decision` отвечают на разные вопросы. `outcome` показывает, насколько плательщик продвинулся в обработке заявки: `queued`, пока она ждёт, `complete`, когда обработка завершена, `error`, если заявку не удалось обработать. `decision` показывает, что решил плательщик: `approved`, `denied`, `partial` или `pending`. Ответ может быть одновременно `complete` и `denied`.

Одобренное предварительное разрешение действует только в пределах `preAuthPeriod`. Если период заканчивается до того, как помощь оказана и заявлена к оплате, плательщик устанавливает `status` в `cancelled` и записывает причину в расширении [причины отмены](StructureDefinition-claim-response-cancellation-reason.html). `decision` остаётся прежним, поэтому история одобрения сохраняется.

### Сборка JSON, шаг за шагом

Примеры ниже прослеживают одно предварительное разрешение с момента его получения плательщиком до истечения срока. Каждый из них проходит валидацию по этому профилю. Полный эталонный экземпляр - [отменённое предварительное разрешение](ClaimResponse-example-claim-response.html).

#### Наименьший ClaimResponse, который вам следует отправлять

Обязательные элементы приходят из базового ресурса. Каждый ресурс UZ Core также указывает свой профиль в `meta.profile`, чтобы сервер знал, по каким правилам его проверять. Ответ полезен только вместе с заявкой `request`, на которую он отвечает. Такой экземпляр проходит валидацию:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-03",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "queued"
}
```

`status`, `use` и `outcome` - простые коды, поэтому передавайте само значение. `type` использует коды HL7; их узбекские и русские отображаемые названия берутся из дополнений DHP, поэтому `display` можно не указывать. Скопируйте `type`, `use` и `patient` из заявки, на которую даётся ответ.

#### Одобренное предварительное разрешение

Когда плательщик принял решение, `outcome` становится `complete`, а `decision` содержит результат. Номер разрешения указывается в `preAuthRef`, период действия - в `preAuthPeriod`, а одобренная сумма - в `total`:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "status": "active",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" },
  "total": [
    {
      "category": {
        "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/adjudication", "code": "benefit" } ]
      },
      "amount": { "value": 100000, "currency": "UZS" }
    }
  ]
}
```

`total` повторяется, одна запись на каждую `category`; `benefit` - это сумма, которую заплатит плательщик. `amount.currency` - код ISO 4217, `UZS` для узбекского сума. Укажите плательщика в `insurer` ссылкой на его организацию с `type` `pay` (см. [Идентификация плательщиков](payor-identification.html)).

#### Истёкшее предварительное разрешение

Помощь не была оказана до 5 декабря 2026 года. Плательщик отменяет одобрение, обновляя тот же ответ, поэтому `created` сохраняет дату первоначального создания ответа:

```json
{
  "resourceType": "ClaimResponse",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-claim-response"] },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/cancellation-reason-cs",
            "code": "Reimb0001-00001"
          }
        ]
      }
    }
  ],
  "status": "cancelled",
  "type": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/claim-type", "code": "institutional" } ]
  },
  "use": "preauthorization",
  "patient": { "reference": "Patient/example-salim" },
  "created": "2026-10-05",
  "request": { "reference": "Claim/example-claim" },
  "outcome": "complete",
  "decision": {
    "coding": [ { "system": "http://hl7.org/fhir/claim-decision", "code": "approved" } ]
  },
  "preAuthRef": "PA-2026-001",
  "preAuthPeriod": { "start": "2026-10-05", "end": "2026-12-05" }
}
```

`Reimb0001-00001` - это «Истекший» в системе кодов [причин отмены](CodeSystem-cancellation-reason-cs.html). Её основное отображаемое название - узбекское, поэтому либо не указывайте `display`, как здесь, либо установите `language` ресурса в соответствии с передаваемым `display`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
