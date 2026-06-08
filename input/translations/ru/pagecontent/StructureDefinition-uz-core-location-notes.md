> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` разделяет систему идентификатора и его значение и должен быть закодирован в URL как `%7C`.

**Чтение местоположения по серверному id**

```
GET [base]/Location/[id]
```

**Поиск местоположений**

```
GET [base]/Location?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|200935935
GET [base]/Location?organization=Organization/[id]&status=active
GET [base]/Location?name=onkologiya&address-city=22070022
GET [base]/Location?type=ONCL
```

**Создание нового местоположения**

```
POST [base]/Location
{
  "resourceType": "Location",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] },
  ...
}
```

**Обновление существующего местоположения**

```
PUT [base]/Location/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Location",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-location" ] },
  ...
}
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для полного списка поддерживаемых параметров поиска и [Системы идентификаторов](identifiers.html) для URI систем идентификаторов.

### Связанные материалы

- [Системы идентификаторов](identifiers.html)
- [Рабочие процессы](workflows.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
