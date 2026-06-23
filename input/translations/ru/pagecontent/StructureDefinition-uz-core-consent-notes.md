> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Распространённые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодов от её значения и должен быть URL-закодирован как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Consent/[id]
```

**Поиск решений о согласии пациента**

```
GET [base]/Consent?patient=Patient/[id]
GET [base]/Consent?patient=Patient/[id]&status=active
GET [base]/Consent?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/consentcategorycodes%7Cinfa
GET [base]/Consent?patient=Patient/[id]&period=ge2025-01-01
GET [base]/Consent?patient=Patient/[id]&date=ge2025-01-01
```

**Создание** (отказ пациента от участия - при отсутствии ресурса Consent обмен данными разрешён по умолчанию)

```
POST [base]/Consent
{
  "resourceType": "Consent",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-consent" ] },
  "status": "active",
  "subject": { "reference": "Patient/[id]" },
  "decision": "deny",
  ...
}
```

**Обновление** (например, пациент отзывает или повторно предоставляет согласие) - выполните PUT с полным ресурсом и новым значением `decision`:

```
PUT [base]/Consent/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Согласие обычно устанавливается пациентом в портале. Отклонённое согласие приводит к отказу в запросах данных с кодом HTTP 403; клиенты должны обрабатывать такой исход.

Полный список поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
