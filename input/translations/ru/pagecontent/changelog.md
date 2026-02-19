### В разработке

Добавлены [коды лабораторных исследований](CodeSystem-observation-lab-research-codes-cs.html) для панелей и аналитов, используемых в Узбекистане.

Добавлено [пространство имён идентификаторов документов](identifiers.html#document-identifiers) (doc) в систему идентификаторов.

### Версия 0.4.0

Добавлен профиль [UZ Core Goal](StructureDefinition-UZCoreGoal.html) с соответствующими кодовыми справочниками и наборами значений.

Добавлены профили [UZ Core Questionnaire](StructureDefinition-UZCoreQuestionnaire.html) и [QuestionnaireResponse](StructureDefinition-UZCoreQuestionnaireResponse.html) с многоязычной поддержкой для переведённых вариантов ответов.

Добавлен [тип идентификатора для номера пенсионного удостоверения](NamingSystem-patient-id-uzb-pension-number.html) с поддержкой NamingSystem в ресурсе [Patient](StructureDefinition-UZCorePatient.html).

Уточнены требования к силе привязки (binding strength) в [руководстве по моделированию](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md).

Применена обратная связь с DHP Connectathon 1.

Исправлены ссылки на профили для использования профилей UZ Core вместо базовых ресурсов FHIR где возможно.

Гражданство [пациента](StructureDefinition-UZCorePatient.html) теперь использует коды ISO 3166-1 alpha-2 вместо пользовательских кодов МВД.

Исправлена консистентность кода [OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) (101 → 101.0).

Исправлен русский перевод для I_3 в [OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html).

Уточнены описания для [NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html) и [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) для объяснения их назначения и иерархии.

Добавлено [расширение для отслеживания даты прикрепления пациента к управляющей организации](StructureDefinition-ManagingOrganizationAttachment.html).

Добавлен [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) для преобразования кодов стран МВД в коды ISO 3166-1 alpha-2.

Добавлены явные срезы для номеров иностранных паспортов и водительских удостоверений пациентов с поддержкой кодов стран.

Обновлено описание [EpisodeOfCare](StructureDefinition-UZCoreEpisodeOfCare.html).

Улучшена [документация по идентификаторам](identifiers.html), включая уточнение ПИНФЛ и переход на двухбуквенные коды стран (alpha-2).

Добавлен [раздел по витальным показателям](vital-signs.html) с руководством и примерами.

Добавлена поддержка каракалпакского языка (kaa) в правиле MultilingualName, которое используется для многоязычных названий в профилях [Organization](StructureDefinition-UZCoreOrganization.html) и [Location](StructureDefinition-UZCoreLocation.html).

Обновлён владелец интеллектуальной собственности на Министерство здравоохранения.

Добавлен профиль [UZ Core Clinical Condition](StructureDefinition-UZCoreClinicalCondition.html) для разграничения клинических состояний, основанных на МКБ-10, и состояний, не основанных на МКБ-10.

Статус инвалидности пациента перенесён из ресурса [Patient](StructureDefinition-UZCorePatient.html) (где он реализовывался через стандартное расширение FHIR) в ресурс [Condition](StructureDefinition-UZCoreCondition.html).

Из идентификаторов NamingSystem удалены символы подчёркивания.

Добавлен [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html), описывающий поддерживаемые ресурсы, профили, операции и параметры поиска в рамках DHP.

В Руководство по внедрению (IG) добавлены разделы: IP statements, globals table и dependency table.

Канонические URL идентификаторов NamingSystem теперь начинаются с https://terminology.dhp.uz.

Исправлено название дополнительного кодового справочника (supplement) для [Observation Interpretation](CodeSystem-observation-interpretation-cs.html).

Добавлена стратегия многоязычной терминологии с узбекскими авторскими CodeSystem и дополнениями к THO для локализации пользовательского интерфейса.

Документировано использование ConceptMap и соответствующей стратегии.

Обновлены имена срезов (slice names) в соответствии с рекомендуемым стилем именования — lowerCamelCase.

Добавлена поддержка международных адресов в ресурсах [Patient](StructureDefinition-UZCorePatient.html), [Practitioner](StructureDefinition-UZCorePractitioner.html) и [RelatedPerson](StructureDefinition-UZCoreRelatedPerson.html).

Добавлены переводы на узбекский язык.

### Версия 0.3.0
Добавлены UZ Core профили для [Encounter](StructureDefinition-UZCoreEncounter.html), [EpisodeOfCare](StructureDefinition-UZCoreEpisodeOfCare.html) и [Observation](StructureDefinition-UZCoreObservation.html).

Канонические URL изменены на `https://dhp.uz/fhir/core` для ресурсов соответствия и `https://terminology.dhp.uz/fhir/core` для терминологических ресурсов, чтобы обеспечить будущие IG, которые будут следовать шаблону `https://dhp.uz/fhir/<ig>`.

Добавлены переводы на русский язык.

### Версия 0.2.0
Это первый, находящийся в стадии разработки, выпуск IG (Implementation Guide Руководство по внедрению), в котором обновлены канонические URL всех ресурсов до их окончательной версии.

#### Основные изменения
Добавлены UZ Core профили для AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance и Socioeconomic Observation.

Канонические URL профилей, терминологических ресурсов и IG изменены с временного домена `medcore.uz` на официальный домен `dhp.uz`.

