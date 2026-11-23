> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Communication фиксирует информацию, передаваемую пациентам, медицинским работникам или организациям, например оповещение в области общественного здравоохранения, которое пациенты видят в Портале пациента. Оповещения бывают двух видов: оповещение пациентов, проживающих в зоне риска, - [местоположении UZ Core](StructureDefinition-uz-core-location.html), которому менеджер присвоил уровень по национальному регламенту оповещений, - и оповещение, которое менеджер направляет работникам группы организации, [группе UZ Core](StructureDefinition-uz-core-group.html). Каждый получатель - [пациент UZ Core](StructureDefinition-uz-core-patient.html): каждый житель зоны или каждый работник группы. Оповещение ссылается на зону или группу работников, к которой оно относится, и может указывать причину, например подтверждённый [диагноз UZ Core](StructureDefinition-uz-core-condition.html) или результат анализа пробы, записанный как [наблюдение UZ Core](StructureDefinition-uz-core-observation.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)). Не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core Communication должен содержать

Каждый Communication содержит `status` (обязателен в базовом FHIR R5), время отправки `sent`, хотя бы одного получателя `recipient` и хотя бы один `payload` с содержимым. Оповещение жителей зоны также должно содержать уровень оповещения.

#### Каждый UZ Core Communication должен поддерживать

- `status` сообщения (например, completed после отправки);
- вид оповещения в области общественного здравоохранения (жителям зоны / группе работников);
- уровень оповещения (I красный / II оранжевый / III жёлтый / IV синий) на момент отправки - он не меняется, если уровень зоны потом изменится;
- `about` - к чему относится сообщение, для оповещения - зона или группа работников;
- время отправки `sent`, с которого пациент видит оповещение в Портале пациента;
- получателя `recipient` - пациент, медицинский работник или организация; для оповещения - каждый пациент, проживающий в зоне, или каждый работник группы;
- причину `reason` - код заболевания или ссылка на Condition или Observation;
- содержимое в `payload`, например текст оповещения.

### Построение JSON шаг за шагом

Примеры ниже идут от минимального сообщения к оповещению группе работников и оповещению жителей зоны. В каждом примере этот профиль указан в `meta.profile`.

#### Минимальное сообщение

Минимальный валидный Communication содержит `status`, время отправки `sent`, получателя `recipient` и `payload`. В FHIR R5 нет `contentString`: текст передаётся в `payload.contentCodeableConcept.text`. Это сообщение напоминает пациенту о приёме:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "sent": "2026-11-18T09:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Ertaga soat 10:00 da shifokor qabuliga yozilgansiz."
    }
  }]
}
```

#### Оповещение группе работников

Менеджер открывает группу работников организации и направляет её участникам оповещение. Каждый работник указывается в `recipient`, а `about` ссылается на группу. Вид оповещения берётся из локальной системы кодов категорий оповещений, поэтому его отображаемое название на узбекском языке, а в ресурсе `language` равен `uz`:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00002",
      "display": "Tashkilot xodimlari guruhini ogohlantirish"
    }]
  }],
  "about": [{ "reference": "Group/example-employee-group" }],
  "sent": "2026-11-18T11:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Tashkilotingizda ichak infeksiyasi aniqlandi. Belgilar bo'lsa, shifokorga boring."
    }
  }]
}
```

#### Оповещение жителей зоны

Когда менеджер присваивает зоне уровень, оповещение получают пациенты, проживающие в ней. Оно содержит вторую `category` с уровнем оповещения из локальной системы кодов уровней - оповещение жителей зоны без неё недействительно. `about` ссылается на зону, `reason` указывает причину. Кто создал оповещение, фиксируется в журнале аудита, поэтому `sender` не используется:

```json
{
  "resourceType": "Communication",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-communication"]
  },
  "language": "uz",
  "status": "completed",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/communication-category-cs",
      "code": "comcat-0001-00001",
      "display": "Hudud aholisini ogohlantirish"
    }]
  }, {
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/alert-level-cs",
      "code": "alrtlv-0001-00002",
      "display": "II - To'q sariq"
    }]
  }],
  "about": [{ "reference": "Location/example-mahalla-zone-location" }],
  "sent": "2026-11-18T10:00:00+05:00",
  "recipient": [{ "reference": "Patient/example-salim" }],
  "reason": [{
    "concept": { "text": "Ichak infeksiyasi tarqalishi" }
  }],
  "payload": [{
    "contentCodeableConcept": {
      "text": "Mahallangizda ichak infeksiyasi aniqlandi. Faqat qaynatilgan suv iching."
    }
  }]
}
```

Полные примеры FSH: [оповещение группе работников](Communication-example-employee-group-alert-communication.html) и [оповещение жителей зоны](Communication-example-zone-alert-communication.html).

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу страницы.
