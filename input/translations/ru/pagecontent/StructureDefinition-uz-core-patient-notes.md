> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт

Типичные взаимодействия с API для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть закодирован в URL как `%7C`.

**Чтение пациента по идентификатору сервера**

```
GET [base]/Patient/[id]
```

**Поиск пациента перед регистрацией (обычный первый шаг)**

```
# by national identifier (PINFL) - the reliable match
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|30211975910033

# by name + birth date when no identifier is to hand
GET [base]/Patient?family=Usmanov&birthdate=1994-01-27

# by name and gender
GET [base]/Patient?name=Salim&gender=male
```

**Регистрация нового пациента** (только после подтверждения отсутствия совпадений)

```
POST [base]/Patient
{
  "resourceType": "Patient",
  "meta": { "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient" ] },
  ...
}
```

**Обновление данных пациента** (например, исправить демографические данные или изменить флаг active)

```
PUT [base]/Patient/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

**Другие полезные поисковые запросы**

```
GET [base]/Patient?general-practitioner=Practitioner/[id]
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?address-city=22070013
```

См. [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) для полного списка поддерживаемых поисковых параметров и [Системы идентификаторов](identifiers.html) для всех URI систем идентификаторов пациента.

### Прикрепление к обслуживающей организации

Пациент прикрепляется к первичной медицинской организации (поликлинике), которая служит его основным местом получения помощи. Это фиксируется двумя элементами:

1. `Patient.managingOrganization` - ссылка на [UZ Core Organization](StructureDefinition-uz-core-organization.html), к которой прикреплён пациент.
2. расширение `managingOrganizationAttachment` - дата прикрепления пациента.

Пациент может сменить обслуживающую организацию только один раз в год; дата прикрепления используется для контроля этого правила.

```jsonc
{
  "resourceType": "Patient",
  "extension": [{
    "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
    "valueDate": "2024-03-15"    // Date when the patient was attached
  }],
  "managingOrganization": {
    "reference": "Organization/example-organization"
  }
  // ... other patient data
}
```

При обновлении обслуживающей организации пациента:

1. Проверьте существующую дату `managingOrganizationAttachment`.
2. Убедитесь, что с момента последнего прикрепления прошёл как минимум один год.
3. Обновите `managingOrganization` и дату расширения одновременно.

### Связанные материалы

- [Системы идентификаторов](identifiers.html)
- [Как читать это руководство](how-to-read.html) &middot; [Must Support](must-support.html) &middot; [Общие рекомендации](general-guidance.html)
