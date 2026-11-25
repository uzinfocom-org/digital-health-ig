Этот процесс показывает, как медицинская информационная система (МИС) идентифицирует или регистрирует пациента и фиксирует, к какой поликлинике и к какому семейному врачу он прикреплён. Обычно МИС начинает именно с этого, поскольку каждый клинический ресурс ссылается на [Patient](StructureDefinition-uz-core-patient.html). Главное правило:

> Не формируйте Patient вручную со слов пациента. Вызовите [Patient/$populate](OperationDefinition-patient-populate.html) с PINFL (или документом), и платформа найдёт или создаст Patient по данным государственных реестров. Прикрепление хранится в этом Patient и изменяется через [$attach](OperationDefinition-patient-attach.html) и [$detach](OperationDefinition-patient-detach.html), а не правкой Patient через `PUT`.

Участники: МИС в регистратуре; платформа (DHP), которая проверяет организации и медицинских работников по реестру основных данных; государственные реестры физических лиц и реестр детей Министерства юстиции, к которым платформа обращается от имени МИС.

<div>{% include patient-registration-sequence.svg %}</div><br clear="all"/>

Все приведённые ниже операции объявлены в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) как playground, так и production [эндпоинтов](api-access.html#endpoints). OperationDefinition для Patient/$populate, $attach, $detach и $relate пока имеют статус `draft`, поэтому их детали могут измениться.

### 1. Поиск или создание пациента

Передайте идентификатор пациента тройкой `system` + `code` + `value`. Операция приводит его к PINFL, возвращает существующий Patient, если пациент с этим PINFL уже есть на платформе, а иначе создаёт его по данным государственных реестров. Ответом является сам Patient, а не Parameters; сохраните его `id` для всех последующих вызовов.

```
POST [base]/Patient/$populate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "system", "valueUri": "http://terminology.hl7.org/CodeSystem/v2-0203" },
    { "name": "code", "valueCode": "NI" },
    { "name": "value", "valueString": "[PINFL]" } ] }
```

| `code` | Документ | `value` | `birthDate` |
|--------|----------|---------|-------------|
| `NI` (национальный уникальный идентификатор личности) | PINFL | 14-значный PINFL, проверяется локально | необязателен, дополнительный критерий сопоставления |
| `PPN` (номер паспорта) | паспорт или ID-карта | серия и номер | обязателен |
| `BCT` (свидетельство о рождении) | свидетельство о рождении | серия и номер | необязателен, дополнительный критерий сопоставления |

`system` - это `http://terminology.hl7.org/CodeSystem/v2-0203`, как в примере, или одна из [систем идентификаторов](identifiers.html) `https://dhp.uz/fhir/core/sid/pid/uz/ni`, `.../ppn/local`, `.../ppn/intl` или `.../bct`. Если гражданин не найден в реестрах, ресурс не создаётся и возвращается ошибка. Адрес запрашивается отдельно; если он недоступен, Patient всё равно создаётся, но без адреса. Пациента, о котором реестры знать не могут, например иностранного гражданина или неидентифицированного пациента, регистрируют обычным `POST [base]/Patient`, как показано на странице профиля [Patient](StructureDefinition-uz-core-patient.html).

Чтобы проверить, зарегистрирован ли пациент, не создавая его, используйте поиск:

```
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[PINFL]
```

[Person/$populate](OperationDefinition-person-populate.html) принимает те же параметры и возвращает Person вместо Patient. В UZ Core нет профиля Person; для регистрации пациента используйте Patient/$populate.

### 2. Выбор поликлиники и врача

Медицинские работники связаны с организациями через [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html). Три операции только для чтения раскрывают эти связи одним вызовом, чтобы МИС могла предложить пациенту врача, который действительно работает в выбранной поликлинике:

```
GET [base]/Organization/[id]/$practitioners?_page=1&_count=20
GET [base]/Practitioner/[id]/$specializations
GET [base]/Practitioner/[id]/$organizations
```

- [Organization/$practitioners](OperationDefinition-organization-practitioners.html) возвращает список [Practitioner](StructureDefinition-uz-core-practitioner.html), работающих в [Organization](StructureDefinition-uz-core-organization.html), каждого по одному разу. Результат постраничный: `_count` по умолчанию 20, не более 100; `Bundle.total` содержит общее количество.
- [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) возвращает активные PractitionerRole медицинского работника со `specialty`, `code` (должность) и `organization`, а также связанные Organization как записи с `search.mode = include`. Используйте её, чтобы убедиться, что врач является семейным врачом в этой поликлинике. Постраничный вывод не поддерживается.
- [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) обратна $practitioners: организации, в которых работает медицинский работник.

`[id]` должен быть UUID, иначе сервер отвечает `400` с `invalid` (недопустимое содержимое). Если выводить нечего, ответ - `200` с Bundle, содержащим один OperationOutcome с `not-found` (не найдено), а не пустой Bundle. Чтобы найти `id` организации по её ИНН, выполните поиск `GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|[tin]`.

### 3. Прикрепление пациента

[Patient/$attach](OperationDefinition-patient-attach.html) одним вызовом записывает `Patient.managingOrganization` (поликлиника), `Patient.generalPractitioner` (семейный врач) и [дату прикрепления](StructureDefinition-managing-organization-attachment.html), предварительно проверив, что организация и медицинский работник существуют. Обязателен хотя бы один из параметров `organization` и `practitioner`.

```
POST [base]/Patient/[id]/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "organization", "valueReference": { "reference": "Organization/[id]" } },
    { "name": "practitioner", "valueReference": { "reference": "Practitioner/[id]" } },
    { "name": "attachmentDate", "valueDate": "2026-11-25" } ] }
```

Если МИС известен только PINFL, вызовите операцию на уровне типа. Она находит или создаёт пациента так же, как $populate, поэтому один вызов заменяет пару $populate + $attach:

```
POST [base]/Patient/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "patientIdentifier", "valueIdentifier": { "value": "[PINFL]" } },
    { "name": "organization", "valueIdentifier": { "value": "[organization identifier]" } } ] }
```

`organization` и `practitioner` принимают либо относительную `valueReference`, либо `valueIdentifier`, который должен соответствовать ровно одному ресурсу (его `system` игнорируется). `practitioner` должен быть Practitioner, а не PractitionerRole. Ответом является обновлённый Patient:

```
{ "resourceType": "Patient", "id": "[id]",
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
                  "valueDate": "2026-11-25" }],
  "managingOrganization": { "reference": "Organization/[id]" },
  "generalPractitioner": [{ "reference": "Practitioner/[id]" }], ... }
```

Изменение одной стороны прикрепления влияет на другую:

| Вызов | `managingOrganization` | `generalPractitioner` | Дата прикрепления |
|-------|------------------------|-----------------------|-------------------|
| новая `organization`, без `practitioner` | устанавливается | очищается | `attachmentDate` или текущая дата |
| новый `practitioner`, без `organization` | очищается | устанавливается | текущая дата |
| переданы оба | устанавливается | устанавливается | `attachmentDate` или текущая дата |
| та же `organization`, что и сейчас | без изменений | устанавливается, если передан | без изменений |
| повторный идентичный вызов | новая версия Patient не создаётся | | |

`attachmentDate` - полная дата в формате `YYYY-MM-DD`, принимается только вместе с `organization` и не может быть ни в будущем, ни раньше уже сохранённой даты.

> Сервер не контролирует правило, по которому пациент может менять поликлинику не чаще одного раза в год, не проверяет, работает ли медицинский работник в организации, и не учитывает `Patient.active` и `Patient.deceased[x]`. МИС проверяет это до вызова: считайте сохранённую дату прикрепления из Patient, а для врача используйте шаг 2.

Чтобы получить список пациентов, прикреплённых к поликлинике или врачу:

```
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?general-practitioner=Practitioner/[id]
```

### 4. Связь родителя и ребёнка

[Patient/$relate](OperationDefinition-patient-relate.html) вызывается на Patient родителя, который должен содержать PINFL в `https://dhp.uz/fhir/core/sid/pid/uz/ni`. Ребёнок указывается по PINFL. Платформа подтверждает по реестру детей Министерства юстиции, что родитель является матерью или отцом ребёнка, находит или создаёт Patient ребёнка так же, как $populate, и создаёт [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) для родителя со ссылкой на ребёнка.

```
POST [base]/Patient/[parent-id]/$relate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "childIdentifier", "valueIdentifier": { "value": "[child PINFL]" } },
    { "name": "relationship", "valueCode": "MTH" },
    { "name": "link", "valueBoolean": true } ] }
```

- `relationship` по умолчанию равен `GUARD` (опекун) из `http://terminology.hl7.org/CodeSystem/v3-RoleCode`; передавайте `MTH` (мать) или `FTH` (отец), если это известно.
- `link = true` дополнительно добавляет в Patient родителя `Patient.link` с `type = seealso` (см. также), указывающий на RelatedPerson.
- Ответом является Bundle типа `collection`: RelatedPerson, Patient ребёнка, Patient родителя (только если `link` равен `true` и запись удалась) и OperationOutcome, всегда последним.

> $relate всегда отвечает `200`. Проверяйте severity завершающего OperationOutcome: `error` означает, что ничего не создано и Bundle содержит только этот OperationOutcome. Неподтверждённое родство - это `business-rule` (нарушение бизнес-правила), и Patient ребёнка при этом не создаётся.

Вызов идемпотентен для пары PINFL родителя и ребёнка: существующая активная связь возвращается без изменений, но родство проверяется при каждом вызове. Связь фиксирует только родство и сама по себе не даёт доступа к данным ребёнка. Чтобы найти детей родителя:

```
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[parent PINFL]
```

### 5. Открепление пациента

[Patient/$detach](OperationDefinition-patient-detach.html) обратна $attach: она одновременно очищает `managingOrganization`, `generalPractitioner` и дату прикрепления. Параметр `reason` обязателен; система кодов для него не определена, поэтому достаточно `text`. Причина записывается в журнал, но не сохраняется в Patient.

```
POST [base]/Patient/[id]/$detach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "reason", "valueCodeableConcept": { "text": "Patient's application to detach" } } ] }
```

Открепление только от поликлиники или только от врача не поддерживается; чтобы изменить одну сторону, используйте $attach. Если откреплять нечего, возвращается текущий Patient без создания новой версии.

### 6. Обработка результатов

| Код issue | Где | Значение и действие |
|-----------|-----|---------------------|
| `invalid` (недопустимое содержимое) | $populate | неизвестный `system` или `code`; исправьте запрос |
| `invalid` (недопустимое содержимое), HTTP `400` | $practitioners, $organizations, $specializations | `[id]` не является UUID |
| `invalid` (недопустимое содержимое) | $attach | `patientIdentifier` передан на уровне экземпляра |
| `required` (отсутствует обязательный элемент) | $attach; $detach с HTTP `400` | не передан ни `organization`, ни `practitioner`; нет `reason` |
| `value` (недопустимое значение элемента) | $attach; $detach с HTTP `400` | абсолютная ссылка или ссылка не на Organization/Practitioner; пустой `reason` |
| `structure` (структурная ошибка) | $attach | для одного параметра переданы и `valueReference`, и `valueIdentifier` |
| `not-found` (не найдено), HTTP `422` | $attach | организация или медицинский работник не существует |
| HTTP `412` | $attach, $detach | Patient изменился между чтением и записью; прочитайте его заново и повторите |
| severity `error`, HTTP `200` | $relate | в создании связи отказано; ничего не создано |

### Связанные материалы

- Профили: [Patient](StructureDefinition-uz-core-patient.html) &middot; [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) &middot; [Practitioner](StructureDefinition-uz-core-practitioner.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [Organization](StructureDefinition-uz-core-organization.html)
- [Системы идентификаторов](identifiers.html) &middot; [Дата прикрепления к обслуживающей организации](StructureDefinition-managing-organization-attachment.html)
- Компонент: [Управление основными данными (MDM)](components.html#master-data-management-mdm)
- [Обзор процессов](workflows.html) &middot; [Общие рекомендации](general-guidance.html)
