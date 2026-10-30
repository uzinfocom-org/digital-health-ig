> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

UZ Core DeviceUsage bemor tibbiy buyumdan foydalanayotgani, foydalangani yoki foydalanishini qayd etadi - insulin pompasi, eshitish apparati, nogironlik aravachasi, bachadon ichi spirali. Bu bayonot: foydalanish haqida kim xabar bergani, qachon, buyum amalda qanchalik muntazam ishlatilishi va nima uchun ishlatilishi. Resurs buyumning o'zini tavsiflamaydi; buyum SNOMED CT konsepti yoki [UZ Core Device](StructureDefinition-uz-core-device.html) yoki DeviceDefinition ga havola sifatida ko'rsatiladi. DeviceUsage buyumni buyurgan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ni bajarishi mumkin, uning sababi esa [Condition](StructureDefinition-uz-core-condition.html), [Observation](StructureDefinition-uz-core-observation.html) yoki [DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) ga ishora qilishi mumkin. Foydalanish haqida [bemor](StructureDefinition-uz-core-patient.html), [tibbiyot xodimi](StructureDefinition-uz-core-practitioner.html) yoki uning [roli](StructureDefinition-uz-core-practitioner-role.html), [aloqador shaxs](StructureDefinition-uz-core-relatedperson.html) yoki [tashkilot](StructureDefinition-uz-core-organization.html) xabar beradi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir UZ Core DeviceUsage quyidagilarga ega bo'lishi shart

Ushbu profil o'zining majburiy elementlarini qo'shmaydi. Bazaviy DeviceUsage resursi uchtasini talab qiladi:

1. [buyumdan foydalanish holatlari qiymatlar to'plami](ValueSet-deviceusage-status-vs.html) dan bayonotning `status` i (required bog'lanish);
2. `patient` - [UZ Core Patient](StructureDefinition-uz-core-patient.html) ga havola;
3. `device` - kodlangan buyum konsepti yoki [UZ Core Device](StructureDefinition-uz-core-device.html) yoki DeviceDefinition ga havola.

#### Har bir UZ Core DeviceUsage quyidagilarni qo'llab-quvvatlashi shart

- bayonot identifikatori, har doim o'zining `system` i bilan yuboriladi;
- `basedOn` - buyumni buyurgan [ServiceRequest](StructureDefinition-uz-core-servicerequest.html);
- `category` - foydalanish sharoiti, [buyumdan foydalanish toifalari qiymatlar to'plami](ValueSet-deviceusage-category-vs.html) dan (preferred bog'lanish);
- `timing[x]` - buyum qachon ishlatiladi: `dateTime`, `Period` yoki `Timing`;
- `dateAsserted` - bayonot qachon qilingani;
- `usageStatus` va `usageReason` - bayonot holatidan farqli ravishda foydalanishning o'z holati va bu holatning sababi;
- `adherence` - buyum qanchalik muntazam ishlatiladi ([rioya qilish kodlari](ValueSet-deviceusage-adherence-code-vs.html)), sababi bilan ([rioya qilish sabablari](ValueSet-deviceusage-adherence-reason-vs.html)) (preferred bog'lanishlar);
- `informationSource` - foydalanish haqida kim xabar bergan: Patient, Practitioner, PractitionerRole, RelatedPerson yoki Organization, barchasi UZ Core profillari;
- `reason` - buyum nima uchun ishlatiladi, konsept yoki UZ Core Condition, Observation yoki DiagnosticReport ga havola sifatida;
- `bodySite` - buyum tananing qayerida ishlatiladi, [tana sohalari qiymatlar to'plami](ValueSet-body-site-vs.html) dan (preferred bog'lanish);
- `note`.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan rioya qilishni qayd etuvchi bayonotgacha boradi. Ulardan birini nusxalab moslang - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar sahifaning pastki qismida keltirilgan ([faol foydalanish](DeviceUsage-example-deviceusage-active.html), [foydalanish davri](DeviceUsage-example-deviceusage-period.html), [UZ Core Device ga havola](DeviceUsage-example-deviceusage-iud.html)).

#### Yuborishingiz kerak bo'lgan eng kichik DeviceUsage

`status`, `patient` va `device` - yagona majburiy elementlar. Har bir UZ Core resursi shuningdek o'zi muvofiq deb da'vo qilayotgan profilni `meta.profile` da ko'rsatishi shart - server qaysi qoidalar bo'yicha validatsiya qilishni shu orqali biladi:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  }
}
```

`status` buyumni emas, bayonotni tavsiflaydi: `active` bemor buyumdan hali ham foydalanayotganini, `completed` foydalanish tugaganini, `intended` u rejalashtirilganini bildiradi, `entered-in-error` esa noto'g'ri bayonotni bekor qiladi. `device` - bu `CodeableReference`: SNOMED CT buyum konsepti `concept` ichiga yoziladi, [UZ Core Device](StructureDefinition-uz-core-device.html) yoki DeviceDefinition ga havola esa bir daraja chuqurroq joylashadi (`{ "reference": { "reference": "Device/id" } }`). Farqi haqida [Havolalar va CodeableReference](how-to-read.html#references-and-codeablereferences) ga qarang.

#### Qayd etilgan buyumdan foydalanish

Amalda shifokor foydalanish qachon boshlanganini, buyum nima uchun ishlatilishini va tananing qayerida joylashganini qayd etadi. Faqat `start` ga ega `timingPeriod` foydalanish davom etayotganini bildiradi; u to'xtaganda `end` qo'shing va `status` ni `completed` ga o'rnating. `dateAsserted` - bayonot qilingan vaqt, `informationSource` esa uni kim qilgani:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "timingPeriod": { "start": "2025-03-10" },
  "dateAsserted": "2026-09-15T10:30:00+05:00",
  "informationSource": { "reference": "Practitioner/example-practitioner" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "reason": [{
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "46635009", "display": "Type 1 diabetes mellitus" }]
    }
  }],
  "bodySite": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "75093004", "display": "Skin structure of abdomen" }]
    }
  },
  "note": [{ "text": "Infusion set changed every 3 days; site rotated around the abdomen." }]
}
```

`reason` va `bodySite` ham `CodeableReference`. Bu yerda ko'rsatma kodlangan konsept; agar tashxis allaqachon qayd etilgan bo'lsa, unga havola qiling: `{ "reference": { "reference": "Condition/id" } }`. Buyum buyurilgan bo'lsa, [ServiceRequest](StructureDefinition-uz-core-servicerequest.html) ga havola bilan `basedOn` ni, foydalanish sharoiti uchun esa `category` ni qo'shing.

#### Rioya qilishni qayd etish

Bemor buyumdan amalda qanchalik muntazam foydalanishini aytganda, `adherence` ni qo'shing. `adherence` mavjud bo'lsa, uning `code` i (always, sometimes, never) va kamida bitta `reason` (forgot, lost, broken, stolen ...) majburiy. `usageStatus` foydalanishning o'z holatini `status` bilan bir xil holat kodlari orqali qayd etadi:

```json
{
  "resourceType": "DeviceUsage",
  "meta": { "profile": ["https://dhp.uz/fhir/core/StructureDefinition/uz-core-deviceusage"] },
  "language": "en",
  "status": "active",
  "patient": { "reference": "Patient/example-salim" },
  "dateAsserted": "2026-10-20T09:00:00+05:00",
  "informationSource": { "reference": "Patient/example-salim" },
  "device": {
    "concept": {
      "coding": [{ "system": "http://snomed.info/sct", "code": "69805005", "display": "Insulin pump" }]
    }
  },
  "usageStatus": {
    "coding": [{ "system": "http://hl7.org/fhir/deviceusage-status", "code": "active" }]
  },
  "adherence": {
    "code": {
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-code", "code": "sometimes" }]
    },
    "reason": [{
      "coding": [{ "system": "http://hl7.org/fhir/deviceusage-adherence-reason", "code": "forgot" }]
    }]
  }
}
```

Bu yerda foydalanish haqida bemorning o'zi xabar bergan, shuning uchun `informationSource` bemorga ishora qiladi. `usageStatus`, rioya qilish kodi va sababi codinglarida `display` yo'q: uni server o'zi to'ldiradi, o'zbekcha va ruscha ko'rsatiladigan nomlar esa kod tizimlari qo'shimchalaridan (supplement) olinadi.

Misol API chaqiruvlari uchun ushbu sahifaning pastki qismidagi [Tez boshlash](#quick-start) ga qarang.
