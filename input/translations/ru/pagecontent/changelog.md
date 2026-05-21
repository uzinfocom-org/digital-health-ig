### В разработке

(Пока без изменений)

### Версия 0.5.0

Добавлены [коды лабораторных исследований](CodeSystem-observation-lab-research-codes-cs.html) для панелей и аналитов, используемых в Узбекистане.

Добавлено [пространство имён идентификаторов документов](identifiers.html#document-identifiers) (doc) в систему идентификаторов.

#### Изменения профиля Organization

Слайс `type.coding[organizationType]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) теперь использует [OrganizationTypeUZCS](CodeSystem-organization-types-uz-cs.html) вместо международного CodeSystem HL7 `organization-type`. Например, `$organization-type-cs#prov` необходимо заменить на код из `organization-types-uz-cs` (напр. `#I` "Распределение по управлению"). Прямого соответствия нет - каждую организацию необходимо классифицировать в новой системе (коды I-V).

Добавлен слайс `type.coding[organizationGrouping]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) с использованием [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) для детальной группировки учреждений (напр. `#104` "Специализированные больницы", `#210` "Семейная поликлиника"). Разработчикам следует заполнять этот новый слайс.

Кардинальность `type.coding[organizationalServiceGroup]` и `type.coding[specialization]` в [UZ Core Organization](StructureDefinition-uz-core-organization.html) расширена с 0..1 до 0..\*. Теперь можно указывать несколько кодов сервисных групп и специализаций для одной организации.

Добавлен код I_6 "Организации с участием иностранных инвесторов" в [OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html). Разработчикам следует использовать этот код в `type.coding[subordinationGroup]` для соответствующих организаций.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) расширен новыми кодами для амбулаторных учреждений (напр. `#200` поликлиники), образовательных учреждений (`#300`), центров переливания крови (`#400`), санэпидслужб (`#500`) и других. Исправлены некоторые существующие переводы (напр. `#116` исправлено с "Медицинский центр Центр" на "Медицинский центр"). Разработчикам следует проверить, существует ли теперь более точный код для их учреждений.

Добавлено [расширение зоны обслуживания](StructureDefinition-coverage-area.html) для [UZ Core Organization](StructureDefinition-uz-core-organization.html), указывающее административную территорию, которую обслуживает организация, привязанное к [StateVS](ValueSet-state-vs.html). Коды территорий SSV можно преобразовать в StateCS с помощью [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html).

Добавлен [пример](Organization-xonobod-medical-association.html), демонстрирующий преобразование организации из MIS2 JSON в ресурс UZ Core Organization с использованием ConceptMap.

Добавлены ConceptMap для перевода кодов MIS2 в терминологию UZ Core: [MIS2MedicalTypeToOrganizationalStructureCM](ConceptMap-mis2-medical-type-to-organizational-structure-cm.html) для `type.coding[organizationalStructure]`, [MIS2LevelTypeToSubordinationGroupCM](ConceptMap-mis2-level-type-to-subordination-group-cm.html) для `type.coding[subordinationGroup]` и [MIS2ServiceTypeToOrganizationalServiceGroupCM](ConceptMap-mis2-service-type-to-organizational-service-group-cm.html) для `type.coding[organizationalServiceGroup]`. Разработчикам, выполняющим перевод из MIS2, следует использовать эти карты для заполнения соответствующих слайсов.

Добавлен профиль [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) с сопутствующими CodeSystem и ValueSet ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)), а также ConceptMap для перевода локальных кодов аллергенов и проявлений реакций в SNOMED CT. Разработчикам, фиксирующим аллергии, следует использовать этот профиль.

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

Добавлен профиль [UZ Core Clinical Condition](StructureDefinition-uz-core-clinical-condition.html) для разграничения клинических состояний, основанных на МКБ-10, и состояний, не основанных на МКБ-10.

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
