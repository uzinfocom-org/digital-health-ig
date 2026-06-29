### В разработке

#### Новые профили

Добавлен профиль [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) для лабораторных и диагностических отчётов с сопутствующей терминологией для [категории услуг](ValueSet-diagnostic-report-service-category-vs.html), [статуса](ValueSet-diagnostic-report-status-vs.html) и [типов отчётов](ValueSet-lab-report-types-vs.html).

Добавлен профиль [UZ Core ServiceRequest Laboratory](StructureDefinition-uz-core-servicerequest-laboratory.html) для заказа лабораторных тестов и панелей, включая терминологию для [типа оплаты](ValueSet-payment-type-vs.html) и [статуса запроса](ValueSet-service-request-status-vs.html).

Добавлен профиль [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) для клинических образцов с терминологией для [метода сбора](ValueSet-specimen-collection-method-vs.html), [типа образца](ValueSet-specimen-types-vs.html), [роли](ValueSet-specimen-role-vs.html) и [статуса](ValueSet-specimen-status-vs.html). На него ссылаются профили лабораторного ServiceRequest и DiagnosticReport.

Добавлен профиль [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), чтобы системы могли публиковать определения лабораторных тестов - допустимые единицы измерения, методы измерения и референсные диапазоны с учётом пола - для Портала пациента и интегрирующихся систем.

Добавлен профиль [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) для регистрации вакцинаций с терминологией для [целевого заболевания](ValueSet-target-disease-vs.html), [места введения](ValueSet-immunization-site-vs.html), [пути введения](ValueSet-route-code-vs.html) и [источника финансирования](ValueSet-funding-source-vs.html), а также ConceptMap для перевода [национальных кодов вакцин DMED в CVX](ConceptMap-dmed-vaccine-to-cvx-cm.html).

Добавлен профиль [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) для прогнозов вакцинации с терминологией для [статуса прогноза](ValueSet-recommendation-forecast-status-vs.html), [критерия даты](ValueSet-recommendation-date-criterion-vs.html) и [причины](ValueSet-recommendation-reason-vs.html).

Добавлен профиль [UZ Core Immunization PlanDefinition](StructureDefinition-uz-core-immunization-plan-definition.html) для национальных календарей иммунизации.

Добавлен профиль [UZ Core ActivityDefinition](StructureDefinition-uz-core-activity-definition.html) для определения переиспользуемых клинических активностей (процедур, тестов, протоколов медикаментозной терапии) независимо от конкретного пациента.

Добавлен профиль [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) для регистрации нежелательных явлений с терминологией для [фактичности](ValueSet-adverse-event-actuality-vs.html), [серьёзности](ValueSet-adverse-event-seriousness-vs.html), [исхода](ValueSet-adverse-event-outcome-vs.html) и [статуса](ValueSet-adverse-event-status-vs.html).

Добавлен профиль [UZ Core Medication](StructureDefinition-uz-core-medication.html) с характерными для Узбекистана идентификаторами медикаментов (ID маркировки, регистрационное удостоверение, GTIN, ID агрегации коробки, код национальной классификации продуктов и услуг) и терминологией на основе АТХ для [классификации](ValueSet-medication-classification-vs.html) и [лекарственной формы](ValueSet-medication-doseform-vs.html).

Добавлен профиль [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) с терминологией для [статуса процедуры](ValueSet-procedure-event-status-vs.html), [кодов процедур](ValueSet-procedure-code-vs.html) на основе SNOMED CT и [исхода](ValueSet-procedure-outcome-vs.html), а также примером ConceptMap [SNOMED CT в ICHI](ConceptMap-snomed-to-ichi-procedures.html) для отчётности по возмещению расходов.

#### Изменения терминологии и привязок

Добавлены [коды лабораторных методов](CodeSystem-lab-methods-cs.html) с ConceptMap, сопоставляющими лабораторные [коды панелей и аналитов](ConceptMap-lab-pan-codes-to-loinc.html) с LOINC и [коды методов](ConceptMap-lab-methods-to-loinc.html) с SNOMED CT. Коды методов представлены [набором значений лабораторных методов](ValueSet-lab-method-vs.html), привязанным к элементу `method` профиля [UZ Core Observation](StructureDefinition-uz-core-observation.html).

В [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) `code` теперь привязан (required) к [набору значений должностей и профессий](ValueSet-position-and-profession-vs.html) (ранее - набор значений ролей медработников); `specialty` по-прежнему привязан (required) к [набору значений специализаций профессий](ValueSet-profession-specialization-vs.html). Реализаторы должны заполнять роли медработников кодами из этих наборов значений.

Добавлено [расширение времени обработки](StructureDefinition-turnaround-time.html) в [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) для указания ожидаемого времени получения результатов по лабораторным услугам. Привязки категории и типа в этом профиле также смягчены с required на extensible, чтобы реализаторы могли добавлять локальные коды.

`type` в [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) и [UZ Core EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), а также `signature.type` в [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) теперь разбиты на слайсы, так что национальный код требуется, а дополнительные кодировки остаются разрешёнными.

Целевые ссылки в нескольких профилях теперь указывают на профили UZ Core там, где они существуют - например, [UZ Core Observation](StructureDefinition-uz-core-observation.html) `specimen` на UZ Core Specimen и `partOf` на UZ Core Procedure/Immunization, [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) `administeredProduct` на UZ Core Medication и [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) `suspectEntity` на UZ Core Medication. Ресурсы, на которые ссылаются, теперь должны соответствовать соответствующему профилю UZ Core.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) `reason` и [UZ Core Observation](StructureDefinition-uz-core-observation.html) `basedOn` теперь могут ссылаться на ImmunizationRecommendation.

Канонические URL наборов значений домена идентификаторов и EpisodeOfCare (а также наборов значений иностранных паспортов и водительских удостоверений) перемещены с `https://dhp.uz/fhir/core/ValueSet/...` на `https://terminology.dhp.uz/fhir/core/ValueSet/...`. Реализаторам, ссылающимся на эти канонические URL напрямую, необходимо их обновить.

[CodeSystem гражданства](CodeSystem-nationality-cs.html), на основе которого построен [набор значений гражданства](ValueSet-nationality-vs.html) в [UZ Core Patient](StructureDefinition-uz-core-patient.html), пересоздан на основе обновлённого списка гражданств dmp.uz: он вырос с 306 до 512 записей, отображаемые названия стандартизированы (верхний регистр), добавлены русские и английские переводы, а коды переназначены - один и тот же код теперь может обозначать другую национальность (например, `#1` изменился с "Ruslar" на "ADIGEY"). Это критическое изменение: коды гражданства, сохранённые в предыдущей версии, необходимо сопоставить заново.

Исправлены английские отображаемые названия в [OrganizationalSpecializationCS](CodeSystem-organizational-specialization-cs.html) (единообразный регистр; "Children" изменено на "Pediatric"). Коды не изменились.

Добавлены терминологические мосты DMED для приёма данных из национальной системы DMED: [коды стран](ConceptMap-dmed-country-to-dhp-country-cm.html) сопоставлены с ISO 3166, [единицы измерения](ConceptMap-dmed-measure-unit-to-dhp-cm.html) - с UCUM, а профессии DMED сопоставлены как с [SNOMED CT](ConceptMap-dmed-position-to-snomed-cm.html), так и с [должностями DHP](ConceptMap-dmed-position-to-dhp-position-cm.html).

`gender` в [UZ Core Patient](StructureDefinition-uz-core-patient.html) теперь привязан (required) к новому [набору значений административного пола](ValueSet-administrative-gender-vs.html) с русскими и узбекскими переводами.

#### Организация и идентификаторы

Добавлены слайсы идентификаторов Государственного фонда медицинского страхования (SHIF) и Министерства здравоохранения (Минздрав) в [UZ Core Organization](StructureDefinition-uz-core-organization.html). Коды поставщиков, назначаемые SHIF, типизированы как `PRN` (номер поставщика). Новая страница [идентификация плательщиков](payor-identification.html) объясняет, как идентифицируются плательщики и их законтрактованные поставщики.

В [UZ Core Patient](StructureDefinition-uz-core-patient.html) и [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) локальный идентификатор паспорта больше не фиксирует `use` как `official`: используйте `official` для текущей ID-карты и `old` для устаревшего бумажного паспорта с той же системой. См. страницу [идентификаторы](identifiers.html).

#### Документация

Добавлены страницы руководства по внедрению - [как читать это руководство](how-to-read.html), [общее руководство](general-guidance.html) и [Must Support](must-support.html) - а также сквозные [разборы рабочих процессов](workflows.html) для [лабораторного](workflow-lab.html), [иммунизационного](workflow-immunization.html), [направительного](workflow-referral.html) процессов, [пути пациента](workflow-patient-journey.html) и [процесса назначения лекарств](workflow-prescription.html). Каждый профиль теперь также имеет вводные разделы с описанием и примечаниями.

Добавлено [руководство по валидации ресурсов на соответствие UZ Core](api-access.html#validation) с использованием валидатора командной строки и validator.fhir.org.

Обновлено руководство по [доступу к API](api-access.html): на данный момент на песочнице валидируются только системы кодов ICD-10 и HL7, PKCE обязателен для фронтенд-клиентов, а детали аутентификации теперь ссылаются на внешнюю документацию SSO.

Страница Services переименована в [Компоненты](components.html) и дополнена описаниями компонентов и переводами на русский и узбекский.

### Версия 0.5.0

Добавлены [коды лабораторных исследований](CodeSystem-lab-pan-cs.html) для панелей и аналитов, используемых в Узбекистане.

Добавлено [пространство имён идентификаторов документов](identifiers.html#document-identifiers) (doc) в систему идентификаторов.

#### Изменения профиля Organization

Слайс `type.coding[organizationType]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) теперь использует OrganizationTypeUZCS вместо международного CodeSystem HL7 `organization-type`. Например, `$organization-type-cs#prov` необходимо заменить на код из `organization-types-uz-cs` (напр. `#I` "Распределение по управлению"). Прямого соответствия нет - каждую организацию необходимо классифицировать в новой системе (коды I-V).

Добавлен слайс `type.coding[organizationGrouping]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) с использованием [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) для детальной группировки учреждений (напр. `#104` "Специализированные больницы", `#210` "Семейная поликлиника"). Разработчикам следует заполнять этот новый слайс.

Кардинальность `type.coding[organizationalServiceGroup]` и `type.coding[specialization]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) расширена с 0..1 до 0..\*. Теперь можно указывать несколько кодов сервисных групп и специализаций для одной организации.

Добавлен код I_6 "Организации с участием иностранных инвесторов" в [OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html). Разработчикам следует использовать этот код в `type.coding[subordinationGroup]` для соответствующих организаций.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) расширен новыми кодами для амбулаторных учреждений (напр. `#200` поликлиники), образовательных учреждений (`#300`), центров переливания крови (`#400`), санэпидслужб (`#500`) и других. Исправлены некоторые существующие переводы (напр. `#116` исправлено с "Медицинский центр Центр" на "Медицинский центр"). Разработчикам следует проверить, существует ли теперь более точный код для их учреждений.

Добавлено [расширение зоны обслуживания](StructureDefinition-coverage-area.html) для [UZ Core Organization](StructureDefinition-uz-core-organization.html), указывающее административную территорию, которую обслуживает организация, привязанное к [StateVS](ValueSet-state-vs.html). Коды территорий SSV можно преобразовать в StateCS с помощью [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html).

Добавлен [пример](Organization-xonobod-medical-association.html), демонстрирующий преобразование организации из MIS2 JSON в ресурс UZ Core Organization с использованием ConceptMap.

Добавлены ConceptMap для перевода кодов MIS2 в терминологию UZ Core: [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) для `type.coding[organizationalStructure]`, [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) для `type.coding[subordinationGroup]` и [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) для `type.coding[organizationalServiceGroup]`. Разработчикам, выполняющим перевод из MIS2, следует использовать эти карты для заполнения соответствующих слайсов.

Добавлен профиль [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) с сопутствующими CodeSystem и ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)), а также ConceptMap для перевода локальных кодов аллергенов и проявлений реакций в SNOMED CT.

`UZCoreClinicalCondition` удалён и объединён с [UZ Core Condition](StructureDefinition-uz-core-condition.html). Разработчикам необходимо обновить ссылки с `uz-core-clinical-condition` на `uz-core-condition`. Для `Condition.code` теперь используется новый набор значений [ConditionCodeVS](ValueSet-condition-code-vs.html), объединяющий коды ICD-10 и SNOMED CT (привязка preferred).

В [Опроснике удовлетворённости пациента](Questionnaire-PatientSatisfactionQuestionnaire.html) коды `answerOption` вынесены из URL самого Questionnaire в отдельную систему кодов [PatientSatisfactionCS](CodeSystem-patient-satisfaction-cs.html). Разработчикам, заполняющим QuestionnaireResponse для этого опросника, необходимо обновить значение `system` в Coding с `https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire` на `https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs`. Сами коды не изменились.

В [UZ Core Observation](StructureDefinition-uz-core-observation.html) привязка [ObservationCodesVS](ValueSet-observation-codes-vs.html) изменена с required на **preferred** и теперь включает коды SNOMED CT в дополнение к LOINC и локальным кодам. Разработчики могут использовать коды SNOMED CT, где это уместно.

В [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) `category.coding` и `type.coding` теперь содержат слайсы, поддерживающие новый слайс `labCategory`, привязанный к [LabServiceCategoriesVS](ValueSet-lab-service-categories-vs.html) (коды из [LabCategoriesCS](CodeSystem-lab-categories-cs.html)). Лабораторные службы должны заполнять слайс `labCategory` дополнительно к существующему `dhpCategory`.

В [UZ Core Patient](StructureDefinition-uz-core-patient.html) набор значений [MahallaVS](ValueSet-mahalla-vs.html) (используется для `address.city`) расширен кодами из новой системы [Mahalla COATO](CodeSystem-mahalla-coato-cs.html), что добавляет более 2 600 идентификаторов махаллей на основе СОАТО в дополнение к существующим кодам MahallaCS.

В [UZ Core Patient](StructureDefinition-uz-core-patient.html) [документация по идентификаторам](identifiers.html) уточнена: национальный идентификатор - это **ПИНФЛ** (Персональный идентификационный номер физического лица), а также разъяснена разница между использованием идентификаторов `medicalRecordTemp` и `unknownPatient`.

Добавлены [пример транзакционного бандла](Bundle-example-transaction-bundle.html) и [пример PractitionerRole с произвольным текстом квалификации](PractitionerRole-example-practitionerrole-freetext.html) в качестве справочных шаблонов для разработчиков.

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
