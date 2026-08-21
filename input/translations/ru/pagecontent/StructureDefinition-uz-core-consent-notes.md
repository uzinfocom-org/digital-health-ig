### Быстрый старт

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Получение по идентификатору сервера**

```
GET [base]/Consent/[id]
```

**Поиск решений пациента о согласии**

```
GET [base]/Consent?patient=Patient/[id]
GET [base]/Consent?patient=Patient/[id]&status=active
GET [base]/Consent?patient=Patient/[id]&category=http://terminology.hl7.org/CodeSystem/consentcategorycodes%7Cinfa
GET [base]/Consent?patient=Patient/[id]&period=ge2025-01-01
GET [base]/Consent?patient=Patient/[id]&date=ge2025-01-01
```

**Создание** - регистрация отказа пациента от обмена данными; при отсутствии Consent обмен разрешён по умолчанию

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

**Обновление** - например, если пациент отказывается от обмена или повторно предоставляет разрешение: отправьте полный ресурс с новым `decision`:

```
PUT [base]/Consent/[id]
If-Match: W/"3"   # ETag из последнего чтения; 412, если ресурс с тех пор изменился
```

Consent обычно задаётся пациентом в портале. Если Consent запрещает доступ, запросы данных отклоняются с HTTP 403; клиентские системы должны корректно обрабатывать такой результат.

Полный перечень поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
