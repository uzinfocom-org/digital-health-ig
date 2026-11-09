> **Машинный перевод, требуется проверка человеком.** При расхождениях приоритет имеет английская версия.

### Быстрый старт {#quick-start}

Запросы требуют JWT: [Безопасность и аутентификация](api-access.html#security). `[base]` — [базовый URL FHIR-сервера](api-access.html#endpoints); разделитель системы и кода `|` кодируется как `%7C`.

Ресурс пока не объявлен в [CapabilityStatement DHP](CapabilityStatement-DHPCapabilityStatement.html). Подтвердите поддержку сервером. Поддержка поиска здесь не заявляется.

```http
GET [base]/BiologicallyDerivedProductDispense/[id]
```

```http
POST [base]/BiologicallyDerivedProductDispense
Content-Type: application/fhir+json
```

```http
PUT [base]/BiologicallyDerivedProductDispense/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Используйте [JSON примера выдачи](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) как тело запроса, заменив ссылки реальными id. При обновлении передайте текущую версию сервера в `If-Match`.

### Связанные материалы

- [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html)
- [Procedure](StructureDefinition-uz-core-procedure.html)
- [API](api-access.html)
