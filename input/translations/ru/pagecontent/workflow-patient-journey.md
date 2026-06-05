> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Этот рабочий процесс показывает, как медицинская помощь пациенту по одной проблеме группируется во времени. Отдельный приём - это [Encounter](StructureDefinition-uz-core-encounter.html); курс помощи, охватывающий множество приёмов - беременность, онкологический маршрут, хроническая инфекция, - это [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html). Эпизод - это та нить, что связывает воедино приёмы, диагнозы и результаты одного случая, чтобы клиницист видел всю историю целиком, а не разрозненные записи.

> Статус профилей: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html) и [Observation](StructureDefinition-uz-core-observation.html) профилированы в UZ Core. Профиль MedicationRequest, используемый при лечении, находится в разработке - пока он не опубликован, используйте базовый ресурс FHIR R5.

Участники: врач общей практики (открывает случай и ведёт его); специалисты (лечат в рамках случая); платформа (DHP).

<div>{% include patient-journey-sequence.svg %}</div><br clear="all"/>

### 1. Открытие эпизода

Когда проблема становится случаем, требующим ведения - как правило, при подтверждающем результате, - клиницист создаёт `EpisodeOfCare` со `status = active`, указанием пациента в `patient`, ответственного клинициста/команды и значением `period.start`, равным дате диагноза. К нему привязываются диагностический [Encounter](StructureDefinition-uz-core-encounter.html) и [Condition](StructureDefinition-uz-core-condition.html).

```
POST [base]/EpisodeOfCare
{ "resourceType": "EpisodeOfCare",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare"] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "period": { "start": "2026-05-30" } }
```

### 2. Всё в случае ссылается на эпизод

На протяжении всего случая каждый приём и каждый результат ссылаются на эпизод, благодаря чему запись остаётся сгруппированной. [Encounter](StructureDefinition-uz-core-encounter.html) несёт `episodeOfCare`; [Observation](StructureDefinition-uz-core-observation.html) фиксирует свой `encounter`; лечение фиксируется как `MedicationRequest` (или `MedicationAdministration`) на тех же приёмах.

```
POST [base]/Encounter
{ "resourceType": "Encounter",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter"] },
  "status": "completed",
  "subject": { "reference": "Patient/[id]" },
  "episodeOfCare": [{ "reference": "EpisodeOfCare/[id]" }] }
```

### 3. Два варианта маршрута

Жизненный цикл эпизода различается в зависимости от вида случая:

**Острый / излечимый (например, курс лечения ВГС).** Эпизод открывается при постановке диагноза, проходит через лечебные приёмы и контрольные лабораторные исследования и закрывается при подтверждении излечения: устанавливаются `status = finished` и `period.end`, равный дате выздоровления.

**Хронический / пожизненный (например, ведение ВГВ).** Эпизод остаётся `active` годами. Приостановки и возобновления фиксируются в `EpisodeOfCare.statusHistory`, а не путём его закрытия. Когда пациент переходит к другому поставщику, **не** переназначайте эпизод: закройте исходный (`status = finished`) и откройте новый `EpisodeOfCare` в принимающей организации, чтобы каждая организация владела той частью маршрута, которую она обеспечила.

| Событие | Эффект |
|-------|--------|
| Случай начинается (подтверждающий результат) | `EpisodeOfCare.status = active`, установлен `period.start` |
| Помощь приостановлена / возобновлена | добавление в `statusHistory` (`onhold` &rarr; `active`); эпизод остаётся открытым |
| Излечение подтверждено (острый) | `status = finished`, установлен `period.end` |
| Передача помощи | у исходного `status = finished`; новый `EpisodeOfCare` открыт в новой организации |

### 4. Чтение маршрута

Клиницист открывает случай, считывая эпизод и ресурсы, которые на него ссылаются:

```
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/Encounter?episode-of-care=EpisodeOfCare/[id]&_sort=-date
GET [base]/Observation?patient=Patient/[id]&_sort=-date
```

Поскольку каждый приём, результат и назначение несут ссылку на эпизод, это возвращает весь случай как единую нить - в чём и состоит смысл группировки по `EpisodeOfCare`, а не оставления записей разрозненными по разным приёмам.

### Связанное

- Профили: [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) &middot; [Encounter](StructureDefinition-uz-core-encounter.html) &middot; [Condition](StructureDefinition-uz-core-condition.html) &middot; [Observation](StructureDefinition-uz-core-observation.html)
- [Обзор рабочих процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
