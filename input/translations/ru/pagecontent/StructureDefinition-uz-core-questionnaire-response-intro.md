> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core QuestionnaireResponse - это заполненный экземпляр [Questionnaire](StructureDefinition-uz-core-questionnaire.html) на Платформе цифрового здравоохранения - например, декларация о состоянии здоровья пациента или отзыв, зафиксированный в портале пациента. Он содержит ответы, данные на вопросы из связанного шаблона.

### Обязательные и Must Support элементы данных

Перечисленные ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть данные, и обрабатывать его при получении. Это удобочитаемое для человека резюме; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый UZ Core QuestionnaireResponse должен иметь

Каждый QuestionnaireResponse должен содержать ссылку questionnaire на [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html), на который даются ответы (1..1), и status (in-progress, completed, amended, entered-in-error, stopped), унаследованный как обязательный от базового ресурса.

#### Каждый UZ Core QuestionnaireResponse должен поддерживать



- идентификатор, basedOn и partOf;
- ссылку questionnaire и status;
- subject и encounter (один [Encounter](StructureDefinition-uz-core-encounter.html)), к которому относится ответ;
- дату/время создания (authored), автора author (один [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html), RelatedPerson, Device или [Organization](StructureDefinition-uz-core-organization.html)) и source (один [Practitioner](StructureDefinition-uz-core-practitioner.html), [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), [Patient](StructureDefinition-uz-core-patient.html) или RelatedPerson);
- структуру item - linkId, definition, text, answer (с `value[x]` и вложенным `item`) и вложенные элементы.

> Данные QuestionnaireResponse, введённые пациентом, носят информационный характер. Они не преобразуются автоматически в [Condition](StructureDefinition-uz-core-condition.html) или [Observation](StructureDefinition-uz-core-observation.html); это происходит только через действие клинициста в рамках [Encounter](StructureDefinition-uz-core-encounter.html), зафиксированное через Provenance. При отправке ответ проверяется только на структуру и терминологию, но не на клиническую корректность.

### Построение JSON, шаг за шагом

Эти ресурсы по большей части генерируются системой по мере заполнения формы, поэтому приведённый ниже пример - лишь один типичный заполненный ответ. Скопируйте его и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - это [ответ об удовлетворённости пациента](QuestionnaireResponse-example-patient-satisfaction-response.html).

#### Заполненный ответ

Ответ должен называть `questionnaire`, на который он отвечает (канонический URL, 1..1), и содержать `status` (in-progress / completed / amended / entered-in-error / stopped). На практике вы также отправляете `subject`, к которому он относится, и время `authored`, затем по одному `item` на каждый вопрос. Каждый `item` имеет `linkId` вопроса, на который он отвечает, и `answer`, чей `value[x]` содержит ответ - кодированный выбор - это `valueCoding`, свободный текст - это `valueString`:

```json
{
  "resourceType": "QuestionnaireResponse",
  "language": "uz",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response"] },
  "questionnaire": "https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire",
  "status": "completed",
  "subject": { "reference": "Patient/example-salim" },
  "authored": "2025-01-15T14:30:00+05:00",
  "item": [
    {
      "linkId": "appointment-method",
      "text": "Как вы записались на приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "remote",
            "display": "Masofadan yozildim («Портал Пациента» orqali)"
          }
        }
      ]
    },
    {
      "linkId": "wait-time",
      "text": "Сколько времени вы ожидали приём?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "10-15min",
            "display": "10-15 daqiqa"
          }
        }
      ]
    },
    {
      "linkId": "doctor-competence-satisfaction",
      "text": "Насколько Вы удовлетворены компетентностью врача?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "fully-satisfied",
            "display": "To'liq mamnunman"
          }
        }
      ]
    },
    {
      "linkId": "health-info-completeness",
      "text": "Была ли предоставлена информация о Вашем состоянии здоровья в полном объёме и понятной форме?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "questions-answered",
      "text": "Получили ли вы ответы на все интересующие вас вопросы?",
      "answer": [
        {
          "valueCoding": {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs",
            "code": "yes-complete",
            "display": "Ha, to'liq"
          }
        }
      ]
    },
    {
      "linkId": "improvement-suggestions",
      "text": "Есть ли у Вас предложения по улучшению качества обслуживания?",
      "answer": [
        { "valueString": "Было бы удобно иметь возможность получать напоминания о приёме через SMS." }
      ]
    }
  ]
}
```

`questionnaire` - это обычная каноническая строка (не Reference), а `subject` - это обычная `Reference` (`{ "reference": "Patient/example-salim" }`). Выберите тип `value[x]`, соответствующий вопросу: `valueCoding` для кодированного выбора, `valueString` для свободного текста, и аналогично `valueBoolean`, `valueInteger`, `valueDate` и так далее для других типов вопросов. На каждый элемент, который связанный [Questionnaire](StructureDefinition-uz-core-questionnaire.html) помечает как обязательный, должен быть дан ответ - этот ответ отвечает на все пять обязательных вопросов; пропуск одного из них является ошибкой валидации.

Примеры вызовов API и образец полезной нагрузки см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
