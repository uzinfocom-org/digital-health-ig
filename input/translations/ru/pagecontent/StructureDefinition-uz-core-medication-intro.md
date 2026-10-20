> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

UZ Core Medication описывает лекарственный препарат в том виде, в каком он зарегистрирован и обращается в Узбекистане - что это за препарат (код ATC или INN), его лекарственная форма, дозировка и общий объём, его ингредиенты, организация - держатель регистрационного удостоверения и серия, из которой он происходит. Это запись каталога, на которую ссылаются другие ресурсы: [MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) при назначении препарата, [MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) при его отпуске, MedicationAdministration при его введении, [Immunization](StructureDefinition-uz-core-immunization.html) для введённого вакцинного препарата и [AdverseEvent](StructureDefinition-uz-core-adverse-event.html) для предполагаемой причины. Препараты идентифицируются национальным реестром и системами прослеживаемости (регистрационное удостоверение, GTIN, маркировка Asl Belgisi, код ИКПУ, групповая упаковка), поэтому перед созданием нового препарата следует [выполнить поиск существующего Medication](#finding) по идентификатору или коду.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое UZ Core Medication должно содержать

Единственный обязательный элемент, который добавляет этот профиль, - хотя бы один идентификатор; базовый ресурс Medication собственных обязательных элементов не имеет. Идентификатор нарезан по `system`, и внутри каждого среза URI `system` зафиксирован, так что именно URI говорит, какой национальный идентификатор вы передаёте.

#### Каждое UZ Core Medication должно поддерживать



- срезы идентификатора - номер регистрационного удостоверения, GTIN, ID маркировки Asl Belgisi, код товаров и услуг ИКПУ и ID групповой упаковки UzPharm (см. [таблицу ниже](#identifier-slices));
- код (code) - концепт ATC или INN из [набора значений классификации лекарственных средств](ValueSet-medication-classification-vs.html) (обязательная связка);
- статус (active / inactive / entered-in-error, из обязательного набора значений);
- marketingAuthorizationHolder - ссылку на [Organization](StructureDefinition-uz-core-organization.html), которая является держателем регистрации;
- лекарственную форму (doseForm), кодированную из национального [набора значений лекарственных форм](ValueSet-medication-doseform-vs.html) (расширяемая связка);
- общий объём (totalVolume) - величину в UCUM, единицы которой берутся из [набора значений единиц общего объёма](ValueSet-medication-total-volume-units-vs.html) (предпочтительная связка);
- ингредиенты - каждый как концепт (ATC / INN) или ссылка на другой Medication, с дозировкой в виде отношения;
- серию (batch) - номер серии (AIK) и дату истечения срока годности.

### Поиск существующего Medication {#finding}

Записи Medication - это общие записи каталога, а не записи по пациенту, поэтому найдите препарат, прежде чем регистрировать его. Каждый срез идентификатора и код доступны для поиска (`|` отделяет систему от значения и URL-кодируется как `%7C`):

```
# by national identifier - the reliable match
GET [base]/Medication?identifier=https://uzpharminfo.uz/registration_number|UZ/MED/2024/00123
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/gtin|04780123456789
GET [base]/Medication?identifier=https://mobile-api.aslbelgisi.uz/marking|010478012345678921AbC9xQ

# by code - every product for a substance (INN) or an ATC class
GET [base]/Medication?code=https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs|005325
GET [base]/Medication?code=http://www.whocc.no/atc|A06AH03

# by batch, status, dose form, or authorization holder
GET [base]/Medication?lot-number=LOT20241201
GET [base]/Medication?status=active&form=https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs|TAB101
GET [base]/Medication?marketingauthorizationholder=Organization/[id]
```

Поиск по идентификатору без системы (`?identifier=UZ/MED/2024/00123`) сопоставляет значение в любом срезе; указывайте систему, когда знаете, из какого реестра пришло значение. Поиск по коду сопоставляет любой coding в `code`, так что препарат, закодированный и INN, и ATC, находится по любому из них. В разделе [Быстрый старт](#quick-start) внизу страницы перечислены остальные параметры поиска.

### Сборка JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полностью описанного зарегистрированного препарата. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены по ссылкам внизу страницы ([таблетки парацетамола](Medication-example-medication.html), [капли неомицина](Medication-example-neomycin-atc-medication.html), [таблетки налоксегола](Medication-example-naloxegol-atc-medication.html)).

#### Наименьший Medication, который вам следует отправлять

Один `identifier` - единственный элемент, который этот профиль делает обязательным. Каждый ресурс UZ Core должен также указывать профиль, на соответствие которому он претендует, в `meta.profile` - так сервер понимает, по каким правилам выполнять валидацию. На практике запись каталога бесполезна без `code`, говорящего, что это за препарат, и без `status`, поэтому отправляйте и их. Этого уже достаточно для прохождения валидации:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active"
}
```

Номером регистрационного удостоверения этот идентификатор делает его URI `system` - тот, что заканчивается на `registration_number`. `use` зафиксирован как `official` в каждом срезе. `code` связан как `required` с [набором значений классификации лекарственных средств](ValueSet-medication-classification-vs.html): код INN называет действующее вещество, код ATC (`http://www.whocc.no/atc`) помещает препарат в классификацию ВОЗ, и оба можно отправить как отдельные coding. `status` - это `active` / `inactive` / `entered-in-error`.

#### Зарегистрированный препарат

На практике вы описываете препарат так, как это делает реестр: его `doseForm`, `totalVolume` одной единицы (здесь - количество действующего вещества в таблетке, как величина в UCUM), `batch`, к которой он относится, и `marketingAuthorizationHolder` - простую `Reference` на [Organization](StructureDefinition-uz-core-organization.html), которая является держателем регистрации. Добавьте GTIN рядом с регистрационным удостоверением, если упаковка имеет штрихкод:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    },
    {
      "use": "official",
      "system": "https://mobile-api.aslbelgisi.uz/gtin",
      "value": "04780123456789"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      },
      {
        "system": "http://www.whocc.no/atc",
        "code": "N02BE01",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "marketingAuthorizationHolder": { "reference": "Organization/example-organization" },
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "totalVolume": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
  "batch": {
    "lotNumber": "LOT20241201",
    "expirationDate": "2027-12-01"
  }
}
```

`doseForm` - это `extensible`-связка с национальной кодовой системой лекарственных форм; её отображаемые значения на узбекском языке, с английскими и русскими designation, поэтому отправляемый `display` должен соответствовать `language` ресурса. `totalVolume` - это `Quantity`; всегда отправляйте машиночитаемые `system` и `code`, а не только человекочитаемый `unit` (см. [Единицы измерения и величины](general-guidance.html#units-and-quantities)). `batch.lotNumber` - это идентификатор серии AIK, а `batch.expirationDate` - простая дата.

#### Срезы идентификаторов {#identifier-slices}

Препарат может нести до пяти идентификаторов; заполняйте только те, которыми располагаете. Каждый выбирается по URI `system`, поэтому он должен совпадать точно, а `use` всегда `official`:

| Идентификатор | `system` | Кем выдаётся |
|---|---|---|
| [Номер регистрационного удостоверения](NamingSystem-registration-certificate-id.html) | `https://uzpharminfo.uz/registration_number` | Министерство здравоохранения при регистрации препарата |
| [GTIN](NamingSystem-global-trade-item-id.html) | `https://mobile-api.aslbelgisi.uz/gtin` | GS1, глобальный номер торговой единицы на упаковке |
| [ID маркировки Asl Belgisi](NamingSystem-uz-marking-id.html) | `https://mobile-api.aslbelgisi.uz/marking` | Национальная система прослеживаемости, для каждой сериализованной упаковки |
| [Код товаров и услуг ИКПУ](NamingSystem-product-service-id.html) | `https://uzpharminfo.uz/icps` | Национальный классификатор товаров и услуг |
| [ID групповой упаковки UzPharm](NamingSystem-uz-pharm-box-id.html) | `https://uzpharminfo.uz/box_group_id` | Система прослеживаемости, объединяющая сериализованные упаковки в короб |

Регистрационное удостоверение, GTIN и код ИКПУ описывают *препарат* и одинаковы на каждой упаковке; ID маркировки и ID групповой упаковки описывают *физическую упаковку или короб* и различаются для каждой единицы. Когда вам нужна только запись каталога, отправляйте идентификаторы уровня препарата.

#### Добавление ингредиентов

Когда важен состав - комбинированный препарат или отпуск, который должен соответствовать дозировке, - перечислите каждый `ingredient`. `item` - это `CodeableReference`: укажите вещество как `concept`, закодированный INN или ATC, либо сошлитесь на другой Medication через вложенную `reference`. Дозировка - это `strengthRatio`, отношение количества к единице лекарственной формы:

```json
{
  "resourceType": "Medication",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-medication"] },
  "language": "en",
  "identifier": [
    {
      "use": "official",
      "system": "https://uzpharminfo.uz/registration_number",
      "value": "UZ/MED/2024/00123"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
        "code": "005325",
        "display": "paracetamol"
      }
    ]
  },
  "status": "active",
  "doseForm": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-doseform-cs",
        "code": "TAB101",
        "display": "tablets"
      }
    ]
  },
  "ingredient": [
    {
      "item": {
        "concept": {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs",
              "code": "005325",
              "display": "paracetamol"
            }
          ]
        }
      },
      "isActive": true,
      "strengthRatio": {
        "numerator": { "value": 500, "unit": "mg", "system": "http://unitsofmeasure.org", "code": "mg" },
        "denominator": {
          "value": 1,
          "unit": "piece",
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs",
          "code": "piece"
        }
      }
    }
  ]
}
```

`ingredient.item` - это `CodeableReference`: его концепт находится в `concept`, а ссылка на другой [Medication](StructureDefinition-uz-core-medication.html) располагалась бы на уровень глубже (`{ "reference": { "reference": "Medication/id" } }`). О различии см. [Ссылки и CodeableReference](how-to-read.html#references-and-codeablereferences). Единицы числителя и знаменателя берутся из [набора значений единиц общего объёма](ValueSet-medication-total-volume-units-vs.html) - UCUM для массы и объёма и локальная кодовая система единиц для счётных единиц, таких как `piece` (одна таблетка, капсула или ампула).

Примеры вызовов API и процесс "поиск перед регистрацией" см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
