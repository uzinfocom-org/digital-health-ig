> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодирования от её значения и должен быть закодирован в URL как `%7C`.

Записи AuditEvent создаются платформой и доступны клиентам только для чтения - пути создания или обновления отсутствуют. Журнал аудита запрашивается операциями read и search.

**Чтение по идентификатору сервера**

```
GET [base]/AuditEvent/[id]
```

**Поиск в журнале аудита**

```
GET [base]/AuditEvent?patient=Patient/[id]
GET [base]/AuditEvent?patient=Patient/[id]&date=ge2025-01-01
GET [base]/AuditEvent?agent=PractitionerRole/[id]
GET [base]/AuditEvent?patient=Patient/[id]&action=R
GET [base]/AuditEvent?patient=Patient/[id]&category=http://dicom.nema.org/resources/ontology/DCM%7C110112
GET [base]/AuditEvent?patient=Patient/[id]&entity=Condition/[id]
GET [base]/AuditEvent?patient=Patient/[id]&outcome=http://hl7.org/fhir/issue-severity%7Cerror
```

В FHIR R5 группировка событий ищется через `category`, а конкретный подтип - через `code` (в R4 это `type` / `subtype`). В этом профиле `outcome.code` привязан к набору значений issue-severity, поэтому отклонённый или неуспешный доступ можно найти как `error` (или `fatal`), а не как `success`.

Полный список поддерживаемых параметров поиска см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
