> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Распространённые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

**Чтение изделия по серверному id**

```
GET [base]/Device/[id]
```

**Поиск изделия перед регистрацией (обычно первый шаг)**

```
GET [base]/Device?serial-number=SN-2023-001456
GET [base]/Device?type=http://snomed.info/sct%7C54953005&organization=Organization/[id]
```

**Другие полезные поисковые запросы**

```
GET [base]/Device?organization=Organization/[id]&status=active
GET [base]/Device?location=Location/[id]
GET [base]/Device?manufacturer=Siemens Healthineers&model=SOMATOM Edge
GET [base]/Device?device-name=SOMATOM
GET [base]/Device?lot-number=CU-2025-0412
GET [base]/Device?expiration-date=le2026-12-31
```

**Регистрация нового изделия** (только после подтверждения отсутствия совпадений)

```
POST [base]/Device
{
  "resourceType": "Device",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  "status": "active",
  "type": [ { "coding": [ { "system": "http://snomed.info/sct", "code": "54953005" } ] } ],
  "serialNumber": "...",
  ...
}
```

**Обновление существующего изделия** (например, установить `availabilityStatus` в `damaged` или `status` в `inactive` при выводе изделия из эксплуатации)

```
PUT [base]/Device/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Device",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-device" ] },
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные разделы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
