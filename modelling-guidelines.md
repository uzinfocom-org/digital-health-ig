# Руководство по моделированию национальных профилей Узбекистана

## 1) Назначение и область применения

Данное руководство описывает подходы и методики создания национальных профилей FHIR ресурсов, адаптированных к требованиям здравоохранения Узбекистана используя HL7 FHIR R5.

## 2) Конвенции именования

### 2.1 Общие принципы именования

Все артефакты в национальных профилях должны следовать единым конвенциям именования для обеспечения консистентности и поддерживаемости кода.

### 2.2 Именование профилей

Каждый национальный профиль должен следовать единой структуре:

```fsh
Profile: UZCoreCondition
Parent: Condition
Id: uz-core-condition
Title: "UZ Core Condition"
Description: "Uzbekistan Core Condition profile, used for documenting a patient's clinical symptoms, conditions, and their characteristics"
```

**Конвенции для профилей:**
- **Profile**: `UZCore[ResourceName]` (например, `UZCorePatient`, `UZCoreObservation`)
- **Parent**: Соответствующий базовый FHIR ресурс
- **Id**: `uz-core-[resource-name]` в нижнем регистре с дефисами
- **Title**: `"UZ Core [Resource Name]"`
- **Description**: `"Uzbekistan Core [Resource Name] profile, used to [описание назначения]"`

### 2.3 Именование файлов

**Основные профили:**
- Формат: `UZCore[ResourceName].fsh`
- Примеры: `UZCorePatient.fsh`, `UZCoreCondition.fsh`, `UZCoreObservation.fsh`

**Терминологические артефакты:**
- CodeSystem: `[PurposeName]CS.fsh` (например, `ClinicalStatusCS.fsh`)
- ValueSet: `[PurposeName]VS.fsh` (например, `ClinicalStatusVS.fsh`)

**Специальные файлы:**
- `Extensions.fsh` - все расширения
- `Aliases.fsh` - все псевдонимы
- `Rulesets.fsh` - наборы правил

### 2.5 Именование расширений (Extensions)

**Структура именования Extensions:**
```fsh
Extension: DiagnosisType
Id: diagnosis-type
Title: "Diagnosis Type"
```

**Конвенции для Extensions:**
- **Extension name**: CamelCase, описательное имя
- **Id**: `[purpose-name]` в нижнем регистре с дефисами
- **Title**: Человекочитаемое название в Title Case

### 2.6 Именование инвариантов

**Формат именования инвариантов:**
- Для ресурсов: `uzcore-[resource-abbreviation]-[number]`
- Для расширений: `uzcore-[extension-purpose]-[number]`
- Примеры:
  - Ресурсы: `uzcore-con-1`, `uzcore-pat-1`, `uzcore-obs-1`
  - Расширения: `uzcore-gender-other-1`, `uzcore-diagnosis-type-1`

```fsh
* obeys uzcore-con-1
* ^constraint[0].key = "uzcore-con-1"
* ^constraint[=].severity = #error
* ^constraint[=].human = "Condition must have either a code or a bodySite"
* ^constraint[=].expression = "code.exists() or bodySite.exists()"
```

### 2.7 Именование поисковых параметров

**Формат для национальных поисковых параметров:**
**Конвенции:**
- **Id**: `uz-core-[resource]-[parameter-name]` в нижнем регистре с дефисами
- **Name**: PascalCase с префиксом UZ

```fsh
SearchParameter: uz-core-condition-diagnosis-type
Id: uz-core-condition-diagnosis-type
* name = "UZConditionDiagnosisType"
* description = "Search for conditions by diagnosis type"
```

## 3) Структура профиля

## 3) Конвенции слайсинга

### 3.1 Основные принципы слайсинга

Слайсинг используется для разделения массивов элементов на подмножества с определёнными характеристиками. При создании слайсов в национальных профилях следуйте этим принципам:

**Типы дискриминаторов:**: использовать по потребности.

**Правила слайсинга:**  `#open` - дополнительные слайсы разрешены, рекомендуется по умолчанию

### 3.2 Конвенции именования слайсов

- Имена слайсов должны быть в lower camelCase (согласно FSH best practice)
- Используйте описательные имена, отражающие назначение слайса
- Примеры имен слайсов: `problemListItem`, `encounterDiagnosis`, `primaryAsserter`

### 3.3 Примеры слайсинга

**Слайсинг идентификаторов (Patient.identifier) из UZCorePatient:**

```fsh
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Способы идентификации пациента"
* identifier ^slicing.ordered = false
* identifier contains
    nationalId 0..1 MS and
    passportLocal 0..1 MS and
    passportInternational 0..1 MS and
    birthCertificate 0..1 MS and
    driversLicense 0..1 MS

* identifier[nationalId]
  * system 1..1 MS
  * system = $nationaluniqueID
  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

* identifier[passportLocal]
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS
```

**Ключевые элементы:**
- `discriminator.type = #value` - различение по точному значению
- `discriminator.path = "system"` - различение по полю system
- `rules = #open` - разрешены дополнительные слайсы
- `ordered = false` - порядок слайсов не важен
- Каждый слайс имеет четкое назначение и ограничения


## 4) Правила профиля (кардинальности, MustSupport, связки)

При определении правил профиля необходимо учитывать следующие принципы:

- **MustSupport (MS)**: Все элементы, которые должны поддерживаться всеми системами в Узбекистане, должны быть помечены как MS. Подробное описание MustSupport можно найти в [документации](https://build.fhir.org/ig/vadi2/DHP-temp/en/api-access.html#must-support).
- **Кардинальности**: Указывайте кардинальности элементов только если они отличаются от базового FHIR ресурса. Если кардинальность совпадает с базовым ресурсом, не дублируйте эту информацию.
- **Связки**: Используйте `required` связку для обязательных элементов с фиксированным набором значений. Используйте `extensible` связку когда разрешены дополнительные коды. **Предупреждение**: если использовать `extensible` связку, валидатор не сможет различить опечатки от новых допустимых кодов. Для национальных терминологий предпочитайте создание ValueSet с соответствующими переводами.

## 4) Терминологические артефакты

### 4.1 Почему нужен supplement для CodeSystem и ValueSet

При создании национальных профилей часто возникает необходимость локализации терминологий. Создание **supplement** к существующим CodeSystem HL7 (например, `condition-clinical` для профиля Condition) позволяет:

- Добавить локальные переводы (RU/UZ) без дублирования исходного набора кодов.
- Сохранить совместимость с международными профилями, продолжая использовать канонические коды HL7.
- Избежать конфликтов при обновлении HL7-терминологий, так как supplement не меняет структуру исходной код‑системы, а лишь расширяет её описания.

Далее приведены пошаговые действия по созданию supplement, за которыми следуют конкретные FSH‑примеры.

**Как создавать supplement:**

Для стандартизации процесса создания supplement используйте существующие RuleSets из файла `Rulesets.fsh`:

- `SupplementCodeSystemDraft` - для черновых версий supplement
- `SupplementCodeSystem` - для активных версий supplement

Следуйте этим шагам:

1. Определите локальную CodeSystem с использованием соответствующего RuleSet.
2. Добавьте переводы дисплеев на нужных языках (RU/UZ).
3. Создайте локальный ValueSet, который включает и оригинальную систему, и ваш supplement.

**Важно:** Версия supplement должна отражать версию оригинальной CodeSystem, которую он дополняет. Это единственный случай, когда версия должна быть указана явно — оригинальные CodeSystem и все ValueSets не должны иметь явной версии, так как она автоматически наследуется от версии IG.

### Создание оригинальных CodeSystems

Для создания собственных (не-supplement) CodeSystems используйте соответствующие RuleSets из файла `Rulesets.fsh`:

- `OriginalCodeSystemDraft` - для черновых версий оригинальных CodeSystems
- `OriginalCodeSystem` - для активных версий оригинальных CodeSystems

**Важно:** 
- В оригинальных CodeSystems не указывайте версию явно — она автоматически наследуется от версии IG.
- В оригинальных CodeSystems язык по умолчанию — узбекский (`#uz`), поэтому добавляются переводы на русский и английский языки.
- В supplements язык по умолчанию — английский (`#en`), поэтому добавляются переводы на русский и узбекский языки.

**Лучшие практики качества CodeSystems:**

При создании CodeSystems следуйте методологии обеспечения качества терминологий согласно [Checklist for Terminology Quality Assurance](https://zenodo.org/records/14609494).

**Конвенции иерархических CodeSystems:**

При создании иерархических CodeSystems соблюдайте следующие правила:

- **Разделение родительских и дочерних кодов**: родительские коды НЕ ДОЛЖНЫ присутствовать в дочерних кодах
- **Отдельные пространства имен**: родительские и дочерние коды должны использовать отдельные схемы именования
- **Запрет на встраивание**: дочерние коды НЕ МОГУТ включать в себя родительские коды

**Примеры правильного именования:**
- Родительские коды: `AAA`, `AAB`, `AAC` (количество букв зависит от ожидаемого количества категорий)
- Дочерние коды: `1`, `2`, `3` (независимо от иерархии, в которой они находятся)

**Неправильно:** Если родительский код `A`, то дочерний код `A1` недопустим (встраивает родительский код)

**Установка родительских связей:**

Для определения иерархических отношений используйте свойство `parent`:

```fsh
* property[0].code = #parent
* property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* property[=].type = #code

* concept[0] = #AAA "Категория A"
* concept[+] = #1 "Подкатегория 1"
  * property[0].code = #parent
  * property[=].valueCode = #AAA
* concept[+] = #2 "Подкатегория 2"
  * property[0].code = #parent
  * property[=].valueCode = #AAA
```

**Пример оригинальной CodeSystem:**

```fsh
CodeSystem: DiagnosisTypeCS
Id: diagnosis-type-cs
Title: "Diagnosis Types"
Description: "Diagnosis types in Uzbekistan"
* insert OriginalCodeSystemDraft(diagnosis-type-cs)

* #gencl-0001-00001 "Yo'naltiruvchi muassasaning tashxisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагноз направившего учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosis of the referring institution"
```

### 4.2 Пример FSH для ClinicalStatusCS (на примере Condition)

```fsh
CodeSystem: ClinicalStatusCS
Id: clinical-status-cs
Title: "Clinical status translations"
Description: "Clinical status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(clinical-status-cs, $condition-clinical, 3.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
```

### 4.3 Пример FSH для ClinicalStatusVS (на примере Condition)

При создании ValueSets, которые включают коды из supplement CodeSystems, необходимо добавить специальное расширение. ValueSets, использующие только оригинальные коды, не требуют этого расширения.

```fsh
ValueSet: ClinicalStatusVS
Id: clinical-status-vs
Title: "Clinical Status"
* ^url = "http://terminology.dhp.uz/ValueSet/clinical-status-vs"
* ^status = #active
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = = Canonical(ClinicalStatusCS)
* include codes from system $condition-clinical

```

**Важно:** 
- Расширение `valueset-supplement` необходимо только для ValueSets, которые включают коды из supplement CodeSystems. Для ValueSets с только оригинальными кодами это расширение не требуется.
- При использовании supplement CodeSystems в ValueSet необходимо включать коды из **оригинальной** CodeSystem (например, `$condition-clinical`), а не из supplement CodeSystem. Расширение `valueset-supplement` указывает на supplement, который предоставляет переводы к оригинальным кодам.

### 4.4 Почему и как создавать Extensions

При создании национальных профилей часто требуются дополнительные атрибуты, которые отсутствуют в базовых ресурсах FHIR. В таких случаях создаются **Extensions**. Например, для профиля Condition может потребоваться «Тип диагноза» (первичный, направившего учреждения, уточнённый и т.д.). Расширения позволяют:

- Добавить новые данные, не нарушая совместимость с базовой спецификацией.
- Учитывать национальные требования, обеспечивая обмен необходимой информацией.

Ниже показаны основные шаги и сразу после них — пример FSH.

**Как:**

1. Создайте отдельный файл FSH для Extension, определив его ID, название, canonical URL и описание.
2. Определите тип данных (в нашем случае `CodeableConcept`).
3. Создайте CodeSystem (`DiagnosisTypeCS`) с нужными кодами и переводами.
4. Создайте ValueSet (`DiagnosisTypeVS`), включающий коды из созданного CodeSystem.
5. В профиле (`UZCoreCondition`) укажите Extension с биндингом на этот ValueSet.

> **Примечание:** все Extensions сохраняются в отдельном файле `Extensions.fsh`.

**Пример FSH для Extension (diagnosisType для Condition):**

```fsh
Extension: diagnosisType
Id: diagnosis-type-ext
Title: "Diagnosis Type"
* ^url = "http://terminology.dhp.uz/StructureDefinition/diagnosis-type-ext"
* ^context.type = #element
* ^context.expression = "Condition"
* valueCodeableConcept 1..1
* valueCodeableConcept from DiagnosisTypeVS (required)
```

### 4.5 Почему и как создавать Aliases

**Зачем:**

- Aliases используются для сокращения и упрощения кода в FSH‑файлах.
- Позволяют задать короткое имя для длинного canonical URL (например, `$sct` вместо `http://snomed.info/sct`).
- Облегчают чтение и поддержку профилей, сокращают риск опечаток.
- Если canonical URL меняется, достаточно обновить его в одном месте — в файле Aliases.

**Как:**

1. Создайте файл `Aliases.fsh`.
2. Определите алиасы в формате: `Alias: $<короткое_имя> = <полный_URL>`.
3. Используйте алиасы во всех FSH‑файлах вместо длинных URL.

> **Примечание:** все Aliases сохраняются в отдельном файле `Aliases.fsh`.

**Пример Aliases.fsh:**

```fsh
Alias: $sct = http://snomed.info/sct
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type
```

### 4.6 Почему всегда нужно создавать Instance‑примеры для профилей

**Зачем:**

- Instance‑примеры демонстрируют, как правильно заполнять ресурс в соответствии с любым профилем.
- Обеспечивают разработчиков и тестировщиков готовыми шаблонами для интеграции.
- Позволяют валидировать профиль на реальных данных, выявляя ошибки в биндингах, кардинальностях и MustSupport элементах.
- Упрощают процесс обучения и документации.

**Как:**

1. Создайте отдельный FSH‑файл или раздел для `Instance` каждого профиля.
2. Задайте `InstanceOf` = `<имя_профиля>`.
3. Заполните все MustSupport элементы и обязательные поля.
4. При необходимости создайте несколько примеров для разных сценариев (например, для Condition: активное состояние, ремиссия, опровергнутое состояние).

**Пример Instance для UZCoreCondition:**

```fsh
Instance:  example-headache
InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Headache"
Description: "Example instance of a headache condition documented during a patient encounter"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#unconfirmed
* code = $icd-10#R51 "Headache"
* subject = Reference(Patient/example)
* recordedDate = "2025-07-29"
```

## 5) Переводы и локализация

### Принципы работы с переводами

**Важное правило**: В FSH файлах используется **только английский язык**. Это касается всех текстовых элементов, включая:
- `^short` - краткие описания
- `^description` - подробные описания
- `^definition` - определения элементов
- Все другие текстовые метаданные

### Рабочий процесс перевода

Переводы выполняются через систему .po файлов после сборки IG:

**Шаг 1: Создание FSH файлов**
- Создайте профили, расширения и терминологии на английском языке

**Шаг 2: Сборка IG**
```bash
# Соберите IG для генерации базовых .po файлов
./_genOnce.sh # Linux, macOS
_genOnce.bat  # Windows
```

**Шаг 3: Копирование .po файлов**
- Скопируйте нужные .po файлы из `/translations/lang/po/*.po` в `/input/translations/lang/`
- Например, для русского языка: `/translations/ru/po/` → `/input/translations/ru/`

**Шаг 4: Перевод .po файлов**

Используйте один из способов:

**Вариант А: Текстовый редактор**
```po
# Пример структуры .po файла
msgid "Patient"
msgstr "Пациент"

msgid "A person who is receiving or has received medical care"
msgstr "Лицо, которое получает или получало медицинскую помощь"
```

**Вариант Б: Онлайн редактор**
- Откройте https://localise.biz/free/poeditor (бесплатный инструмент)
- Загрузите .po файл
- Выполните перевод в удобном интерфейсе
- Скачайте переведенный файл

**Шаг 5: Пересборка IG**
 - Соберите IG опять и переводы будут там

### Структура папок переводов

```
input/
└── translations/
    ├── ru/
    │   ├── StructureDefinition-uz-core-patient.po
    │   ├── StructureDefinition-uz-core-condition.po
    │   └── ...
    └── uz/
        ├── StructureDefinition-uz-core-patient.po
        ├── StructureDefinition-uz-core-condition.po
        └── ...
```

### 8.4 Рекомендации по переводу

**Терминология:**
- Используйте консистентную медицинскую терминологию
- Ведите глоссарий ключевых терминов
- Согласовывайте переводы с медицинскими экспертами

**Качество:**
- Переводите не дословно, а по смыслу
- Учитывайте контекст использования в медицинских системах

