> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение по серверному идентификатору**

```
GET [base]/Flag/[id]
```

**Поиск отметок**

```
GET [base]/Flag?patient=Patient/[id]&status=active&code=blood-donation-deferred
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/flag-category%7Cclinical
GET [base]/Flag?identifier=[system]%7C[value]
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=Practitioner/[id]
GET [base]/Flag?date=ge2026-01-01
```

`code` - [параметр поиска UZ Core](SearchParameter-uz-core-flag-code.html): в FHIR R5 такого параметра для `Flag.code` нет. Первый запрос находит действующие медицинские отводы пациента.

**Создание**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-flag"]
  },
  "language": "uz",
  "status": "active",
  "code": {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
      "code": "blood-donation-deferred"
    }]
  },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-09T09:00:00+05:00" }
}
```

**Обновление** (например, чтобы завершить медицинский отвод): отправьте полный ресурс методом `PUT [base]/Flag/[id]`, установите `status` в `inactive` или заполните `period.end` и добавьте заголовок `If-Match`, содержащий прочитанную версию, чтобы не перезаписать параллельное изменение.

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html#Flag1-42).

### Связанные материалы

- [UZ Core Patient](StructureDefinition-uz-core-patient.html) &middot; [UZ Core Encounter](StructureDefinition-uz-core-encounter.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
