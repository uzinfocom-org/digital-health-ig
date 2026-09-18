CodeSystem: DeviceCategoryCS
Id: device-category-cs
Title: "Device Category Code System"
Description: "Category codes for a device (active, communicating, dme, home-use, implantable, in-vitro, point-of-care, single-use, reusable, software), with UZ/RU/EN designations."

* insert SupplementCodeSystemDraft(device-category-cs, $device-category, 5.0.0)

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #communicating
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aloqa o‘rnatuvchi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Коммуницирующий"

* #dme
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uzoq muddat foydalaniladigan tibbiy uskuna"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинское оборудование длительного использования"

* #home-use
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uy sharoitida foydalanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Для использования в домашних условиях"

* #implantable
  * ^designation[0].language = #uz
  * ^designation[=].value = "Implantatsiya qilinadigan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Имплантируемый"

* #in-vitro
  * ^designation[0].language = #uz
  * ^designation[=].value = "Organizmdan tashqarida"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вне организма"

* #point-of-care
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemorni parvarish qilish joyida"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В месте оказания медицинской помощи"

* #single-use
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bir martalik foydalanish uchun"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Одноразовый"

* #reusable
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qayta foydalaniladigan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Многоразовый"

* #software
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dasturiy ta’minot"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Программное обеспечение"