> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Task Referral Approval отслеживает один шаг согласования направления или госпитализации за счёт государства по порядку, установленному Приложением 1 к Постановлению Кабинета Министров № 694 от 04.11.2025. Само направление - это [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) с видом оплаты по государственному тарифу; оно указывает, что нужно сделать. Каждая Task указывает, кто должен рассмотреть направление на одном этапе (семейный врач, специалист, региональная или республиканская комиссия, страховой фонд, принимающая больница), в какой срок и насколько этот этап продвинулся. Платформа создаёт и обновляет Task по событиям процесса и согласует с ними статус направления; пользователи никогда не закрывают Task напрямую. Порядок этапов и правила, которые поддерживают согласованность направления и его Task, описаны в [рабочем процессе направления](workflow-referral.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждая UZ Core Task Referral Approval должна содержать

Каждая Task должна дважды ссылаться на направление: в `basedOn` - на запрос, который она выполняет, и в `focus` - на запрос, над которым выполняется действие. Профиль делает оба элемента обязательными и допускает ровно по одному значению. Базовый ресурс также требует `status` и `intent`.

#### Каждая UZ Core Task Referral Approval должна поддерживать

- бизнес-идентификатор задачи (`identifier`, не более одного);
- этап согласования (`code`: семейный врач / специалист / региональная комиссия / республиканская комиссия / страховой фонд / госпитализация);
- направление, к которому относится задача (`basedOn` и `focus`), и более крупную задачу, частью которой она является (`partOf`);
- статус жизненного цикла (`status`: requested / accepted / in-progress / on-hold / completed / rejected / failed и другие) и статус, показываемый пользователям (`businessStatus`: на рассмотрении / подтверждено / просрочено и другие);
- намерение (`intent`, обычно order);
- [пациента](StructureDefinition-uz-core-patient.html), для которого выписано направление (`for`);
- кто должен действовать на этом этапе (`owner`: [Organization](StructureDefinition-uz-core-organization.html) или [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html));
- срок этапа (`requestedPeriod`, его начало и конец) и когда работа над ним фактически началась и закончилась (`executionPeriod`).

### Два статуса

У Task два статуса, и они отвечают на разные вопросы. `status` - жизненный цикл задачи в FHIR, он управляет направлением: когда последняя Task согласования переходит в `completed`, ServiceRequest становится `completed`, а когда Task комиссии переходит в `rejected` или `failed`, ServiceRequest становится `revoked`. `businessStatus` - состояние этапа так, как его видят пользователи, из [национальных бизнес-статусов задач](CodeSystem-task-business-status-cs.html). Профиль добавляет одно правило (`uzcore-tsk-1`, предупреждение): если задача не выполнена, не отменена и не завершилась неудачей, а её `requestedPeriod.end` уже прошёл, `businessStatus` должен быть `overdue`. Просроченный этап не меняет статус направления.

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего экземпляра к этапу, пропустившему срок. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры начинаются с [согласования семейным врачом](Task-example-task-family-doctor.html), а направление, к которому они относятся, - [направление на госпитализацию](ServiceRequest-example-hospitalization-referral.html).

#### Наименьшая Task, которую вам следует отправлять

`basedOn`, `focus`, `status` и `intent` обязательны, а каждый ресурс UZ Core указывает свой профиль в `meta.profile`. Задача полезна только с этапом в `code`. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-family-doctor",
        "display": "Oilaviy shifokorning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" }
}
```

У кодов этапов узбекские отображаемые названия, поэтому ресурс задаёт `language` равным `uz`. `basedOn` и `focus` ссылаются на один и тот же ServiceRequest. Новый этап начинается со статуса `requested`.

#### Этап на рассмотрении

Специалист принимающей больницы рассматривает направление. `owner` - организация, которая должна действовать, `for` - пациент, `requestedPeriod` - срок, установленный для этого этапа, а `executionPeriod.start` - момент начала рассмотрения:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-specialist",
        "display": "Mutaxassisning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "in-progress",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "in-review",
        "display": "Ko'rib chiqilmoqda"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-06T09:00:00+05:00", "end": "2026-12-31T18:00:00+05:00" },
  "executionPeriod": { "start": "2026-03-06T10:15:00+05:00" },
  "owner": { "reference": "Organization/tashkent-diseases-hospital" }
}
```

`owner` - это [Organization](StructureDefinition-uz-core-organization.html) для комиссии или учреждения либо [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), когда действовать должен один врач. Заполните `executionPeriod.end`, когда этап завершится.

#### Этап с пропущенным сроком

Региональная комиссия не приняла решения, и срок в `requestedPeriod.end` прошёл. Задача по-прежнему в статусе `requested`, поэтому `businessStatus` равен `overdue`:

```json
{
  "resourceType": "Task",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-referral-approval-task"] },
  "language": "uz",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-regional-commission",
        "display": "Mintaqaviy komissiyaning roziligi"
      }
    ]
  },
  "basedOn": [ { "reference": "ServiceRequest/example-hospitalization-referral" } ],
  "status": "requested",
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "overdue",
        "display": "Muddati o'tgan"
      }
    ]
  },
  "intent": "order",
  "focus": { "reference": "ServiceRequest/example-hospitalization-referral" },
  "for": { "reference": "Patient/example-nodira" },
  "requestedPeriod": { "start": "2026-03-07T09:00:00+05:00", "end": "2026-03-08T18:00:00+05:00" },
  "owner": { "reference": "Organization/example-organization" }
}
```

Без `overdue` здесь валидатор предупреждает, что правило `uzcore-tsk-1` не выполнено.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
