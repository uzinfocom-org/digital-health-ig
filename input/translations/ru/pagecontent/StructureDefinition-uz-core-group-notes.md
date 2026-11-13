> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение группы по серверному id и её предыдущих версий**

```
GET [base]/Group/[id]
GET [base]/Group/[id]/_history
```

**Поиск**

```
GET [base]/Group?identifier=[system]%7C[value]
GET [base]/Group?code=https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs%7Cgroup-0001-00001
GET [base]/Group?membership=definitional&type=person
GET [base]/Group?managing-entity=Organization/[id]
GET [base]/Group?name=diabetes
```

**Поиск групп, в которые входит пациент**

```
GET [base]/Group?member=Patient/[id]
```

**Создание группы**

```
POST [base]/Group
{
  "resourceType": "Group",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "active": true,
  "type": "person",
  "membership": "enumerated",
  "code": {
    "coding": [
      { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/group-kind-cs", "code": "group-0001-00005" }
    ]
  },
  "name": "Invited patients",
  "managingEntity": { "reference": "Organization/[id]" },
  "member": [ { "entity": { "reference": "Patient/[id]" } } ],
  ...
}
```

**Обновление существующей группы** (например, добавить члена или пометить его как `inactive` и обновить `quantity`) - отправьте ресурс целиком через PUT:

```
PUT [base]/Group/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Group",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-group" ] },
  "member": [ ... ],
  "quantity": 3,
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Group1-19).

### Связанные разделы

- [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) &middot; [UZ Core CarePlan](StructureDefinition-uz-core-careplan.html) &middot; [UZ Core Patient](StructureDefinition-uz-core-patient.html)
- [Компоненты](components.html) &middot; [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
