> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему кодов от её значения и должен быть закодирован в URL как `%7C`.

Provenance обычно записывается системой-источником вместе с данными, которые он описывает, поэтому большинство клиентов читают его, следуя по ссылке `target` записи, а не создают его напрямую.

**Чтение по идентификатору сервера**

```
GET [base]/Provenance/[id]
```

**Поиск происхождения записи или подписанных записей пациента**

```
GET [base]/Provenance?target=DocumentReference/[id]
GET [base]/Provenance?patient=Patient/[id]
GET [base]/Provenance?patient=Patient/[id]&agent=PractitionerRole/[id]
GET [base]/Provenance?patient=Patient/[id]&when=ge2025-01-01
GET [base]/Provenance?entity=DocumentReference/[id]
```

Чтобы получить запись вместе с её происхождением за один вызов, используйте обратное включение, например `GET [base]/DocumentReference?_id=[id]&_revinclude=Provenance:target`.

Полный перечень поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие указания](general-guidance.html)
