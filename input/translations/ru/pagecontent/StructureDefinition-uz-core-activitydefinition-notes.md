### Типы ресурсов запросов

Национальный [ValueSet типов запросов](ValueSet-request-resource-types-vs.html), связанный с `ActivityDefinition.kind`, включает полный список [FHIR R5 Request Resource Types](https://hl7.org/fhir/R5/valueset-request-resource-types.html). Supplement содержит русские и узбекские переводы. ServiceRequest и остальные базовые типы запросов допускаются без нового профиля ActivityDefinition. Observation и QuestionnaireResponse не являются запросами и не входят в обязательный базовый список.

Для шаблона приглашения используют существующий профиль с `kind = ServiceRequest`, `intent = plan` и `profile`, указывающим на [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html). Приложение заполняет пациента, категорию приглашения, идентификатор программы и версионную ссылку на PlanDefinition при создании запроса пациента. Определения не оценивают результаты и не меняют статус запроса. Примеры скрининга и контракт приложения находятся в Integrations.
