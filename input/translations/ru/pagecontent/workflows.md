> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Страницы профилей показывают вам *структуру* каждого ресурса. Эти страницы рабочих процессов рассказывают *историю* - для реальной клинической задачи, какие ресурсы создавать, в каком порядке, как они ссылаются друг на друга и какие вызовы API выполнять. Если вы не уверены, какой ресурс использовать для чего-либо, начните отсюда.

Каждый рабочий процесс описывает действующих лиц, последовательность взаимодействий FHIR и ключевые правила, с примерами вызовов и фрагментами полезной нагрузки.

### Доступные сценарии

| Рабочий процесс | Что он охватывает | Ресурсы |
|----------|----------------|-----------|
| [Иммунизация](workflow-immunization.html) | Национальный календарь &rarr; рекомендация &rarr; регистрация дозы | [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html), [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), [Immunization](StructureDefinition-uz-core-immunization.html), [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) |
| [От лабораторного заказа до результата](workflow-lab.html) | Назначение анализа и возврат результата | ServiceRequest, [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), DiagnosticReport |
| [Жизненный цикл электронного направления](workflow-referral.html) | Создание и выполнение направления, включая цепочку согласования государственного страхования | ServiceRequest, Task, [Procedure](StructureDefinition-uz-core-procedure.html) |
| [Маршрут пациента (Эпизод оказания помощи)](workflow-patient-journey.html) | Группировка визитов, диагнозов и результатов одного случая в рамках одного эпизода во времени | [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) |
| [Электронный рецепт и отпуск](workflow-prescription.html) | Назначение лекарства, его отпуск и отчётность в ГФМС | MedicationRequest, MedicationDispense, [Condition](StructureDefinition-uz-core-condition.html) |

Создание и подписание клинического документа (сборка документа на основе `Composition` и его подписание для придания юридической силы) описано в [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/) в разделе «Документы», а не здесь.

Дополнительные сценарии (популяционный скрининг) будут добавлены по мере завершения соответствующих профилей.

### Модель взаимодействия

Несколько правил применяются к каждому рабочему процессу:

- Сначала аутентификация. Все запросы несут токен-носитель OAuth2 (`Authorization: Bearer <token>`), полученный от SSO платформы. Клиенты «система-система» используют поток client-credentials; приложения, ориентированные на пользователя, используют поток authorization-code через oneID.
- Объявите профиль. Каждый отправляемый вами ресурс несёт `meta.profile`, чтобы сервер проверял его на соответствие правильному профилю UZ Core. См. [Общие рекомендации &rarr; метаданные](general-guidance.html#metadata).
- Группируйте связанные ресурсы в Bundle. Когда несколько ресурсов относятся друг к другу, вы можете отправить их как Bundle (transaction или batch) или, для завершённого документа, как document Bundle. См. [Общие рекомендации &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- Соблюдайте согласие. Запросы на чтение подчиняются [Consent](StructureDefinition-uz-core-consent.html) пациента; отклонённый запрос возвращает `403`. Каждый доступ регистрируется в [AuditEvent](StructureDefinition-uz-core-auditevent.html).
- Только логическое удаление. Записи выводятся из обращения путём изменения статуса, а не через `DELETE`. См. [Общие рекомендации &rarr; удаление](general-guidance.html#creating-updating-and-deleting).

### Как связаны ресурсы

Большинство клинических данных привязаны к пациенту через небольшое число шаблонов ссылок. Диаграмма ниже отображает этот основной каркас - это не исчерпывающий список всех профилей (полный набор см. в [Артефактах](artifacts.html)):

<div>{% include resource-relationships.svg %}</div><br clear="all"/>

- У Patient есть много Encounter (визитов); связанные Encounter могут быть сгруппированы в EpisodeOfCare (текущий случай).
- В рамках Encounter клиницисты регистрируют Condition (диагнозы), Observation (результаты, показатели жизнедеятельности), Procedure и MedicationRequest.
- Ресурсы рабочего процесса (ServiceRequest, Task) управляют назначением и выполнением; ресурсы результатов (Observation, DiagnosticReport) ссылаются обратно на заказ.
- Завершённое, юридически значимое содержимое собирается в документ на основе Composition и подписывается через [Provenance](StructureDefinition-uz-core-provenance.html).

Замечание о выборе между документом и ресурсами рабочего процесса: храните текущие клинические факты как отдельные ресурсы (Condition, Observation, Procedure); собирайте документ на основе Composition только тогда, когда вам нужен завершённый, юридически значимый артефакт (выписной эпикриз, подписанная справка, подписанный отчёт).
