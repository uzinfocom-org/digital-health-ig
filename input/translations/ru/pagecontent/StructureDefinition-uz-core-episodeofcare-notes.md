> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типовые варианты взаимодействия с API для этого профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему от значения и должен быть закодирован в URL как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/EpisodeOfCare/[id]
```

**Поиск случаев обслуживания**

```
GET [base]/EpisodeOfCare?patient=Patient/[id]
GET [base]/EpisodeOfCare?patient=Patient/[id]&status=active
GET [base]/EpisodeOfCare?patient=Patient/[id]&type=http://terminology.dhp.uz/...%7C...
GET [base]/EpisodeOfCare?patient=Patient/[id]&date=ge2025-01-01
GET [base]/EpisodeOfCare?organization=Organization/[id]
GET [base]/EpisodeOfCare?care-manager=Practitioner/[id]
```

**Создание**

```
POST [base]/EpisodeOfCare
{
  "resourceType": "EpisodeOfCare",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-episodeofcare" ] },
  "status": "active",
  "patient": { "reference": "Patient/[id]" },
  "managingOrganization": { "reference": "Organization/[id]" },
  ...
}
```

**Обновление** (например, закрыть случай, установив `status` в `finished` и `period.end`, либо передать его в другую `managingOrganization`) - выполните PUT с полным ресурсом:

```
PUT [base]/EpisodeOfCare/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Полный список поддерживаемых параметров поиска см. в [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
- [Рабочие процессы](workflows.html)
