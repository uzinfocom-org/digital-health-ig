> **Машинный перевод, требуется проверка человеком.** При расхождениях приоритет имеет английская версия.

### Быстрый старт {#quick-start}

Запросы требуют JWT: см. [Безопасность и аутентификация](api-access.html#security). `[base]` — [базовый URL FHIR-сервера](api-access.html#endpoints); разделитель системы и кода `|` кодируется как `%7C`.

Flag пока не объявлен в [CapabilityStatement DHP](CapabilityStatement-DHPCapabilityStatement.html). Перед использованием подтвердите поддержку сервером. Поддержка поиска здесь не заявляется.

**Чтение по id сервера**

```http
GET [base]/Flag/[id]
```

**Создание**

```http
POST [base]/Flag
Content-Type: application/fhir+json
```

**Обновление с контролем версии**

```http
PUT [base]/Flag/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Используйте [JSON допуска](Flag-example-donation-eligible-flag.json.html) или [JSON отвода](Flag-example-donation-deferred-flag.json.html) как тело запроса. Замените ссылки примеров действительными id. При обновлении передайте текущую версию сервера в `If-Match`.

### Связанные материалы

- [Patient](StructureDefinition-uz-core-patient.html)
- [Encounter](StructureDefinition-uz-core-encounter.html)
- [API](api-access.html)
