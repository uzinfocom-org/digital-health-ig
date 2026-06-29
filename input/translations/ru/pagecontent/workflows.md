Страницы профилей описывают *структуру* каждого ресурса. Эти страницы рабочих процессов описывают *сценарий* - какие ресурсы необходимо создать для выполнения реальной клинической задачи, в какой последовательности, как они ссылаются друг на друга и какие API-вызовы нужно выполнить. Если вы не уверены, какой ресурс использовать в конкретной ситуации, начните с этого раздела.

Каждый рабочий процесс описывает участников, последовательность FHIR-взаимодействий и основные правила, а также содержит примеры API-вызовов и фрагменты передаваемых данных.

### Доступные сценарии

| Рабочий процесс | Что охватывает | Ресурсы |
|----------|----------------|-----------|
| [Вакцинация](workflow-immunization.html) | Национальный календарь &rarr; рекомендация &rarr; консультация и визиты для вакцинации &rarr; регистрация введённой дозы | [PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html), [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Immunization](StructureDefinition-uz-core-immunization.html), [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) |
| [От назначения лабораторного исследования до получения результата](workflow-lab.html) | Назначение лабораторного исследования и передача результата | ServiceRequest, [Specimen](StructureDefinition-uz-core-specimen.html), [Observation](StructureDefinition-uz-core-observation.html), DiagnosticReport |
| [Жизненный цикл электронного направления](workflow-referral.html) | Создание и выполнение направления, включая цепочку согласований в рамках государственного медицинского страхования | ServiceRequest, Task, [Procedure](StructureDefinition-uz-core-procedure.html) |
| [Маршрут пациента (Episode of Care)](workflow-patient-journey.html) | Объединение визитов, диагнозов и результатов по клиническому случаю в рамках одного эпизода на протяжении времени | [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), [Encounter](StructureDefinition-uz-core-encounter.html), [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) |
| [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html) | Назначение лекарственного средства, его отпуск и передача отчётности в SHIF | MedicationRequest, MedicationDispense, [Condition](StructureDefinition-uz-core-condition.html) |

Создание и подписание клинического документа (формирование документа на основе `Composition` и его подписание для придания юридической силы) описаны в разделе Documents руководства [DHP Integrations IG](https://dhp.uz/fhir/integrations/en/), а не здесь.

Дополнительные сценарии (популяционный скрининг) будут добавляться по мере завершения соответствующих профилей.

### Модель взаимодействия

Для всех рабочих процессов действуют несколько общих правил:

- Сначала выполните аутентификацию. Каждый запрос должен содержать bearer-токен OAuth2 (`Authorization: Bearer <token>`), полученный через SSO платформы. Клиенты для межсистемного взаимодействия используют поток client credentials; пользовательские приложения - поток authorization code через oneID.
- Укажите профиль. Каждый отправляемый ресурс должен содержать `meta.profile`, чтобы сервер валидировал его по соответствующему профилю UZ Core. См. [Общие рекомендации &rarr; метаданные](general-guidance.html#metadata).
- Объединяйте связанные ресурсы в Bundle. Если несколько ресурсов относятся к одному процессу, их можно отправить в составе Bundle типа transaction или batch, а для завершённого документа - в Bundle типа document. См. [Общие рекомендации &rarr; Bundle](general-guidance.html#bundles-document-vs-transaction-vs-searchset).
- Учитывайте согласие пациента. Запросы на чтение выполняются с учётом [Consent](StructureDefinition-uz-core-consent.html) пациента; при отказе в доступе сервер возвращает `403`. Каждый факт доступа регистрируется в [AuditEvent](StructureDefinition-uz-core-auditevent.html).
- Только логическое удаление. Записи выводятся из использования путём изменения статуса, а не методом `DELETE`. См. [Общие рекомендации &rarr; удаление](general-guidance.html#creating-updating-and-deleting).

### Как связаны ресурсы

Большинство клинических данных связано с Patient через несколько типовых схем использования references. На схеме ниже показана эта основная структура; она не является исчерпывающим перечнем всех профилей (полный набор см. в разделе [Артефакты](artifacts.html)):

<div>{% include resource-relationships.svg %}</div><br clear="all"/>

- Ресурс Patient может быть связан с несколькими ресурсами Encounter (визитами); связанные Encounter можно объединить в EpisodeOfCare (продолжающийся клинический случай).
- В рамках Encounter медицинские работники регистрируют ресурсы Condition (диагнозы), Observation (результаты и жизненные показатели), Procedure и MedicationRequest.
- Ресурсы рабочих процессов (ServiceRequest, Task) обеспечивают назначение и выполнение; ресурсы результатов (Observation, DiagnosticReport) содержат reference на исходное назначение.
- Завершённые данные, имеющие юридическую силу, объединяются в документ на основе Composition и подписываются с использованием [Provenance](StructureDefinition-uz-core-provenance.html).

Примечание о выборе между документом и ресурсами рабочего процесса: текущие клинические данные следует хранить в виде отдельных ресурсов (Condition, Observation, Procedure); документ на основе Composition следует формировать только тогда, когда требуется завершённый артефакт, имеющий юридическую силу (выписной эпикриз, подписанное свидетельство или подписанный отчёт).
