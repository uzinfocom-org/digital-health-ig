### В разработке

#### Документация

На странице [Компоненты](components.html) теперь описаны компоненты "Управление кровью", "Сестринское дело" и "Поставки" - на основе технических проектов этих компонентов. Раздел [Направления](components.html#направления) дополнен семью признаками, по которым классифицируется направление, а также разделением между ServiceRequest, который несёт само направление, и согласующими Task, которые ведут цепочку согласования в рамках государственного медицинского страхования.

Каждый компонент, у которого есть страница процесса, теперь ссылается на неё, а каждая страница процесса ссылается обратно на компонент, к которому относится. Раздел "Рецепты", технический проект которого ещё готовится, пока указывает на процесс [Электронный рецепт и отпуск лекарственного средства](workflow-prescription.html).

Диаграмма межкомпонентной архитектуры ресурсов на этой же странице теперь охватывает компоненты "Управление кровью" и "Сестринское дело", а для компонента "Направления" показывает два принадлежащих ему профиля вместо пустого блока. Она открывается со свёрнутыми компонентами: на каждой карточке видно число её ресурсов, а список ресурсов раскрывается по нажатию на карточку или клавишу Enter; пока оба компонента свёрнуты, ресурсные связи между ними отображаются одной линией. Все 52 ресурса сразу помещались в рамку лишь при масштабе 40%, из-за чего названия ресурсов было трудно читать - свёрнутый вид помещается при 80%. Легенда теперь говорит "определено в этом руководстве", а не "профилировано в этом руководстве", и при таком прочтении StructureDefinition, ValueSet, CodeSystem и CapabilityStatement, которые публикует MSM, считаются определёнными: это экземпляры, а не профили, и раньше они показывались как ещё не профилированные.

Страница [Жизненный цикл электронного направления](workflow-referral.html) больше не утверждает, что профили ServiceRequest и Task не опубликованы. Оба с тех пор опубликованы как [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) и [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html), и оба по-прежнему помечены как экспериментальные.

Процесс [От назначения лабораторного исследования до получения результата](workflow-lab.html) ссылался на `uz-core-servicerequest-laboratory`, переименованный в 0.8.0. Обе его ссылки и `meta.profile` в рабочем примере теперь указывают на [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html).

### Версия 0.8.0

#### Добавлено

Добавлен профиль [UZ Core Composition](StructureDefinition-uz-core-composition.html) как основа для медицинских документов и цифровых форм, с терминологией [типа документа](ValueSet-composition-type-vs.html) (470 национальных кодов документов, журналов и бланков), [категории](ValueSet-composition-category-vs.html), [статуса](ValueSet-composition-status-vs.html), [режима заверения](ValueSet-composition-att-mode-vs.html), а для каждого раздела - [статуса повествования](ValueSet-composition-narrative-status-vs.html), [порядка сортировки](ValueSet-composition-list-order-vs.html) и [причины, по которой раздел пуст](ValueSet-composition-list-empty-reason-vs.html).

Операции, которые предоставляет платформа, теперь опубликованы как OperationDefinition, чтобы разработчики видели их параметры, поведение при ошибках и идемпотентность, не обращаясь к документации платформы. [Person/$populate](OperationDefinition-person-populate.html) и [Patient/$populate](OperationDefinition-patient-populate.html) создают Person или Patient по документу, удостоверяющему личность - PINFL (`NI`), паспорту или ID-карте (`PPN`), свидетельству о рождении (`BCT`) - заполняя его данными из государственных реестров, и возвращают уже существующий ресурс вместо дубликата, если для этого PINFL он уже есть. [Organization/$practitioners](OperationDefinition-organization-practitioners.html), [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) и [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) раскрывают связи между медицинскими работниками и организациями, в которых они работают.

Добавлено [расширение истории статусов](StructureDefinition-plan-definition-status-history.html) для [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html), фиксирующее каждый статус, в котором находилось определение, с периодом его действия, причиной изменения и тем, кто его выполнил.

`characteristic` в [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) теперь слайсится со слайсом `paymentType`, привязанным (required) к [типу оплаты](ValueSet-payment-type-vs.html), чтобы услуга могла указать, на каких условиях финансирования она оказывается. Слайс `labCategory` в `category.coding` теперь привязан к [категориям услуг](ValueSet-service-categories-vs.html), а не к переименованному лабораторному ValueSet (см. ниже).

Добавлена [Международная классификация онкологических заболеваний у детей, 3-е издание](CodeSystem-iccc-3-cs.html) со 140 диагностическими группами, подгруппами и разделами, а также [ValueSet](ValueSet-iccc-3-vs.html), отбирающий их, для классификации детских онкологических заболеваний по морфологии в регистровой отчётности. Он предназначен для использования в интеграционном IG.

[CodeSystem типов диагноза](CodeSystem-diagnosis-type-cs.html) вырос с 12 до 22 кодов: `cancer-0003-0001` - `cancer-0003-0010` называют документ, на основании которого онкологический диагноз поставлен на учёт - историю болезни (амбулаторную карту) или выписку из неё, историю болезни либо извещение онкологического, гематологического или другого медицинского учреждения, свидетельство о смерти, ЗАГС. Они попадают в [ValueSet типов диагноза](ValueSet-diagnosis-type-vs.html), привязанный (required) к [расширению типа диагноза](StructureDefinition-diagnosis-type.html) в [UZ Core Condition](StructureDefinition-uz-core-condition.html).

[CodeSystem исходов выписки](CodeSystem-encounter-discharge-disposition-home-cs.html) вырос с 6 до 9 кодов: `cancer-0001-0001` - `cancer-0001-0003` фиксируют, чем закончилось онкологическое диспансерное наблюдение - пациент жив, диагноз не подтвердился или пациент снят с учёта по истечении сроков наблюдения. Они попадают в [ValueSet исходов выписки](ValueSet-encounter-discharge-disposition-vs.html), привязанный (required) к `admission.dischargeDisposition` в [UZ Core Encounter](StructureDefinition-uz-core-encounter.html).

Добавлен [CodeSystem дня наблюдения](CodeSystem-observation-day-cs.html) с локальными кодами дня жизни, в который зафиксировано наблюдение новорождённого, для различения вложенных разделов Composition в форме 097.

#### Изменено

Слайсы идентификаторов `passportLocal` и `passportInternational` в [UZ Core Patient](StructureDefinition-uz-core-patient.html) теперь имеют кардинальность 0..*, а не 0..1, поэтому у пациента может быть более одного каждого вида - например, действующая ID-карта вместе с заменённым бумажным паспортом, как описано на странице [идентификаторов](identifiers.html).

`prescription` в [UZ Core Claim](StructureDefinition-uz-core-claim.html) теперь Must Support - для рецепта на возмещение, по которому выставляется счёт. Он ссылается на MedicationRequest и будет сужен до UZ Core MedicationRequest после публикации этого профиля.

Заголовок и описание [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) больше не разделяют имя ресурса - "UZ Core Claim Response" теперь "UZ Core ClaimResponse". Канонический URL не изменился.

[ValueSet должностей и профессий](ValueSet-position-and-profession-vs.html), привязанный (required) к `code` в [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), теперь также допускает систему кодов v3 RoleClass целиком, четыре кода v3 RoleCode (`TPA`, `PAYOR`, `ORG` и `VALIDATOR`) и десять поимённо перечисленных понятий SNOMED CT, чтобы каждая цель DMEDPositionToDHPPositionCM была допустима по привязке. Узбекские и русские обозначения для них несут новые supplement [должностей DMED в SNOMED CT](CodeSystem-dmed-position-sct-cs.html) и [классов ролей DMED](CodeSystem-dmed-role-class-cs.html). В результате [DMEDRoleCS](CodeSystem-dmed-role-cs.html) вырос с 5 до 43 кодов, а [RoleCodeCS](CodeSystem-role-code-cs.html) - с 2 до 6.

Наименование кода `paytype-0001-0004` в [CodeSystem типов оплаты](CodeSystem-payment-type-cs.html) изменено с "Davlat tomonidan moliyalashtiriladigan" ("Финансируется государством") на "Davlat tarifi" ("Государственный тариф"). Сам код не изменился, поэтому системам, которые его хранят, следует проверить, что их собственная подпись всё ещё соответствует. Добавлен пятый код `paytype-0001-0005` ("Boshqalar", "Другие") для схем оплаты, которые не описываются остальными четырьмя.

Обозначения `routine` и `order` в supplement [приоритета запроса](CodeSystem-request-priority-cs.html) и [намерения запроса](CodeSystem-request-intent-cs.html) сокращены до одного термина - "Обычный" вместо "Обычный (плановый)", "Назначение" вместо "Назначение / Приказ", - а `urgent`, `asap` и `stat` получили узбекские и русские обозначения.

#### Несовместимые изменения

Профиль UZ Core ServiceRequest Laboratory переименован в [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) и обобщён с лабораторных заказов на любую запрашиваемую услугу - процедуры, диагностические исследования, консультации, скрининг и госпитализацию. Это несовместимое изменение: канонический URL меняется с `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory` на `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest`, и экземпляры должны обновить `meta.profile`. `priority` теперь Must Support и привязан (required) к [приоритету запроса](ValueSet-request-priority-vs.html). Вместе с этим изменились привязки `category` и `code` - см. ниже.

LabServiceCategoriesVS переименован в [ServiceRequestCategoriesVS](ValueSet-service-request-categories-vs.html) и расширен на запросы услуг любого вида: добавлены категории SNOMED CT для лучевых, диагностических, хирургических, физиотерапевтических, лечебных и амбулаторных процедур, консультации, госпитализации, реабилитации, телемедицины, скрининга и донорства, а [supplement](CodeSystem-sr-sct-category-cs.html) несёт их узбекские и русские обозначения. Это несовместимое изменение: канонический URL меняется с `https://dhp.uz/fhir/core/ValueSet/lab-service-categories-vs` на `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-categories-vs`.

ServiceRequestLabCodesVS заменён на [ServiceRequestCodesVS](ValueSet-service-request-code-vs.html), который добавляет новые [коды скрининга и патронажа](CodeSystem-screening-code-cs.html) - 20 кодов опросников и программ скрининга, среди них риск сердечно-сосудистых заболеваний, сахарный диабет, рак молочной железы и рак шейки матки, а также патронажные услуги на дому - к кодам заказов LOINC, национальным кодам лабораторных панелей и процедурам SNOMED CT, которые он содержал ранее. Это несовместимое изменение: канонический URL меняется с `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-labresearch-code-vs` на `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs`.

Профиль UZ Core Immunization PlanDefinition переименован в [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html), поскольку теперь он охватывает не только календари иммунизации, но и календари донации цельной крови и скрининга. Это несовместимое изменение: канонический URL меняется с `https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition` на `https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition`, и экземпляры должны обновить `meta.profile`.

Профиль теперь несёт контекст использования `focus`, указывающий вид календаря - `33879002` (активная иммунизация), `25179006` (заготовка дозы цельной крови) или `360156006` (скрининг), - а ограничение требует ровно одного из них, поэтому календарь нужного вида находится запросом `GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002`. Связка [типа календаря иммунизации](ValueSet-immunization-schedule-type-vs.html) для контекста категории календаря теперь required, а не extensible, чтобы слайсинг поддавался валидации.

`code` в [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) теперь обязателен (1..1).

Слайс национального идентификатора в [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html) теперь фиксирует `system` как систему PINFL `https://dhp.uz/fhir/core/sid/pid/uz/ni` вместо `https://dhp.uz/fhir/core/sid/pro/uz/argos`. Это соответствует типу идентификатора `NI`, который слайс уже указывал, и системе, используемой для того же идентификатора в [UZ Core Patient](StructureDefinition-uz-core-patient.html) и [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html).

Все 13 кодов [CodeSystem типа покрытия](CodeSystem-coverage-type-cs.html) перенумерованы с мнемонических кодов на шаблон `covtp-0001-000NN`, используемый другими национальными системами кодов: `dtsj-treated-case` теперь `covtp-0001-00001`, `moh-budget` - `covtp-0001-00008`, `self-pay` - `covtp-0001-00009` и так далее в порядке перечисления кодов. Наименования и значения не изменились. Это несовместимое изменение: коды типа покрытия, сохранённые в предыдущей версии, должны быть пересопоставлены.

ConceptMap DMEDPositionToSnomedCM удалён. Его сопоставления теперь являются группами внутри [DMEDPositionToDHPPositionCM](ConceptMap-dmed-position-to-dhp-position-cm.html), который в одном ConceptMap сопоставляет коды ролей и профессий DMED с национальными должностями, SNOMED CT, v3 RoleCode и v3 RoleClass. Разработчики, ссылающиеся на `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-snomed-cm`, должны использовать `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-dhp-position-cm`.

#### Документация

Страница «Формы» теперь называется [Опросники](forms.html), чтобы её не принимали за медицинские формы, используемые в Узбекистане. Адрес страницы не изменился.
Профиль UZ Core VaccinationActivityDefinition переименован в [UZ Core ActivityDefinition](StructureDefinition-uz-core-activity-definition.html), а его канонический URL изменён с `.../uz-core-vaccination-activity-definition` на `.../uz-core-activity-definition`. Реализациям, использующим старый канонический URL, необходимо обновить ссылку.

Страница [как читать это руководство](how-to-read.html) теперь объясняет, что делать, когда ни один код привязанного ValueSet не подходит к данным, - для каждой силы привязки, с примерами JSON, где привязка extensible удовлетворяется сначала кодом из национального списка, а затем кодом SNOMED CT с сохранением исходной формулировки в `text`.

### Версия 0.7.0

#### Добавлено

Добавлены профили [UZ Core Claim](StructureDefinition-uz-core-claim.html) и [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) для страховых счетов, предварительной авторизации и предварительного определения, а также для ответов с решением по оплате и возмещению. Их поддерживает терминология [типа счёта](ValueSet-claim-type-vs.html), [назначения счёта](ValueSet-claim-use-vs.html) и [статуса финансового управления](ValueSet-fm-status-vs.html), а также коды [категории ответа](ValueSet-claim-response-category-vs.html), [решения](ValueSet-claim-response-decision-vs.html) и [результата](ValueSet-claim-response-outcome-vs.html). [Расширение причины отмены](StructureDefinition-claim-response-cancellation-reason.html) фиксирует, почему ответ был отменён - например, когда срок действия предварительной авторизации истёк до завершения обработки счёта.

Добавлен профиль [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) для отслеживания шагов процесса согласования направления и госпитализации в системе государственного медицинского страхования (Приложение 1 к постановлению Кабинета Министров № 694 от 04.11.2025), с терминологией [кодов задач](ValueSet-task-codes-vs.html), [статуса](ValueSet-task-status-vs.html), [намерения](ValueSet-task-intent-vs.html) и [бизнес-статуса](ValueSet-task-business-status-vs.html). Ограничение уровня предупреждения выявляет незавершённые задачи, у которых истёк запрошенный срок, но не проставлен статус просрочки - для контроля SLA.

Добавлен профиль [UZ Core Group](StructureDefinition-uz-core-group.html) для определённых наборов сущностей - целевых групп скрининга, вакцинации и донорства и их когорт по результатам - с терминологией [типа группы](ValueSet-group-type-vs.html), [вида группы](ValueSet-group-kind-vs.html), [основания членства](ValueSet-group-membership-basis-vs.html) и [вида характеристики](ValueSet-group-characteristic-kind-vs.html).

Добавлен [опросник скрининга риска сердечно-сосудистых заболеваний](Questionnaire-CVDRiskScreeningQuestionnaire.html) - форма раннего выявления риска ССЗ, которая рассчитывает балл и категорию риска по ответам с помощью выражений SDC FHIRPath. Руководство теперь зависит от `hl7.fhir.uv.sdc`, чтобы эти выражения разрешались.

Добавлены supplement к SNOMED CT с узбекскими и русскими обозначениями для [степени тяжести состояния](CodeSystem-condition-severity-cs.html), [результата процедуры](CodeSystem-procedure-outcome-cs.html), [типа реакции](CodeSystem-reaction-type-cs.html), [описания цели](CodeSystem-goal-description-cs.html), [события начала цели](CodeSystem-goal-start-event-cs.html) и [кодов социально-экономических наблюдений](CodeSystem-socioeconomic-observation-codes-cs.html).

Добавлен [supplement единиц UCUM](CodeSystem-ucum-units-supp-cs.html) с узбекскими и русскими переводами наименований единиц, представленный как [ValueSet единиц UCUM](ValueSet-ucum-units-supp-vs.html). `permittedUnit` в [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) теперь привязан к нему (extensible), а не к общему ValueSet единиц UCUM, а `permittedDataType` теперь привязан (required) к новому ValueSet [типов значений лабораторных наблюдений](ValueSet-permitted-data-type-vs.html).

Добавлены [CodeSystem единиц измерения исходных лабораторных систем](CodeSystem-lab-units-cs.html) со строками единиц, используемыми исходными системами, его [ValueSet](ValueSet-lab-units-vs.html) и [ConceptMap для перевода их в UCUM](ConceptMap-lab-units-to-ucum-cm.html), чтобы результаты, поступающие с локальными обозначениями единиц, можно было нормализовать.

Добавлены терминологические мосты DMED для [путей введения](ConceptMap-dmed-administration-route-to-dhp-sct-cm.html), сопоставленных с национальными кодами и кодами SNOMED CT, а также расширены сопоставления [единиц измерения](ConceptMap-dmed-measure-unit-to-dhp-cm.html) и [кодов вакцин](ConceptMap-dmed-vaccine-to-cvx-cm.html); в [CodeSystem единиц измерения DMED](CodeSystem-dmed-measure-unit-cs.html) добавлены новые единицы.

#### Изменено

ValueSet на основе SNOMED CT теперь отбирают иерархию там, где она выражает замысел, вместо перечисления отдельных кодов: [часть тела](ValueSet-body-site-vs.html) - любая анатомическая структура, [код процедуры](ValueSet-procedure-code-vs.html) - любая процедура, [целевое заболевание](ValueSet-target-disease-vs.html) - любое заболевание, [код пути введения](ValueSet-route-code-vs.html) - любой путь введения, [степень тяжести состояния](ValueSet-condition-severity-vs.html) - любая степень тяжести, [исход нежелательного явления](ValueSet-adverse-event-outcome-vs.html) - любая нежелательная реакция, а [описание цели](ValueSet-goal-description-vs.html), [тип реакции](ValueSet-reaction-type-vs.html) и [причина рекомендации](ValueSet-recommendation-reason-vs.html) - любой клинический признак. Это расширяет набор допустимых значений по сравнению с 0.6.0. [Результат процедуры](ValueSet-procedure-outcome-vs.html), [коды социально-экономических наблюдений](ValueSet-socioeconomic-observation-codes-vs.html), [событие начала цели](ValueSet-goal-start-event-vs.html) и [роль участника действия](ValueSet-action-participant-role-vs.html) сохраняют явные списки кодов, так как их понятия не имеют общего предка, достаточно узкого для отбора.

[CodeSystem лабораторных панелей](CodeSystem-lab-pan-cs.html) теперь объявляет свойства `kind` и `parent`, поэтому клиент, разворачивающий ValueSet кодов наблюдений, может отличить панели от аналитов, входящих в них. Также исправлены языковые обозначения кодов панелей.

`component.code` в [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) получил дополнительную привязку для сценария пользовательского интерфейса: когда пользователь создаёт собственное лабораторное определение в портале пациента, код аналита должен выбираться из LOINC. Коды национальных лабораторных панелей остаются зарезервированными за предопределённым лабораторным справочником.

`method` в [UZ Core Observation](StructureDefinition-uz-core-observation.html) теперь явно указывает силу привязки как extensible.

`participant.actor` в [UZ Core Condition](StructureDefinition-uz-core-condition.html) теперь может ссылаться на [UZ Core Organization](StructureDefinition-uz-core-organization.html).

Профиль UZ Core ActivityDefinition переименован в UZ Core VaccinationActivityDefinition, его канонический URL изменён с `.../uz-core-activity-definition` на `.../uz-core-vaccination-activity-definition`. Разработчики, ссылающиеся на прежний канонический URL, должны его обновить.

В [UZ Core Location](StructureDefinition-uz-core-location.html) удалён слайс налогового идентификатора, а `name` снова необязателен (0..1) - требование, введённое в 0.6.0, отменено.

#### Несовместимые изменения

ConceptMap типов организаций переименованы с префикса MIS2 на SSV в соответствии с SSV ValueSet, из которых выполняется сопоставление: [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html), [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) и [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html). Дублирующие ConceptMap `mis2-*` удалены; разработчикам следует использовать канонические URL `ssv-*`. Сопоставления номенклатурных групп вынесены из SSVMedicalTypeToOrganizationalStructureCM в новый [SSVMedicalTypeToNomenclatureGroupCM](ConceptMap-ssv-medical-type-to-nomenclature-group-cm.html), чтобы каждый ConceptMap объявлял одну область источника и цели.

[UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) теперь требует второй `useContext` с указанием вида календаря, привязанный (extensible) к новому ValueSet [типа календаря иммунизации](ValueSet-immunization-schedule-type-vs.html). Слайсинг по типу для `action.definition[x]` удалён, поскольку из-за него валидатор отклонял `definitionCanonical`, и примеры теперь используют `definitionCanonical`.

Профиль UZ Core ActivityDefinition переименован в [UZ Core VaccinationActivityDefinition](StructureDefinition-uz-core-vaccination-activity-definition.html), его канонический URL изменён с `.../uz-core-activity-definition` на `.../uz-core-vaccination-activity-definition`. Разработчики, ссылающиеся на прежний канонический URL, должны его обновить.

#### Документация

Добавлена страница [Формы](forms.html), на которой любой опросник, публикуемый этим руководством, можно заполнить как рабочую форму на узбекском, русском или английском языке, чтобы проверить формулировки, варианты ответов, логику переходов и рассчитываемые результаты до реализации. Страница может заполнить форму примерами ответов и содержит ссылку на итоговый JSON ресурса QuestionnaireResponse.

Руководство по моделированию теперь требует, чтобы версии терминологий были в формате SemVer (`MAJOR.MINOR.PATCH`), так как платформа терминологий DHP не распознаёт другие форматы, и описывает, как кодировать идентификаторы релизов, не соответствующие SemVer, например `2026-01` у SNOMED CT.

### Версия 0.6.0

#### Добавлено

Добавлен профиль [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) для лабораторных и диагностических отчётов с сопутствующей терминологией для [категории услуг](ValueSet-diagnostic-report-service-category-vs.html), [статуса](ValueSet-diagnostic-report-status-vs.html) и [типов отчётов](ValueSet-lab-report-types-vs.html).

Добавлен профиль [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) для заказа услуг, таких как процедуры, диагностические исследования или комплексы исследований, включая терминологию для [типа оплаты](ValueSet-payment-type-vs.html) и [статуса запроса](ValueSet-service-request-status-vs.html).

Добавлен профиль [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) для клинических образцов с терминологией для [метода сбора](ValueSet-specimen-collection-method-vs.html), [типа образца](ValueSet-specimen-types-vs.html), [роли](ValueSet-specimen-role-vs.html) и [статуса](ValueSet-specimen-status-vs.html). На него ссылаются профили ServiceRequest и DiagnosticReport.

Добавлен профиль [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), чтобы системы могли публиковать определения лабораторных тестов - допустимые единицы измерения, методы измерения и референсные диапазоны с учётом пола - для Портала пациента и интегрирующихся систем.

Добавлен профиль [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) для регистрации вакцинаций с терминологией для [целевого заболевания](ValueSet-target-disease-vs.html), [места введения](ValueSet-immunization-site-vs.html), [пути введения](ValueSet-route-code-vs.html) и [источника финансирования](ValueSet-funding-source-vs.html), а также ConceptMap для перевода [национальных кодов вакцин DMED в CVX](ConceptMap-dmed-vaccine-to-cvx-cm.html).

Добавлен профиль [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) для прогнозов вакцинации с терминологией для [статуса прогноза](ValueSet-recommendation-forecast-status-vs.html), [критерия даты](ValueSet-recommendation-date-criterion-vs.html) и [причины](ValueSet-recommendation-reason-vs.html).

Добавлен профиль [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) для национальных календарей иммунизации.

Добавлен профиль [UZ Core ActivityDefinition](StructureDefinition-uz-core-activity-definition.html) для определения переиспользуемых клинических активностей (процедур, тестов, протоколов медикаментозной терапии) независимо от конкретного пациента.

Добавлен профиль [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) для регистрации нежелательных явлений с терминологией для [фактичности](ValueSet-adverse-event-actuality-vs.html), [серьёзности](ValueSet-adverse-event-seriousness-vs.html), [исхода](ValueSet-adverse-event-outcome-vs.html) и [статуса](ValueSet-adverse-event-status-vs.html).

Добавлен профиль [UZ Core Medication](StructureDefinition-uz-core-medication.html) с характерными для Узбекистана идентификаторами медикаментов (ID маркировки, регистрационное удостоверение, GTIN, ID агрегации коробки, код национальной классификации продуктов и услуг) и терминологией на основе АТХ для [классификации](ValueSet-medication-classification-vs.html) и [лекарственной формы](ValueSet-medication-doseform-vs.html).

Добавлен профиль [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) с терминологией для [статуса процедуры](ValueSet-procedure-event-status-vs.html), [кодов процедур](ValueSet-procedure-code-vs.html) на основе SNOMED CT и [исхода](ValueSet-procedure-outcome-vs.html), а также примером ConceptMap [SNOMED CT в ICHI](ConceptMap-snomed-to-ichi-procedures.html) для отчётности по возмещению расходов.

Добавлены [коды лабораторных методов](CodeSystem-lab-methods-cs.html) с ConceptMap, сопоставляющими лабораторные [коды панелей и аналитов](ConceptMap-lab-pan-codes-to-loinc.html) с LOINC и [коды методов](ConceptMap-lab-methods-to-loinc.html) с SNOMED CT. Коды методов представлены [набором значений лабораторных методов](ValueSet-lab-method-vs.html), привязанным к элементу `method` профиля [UZ Core Observation](StructureDefinition-uz-core-observation.html).

Добавлено [расширение времени обработки](StructureDefinition-turnaround-time.html) в [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) для указания ожидаемого времени получения результатов по лабораторным услугам. Привязки категории и типа в этом профиле также смягчены с required на extensible, чтобы реализаторы могли добавлять локальные коды.

Добавлены терминологические мосты DMED для приёма данных из национальной системы DMED: [коды стран](ConceptMap-dmed-country-to-dhp-country-cm.html) сопоставлены с ISO 3166, [единицы измерения](ConceptMap-dmed-measure-unit-to-dhp-cm.html) - с UCUM, а профессии DMED сопоставлены как с SNOMED CT, так и с [должностями DHP](ConceptMap-dmed-position-to-dhp-position-cm.html).

Добавлены слайсы идентификаторов Государственного фонда медицинского страхования (SHIF) и Министерства здравоохранения (Минздрав) в [UZ Core Organization](StructureDefinition-uz-core-organization.html). Коды поставщиков, назначаемые SHIF, типизированы как `PRN` (номер поставщика). Новая страница [идентификация плательщиков](payor-identification.html) объясняет, как идентифицируются плательщики и их законтрактованные поставщики.

#### Изменено

Целевые ссылки в нескольких профилях теперь указывают на профили UZ Core там, где они существуют - например, [UZ Core Observation](StructureDefinition-uz-core-observation.html) `specimen` на UZ Core Specimen и `partOf` на UZ Core Procedure/Immunization, [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) `administeredProduct` на UZ Core Medication и [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) `suspectEntity` на UZ Core Medication. Ресурсы, на которые ссылаются, теперь должны соответствовать соответствующему профилю UZ Core.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) `reason` и [UZ Core Observation](StructureDefinition-uz-core-observation.html) `basedOn` теперь могут ссылаться на ImmunizationRecommendation.

Исправлены английские отображаемые названия в [OrganizationalSpecializationCS](CodeSystem-organizational-specialization-cs.html) (единообразный регистр; "Children" изменено на "Pediatric"). Коды не изменились.

`gender` в [UZ Core Patient](StructureDefinition-uz-core-patient.html) теперь привязан (required) к новому [набору значений административного пола](ValueSet-administrative-gender-vs.html) с русскими и узбекскими переводами.

`managingOrganization` в [UZ Core Patient](StructureDefinition-uz-core-patient.html) теперь Must Support и должен ссылаться на [UZ Core Organization](StructureDefinition-uz-core-organization.html).

Расширение для многоязычного перевода (базовое значение на узбекском плюс переводы на русский и каракалпакский) добавлено к `name` в [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) и к `title` в [UZ Core ActivityDefinition](StructureDefinition-uz-core-activity-definition.html), [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) и [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html). Элемент `name` теперь обязателен в [UZ Core Organization](StructureDefinition-uz-core-organization.html) и [UZ Core Location](StructureDefinition-uz-core-location.html).
#### Организация и идентификаторы
В [UZ Core Patient](StructureDefinition-uz-core-patient.html) и [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) локальный идентификатор паспорта больше не фиксирует `use` как `official`: используйте `official` для текущей ID-карты и `old` для устаревшего бумажного паспорта с той же системой. См. страницу [идентификаторы](identifiers.html).

#### Несовместимые изменения

В [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) `code` теперь привязан (required) к [набору значений должностей и профессий](ValueSet-position-and-profession-vs.html) (ранее - набор значений ролей медработников); `specialty` по-прежнему привязан (required) к [набору значений специализаций профессий](ValueSet-profession-specialization-vs.html). Реализаторы должны заполнять роли медработников кодами из этих наборов значений.

`type` в [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) и [UZ Core EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), а также `signature.type` в [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) теперь разбиты на слайсы, так что национальный код требуется, а дополнительные кодировки остаются разрешёнными.

Канонические URL наборов значений домена идентификаторов и EpisodeOfCare (а также наборов значений иностранных паспортов и водительских удостоверений) перемещены с `https://dhp.uz/fhir/core/ValueSet/...` на `https://terminology.dhp.uz/fhir/core/ValueSet/...`. Реализаторам, ссылающимся на эти канонические URL напрямую, необходимо их обновить.

[CodeSystem гражданства](CodeSystem-nationality-cs.html), на основе которого построен [набор значений гражданства](ValueSet-nationality-vs.html) в [UZ Core Patient](StructureDefinition-uz-core-patient.html), пересоздан на основе обновлённого списка гражданств dmp.uz: он вырос с 306 до 512 записей, отображаемые названия стандартизированы (верхний регистр), добавлены русские и английские переводы, а коды переназначены - один и тот же код теперь может обозначать другую национальность (например, `#1` изменился с "Ruslar" на "ADIGEY"). Это несовместимое изменение: коды гражданства, сохранённые в предыдущей версии, необходимо сопоставить заново.

Расширение для многоязычного перевода (базовое значение на узбекском плюс переводы на русский и каракалпакский) добавлено к `name` в [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) и к `title` в [UZ Core ActivityDefinition](StructureDefinition-uz-core-vaccination-activity-definition.html), [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) и [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html). Элемент `name` теперь обязателен в [UZ Core Organization](StructureDefinition-uz-core-organization.html) и [UZ Core Location](StructureDefinition-uz-core-location.html).

#### Документация

Добавлены страницы руководства по внедрению - [как читать это руководство](how-to-read.html), [общее руководство](general-guidance.html) и [Must Support](must-support.html) - а также сквозные [разборы рабочих процессов](workflows.html) для [лабораторного](workflow-lab.html), [иммунизационного](workflow-immunization.html), [направительного](workflow-referral.html) процессов, [пути пациента](workflow-patient-journey.html) и [процесса назначения лекарств](workflow-prescription.html). Каждый профиль теперь также имеет вводные разделы с описанием и примечаниями.

Добавлено [руководство по валидации ресурсов на соответствие UZ Core](api-access.html#validation) с использованием валидатора командной строки и validator.fhir.org.

Обновлено руководство по [доступу к API](api-access.html): на данный момент на песочнице валидируются только системы кодов ICD-10 и HL7, PKCE обязателен для фронтенд-клиентов, а детали аутентификации теперь ссылаются на внешнюю документацию SSO.

Страница Services переименована в [Компоненты](components.html) и дополнена описаниями компонентов и переводами на русский и узбекский.

### Версия 0.5.0

#### Добавлено

Добавлен профиль [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) с сопутствующими CodeSystem и ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)), а также ConceptMap для перевода локальных кодов аллергенов и проявлений реакций в SNOMED CT.

Добавлены [коды лабораторных исследований](CodeSystem-lab-pan-cs.html) для панелей и аналитов, используемых в Узбекистане.

В [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) `category.coding` и `type.coding` теперь содержат слайсы, поддерживающие новый слайс `labCategory`, привязанный к [LabServiceCategoriesVS](ValueSet-service-request-categories-vs.html) (коды из [LabCategoriesCS](CodeSystem-lab-categories-cs.html)). Лабораторные службы должны заполнять слайс `labCategory` дополнительно к существующему `dhpCategory`.

В [UZ Core Patient](StructureDefinition-uz-core-patient.html) набор значений [MahallaVS](ValueSet-mahalla-vs.html) (используется для `address.city`) расширен кодами из новой системы [Mahalla COATO](CodeSystem-mahalla-coato-cs.html), что добавляет более 2 600 идентификаторов махаллей на основе СОАТО в дополнение к существующим кодам MahallaCS.

В [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) система кодов **BenefitCS** была расширена новыми кодами (например, `#regis0004.00020`, `#regis0004.00021`, `#regis0004.00022`, `#regis0004.00023`).

В [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) в систему кодов **EducationCS** добавлены новые коды (например, `#regis0005.00011` "Нет образования", `#regis0005.00012` "Специальность").

В [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html) система кодов **SocialStatusCS** была расширена (например, `#regis0010.00010` "Ученик школы", `#regis0010.00011` "Имеется льготная категория").

В [DisabilityCS](CodeSystem-disability-cs.html) добавлен новый термин:  
- `#regis0011.00005` "Инвалидность не установлена"

Для [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) создана новая система кодов [AdmitSourceLocalCS](CodeSystem-admit-source-local-cs.html) со следующими кодами:
- `#mserv-0006-00001` "Без направления"
- `#mserv-0006-00002` "Диспансер"
- `#mserv-0006-00003` "Районная психиатрия"
- `#mserv-0006-00004` "Скорая медицинская помощь"
- `#mserv-0006-00005` "По решению суда"
- `#mserv-0006-00006` "На экспертизу"

Дополнительно создан новый набор значений [AdmissionOriginVS](ValueSet-admission-origin-vs.html), включающий коды из [AdmitSourceHomeCS](CodeSystem-admit-source-home-cs.html).

Для [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) [EncounterPriorityCS](CodeSystem-encounter-priority-cs.html) был дополнен недостающими кодами на основе HL7 `v3-ActPriority` (например, `#A`, `#CR`, `#EL`, `#R`, `#RR`, `#S`, `#T`, `#UD`, `#UR`), а также создана новая система кодов [EncounterPriorityLocalCS](CodeSystem-encounter-local-priority-cs.html) с локальными кодами приоритета (например, `#transferred`, `#mandatory-treatment`, `#involuntary-hospitalization`).

Для [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) создана новая система кодов [ReAdmissionLocalCS](CodeSystem-re-admission-local-cs.html) для случаев повторной госпитализации (например, `#first-time`, `#repeat-current-year`).

Для [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) [EncounterDischargeDispositionHomeCS](CodeSystem-encounter-discharge-disposition-home-cs.html) была расширена новыми кодами:
- `#mserv-0004-00004` "Выписан"
- `#mserv-0004-00002` "Умер"
- `#mserv-0004-00005` "Переведен в учреждение МВД"
- `#mserv-0004-00006` "Переведён(а) в дом милосердия"

Для [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) создана новая система кодов [EncounterLocalSubjectStatusCS](CodeSystem-encounter-local-subject-status-cs.html), отражающая состояние пациента:
- `#loc-cs-001` "Выздоровел"
- `#loc-cs-002` "С положительной динамикой"
- `#loc-cs-003` "Без изменений"
- `#loc-cs-004` "Ухудшился"

Хотя в UZ Core отсутствует отдельный профиль для Coverage, в связи с требованиями форм ССВ создана новая система кодов **CoverageTypeCS**.  
Она включает типы финансирования через ДТСЖ и социальные фонды (например, `#dtsj-treated-case`, `#dtsj-privileged-category`, `#saxovat-komak-fund`, `#womens-notebook-fund`, `#youth-notebook-fund`).

Добавлено [пространство имён идентификаторов документов](identifiers.html#document-identifiers) (doc) в систему идентификаторов.

Добавлен слайс `type.coding[organizationGrouping]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) с использованием [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) для детальной группировки учреждений (напр. `#104` "Специализированные больницы", `#210` "Семейная поликлиника"). Разработчикам следует заполнять этот новый слайс.

Добавлен код I_6 "Организации с участием иностранных инвесторов" в [OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html). Разработчикам следует использовать этот код в `type.coding[subordinationGroup]` для соответствующих организаций.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) расширен новыми кодами для амбулаторных учреждений (напр. `#200` поликлиники), образовательных учреждений (`#300`), центров переливания крови (`#400`), санэпидслужб (`#500`) и других. Исправлены некоторые существующие переводы (напр. `#116` исправлено с "Медицинский центр Центр" на "Медицинский центр"). Разработчикам следует проверить, существует ли теперь более точный код для их учреждений.

Добавлено [расширение зоны обслуживания](StructureDefinition-coverage-area.html) для [UZ Core Organization](StructureDefinition-uz-core-organization.html), указывающее административную территорию, которую обслуживает организация, привязанное к [StateVS](ValueSet-state-vs.html). Коды территорий SSV можно преобразовать в StateCS с помощью [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html).

Добавлен [пример](Organization-xonobod-medical-association.html), демонстрирующий преобразование организации из MIS2 JSON в ресурс UZ Core Organization с использованием ConceptMap.

Добавлены ConceptMap для перевода кодов MIS2 в терминологию UZ Core: [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) для `type.coding[organizationalStructure]`, [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html) для `type.coding[subordinationGroup]` и [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html) для `type.coding[organizationalServiceGroup]`. Разработчикам, выполняющим перевод из MIS2, следует использовать эти карты для заполнения соответствующих слайсов.

#### Изменено

В [UZ Core Observation](StructureDefinition-uz-core-observation.html) привязка [ObservationCodesVS](ValueSet-observation-codes-vs.html) изменена с required на **preferred** и теперь включает коды SNOMED CT в дополнение к LOINC и локальным кодам. Разработчики могут использовать коды SNOMED CT, где это уместно.

Кардинальность `type.coding[organizationalServiceGroup]` и `type.coding[specialization]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) расширена с 0..1 до 0..\*. Теперь можно указывать несколько кодов сервисных групп и специализаций для одной организации.

#### Несовместимые изменения

`UZCoreClinicalCondition` удалён и объединён с [UZ Core Condition](StructureDefinition-uz-core-condition.html). Разработчикам необходимо обновить ссылки с `uz-core-clinical-condition` на `uz-core-condition`. Для `Condition.code` теперь используется новый набор значений [ConditionCodeVS](ValueSet-condition-code-vs.html), объединяющий коды ICD-10 и SNOMED CT (привязка preferred).

В [Опроснике удовлетворённости пациента](Questionnaire-PatientSatisfactionQuestionnaire.html) коды `answerOption` вынесены из URL самого Questionnaire в отдельную систему кодов [PatientSatisfactionCS](CodeSystem-patient-satisfaction-cs.html). Разработчикам, заполняющим QuestionnaireResponse для этого опросника, необходимо обновить значение `system` в Coding с `https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire` на `https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs`. Сами коды не изменились.

Слайс `type.coding[organizationType]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) теперь использует OrganizationTypeUZCS вместо международного CodeSystem HL7 `organization-type`. Например, `$organization-type-cs#prov` необходимо заменить на код из `organization-types-uz-cs` (напр. `#I` "Распределение по управлению"). Прямого соответствия нет - каждую организацию необходимо классифицировать в новой системе (коды I-V).

#### Документация

В [UZ Core Patient](StructureDefinition-uz-core-patient.html) [документация по идентификаторам](identifiers.html) уточнена: национальный идентификатор - это **ПИНФЛ** (Персональный идентификационный номер физического лица), а также разъяснена разница между использованием идентификаторов `medicalRecordTemp` и `unknownPatient`.

Добавлены [пример транзакционного бандла](Bundle-example-transaction-bundle.html) и [пример PractitionerRole с произвольным текстом квалификации](PractitionerRole-example-practitionerrole-freetext.html) в качестве справочных шаблонов для разработчиков.

### Версия 0.4.0

Добавлен профиль [UZ Core Goal](StructureDefinition-uz-core-goal.html) с соответствующими кодовыми справочниками и наборами значений.

Добавлены профили [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) и [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) с многоязычной поддержкой для переведённых вариантов ответов.

Добавлен [тип идентификатора для номера пенсионного удостоверения](NamingSystem-patient-id-uzb-pension-number.html) с поддержкой NamingSystem в ресурсе [Patient](StructureDefinition-uz-core-patient.html).

Уточнены требования к силе привязки (binding strength) в [руководстве по моделированию](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md).

Применена обратная связь с DHP Connectathon 1.

Исправлены ссылки на профили для использования профилей UZ Core вместо базовых ресурсов FHIR где возможно.

Гражданство [пациента](StructureDefinition-uz-core-patient.html) теперь использует коды ISO 3166-1 alpha-2 вместо пользовательских кодов МВД.

Исправлена консистентность кода [OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) (101 → 101.0).

Исправлен русский перевод для I_3 в [OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html).

Уточнены описания для [NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html) и [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) для объяснения их назначения и иерархии.

Добавлено [расширение для отслеживания даты прикрепления пациента к управляющей организации](StructureDefinition-managing-organization-attachment.html).

Добавлен [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) для преобразования кодов стран МВД в коды ISO 3166-1 alpha-2.

Добавлены явные срезы для номеров иностранных паспортов и водительских удостоверений пациентов с поддержкой кодов стран.

Обновлено описание [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html).

Улучшена [документация по идентификаторам](identifiers.html), включая уточнение ПИНФЛ и переход на двухбуквенные коды стран (alpha-2).

Добавлен [раздел по витальным показателям](vital-signs.html) с руководством и примерами.

Добавлена поддержка каракалпакского языка (kaa) в правиле MultilingualName, которое используется для многоязычных названий в профилях [Organization](StructureDefinition-uz-core-organization.html) и [Location](StructureDefinition-uz-core-location.html).

Обновлён владелец интеллектуальной собственности на Министерство здравоохранения.

Добавлен профиль UZ Core Clinical Condition для разграничения клинических состояний, основанных на МКБ-10, и состояний, не основанных на МКБ-10.

Статус инвалидности пациента перенесён из ресурса [Patient](StructureDefinition-uz-core-patient.html) (где он реализовывался через стандартное расширение FHIR) в ресурс [Condition](StructureDefinition-uz-core-condition.html).

Из идентификаторов NamingSystem удалены символы подчёркивания.

Добавлен [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), описывающий поддерживаемые ресурсы, профили, операции и параметры поиска в рамках DHP.

В Руководство по внедрению (IG) добавлены разделы: IP statements, globals table и dependency table.

Канонические URL идентификаторов NamingSystem теперь начинаются с https://terminology.dhp.uz.

Исправлено название дополнительного кодового справочника (supplement) для [Observation Interpretation](CodeSystem-observation-interpretation-cs.html).

Добавлена стратегия многоязычной терминологии с узбекскими авторскими CodeSystem и дополнениями к THO для локализации пользовательского интерфейса.

Документировано использование ConceptMap и соответствующей стратегии.

Обновлены имена срезов (slice names) в соответствии с рекомендуемым стилем именования — lowerCamelCase.

Добавлена поддержка международных адресов в ресурсах [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html) и [RelatedPerson](StructureDefinition-uz-core-relatedperson.html).

Добавлены переводы на узбекский язык.

### Версия 0.3.0
Добавлены UZ Core профили для [Encounter](StructureDefinition-uz-core-encounter.html), [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) и [Observation](StructureDefinition-uz-core-observation.html).

Канонические URL изменены на `https://dhp.uz/fhir/core` для ресурсов соответствия и `https://terminology.dhp.uz/fhir/core` для терминологических ресурсов, чтобы обеспечить будущие IG, которые будут следовать шаблону `https://dhp.uz/fhir/<ig>`.

Добавлены переводы на русский язык.

### Версия 0.2.0
Это первый, находящийся в стадии разработки, выпуск IG (Implementation Guide Руководство по внедрению), в котором обновлены канонические URL всех ресурсов до их окончательной версии.

#### Основные изменения
Добавлены UZ Core профили для AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance и Socioeconomic Observation.

Канонические URL профилей, терминологических ресурсов и IG изменены с временного домена `medcore.uz` на официальный домен `dhp.uz`.
