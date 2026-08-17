> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему идентификатора и его значение и должен быть URL-кодирован как `%7C`.

**Чтение связанного лица по серверному id**

```
GET [base]/RelatedPerson/[id]
```

**Поиск лиц, связанных с пациентом**

```
GET [base]/RelatedPerson?patient=Patient/[id]
GET [base]/RelatedPerson?patient=Patient/[id]&relationship=PRN
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|12345678901234
GET [base]/RelatedPerson?name=Zafarov
```

**Создание нового связанного лица**

```
POST [base]/RelatedPerson
{
  "resourceType": "RelatedPerson",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  "patient": { "reference": "Patient/[id]" },
  ...
}
```

**Обновление существующего связанного лица**

```
PUT [base]/RelatedPerson/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "RelatedPerson",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-relatedperson" ] },
  ...
}
```

Полный перечень поддерживаемых поисковых параметров см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), а URI систем идентификаторов - в разделе [Системы идентификаторов](identifiers.html).

### См. также

- [Системы идентификаторов](identifiers.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
