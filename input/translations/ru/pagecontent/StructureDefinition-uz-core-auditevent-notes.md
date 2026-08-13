### Быстрый старт

Типовые операции API для этого профиля. Для запросов требуется токен доступа JWT - см. раздел [Безопасность и аутентификация](api-access.html#security). `[base]` - [базовый URL FHIR-сервера](api-access.html#endpoints); символ `|` отделяет систему кодирования от значения и должен быть URL-кодирован как `%7C`.

Ресурсы AuditEvent создаются платформой и доступны клиентам только для чтения - операций создания и обновления нет. Для работы с журналом аудита используйте чтение и поиск.

**Получение по идентификатору сервера**

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

В FHIR R5 группировка события ищется по параметру `category`, а конкретный подтип - по `code` (в R4 использовались `type` / `subtype`). В этом профиле `outcome.code` привязан к ValueSet issue-severity, поэтому запрещённый или неуспешный доступ следует искать по значению `error` (или `fatal`), а не `success`.

Полный перечень поддерживаемых параметров поиска приведён в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
