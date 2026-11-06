> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые API-взаимодействия для этого профиля. Запросы требуют JWT-токен доступа - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/ChargeItem/[id]
```

**Поиск начислений**

```
GET [base]/ChargeItem?subject=Patient/[id]
GET [base]/ChargeItem?code=http://snomed.info/sct%7C373784005
GET [base]/ChargeItem?performer=PractitionerRole/[id]
GET [base]/ChargeItem?entered-date=ge2026-01-01
```

**Создание**

Передавайте идентификатор ChargeItem с системой, заданной профилем UZ Core ChargeItem:

```
POST [base]/ChargeItem
{
  "resourceType": "ChargeItem",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-charge-item" ] },
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/dmed/preferential-referral",
    "value": "[charge-item-id]"
  }],
  "status": "billable",
  "code": { "coding": [{ "system": "http://snomed.info/sct", "code": "373784005" }] },
  "subject": { "reference": "Patient/[id]" }
}
```

**Обновление** (например, чтобы добавить исполнителя или ссылку на услугу) - отправьте полный ресурс с новыми значениями методом PUT:

```
PUT [base]/ChargeItem/[id]
If-Match: W/"3"   # ETag из последнего чтения; 412, если ресурс изменился
```

Список поддерживаемых параметров поиска см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) · [Must Support](must-support.html) · [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
