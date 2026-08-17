> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core PractitionerRole - bu [Practitioner](StructureDefinition-uz-core-practitioner.html)ni [Organization](StructureDefinition-uz-core-organization.html) ichiga joylashtiruvchi bog'lovchi bo'lib - ixtiyoriy ravishda [Location](StructureDefinition-uz-core-location.html)da yoki [HealthcareService](StructureDefinition-uz-core-healthcareservice.html) taklif qiluvchi sifatida - ko'rsatilgan rol va mutaxassislik bilan ifodalanadi. Bu klinik resurslar bajaruvchi (performer) yoki so'rovchi (requester) sifatida ko'rsatadigan kontekstdir: u "ushbu mutaxassis qaysi sifatda va kimning nomidan harakat qilgani" degan savolga javob beradi. Rollar va mutaxassisliklar Tibtoifa asosidagi milliy qiymatlar to'plamlaridan kodlanadi.

> Klinik resurs kim harakat qilganini qayd etganda, uni yalang'och [Practitioner](StructureDefinition-uz-core-practitioner.html)ga emas, balki PractitionerRolega yo'naltiring: bitta mutaxassis bir nechta rollarni egallashi mumkin, va faqat rol uning qaysi sifatda - va qaysi tashkilot nomidan - harakat qilganini qamrab oladi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](must-support.html)) - ularning hammasi ham talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core PractitionerRole quyidagilarga ega bo'lishi shart (Must Have)

Asosiy FHIR PractitionerRole hech qanday majburiy elementga ega emas va ushbu profil ham hech qandayini qo'shmaydi. Amalda siz practitioner va organization havolalarini birgalikda to'ldirasiz (quyidagi Must Support bo'limiga qarang).

#### Har bir UZ Core PractitionerRole quyidagilarni qo'llab-quvvatlashi shart (Must Support)



- rol uchun identifikator;
- active bayrog'i;
- practitioner havolasi (kim harakat qilmoqda);
- organization havolasi (ish beruvchi yoki mezbon tashkilot);
- rol kodi (`code`) - lavozim/kasb, milliy rol qiymatlar to'plamidan;
- mutaxassislik (specialty) - klinik ixtisoslashuv, milliy kasb-ixtisoslashuv qiymatlar to'plamidan;
- location havolasi (rol qayerda amalga oshiriladi);
- healthcareService havolasi (rol ko'rsatadigan xizmat).

> Rol va mutaxassislik DHP milliy kod tizimlariga slayslangan, biroq kodlangan qiymat mavjud bo'lmagan joyda erkin matn (`code.text`) ruxsat etiladi.

### JSONni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to to'liq kodlangan rolgacha boradi. Birini ko'chirib oling va moslashtiring - ko'rsatilgan har bir qiymat ushbu profilga muvofiq validatsiyadan o'tadi. To'liq mos yozuvlar nusxalari sahifaning pastida bog'langan ([kodlangan rol](PractitionerRole-example-practitionerrole.html), [erkin matnli rol](PractitionerRole-example-practitionerrole-freetext.html)).

#### Yuborishingiz lozim bo'lgan eng kichik PractitionerRole

Asosiy resurs hech qanday majburiy elementga ega emas va ushbu profil ham hech qandayini qo'shmaydi, biroq PractitionerRole faqat kimnidir biror joyga haqiqatda bog'laganidan keyingina foydali bo'ladi. Amalda yuboradigan minimumingiz - bu `practitioner` (kim harakat qilmoqda) va `organization` (kimning nomidan), ikkalasi ham oddiy havolalar, plyus `active` bayrog'i. Har bir UZ Core resursi shuningdek `meta.profile`da o'zi muvofiqligini da'vo qilayotgan profilni nomlashi shart:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" }
}
```

`practitioner` va `organization` - bu oddiy `Reference` qiymatlari - manba bevosita `reference` ostida `Type/id` ko'rinishida joylashadi. Ular mos ravishda [Practitioner](StructureDefinition-uz-core-practitioner.html) va [Organization](StructureDefinition-uz-core-organization.html)ga ishora qiladi.

#### Real, kodlangan rol

Amalda siz sifatni ifodalaysiz: `code` (lavozim/kasb) va `specialty` (klinik ixtisoslashuv), hamda rol qayerda ko'rsatilishini `healthcareService` orqali bildirasiz. `code` ham, `specialty` ham **`CodeableConcept` ro'yxatlari** (CodeableReference emas), va har biri milliy DHP kod tizimiga slayslangan - shuning uchun `system` URI aniq mos kelishi shart. `healthcareService` - bu oddiy havolalar ro'yxati:

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role" ]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs",
          "code": "2212.14",
          "display": "Vrach ginekolog"
        }
      ]
    }
  ],
  "specialty": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/profession-specialization-cs",
          "code": "394585009",
          "display": "Akusherlik va ginekologiya"
        }
      ]
    }
  ],
  "healthcareService": [ { "reference": "HealthcareService/example-healthcareservice" } ]
}
```

Rol `code`i milliy `position-and-profession-cs` tizimidan, `specialty` esa `profession-specialization-cs`dan olinadi. Bular ushbu profildagi ikkita slayslangan tizim; boshqa har qanday `system`dan foydalanish shunchaki slaysni mos kelmagan holatda qoldiradi. DHP kod tizimlari qanday manbadan olinishi haqida [Terminologiya](general-guidance.html#terminology) bo'limiga qarang.

#### Rol qayerda amalga oshirilishini qayd etish

Rol shuningdek u bajariladigan [Location](StructureDefinition-uz-core-location.html)ga ishora qilishi mumkin. `location` (`healthcareService` kabi) - bu oddiy havolalar ro'yxati; ikkalasi ham yuqoridagi kodlangan rol bilan bir xil resursga joylashadi:

```json
{
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ],
  "location": [
    { "reference": "Location/example-location" }
  ]
}
```

#### Kodlangan rol mavjud bo'lmaganda {#free-text-role}

Agar lavozim hali milliy qiymatlar to'plamida bo'lmasa, kod o'ylab topmang - `coding` o'rniga erkin matnli `code.text`dan foydalaning. Rol baribir practitionerni organizationga bog'laydi, u shunchaki sifatni so'zlar bilan tasvirlaydi (to'liq nusxa: [erkin matnli rol](PractitionerRole-example-practitionerrole-freetext.html)):

```json
{
  "resourceType": "PractitionerRole",
  "meta": {
    "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role"]
  },
  "active": true,
  "practitioner": { "reference": "Practitioner/example-practitioner" },
  "organization": { "reference": "Organization/example-organization" },
  "code": [
    { "text": "Surgeon at Republican Specialized Scientific Center of Surgery, inpatient care" }
  ],
  "healthcareService": [
    { "reference": "HealthcareService/example-healthcareservice" }
  ]
}
```

`code.text` inson o'qiy oladigan rolni olib yuradi; siz `text`ni `coding` bilan birga, yoki milliy kod qo'llanilmaganda yolg'iz o'zini taqdim etishingiz mumkin. Kod o'rniga erkin matnga qachon murojaat qilish haqida [Yetishmayotgan va bostirilgan ma'lumotlar](general-guidance.html#missing-data) bo'limiga qarang.

API chaqiruvlari va namuna yuk (payload) misoli uchun ushbu sahifaning pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
