Этот процесс показывает, как данные о медицинской помощи пациенту по поводу одной проблемы группируются во времени. Отдельный визит представлен ресурсом [Encounter](StructureDefinition-uz-core-encounter.html); продолжительный процесс оказания помощи, охватывающий несколько визитов - например, ведение беременности, лечение онкологического заболевания или хронической инфекции, - представлен ресурсом [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html). EpisodeOfCare связывает визиты, диагнозы и результаты одного клинического случая, чтобы клиницист видел целостную картину, а не разрозненные записи.

> Статус профилей: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html) и [Observation](StructureDefinition-uz-core-observation.html) профилированы в UZ Core. Профиль MedicationRequest, используемый во время лечения, находится в разработке. До его публикации используйте базовый ресурс FHIR R5.

Участники: врач общей практики (открывает клинический случай и ведёт его); профильные специалисты (оказывают помощь в рамках клинического случая); платформа DHP (Digital Health Platform - Цифровая платформа здравоохранения).

<div>{% include patient-journey-sequence.svg %}</div><br clear="all"/>

### 1. Открытие EpisodeOfCare

Когда проблема становится клиническим случаем, требующим ведения - обычно после получения подтверждающего результата, - клиницист создаёт `EpisodeOfCare` со `status = active`, указывает пациента в `patient`, ответственного клинициста или команду, а в `period.start` - дату постановки диагноза. Диагностический [Encounter](StructureDefinition-uz-core-encounter.html) и [Condition](StructureDefinition-uz-core-condition.html) связываются с этим EpisodeOfCare.

```
POST [base]/EpisodeOfCare
{ "resourceType": "EpisodeOfCare",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "period": { "start": "2026-05-30" } }
```

### 2. Все данные клинического случая связаны с EpisodeOfCare

На протяжении всего клинического случая каждый визит и каждый результат содержат reference на EpisodeOfCare, благодаря чему записи остаются сгруппированными. [Encounter](StructureDefinition-uz-core-encounter.html) содержит `episodeOfCare`; [Observation](StructureDefinition-uz-core-observation.html) указывает связанный Encounter в элементе `encounter`; лечение фиксируется в `MedicationRequest` (или `MedicationAdministration`) в рамках тех же Encounter.

```
POST [base]/Encounter
{ "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/[id]" }] }
```

### 3. Два сценария маршрута пациента

Жизненный цикл EpisodeOfCare зависит от типа клинического случая:

**Острый / излечимый случай (например, курс лечения HCV - вируса гепатита C).** EpisodeOfCare открывается при постановке диагноза, охватывает визиты в рамках лечения и контрольные лабораторные исследования и закрывается после подтверждения выздоровления: установите `status = finished`, а в `period.end` укажите дату выздоровления.

**Хронический / пожизненный случай (например, ведение HBV - вируса гепатита B).** EpisodeOfCare может оставаться в статусе `active` в течение многих лет. Периоды приостановки и возобновления помощи фиксируются в `EpisodeOfCare.statusHistory`, а не посредством закрытия EpisodeOfCare. При переходе пациента к другому поставщику медицинских услуг **не** переназначайте EpisodeOfCare: закройте исходный (`status = finished`) и создайте новый `EpisodeOfCare` в принимающей организации. Это позволяет каждой организации отвечать за ту часть маршрута пациента, в рамках которой она оказывала помощь.

| Событие | Результат |
|-------|--------|
| Начало клинического случая (подтверждающий результат) | `EpisodeOfCare.status = active`, указать `period.start` |
| Приостановка / возобновление помощи | добавить запись в `statusHistory` (`onhold` &rarr; `active`); EpisodeOfCare остаётся открытым |
| Подтверждено выздоровление (острый случай) | `status = finished`, указать `period.end` |
| Передача пациента другой медицинской организации | исходный `status = finished`; в новой организации создаётся новый `EpisodeOfCare` |

### 4. Просмотр маршрута пациента

Клиницист открывает клинический случай, получая EpisodeOfCare и ресурсы, содержащие reference на него:

```
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]&_sort=-date
GET [base]/Observation?patient=Patient/[id]&_sort=-date
```

Поскольку каждый визит, результат и назначение содержит reference на EpisodeOfCare, эти запросы возвращают весь клинический случай как единую связанную последовательность данных. Именно для этого записи группируются с помощью `EpisodeOfCare`, а не остаются разрозненными по отдельным Encounter.

### Связанные материалы

- Профили: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
