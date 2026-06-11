> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Provenance фиксирует происхождение, авторство и подпись клинической записи на Цифровой платформе здравоохранения. Каждая клинически значимая запись должна иметь Provenance, указывающий, кто её создал и когда; для подписанных документов он несёт цифровую подпись - полученную, когда медицинский работник проходит аутентификацию через oneID во встроенном iframe, размещённом на DHP, - и ссылается на подписанный ресурс. Ваша система записывает Provenance вместе с данными, которые она отправляет, - как для фиксации авторства записи, так и для переноса подписи в случае подписанных документов.

### Обязательные и поддерживаемые (Must Support) элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все из них являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это краткое описание для человека; [формальные представления](#profile) ниже задают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Provenance должен иметь (Must Have)

Этот профиль не добавляет собственных обязательных кардинальностей. Обязательные элементы - это те, что унаследованы от базового ресурса: хотя бы один target (ресурс, который описывает данный Provenance) и хотя бы один agent с who (ответственный участник). Здесь target ограничен значениями [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) или Medication, а agent's who - значением [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html).

#### Каждый UZ Core Provenance должен поддерживать (Must Support)



- target - запись, к которой относится данный Provenance;
- occurredDateTime - когда произошло действие;
- activity - выполненное действие (обязательная связка);
- patient - пациент, которого касалось действие;
- agent с его type (роль участия, обязательная связка) и who (PractitionerRole);
- entity с его role (обязательная связка) и тем, на что он указывает;
- signature с его type (обязательная связка), временем создания, тем, кто подписал (PractitionerRole), sigFormat и данными подписи.

> Для подписанных документов двоичный объект подписи хранится в `signature.data`; `target` ссылается на подписанный документ.

### Построение JSON, шаг за шагом

Вы создаёте Provenance, когда отправляете клинически значимые данные, - чтобы зафиксировать их авторство и, для подписанных документов, перенести подпись. Приведённые ниже примеры идут от наименьшей записи, которую примет сервер, до полного события подписанного документа. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - это [example Provenance](Provenance-example-provenance.html).

#### Наименьший Provenance, который вам следует отправлять

Provenance требует хотя бы один `target` (запись, к которой он относится) и хотя бы один `agent` с `who` (ответственный участник). Здесь `target` ограничен значениями [DocumentReference](https://hl7.org/fhir/R5/documentreference.html) или Medication, а `agent.who` - значением [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html). И `target`, и `agent.who` являются обычными ссылками (References). На практике вы также отправляете `occurredDateTime` (когда произошло действие), выполненное `activity` и `patient`, которого оно касалось:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ]
}
```

`activity` и `agent.type` используют обязательную связку - значение должно браться из связанного набора значений (представление Snapshot ниже перечисляет каждое из них). `agent.who` должен ссылаться на PractitionerRole.

#### Добавление цифровой подписи

Этот профиль существует для того, чтобы переносить цифровую подпись, которую платформа возвращает после аутентификации медицинского работника через oneID во встроенном iframe, размещённом на DHP. Добавьте запись `signature`: её `type` указывает, как она была создана (обязательная связка), `when` - момент её применения, `who` ссылается на тот же PractitionerRole, `sigFormat` - это медиатип двоичного объекта, а `data` - сама подпись в кодировке base64:

```json
{
  "resourceType": "Provenance",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-provenance"] },
  "target": [
    { "reference": "DocumentReference/example-pdf-document" }
  ],
  "occurredDateTime": "2025-02-05T12:58:00+05:00",
  "activity": {
    "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion", "code": "LA" }]
  },
  "patient": { "reference": "Patient/example-patient" },
  "agent": [
    {
      "type": {
        "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "code": "author" }]
      },
      "who": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "signature": [
    {
      "type": [
        { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/signature-type-cs", "code": "biometricAuth" }
      ],
      "when": "2025-02-05T12:58:00+05:00",
      "who": { "reference": "PractitionerRole/example-practitionerrole" },
      "sigFormat": "application/signature+xml",
      "data": "dGhpcyBibG9iIGlzIHNuaXBwZWQ="
    }
  ]
}
```

`target` здесь ссылается на [DocumentReference](https://hl7.org/fhir/R5/documentreference.html), который был подписан. Значение `data` - это двоичный объект подписи в кодировке base64 (в примере выше усечён); в рабочей среде отправляйте полный объект.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Quick Start](#quick-start) внизу этой страницы.
