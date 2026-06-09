Hayotiy ko'rsatkichlar organizmning asosiy funksiyalarini aks ettiradi. Ushbu sahifada UZ Core doirasida hayotiy ko'rsatkichlar bilan ishlash bo'yicha tavsiyalar keltirilgan.

### Umumiy ko'rinish

UZ Coreda hayotiy ko'rsatkichlar [FHIR Vital Signs profillari](https://hl7.org/fhir/observation-vitalsigns.html) bilan birgalikda qo'llaniladi. O'zbekiston sog'liqni saqlash ekotizimida o'lchovlarni yagona tarzda taqdim etish uchun Observation resursidan foydalaniladi.

### FHIRda taqdim etilishi

UZ Coredagi hayotiy ko'rsatkichlar uchta Observation profilini **birlashtiradi**:
* [UZ Core Observation profile](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) - O'zbekiston uchun xos talablar
* [FHIR Vital Signs profile](http://hl7.org/fhir/StructureDefinition/vitalsigns)  - hayotiy ko'rsatkichlar bo'yicha xalqaro standartlar
* **Muayyan hayotiy ko'rsatkich profili** (masalan, [Yurak qisqarishlari tezligi](http://hl7.org/fhir/r5/heartrate.html), [Arterial qon bosimi](http://hl7.org/fhir/r5/bp.html)) - ushbu ko'rsatkich turi uchun qoidalar

Uchala profil ham `meta.profile` ichida ko'rsatilishi kerak. Muvofiqlik qoidalarining aksariyati oxirgi, eng aniq profilda belgilanadi, bazaviy profillar esa asosiy talablarni belgilaydi.

### Asosiy hayotiy ko'rsatkichlar

| Hayotiy ko'rsatkichlar | LOINC kodi | Tavsif | O'lchov birligi | Misol |
|------------|------------|-------------|------|---------|
| [Nafas olish tezligi](http://hl7.org/fhir/r5/resprate.html) | 9279-1 | Nafas olish tezligi | /min | [JSON](Observation-respiratory-rate-example.json) |
| [Yurak qisqarishlari tezligi](http://hl7.org/fhir/r5/heartrate.html) | 8867-4 | Yurak qisqarishlari tezligini o'lchash | /min | [JSON](Observation-heart-rate-example.json) |
| [Qonning kislorod bilan to'yinishi](http://hl7.org/fhir/r5/oxygensat.html) | 2708-6 | Arterial qonning kislorod bilan to'yinishi | % | [JSON](Observation-oxygen-saturation-example.json) |
| [Tana harorati](http://hl7.org/fhir/r5/bodytemp.html) | 8310-5 | Tana haroratini o'lchash | Cel, [degF] | [JSON](Observation-body-temperature-example.json) |
| [Bo'y](http://hl7.org/fhir/r5/bodyheight.html) | 8302-2 | Bo'yni o'lchash | cm, [in_i] | [JSON](Observation-body-height-example.json) |
| [Bosh aylanasi](http://hl7.org/fhir/r5/headcircum.html) | 9843-4 | Boshning peshona-ensa aylanasi | cm, [in_i] | [JSON](Observation-head-circumference-example.json) |
| [Tana vazni](http://hl7.org/fhir/r5/bodyweight.html) | 29463-7 | Tana vaznini o'lchash | g, kg, [lb_av] | [JSON](Observation-body-weight-example.json) |
| [Tana massasi indeksi](http://hl7.org/fhir/r5/bmi.html) | 39156-5 | Tana massasi indeksi (BMI) [Ratio] | kg/m2 | [JSON](Observation-bmi-example.json) |
| [Arterial qon bosimi](http://hl7.org/fhir/r5/bp.html) | 85354-9 | Arterial qon bosimi paneli | — | [JSON](Observation-blood-pressure-example.json) |

### Observation resurslarini tushunish

Observation resurslari "kalit-qiymat" juftliklari sifatida ishlaydi:
- Kalit: `Observation.code` (nima o'lchangan)
- Qiymat: `Observation.value[x]` (o'lchov natijasi)

Bunda bir nechta ajralmas qiymatlarni o'z ichiga olgan murakkab Observation resurslari `Observation.component.value[x]` dan foydalanadi. Masalan, arterial qon bosimi birgalikda o'lchanadigan sistolik va diastolik komponentlarni o'z ichiga oladi, ular ikkita alohida Observation resursi sifatida emas, birgalikda ko'rsatiladi.

Asosiy elementlar:

* hayotiy ko'rsatkich turini identifikatsiya qiluvchi standart LOINC kodi
* tegishli o'lchov birliklari bilan qiymat (masalan, arterial qon bosimi uchun mmHg yoki yurak qisqarishlari tezligi uchun bpm)
* bemorga havola
* o'lchov o'tkazilgan sana va vaqt
* o'lchovni bajargan shaxsga ixtiyoriy havola

### Misol: tana vazni

```json
{
  "resourceType": "Observation",
  "id": "body-weight-example",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation",
      "http://hl7.org/fhir/StructureDefinition/vitalsigns",
      "http://hl7.org/fhir/StructureDefinition/bodyweight"
    ]
  },
  "text": {
    "status": "generated",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Body weight: 185 lbs</p></div>"
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
      "code": "vital-signs",
      "display": "Vital Signs"
    }]
  }],
  "code": {
    "coding": [{
      "system": "http://loinc.org",
      "code": "29463-7",
      "display": "Body Weight"
    }]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2016-03-28",
  "valueQuantity": {
    "value": 185,
    "unit": "lbs",
    "system": "http://unitsofmeasure.org",
    "code": "[lb_av]"
  }
}
```

Boshqa barcha misollar yuqoridagi jadvaldagi havolalar orqali mavjud.

### Havolalar

FHIRda hayotiy ko'rsatkichlar haqida qo'shimcha ma'lumot olish uchun:

* [FHIR Vital Signs Profile](http://hl7.org/fhir/r5/vitalsigns.html)
* [Observation Resource](http://hl7.org/fhir/r5/observation.html)
