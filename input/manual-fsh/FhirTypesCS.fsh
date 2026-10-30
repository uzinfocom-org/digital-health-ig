CodeSystem: FhirTypesCS
Id: fhir-types-cs
Title: "All FHIR Types"
Description: "FHIR types supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(fhir-types-cs, $fhir-types, 5.0.0)

* #Account "Account"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Счёт"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hisob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Финансовый инструмент для отслеживания стоимости, накопленной для определенной цели. В сфере здравоохранения используется для отслеживания расходов на пациента, центров затрат и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Muayyan maqsad uchun hisoblangan qiymatni kuzatish uchun moliyaviy vosita. Sog'liqni saqlash sohasida bemor uchun to'lovlarni, xarajatlar markazlarini va boshqalarni kuzatish uchun foydalaniladi."
* #ActivityDefinition "ActivityDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение мероприятия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tadbir ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс позволяет определить некоторую деятельность, которая должна быть выполнена, независимо от конкретного пациента, врача или другого контекста выполнения."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs muayyan bemor, amaliyotchi yoki boshqa ishlash kontekstidan qat'i nazar, bajarilishi kerak bo'lgan ba'zi faoliyatni aniqlash imkonini beradi."
* #ActorDefinition "ActorDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение участника"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ishtirokchi ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс ActorDefinition используется для описания субъекта — человека или приложения, которые играют роль в обмене данными и могут иметь обязательства, связанные с ролью, которую играет субъект."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "ActorDefinition resursi aktyorni tasvirlash uchun ishlatiladi - inson yoki ma'lumotlar almashinuvida rol o'ynaydigan va aktyor o'ynagan roli bilan bog'liq majburiyatlarga ega bo'lishi mumkin bo'lgan dastur."
* #AdministrableProductDefinition "AdministrableProductDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение лекарственного препарата для введения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qo'llaniladigan dori mahsuloti ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Лекарственное средство в готовой форме, пригодной для введения пациенту (после смешивания нескольких компонентов, растворения и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga qo'llash uchun yaroqli bo'lgan yakuniy shakldagi dorivor mahsulot (bir nechta komponentlarni har qanday aralashtirish, eritish va hokazolardan keyin)."
* #AdverseEvent "AdverseEvent"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Нежелательное явление"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Nojo'ya hodisa"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Событие (т. е. любое изменение текущего состояния пациента), которое может быть связано с непреднамеренными эффектами для пациента или участника исследования. Непреднамеренные эффекты могут потребовать дополнительного мониторинга, лечения, госпитализации или могут привести к смерти. Ресурс AdverseEvent также распространяется на потенциальные или предотвращенные события, которые могли бы иметь такие эффекты. Существует две основные области, в которых ожидается использование ресурса AdverseEvent. Одна из них — это неблагоприятные события, зарегистрированные в клинической практике, а другая — это сообщение о неблагоприятных событиях в управлении клиническими исследованиями. О неблагоприятных событиях могут сообщать поставщики медицинских услуг, пациенты, лица, осуществляющие уход, или производители медицинских изделий. Учитывая различия между этими двумя концепциями, мы рекомендуем ознакомиться с руководствами по внедрению для конкретных областей при внедрении ресурса AdverseEvent. Руководства по внедрению включают в себя определенные расширения, наборы значений и ограничения."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga yoki tadqiqot ishtirokchisiga kutilmagan ta'sirlar bilan bog'liq bo'lishi mumkin bo'lgan hodisa (ya'ni bemorning hozirgi holatidagi har qanday o'zgarish). Kutilmagan ta'sirlar qo'shimcha monitoring, davolanish, kasalxonaga yotqizishni talab qilishi yoki o'limga olib kelishi mumkin. Salbiy hodisa resursi, shuningdek, bunday ta'sir ko'rsatishi mumkin bo'lgan potentsial yoki oldini olish mumkin bo'lgan hodisalarga ham taalluqlidir. AdverseEvent resursidan foydalanish kutilayotgan ikkita asosiy domen mavjud. Ulardan biri nojo'ya hodisalar haqida xabar berilgan klinik yordam, ikkinchisi esa klinik tadqiqot sinovlarini boshqarishda noxush hodisalar haqida xabar berish. Salbiy hodisalar haqida tibbiy yordam ko'rsatuvchi provayderlar, bemorlar, parvarish qiluvchilar yoki tibbiy mahsulotlar ishlab chiqaruvchilari xabar berishi mumkin. Ushbu ikki tushuncha o'rtasidagi farqni hisobga olgan holda, AdverseEvent Resursni amalga oshirishda domenga xos dastur qo'llanmalariga murojaat qilishni tavsiya etamiz. Amalga oshirish qo'llanmalari maxsus kengaytmalarni, qiymatlar to'plamini va cheklovlarni o'z ichiga oladi."
* #AllergyIntolerance "AllergyIntolerance"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Аллергия или непереносимость"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Allergiya yoki o'zlashtira olmaslik"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Риск возникновения вредной или нежелательной физиологической реакции, которая является уникальной для каждого человека и связана с воздействием вещества."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Zararli yoki kiruvchi, fiziologik reaktsiya xavfi, bu faqat individualdir va moddaga ta'sir qilish bilan bog'liq."
* #Appointment "Appointment"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запись на приём"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qabulga yozilish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Бронирование медицинского мероприятия среди пациентов, врачей, связанных лиц и/или устройств на определенную дату/время. Это может привести к одному или нескольким Encounter(s)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor(lar), amaliyotchi(lar), tegishli shaxs(lar) va/yoki qurilma(lar) oʻrtasida maʼlum bir sana/vaqt uchun sogʻliqni saqlash tadbirini bron qilish. Bu bir yoki bir nechta Uchrashuv(lar)ga olib kelishi mumkin."
* #AppointmentResponse "AppointmentResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответ на запись на приём"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qabulga yozilishga javob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ответ на запрос о приеме пациента и/или врача(-ов), например, подтверждение или отклонение."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tasdiqlash yoki rad etish kabi bemor va/yoki amaliyotchi(lar)ni tayinlash soʻroviga javob."
* #ArtifactAssessment "ArtifactAssessment"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Оценка артефакта"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Artefakt bahosi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс предоставляет один или несколько комментариев, классификаторов или рейтингов о ресурсе и поддерживает метаданные атрибуции и управления правами для добавленного контента."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu Resurs Resurs haqida bir yoki bir nechta sharhlar, tasniflagichlar yoki reytinglarni taqdim etadi va qo'shilgan kontent uchun atribut va huquqlarni boshqarish metama'lumotlarini qo'llab-quvvatlaydi."
* #AuditEvent "AuditEvent"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Событие аудита"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Audit hodisasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись события, имеющая значение для таких целей, как эксплуатация, конфиденциальность, безопасность, техническое обслуживание и анализ производительности."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Operatsiyalar, maxfiylik, xavfsizlik, texnik xizmat ko'rsatish va samaradorlikni tahlil qilish kabi maqsadlarga tegishli voqea yozuvi."
* #Basic "Basic"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Базовый ресурс"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Asosiy resurs"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Базовый вариант используется для обработки концепций, еще не определенных в FHIR, ресурсов, содержащих только повествование и не соответствующих существующему ресурсу, а также пользовательских ресурсов, не подлежащих включению в спецификацию FHIR."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Basic FHIRda hali aniqlanmagan tushunchalarni, mavjud resursga mos kelmaydigan faqat hikoyaviy resurslarni va FHIR spetsifikatsiyasiga kiritish uchun mos bo'lmagan maxsus resurslarni boshqarish uchun ishlatiladi."
* #Binary "Binary"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Двоичные данные"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ikkilik ma'lumotlar"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс, представляющий данные одного необработанного артефакта в виде цифрового контента, доступного в его собственном формате. Двоичный ресурс может содержать любой контент, будь то текст, изображение, pdf, zip-архив и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bitta xom artefakt maʼlumotlarini oʻzining mahalliy formatida foydalanish mumkin boʻlgan raqamli kontent sifatida aks ettiruvchi resurs. Ikkilik resurs matn, rasm, pdf, zip arxivi va boshqalarni o'z ichiga olishi mumkin."
* #BiologicallyDerivedProduct "BiologicallyDerivedProduct"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Продукт биологического происхождения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Biologik kelib chiqishli mahsulot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Биологический материал, полученный из биологического объекта, предназначенный для трансплантации или вливания в другой (возможно, тот же самый) биологический объект."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Transplantatsiya qilish yoki boshqa (ehtimol bir xil) biologik ob'ektga quyish uchun mo'ljallangan biologik mavjudotdan olingan biologik material."
* #BiologicallyDerivedProductDispense "BiologicallyDerivedProductDispense"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Выдача продукта биологического происхождения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Biologik kelib chiqishli mahsulotni berish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись о выдаче биологически полученного продукта."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Biologik olingan mahsulotni tarqatish yozuvi."
* #BodyStructure "BodyStructure"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Анатомическая структура"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Anatomik tuzilma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запишите детали анатомической структуры. Этот ресурс может использоваться, когда закодированная концепция не обеспечивает необходимых деталей, необходимых для варианта использования."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Anatomik tuzilish haqida ma'lumotlarni yozib oling. Kodlangan kontseptsiya foydalanish holati uchun zarur bo'lgan tafsilotlarni ta'minlamasa, ushbu manbadan foydalanish mumkin."
* #Bundle "Bundle"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Пакет ресурсов"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Resurslar to'plami"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Контейнер для сбора ресурсов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Resurslar to'plami uchun konteyner."
* #CapabilityStatement "CapabilityStatement"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Описание возможностей"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Imkoniyatlar bayonoti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "В заявлении о возможностях документируется набор возможностей (поведений) сервера или клиента FHIR для конкретной версии FHIR, которые могут использоваться в качестве заявления о фактической функциональности сервера или заявления о требуемой или желаемой реализации сервера."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Imkoniyatlar bayonnomasi FHIR serveri yoki mijozining FHIR ning ma'lum bir versiyasi uchun qobiliyatlari (xatti-harakatlari) to'plamini hujjatlashtiradi, ular haqiqiy server funksionalligi yoki serverning talab qilingan yoki istalgan amalga oshirilishi bayoni sifatida ishlatilishi mumkin."
* #CarePlan "CarePlan"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "План лечения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Davolash rejasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает намерение одного или нескольких специалистов оказывать медицинскую помощь конкретному пациенту, группе или сообществу в течение определенного периода времени, возможно, ограничиваясь лечением определенного состояния или набора состояний."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bir yoki bir nechta amaliyotchilar ma'lum bir bemorga, guruhga yoki jamoaga ma'lum bir holat yoki shartlar to'plamiga g'amxo'rlik qilish bilan cheklangan vaqt davomida qanday yordam ko'rsatish niyatini tasvirlaydi."
* #CareTeam "CareTeam"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Команда по оказанию помощи"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Parvarish jamoasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "В команду по оказанию помощи входят все люди и организации, которые планируют участвовать в координации и предоставлении помощи."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Xizmat guruhiga yordamni muvofiqlashtirish va yetkazib berishda ishtirok etishni rejalashtirgan barcha odamlar va tashkilotlar kiradi."
* #ChargeItem "ChargeItem"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Позиция начисления"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hisob-kitob pozitsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс ChargeItem описывает предоставление продуктов поставщика медицинских услуг определенному пациенту, поэтому ссылается не только на продукт, но и содержит дополнительные сведения о предоставлении, такие как дата, время, суммы и участвующие организации и лица. Основное использование ChargeItem заключается в обеспечении процесса выставления счетов и внутреннего распределения затрат."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "ChargeItem resursi ma'lum bir bemor uchun tibbiy xizmat ko'rsatuvchi mahsulot bilan ta'minlashni tavsiflaydi, shuning uchun nafaqat mahsulotga ishora qiladi, balki qo'shimcha sana, vaqt, miqdor va ishtirokchi tashkilotlar va shaxslar kabi ta'minot tafsilotlarini ham o'z ichiga oladi. ChargeItem-dan asosiy foydalanish hisob-kitob jarayonini va ichki xarajatlarni taqsimlashni yoqishdir."
* #ChargeItemDefinition "ChargeItemDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение позиции начисления"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hisob-kitob pozitsiyasi ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс ChargeItemDefinition предоставляет свойства, которые применяются к (биллинговым) кодам, необходимым для расчета затрат и цен. Свойства могут значительно различаться в зависимости от типа и области, поэтому этот ресурс дает только грубую структуру и требует профилирования для каждого типа системы биллинговых кодов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "ChargeItemDefinition resursi xarajatlar va narxlarni hisoblash uchun zarur bo'lgan (to'lov) kodlariga tegishli xususiyatlarni taqdim etadi. Xususiyatlar turi va sohasiga qarab sezilarli darajada farq qilishi mumkin, shuning uchun bu resurs faqat taxminiy tuzilmani beradi va hisob-kitob kodlari tizimining har bir turi uchun profillashni talab qiladi."
* #Citation "Citation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Цитирование"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Iqtibos"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс цитирования позволяет ссылаться на любой артефакт знаний для целей идентификации и атрибуции. Ресурс цитирования поддерживает существующие структуры ссылок и развивающиеся практики публикации, такие как управление версиями, выражение сложных ролей соавторства и ссылки на вычисляемые ресурсы."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Iqtibos resursi identifikatsiya va atributlashtirish maqsadida har qanday bilim artefaktiga havola qilish imkonini beradi. Iqtibos resursi mavjud ma'lumot tuzilmalarini qo'llab-quvvatlaydi va versiya yaratish, murakkab hissa qo'shuvchi rollarni ifodalash va hisoblanuvchi resurslarga havola qilish kabi nashr amaliyotlarini ishlab chiqadi."
* #Claim "Claim"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Заявка на возмещение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "To'lov talabnomasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Поставщик услуг составляет список профессиональных услуг и продуктов, которые были предоставлены или должны быть предоставлены пациенту, и направляет его страховщику для возмещения расходов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Provayder bemorga ko'rsatilgan yoki taqdim etilishi kerak bo'lgan professional xizmatlar va mahsulotlarning ro'yxatini beradi, bu esa sug'urtalovchiga to'lovni qoplash uchun yuboriladi."
* #ClaimResponse "ClaimResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответ на заявку на возмещение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "To'lov talabnomasiga javob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс содержит подробную информацию о судебном решении, вынесенном в ходе обработки претензии."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bu resurs daʼvo resursini qayta ishlash natijasidagi qaror tafsilotlarini taqdim etadi."
* #ClinicalImpression "ClinicalImpression"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Клиническая оценка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Klinik baho"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись клинической оценки, выполненной для определения того, какие проблемы могут повлиять на пациента, и перед планированием лечения или стратегий управления, которые лучше всего подходят для управления состоянием пациента. Оценки часто проводятся 1:1 с клинической консультацией / встречей, но это сильно зависит от клинического рабочего процесса. Этот ресурс называется «ClinicalImpression», а не «ClinicalAssessment», чтобы избежать путаницы с записью инструментов оценки, таких как оценка по шкале Апгар."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga qanday muammolar (muammolar) ta'sir qilishi mumkinligini aniqlash uchun va bemorning ahvolini boshqarish uchun eng yaxshi muolajalar yoki boshqaruv strategiyalarini rejalashtirishdan oldin o'tkazilgan klinik baholash yozuvi. Klinik konsultatsiya/uchrashuv bilan baholashlar ko'pincha 1:1 ni tashkil qiladi, ammo bu klinik ish jarayoniga qarab katta farq qiladi. Apgar balli kabi baholash vositalarini yozib olish bilan chalkashmaslik uchun ushbu resurs \"Klinik baholash\" emas, balki \"Klinik taassurot\" deb nomlanadi."
* #ClinicalUseDefinition "ClinicalUseDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение клинического применения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Klinik qo'llash ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Отдельная проблема — показание, противопоказание, взаимодействие или нежелательный эффект лекарственного средства, препарата, устройства или процедуры."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yagona masala - dorivor mahsulot, dori, qurilma yoki protsedura uchun ko'rsatma, kontrendikatsiya, o'zaro ta'sir yoki nomaqbul ta'sir."
* #CodeSystem "CodeSystem"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Кодовая система"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Kodlar tizimi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс CodeSystem используется для объявления существования и описания системы кодирования или дополнения к системе кодирования и ее основных свойств, а также для опционального определения части или всего ее содержимого."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "CodeSystem resursi kod tizimi yoki kod tizimining qo'shimchasi va uning asosiy xususiyatlarini e'lon qilish va tavsiflash va ixtiyoriy ravishda uning bir qismini yoki barcha mazmunini aniqlash uchun ishlatiladi."
* #Communication "Communication"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Сообщение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xabar"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Клиническая или деловая запись информации, которая передается или распространяется; например, оповещение, отправленное ответственному поставщику, сообщение органа здравоохранения поставщику/отчетчику в ответ на отчет о случае заболевания, подлежащего отчетности."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Uzatilayotgan yoki almashilayotgan ma'lumotlarning klinik yoki biznes darajasidagi yozuvi; masalan, mas'ul provayderga yuborilgan ogohlantirish, sog'liqni saqlash agentligi provayderga/muxbirga xabar qilinishi mumkin bo'lgan holat bo'yicha ish hisobotiga javoban."
* #CommunicationRequest "CommunicationRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос на сообщение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xabar so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запрос на передачу информации; например, система CDS предлагает отправить оповещение ответственному поставщику услуг, система CDS предлагает уведомить орган общественного здравоохранения о подлежащем отчетности состоянии."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Axborotni uzatish uchun ariza; Masalan, CDS tizimi ogohlantirishni mas'ul provayderga yuborishni taklif qiladi, CDS tizimi sog'liqni saqlash agentligini xabar qilinadigan holat haqida xabardor qilishni taklif qiladi."
* #CompartmentDefinition "CompartmentDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение раздела"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Bo'lim ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определение отсека, определяющее, как осуществляется доступ к ресурсам на сервере."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Serverda resurslarga qanday kirishni belgilaydigan bo'linma ta'rifi."
* #Composition "Composition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Состав документа"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hujjat tarkibi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор информации, связанной со здравоохранением, собранный в единый логический пакет, который обеспечивает единое связное утверждение смысла, устанавливает свой собственный контекст и имеет клиническую аттестацию относительно того, кто делает утверждение. Композиция определяет структуру и повествовательное содержание, необходимые для документа. Однако сама по себе Композиция не является документом. Скорее, Композиция должна быть первой записью в Bundle, где Bundle.type=document, и любые другие ресурсы, на которые ссылается Композиция, должны быть включены в качестве последующих записей в Bundle (например, Patient, Practitioner, Encounter и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yagona mantiqiy to'plamga yig'ilgan sog'liqni saqlashga oid ma'lumotlar to'plami, bu ma'noning yagona izchil bayonini ta'minlaydi, o'z kontekstini o'rnatadi va bayonotni kim tomonidan aytilganligi haqida klinik sertifikatga ega. Kompozitsiya hujjat uchun zarur bo'lgan tuzilma va hikoya mazmunini belgilaydi. Biroq, kompozitsiyaning o'zi hujjatni tashkil etmaydi. Aksincha, Tarkibi Bundle.type=hujjat va Kompozisiyadan havola qilingan boshqa manbalar Toʻplamning keyingi yozuvlari sifatida kiritilishi kerak boʻlgan Toʻplamdagi birinchi yozuv boʻlishi kerak (masalan, Bemor, Amaliyotchi, Uchrashuv va h.k.)."
* #ConceptMap "ConceptMap"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Карта соответствия понятий"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tushunchalar moslik xaritasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Утверждение отношений одного набора концепций к одной или нескольким другим концепциям — либо концепциям в системах кодирования, либо элементам данных/концепциям элементов данных, либо классам в моделях классов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bir tushunchalar to'plamidan bir yoki bir nechta boshqa tushunchalarga o'zaro munosabatlar bayoni - kod tizimlaridagi tushunchalar yoki ma'lumotlar elementi/ma'lumotlar elementi tushunchalari yoki sinf modellaridagi sinflar."
* #Condition "Condition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Состояние"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Holat"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Клиническое состояние, проблема, диагноз или другое событие, ситуация, вопрос или клиническая концепция, которые достигли уровня беспокойства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Xavotir darajasiga ko'tarilgan klinik holat, muammo, tashxis yoki boshqa hodisa, vaziyat, muammo yoki klinik tushuncha."
* #ConditionDefinition "ConditionDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение состояния"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Holat ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определение состояния и информация, касающаяся его управления."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Vaziyatning ta'rifi va uni boshqarish uchun tegishli ma'lumotlar."
* #Consent "Consent"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Согласие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Rozilik"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись выбора потребителя медицинских услуг или выбора, сделанного от его имени третьей стороной, которая разрешает или запрещает идентифицированному получателю (получателям) или роли (ролям) получателя выполнять одно или несколько действий в рамках заданного политического контекста для определенных целей и периодов времени."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Belgilangan qabul qiluvchi(lar) yoki oluvchi rol(lar)iga ma’lum bir siyosat kontekstida, ma’lum maqsadlar va vaqt oralig'ida bir yoki bir nechta amallarni bajarishga ruxsat beruvchi yoki rad etadigan, sog'liqni saqlash iste’molchisining uchinchi shaxs tomonidan o'z nomidan qilgan tanlovlari yoki tanlovlari qaydi."
* #Contract "Contract"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Договор"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Shartnoma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Юридически осуществимая, официально зафиксированная односторонняя или двусторонняя директива, т. е. политика или соглашение."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Qonuniy ravishda kuchga kiradigan, rasmiy ravishda qayd etilgan bir tomonlama yoki ikki tomonlama ko'rsatma, ya'ni siyosat yoki kelishuv."
* #Coverage "Coverage"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Страховое покрытие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta qoplamasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Финансовый инструмент, который может быть использован для возмещения или оплаты медицинских продуктов и услуг. Включает как страховку, так и самооплату."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Sog'liqni saqlash mahsulotlari va xizmatlarini qoplash yoki to'lash uchun ishlatilishi mumkin bo'lgan moliyaviy vosita. Ham sug'urta, ham o'z-o'zidan to'lovni o'z ichiga oladi."
* #CoverageEligibilityRequest "CoverageEligibilityRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос о праве на страховое покрытие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta qoplamasi huquqi bo'yicha so'rov"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запрос CoverageEligibilityRequest предоставляет страховщику информацию о пациенте и страховом покрытии, чтобы тот мог ответить в форме ответа CoverageEligibilityResponse с информацией о том, является ли заявленное покрытие действительным и вступило ли оно в силу, а также, при желании, предоставить данные о страховании полиса."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "CoverageEligibilityRequest bemor va sug'urta qoplamasi to'g'risidagi ma'lumotni sug'urtalovchiga, ular javob berishlari uchun, \"Qoplamaga muvofiqlik\" javobi ko'rinishida, ko'rsatilgan sug'urta to'g'ri va amalda ekanligi haqidagi ma'lumotni taqdim etadi va ixtiyoriy ravishda sug'urta ma'lumotlarini taqdim etadi."
* #CoverageEligibilityResponse "CoverageEligibilityResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответ о праве на страховое покрытие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta qoplamasi huquqi bo'yicha javob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс предоставляет сведения о праве на участие и плане, полученные в результате обработки ресурса CoverageEligibilityRequest."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs CoverageEligibilityRequest resursini qayta ishlashdan olingan muvofiqlik va reja tafsilotlarini taqdim etadi."
* #DetectedIssue "DetectedIssue"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Выявленная проблема"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Aniqlangan muammo"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Указывает на фактическую или потенциальную клиническую проблему, связанную с одним или несколькими активными или предлагаемыми клиническими действиями для пациента, или между ними; например, взаимодействие лекарственных препаратов, неэффективная частота лечения, конфликт между процедурой и состоянием, пробелы в уходе и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor uchun bir yoki bir nechta faol yoki tavsiya etilgan klinik harakatlar bilan yoki ular orasidagi haqiqiy yoki potentsial klinik muammoni ko'rsatadi; Masalan, dori vositalarining o'zaro ta'siri, davolashning samarasiz chastotasi, protsedura-shart ziddiyatlari, parvarishdagi bo'shliqlar va boshqalar."
* #Device "Device"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Медицинское изделие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyum"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс описывает свойства (регулируемый, имеет часы реального времени и т. д.), административные (название производителя, номер модели, серийный номер, прошивка и т. д.) и тип (заменитель колена, манжета для измерения артериального давления, МРТ и т. д.) физического блока (эти значения не сильно меняются в пределах данного модуля, например, серийный номер, название производителя и номер модели). Фактический блок может состоять из нескольких модулей в отдельной иерархии, и они представлены несколькими ресурсами Device и связаны через элемент «родитель»."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs jismoniy blokning xususiyatlarini (tartibga solingan, real vaqt rejimiga ega va hokazo), ma'muriy (ishlab chiqaruvchi nomi, model raqami, seriya raqami, proshivka va boshqalar) va turini (tizzalarni almashtirish, qon bosimi manjeti, MRI va boshqalar) tavsiflaydi (bu qiymatlar berilgan modulda unchalik o'zgarmaydi, masalan, seriya raqami, ishlab chiqaruvchining nomi, model raqami). Haqiqiy birlik alohida ierarxiyadagi bir nechta modullardan iborat bo'lishi mumkin va ular bir nechta Qurilma resurslari bilan ifodalanadi va \"ota\" element orqali bog'lanadi."
* #DeviceAssociation "DeviceAssociation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Связь с медицинским изделием"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyum bilan bog'liqlik"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись ассоциации устройства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Qurilmaning birlashma yozuvi."
* #DeviceDefinition "DeviceDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение медицинского изделия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyum ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Это специализированный ресурс, определяющий характеристики и возможности устройства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bu qurilmaning xarakteristikalari va imkoniyatlarini belgilaydigan maxsus resurs."
* #DeviceDispense "DeviceDispense"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Выдача медицинского изделия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyumni berish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Указывает, что устройство должно быть или было выдано указанному лицу/пациенту. Это включает описание предоставленного продукта (поставки) и инструкции по использованию устройства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Qurilma nomi ko'rsatilgan shaxs/bemor uchun berilishi kerakligini yoki berilganligini ko'rsatadi. Bunga taqdim etilgan mahsulot (ta'minot) tavsifi va qurilmadan foydalanish bo'yicha ko'rsatmalar kiradi."
* #DeviceMetric "DeviceMetric"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Показатель медицинского изделия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyum ko'rsatkichi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает возможность измерения, вычисления или настройки устройства. Ресурс DeviceMetric получен из стандарта Domain Information Model ISO/IEEE 11073-10201, но имеет более широкое применение."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Qurilmaning o'lchash, hisoblash yoki sozlash qobiliyatini tavsiflaydi. DeviceMetric resursi ISO/IEEE 11073-10201 domen ma'lumotlari modeli standartidan olingan, ammo kengroq qo'llanilishi mumkin."
* #DeviceRequest "DeviceRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос на медицинское изделие"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyum so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Представляет собой запрос на предоставление устройства конкретному пациенту. Устройство может быть имплантируемым устройством, которое впоследствии будет имплантировано, или внешним вспомогательным устройством, например, ходунками, которое будет доставлено и впоследствии использовано."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Muayyan bemorga qurilma taqdim etilishi haqidagi so'rovni ifodalaydi. Qurilma keyinchalik implantatsiya qilinadigan implantatsiya qilinadigan qurilma yoki etkazib beriladigan va keyinchalik ishlatilishi kerak bo'lgan tashqi yordamchi qurilma bo'lishi mumkin."
* #DeviceUsage "DeviceUsage"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Использование медицинского изделия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy buyumdan foydalanish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись об использовании устройства пациентом, которая является результатом отчета пациента или врача."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor tomonidan ishlatiladigan qurilmaning yozuvi, bunda yozuv bemor yoki klinisyenning hisoboti natijasidir."
* #DiagnosticReport "DiagnosticReport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Диагностический отчёт"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Diagnostik hisobot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Результаты и интерпретация диагностических тестов, проведенных на пациентах, группах пациентов, продуктах, веществах, устройствах и местах и/или образцах, полученных из них. Отчет включает клинический контекст, такой как запрос информации о поставщике, и некоторую смесь атомарных результатов, изображений, текстовых и кодированных интерпретаций и форматированного представления диагностических отчетов. Отчет также включает неклинический контекст, такой как анализ партии и отчет о стабильности продуктов и веществ."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorlar, bemorlar guruhlari, mahsulotlar, moddalar, qurilmalar va joylashuvlar va/yoki ulardan olingan namunalar bo'yicha o'tkazilgan diagnostik testlarning topilmalari va talqini. Hisobot provayder ma'lumotlarini so'rash kabi klinik kontekstni, shuningdek, atom natijalari, tasvirlar, matn va kodli talqinlar va diagnostika hisobotlarining formatlangan ko'rinishini o'z ichiga oladi. Hisobot, shuningdek, mahsulot va moddalarning seriyali tahlili va barqarorlik hisoboti kabi klinik bo'lmagan kontekstni o'z ichiga oladi."
* #DocumentReference "DocumentReference"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ссылка на документ"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hujjatga havola"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ссылка на документ любого типа для любых целей. Хотя термин «документ» подразумевает более узкую направленность, для этого ресурса этот «документ» охватывает любой сериализованный объект с типом mime, он включает в себя формальные документы, ориентированные на пациента (CDA), клинические заметки, отсканированные документы, не относящиеся к пациенту документы, такие как текст политики, а также фото, видео или аудиозаписи, приобретенные или используемые в здравоохранении. Ресурс DocumentReference предоставляет метаданные о документе, чтобы документ можно было обнаружить и управлять им. Фактическое содержимое может быть встроенными данными в кодировке base64 или предоставлено прямой ссылкой."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Har qanday maqsad uchun har qanday turdagi hujjatga havola. “Hujjat” atamasi torroq fokusni nazarda tutsa-da, ushbu resurs uchun ushbu “hujjat” mim tipidagi har qanday ketma-ketlashtirilgan ob'ektni o'z ichiga oladi, u bemorga yo'naltirilgan rasmiy hujjatlarni (CDA), klinik eslatmalarni, skanerlangan qog'ozni, siyosat matni kabi bemorga tegishli bo'lmagan hujjatlarni, shuningdek sog'liqni saqlashda olingan yoki qo'llaniladigan fotosurat, video yoki audio yozuvni o'z ichiga oladi. DocumentReference resursi hujjatni topish va boshqarish uchun hujjat haqidagi metama'lumotlarni taqdim etadi. Haqiqiy tarkib inline base64 kodlangan ma'lumotlar bo'lishi yoki to'g'ridan-to'g'ri havola orqali taqdim etilishi mumkin."
* #Encounter "Encounter"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Визит"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tashrif"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Взаимодействие между поставщиками медицинских услуг и/или пациентами с целью предоставления медицинских услуг или оценки состояния здоровья пациентов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tibbiy xizmat ko'rsatish (lar)ni ko'rsatish yoki bemor(lar)ning sog'lig'ini baholash maqsadida tibbiy xizmat ko'rsatuvchi provayder(lar) va/yoki bemor(lar) o'rtasidagi o'zaro aloqa."
* #EncounterHistory "EncounterHistory"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "История визита"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tashrif tarixi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись важных событий/важных этапов, ключевые данные за всю историю встречи"
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Uchrashuv tarixidagi muhim voqealar/marslar haqidagi asosiy ma'lumotlarning rekordi"
* #Endpoint "Endpoint"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Конечная точка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ulanish nuqtasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Технические детали конечной точки, которые могут использоваться для электронных услуг, например, для веб-служб, предоставляющих XDS.b, конечной точки REST для другого сервера FHIR или адреса электронной почты как/Mime. Это может включать любую информацию о контексте безопасности."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "XDS.b ni taqdim etuvchi veb-xizmatlar, boshqa FHIR serveri uchun REST so'nggi nuqtasi yoki as/Mime elektron pochta manzili kabi elektron xizmatlar uchun ishlatilishi mumkin bo'lgan so'nggi nuqtaning texnik tafsilotlari. Bu har qanday xavfsizlik konteksti ma'lumotlarini o'z ichiga olishi mumkin."
* #EnrollmentRequest "EnrollmentRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос на включение в страховой план"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta rejasiga kiritish so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс предоставляет страховщику данные о страховании в отношении определенного страхового покрытия."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs sug'urtalovchiga belgilangan qoplama bo'yicha sug'urta ro'yxatga olish tafsilotlarini taqdim etadi."
* #EnrollmentResponse "EnrollmentResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответ на запрос о включении в страховой план"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta rejasiga kiritish so'roviga javob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс предоставляет сведения о регистрации и плане, полученные в результате обработки ресурса EnrollmentRequest."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs EnrollmentRequest resursini qayta ishlashdan ro'yxatga olish va reja tafsilotlarini taqdim etadi."
* #EpisodeOfCare "EpisodeOfCare"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Эпизод оказания помощи"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy yordam epizodi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Связь между пациентом и организацией/поставщиком медицинских услуг, в течение которой могут происходить встречи. Управляющая организация берет на себя определенный уровень ответственности за пациента в течение этого времени."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor va tashkilot/sog'liqni saqlash provayder(lar)i o'rtasidagi aloqa, bu vaqt davomida uchrashuvlar yuz berishi mumkin. Boshqaruv tashkiloti bu vaqt davomida bemor uchun mas'uliyat darajasini o'z zimmasiga oladi."
* #EventDefinition "EventDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение события"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hodisa ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс EventDefinition предоставляет повторно используемое описание того, когда может произойти определенное событие."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "EventDefinition resursi ma'lum bir hodisa sodir bo'lishi mumkin bo'lgan qayta foydalanish mumkin bo'lgan tavsifni beradi."
* #Evidence "Evidence"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Доказательство"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dalil"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс доказательств предоставляет машинно-интерпретируемое выражение концепции доказательств, включая переменные доказательств (например, популяция, воздействия/вмешательства, компараторы, результаты, измеряемые переменные, искажающие переменные), статистику и достоверность этих доказательств."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Dalillar resursi dalil oʻzgaruvchilari (masalan, aholi soni, taʼsirlar/aralashuvlar, taqqoslashlar, natijalar, oʻlchangan oʻzgaruvchilar, chalkash oʻzgaruvchilar), statistika va bu dalillarning aniqligini oʻz ichiga olgan dalillar tushunchasining mashina tomonidan talqin qilinadigan ifodasini taqdim etadi."
* #EvidenceReport "EvidenceReport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отчёт о доказательствах"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dalillar hisoboti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс EvidenceReport — это специализированный контейнер для сбора ресурсов и кодируемых концепций, адаптированный для поддержки композиций ресурсов Evidence, EvidenceVariable и Citation, а также связанных концепций."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "EvidenceReport Resurs - bu Evidence, EvidenceVariable va Citation resurslari va tegishli tushunchalar kompozitsiyalarini qo'llab-quvvatlash uchun moslashtirilgan manbalar va kodlash mumkin bo'lgan tushunchalar to'plami uchun maxsus konteyner."
* #EvidenceVariable "EvidenceVariable"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Переменная доказательства"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dalil o'zgaruvchisi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс EvidenceVariable описывает элемент, о котором идет речь в знаниях (Evidence)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "EvidenceVariable resursi bilim (Dalil) haqida bo'lgan elementni tavsiflaydi."
* #ExampleScenario "ExampleScenario"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Пример сценария"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Namunaviy ssenariy"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Пошаговое руководство по рабочему процессу, демонстрирующее взаимодействие между системами и общими экземплярами, возможно, включая эволюцию экземпляров с течением времени."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tizimlar va baham ko'rilgan misollar o'rtasidagi o'zaro ta'sirni, ehtimol vaqt o'tishi bilan misollarning evolyutsiyasini ko'rsatadigan ish jarayonining batafsil tavsifi."
* #ExplanationOfBenefit "ExplanationOfBenefit"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Разъяснение выплат"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "To'lovlar tushuntirishi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Данный ресурс предоставляет: сведения о претензии; сведения о судебном решении по результатам обработки претензии; а также, по желанию, информацию о балансе счета для информирования абонента о предоставляемых преимуществах."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs quyidagilarni ta'minlaydi: da'vo tafsilotlari; da'voni ko'rib chiqishdan olingan qaror tafsilotlari; va ixtiyoriy ravishda abonentni taqdim etilgan imtiyozlar haqida xabardor qilish uchun hisob balansi ma'lumotlari."
* #FamilyMemberHistory "FamilyMemberHistory"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Семейный анамнез"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Oilaviy anamnez"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Существенные состояния здоровья человека, связанные с пациентом и имеющие значение в контексте ухода за пациентом."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor bilan bog'liq bo'lgan shaxsning muhim sog'lig'i holati, bemorga g'amxo'rlik kontekstida."
* #Flag "Flag"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отметка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Belgi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Предупреждения о возможных проблемах при оказании помощи пациенту."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga yordam ko'rsatishda yuzaga kelishi mumkin bo'lgan muammolar haqida istiqbolli ogohlantirishlar."
* #FormularyItem "FormularyItem"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Позиция формуляра"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Formulyar pozitsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс описывает продукт или услугу, которые доступны через программу, и включает условия и ограничения доступности. Вся информация в этом ресурсе относится к включению элемента в формуляр и не присуща самому элементу."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs dastur orqali mavjud bo'lgan mahsulot yoki xizmatni tavsiflaydi va mavjudlik shartlari va cheklovlarini o'z ichiga oladi. Ushbu resursdagi barcha ma'lumotlar ob'ektni formulaga kiritish uchun xosdir va elementning o'ziga xos emas."
* #GenomicStudy "GenomicStudy"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Геномное исследование"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Genomik tadqiqot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор анализов, выполняемых для анализа и получения геномных данных."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Genomik ma'lumotlarni tahlil qilish va yaratish uchun amalga oshirilgan tahlillar to'plami."
* #Goal "Goal"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Цель"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Maqsad"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает предполагаемую цель(и) ухода за пациентом, группой или организацией, например, снижение веса, восстановление повседневной активности, получение коллективного иммунитета посредством иммунизации, достижение цели по улучшению процесса и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga, guruhga yoki tashkilotga g'amxo'rlik qilish uchun mo'ljallangan maqsad(lar)ni tavsiflaydi, masalan, vazn yo'qotish, kundalik hayot faoliyatini tiklash, immunizatsiya orqali poda immunitetini olish, jarayonni yaxshilash maqsadiga erishish va boshqalar."
* #GraphDefinition "GraphDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение графа"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Graf ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Формальное вычислимое определение графа ресурсов, то есть связного набора ресурсов, которые образуют граф, следуя ссылкам. Ресурс определения графа определяет набор и устанавливает правила для этого набора."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Resurslar grafigining rasmiy hisoblangan taʼrifi, yaʼni quyidagi havolalar orqali grafikni tashkil etuvchi izchil resurslar toʻplami. Grafik ta'rifi resursi to'plamni belgilaydi va to'plam haqida qoidalar yaratadi."
* #Group "Group"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Группа"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Guruh"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Представляет собой определенную совокупность сущностей, которые могут обсуждаться или в отношении которых могут предприниматься коллективные действия, но от которых не ожидается коллективных действий, и которые не признаны официально или юридически; т. е. совокупность сущностей, которая не является Организацией."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Muhokama qilinishi yoki birgalikda harakat qilishi mumkin bo'lgan, lekin birgalikda harakat qilishi kutilmaydigan va rasmiy yoki qonuniy ravishda tan olinmagan ob'ektlarning belgilangan to'plamini ifodalaydi; ya'ni Tashkilot bo'lmagan ob'ektlar to'plami."
* #GuidanceResponse "GuidanceResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответ на рекомендацию"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tavsiyaga javob"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ответ на руководство представляет собой формальный ответ на запрос руководства, включающий любые выходные параметры, возвращенные в результате оценки, а также описание любых предлагаемых действий, которые необходимо предпринять."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yo'l-yo'riqli javob - bu yo'l-yo'riq so'roviga rasmiy javob, shu jumladan baholash natijasida qaytarilgan har qanday chiqish parametrlari, shuningdek, har qanday taklif qilingan harakatlar tavsifi."
* #HealthcareService "HealthcareService"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Медицинская услуга"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiy xizmat"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Подробная информация о медицинской услуге, доступной в определенном месте или в каталоге. В случае, если существует иерархия услуг (например, Лаборатория -> Патология -> Культуры ран), это может быть представлено с помощью набора связанных HealthcareServices."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bir joyda yoki katalogda mavjud bo'lgan sog'liqni saqlash xizmatining tafsilotlari. Agar xizmatlar ierarxiyasi mavjud bo'lsa (masalan, Laboratoriya -> Patologiya -> Yara madaniyati), bu bog'langan HealthcareServices to'plami yordamida taqdim etilishi mumkin."
* #ImagingSelection "ImagingSelection"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Выборка изображений"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tasvirlar tanlovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Выборка экземпляров DICOM SOP и/или кадров в пределах одного исследования и серии. Это может включать дополнительные характеристики, такие как область изображения, UID наблюдения или номер сегментации, что позволяет связывать ресурс наблюдения или передавать эту информацию вместе с ресурсом ImagingStudy."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bitta tadqiqot va seriya doirasidagi DICOM SOP nusxalari va/yoki ramkalar tanlovi. Bu kuzatuv resursiga ulanishga yoki ImagingStudy resursi bilan birga bu ma'lumotlarni uzatishga imkon beruvchi tasvir hududi, Kuzatuv UID yoki Segmentatsiya raqami kabi qo'shimcha xususiyatlarni o'z ichiga olishi mumkin."
* #ImagingStudy "ImagingStudy"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Визуализирующее исследование"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tasviriy tekshiruv"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Представление контента, полученного в ходе исследования DICOM-изображений. Исследование состоит из набора серий, каждая из которых включает набор экземпляров пар «услуга-объект» (экземпляры SOP — изображения или другие данные), полученных или созданных в общем контексте. Серия относится только к одной модальности (например, рентген, КТ, МРТ, ультразвук), но исследование может иметь несколько серий различных модальностей."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "DICOM tasvirlash tadqiqotida ishlab chiqarilgan tarkibning ifodasi. Tadqiqot umumiy kontekstda olingan yoki ishlab chiqarilgan xizmat-ob'ekt juftliklari (SOP misollari - tasvirlar yoki boshqa ma'lumotlar) to'plamini o'z ichiga olgan seriyalar to'plamini o'z ichiga oladi. Seriya faqat bitta modallikka ega (masalan, rentgen, KT, MR, ultratovush), ammo tadqiqot turli xil usullarning bir nechta seriyasiga ega bo'lishi mumkin."
* #Immunization "Immunization"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Иммунизация"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Emlash"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает событие, связанное с введением пациенту вакцины, или запись об иммунизации, сообщенную пациентом, врачом или другой стороной."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor, klinisyen yoki boshqa tomon xabar berganidek, bemorga vaktsina qo'llanilgan voqea yoki emlash rekordini tavsiflaydi."
* #ImmunizationEvaluation "ImmunizationEvaluation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Оценка иммунизации"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Emlashni baholash"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает сравнение мероприятия по иммунизации с опубликованными рекомендациями для определения того, является ли вакцинация «действительной» по отношению к этим рекомендациям."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ma'muriyat ushbu tavsiyalarga nisbatan \"haqiqiy\" yoki yo'qligini aniqlash uchun emlash hodisasini nashr etilgan tavsiyalar bilan taqqoslashni tavsiflaydi."
* #ImmunizationRecommendation "ImmunizationRecommendation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Рекомендация по вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Emlash tavsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор рекомендаций (т. е. прогнозирование) для пациента на определенный момент времени в соответствии с опубликованным графиком с дополнительным обоснованием."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorning ixtiyoriy qo'llab-quvvatlovchi asosli e'lon qilingan jadvalga muvofiq o'z vaqtida tavsiyalar to'plami (ya'ni prognozlash)."
* #ImplementationGuide "ImplementationGuide"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Руководство по внедрению"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Joriy etish qo'llanmasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор правил того, как решается конкретная проблема взаимодействия или стандартов — обычно с помощью ресурсов FHIR. Этот ресурс используется для объединения всех частей руководства по внедрению в логическое целое и публикации вычислимого определения всех частей."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Muayyan o'zaro muvofiqlik yoki standartlar muammosi qanday hal qilinishiga oid qoidalar to'plami - odatda FHIR resurslaridan foydalanish orqali. Ushbu resurs amaldagi qo'llanmaning barcha qismlarini mantiqiy yaxlitlikka to'plash va barcha qismlarning hisoblab chiqiladigan ta'rifini nashr qilish uchun ishlatiladi."
* #Ingredient "Ingredient"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ингредиент"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tarkibiy qism"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ингредиент промышленного изделия или фармацевтического продукта."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ishlab chiqarilgan mahsulot yoki farmatsevtika mahsulotining tarkibiy qismi."
* #InsurancePlan "InsurancePlan"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Страховой план"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sug'urta rejasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Подробная информация о продукте/плане медицинского страхования, предоставляемом организацией."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tashkilot tomonidan taqdim etilgan Sog'liqni saqlash sug'urtasi mahsuloti/rejasi tafsilotlari."
* #InventoryItem "InventoryItem"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Складская позиция"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ombor pozitsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "функциональное описание элемента инвентаря, используемого в рабочих процессах, связанных с инвентаризацией и поставками."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "inventarizatsiya va ta'minot bilan bog'liq ish oqimlarida ishlatiladigan inventar ob'ektining funktsional tavsifi."
* #InventoryReport "InventoryReport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отчёт об остатках"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qoldiqlar hisoboti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Отчет об инвентаризации или остатках на складе."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Inventarizatsiya yoki zaxira buyumlari to'g'risidagi hisobot."
* #Invoice "Invoice"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Счёт-фактура"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Hisob-faktura"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Счет-фактура, содержащий собранные ChargeItems со счета с рассчитанной индивидуальной и общей ценой для целей выставления счета."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Hisob-kitob qilish maqsadida hisoblangan individual va umumiy narx bilan hisobdan yig'ilgan ChargeItemsni o'z ichiga olgan invoys."
* #Library "Library"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Библиотека"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Kutubxona"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс Library — это универсальный контейнер для определений активов знаний. Его можно использовать для описания и раскрытия существующих активов знаний, таких как библиотеки логики и описания информационных моделей, а также для описания коллекции активов знаний."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Kutubxona resursi bilim aktivlari taʼriflari uchun umumiy maqsadli konteynerdir. Undan mantiqiy kutubxonalar va axborot modeli tavsiflari kabi mavjud bilim aktivlarini tavsiflash va ochish, shuningdek, bilim aktivlari to'plamini tavsiflash uchun foydalanish mumkin."
* #Linkage "Linkage"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Связь ресурсов"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Resurslar bog'lanishi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Идентифицирует две или более записей (экземпляров ресурсов), которые относятся к одному и тому же реальному «событию»."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ikki yoki undan ortiq yozuvlarni (resurs misollari) aniqlaydi, ular bir xil real dunyo \"voqea\"ga ishora qiladi."
* #List "List"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Список"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ro'yxat"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Список — это тщательно подобранная коллекция ресурсов, например, списки проблем, списки аллергий, списки учреждений, списки организаций и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Roʻyxat – muammolar roʻyxati, allergiya roʻyxati, obʼyektlar roʻyxati, tashkilotlar roʻyxati va boshqalar uchun moʻljallangan resurslar toʻplami."
* #Location "Location"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Местоположение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Joylashuv"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Подробная информация и местоположение места, где предоставляются услуги, а также могут храниться, находиться, содержаться или размещаться ресурсы и участники."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Xizmatlar taqdim etiladigan joy va resurslar va ishtirokchilar saqlanishi, topilishi, saqlanishi yoki joylashtirilishi mumkin bo'lgan joy uchun tafsilotlar va joylashuv ma'lumotlari."
* #ManufacturedItemDefinition "ManufacturedItemDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение произведённого изделия"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ishlab chiqarilgan buyum ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определение и характеристики лекарственного средства, например таблетки или капсулы, содержащегося в упакованном лекарственном средстве."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Qadoqlangan dorivor mahsulot tarkibidagi planshet yoki kapsula kabi dorivor mahsulotning ta'rifi va tavsifi."
* #Measure "Measure"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Показатель качества"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sifat ko'rsatkichi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс «Мера» дает определение меры качества."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Measure resursi sifat o'lchovining ta'rifini beradi."
* #MeasureReport "MeasureReport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отчёт о показателе качества"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sifat ko'rsatkichi hisoboti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс MeasureReport содержит результаты расчета меры и, при необходимости, ссылку на ресурсы, задействованные в этом расчете."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "MeasureReport resursi o'lchovni hisoblash natijalarini o'z ichiga oladi; va ixtiyoriy ravishda ushbu hisob-kitobga jalb qilingan resurslarga havola."
* #Medication "Medication"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Лекарственное средство"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori vositasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Данный ресурс в первую очередь используется для идентификации и определения лекарственного средства, включая ингредиенты, в целях назначения, выдачи и применения лекарственного средства, а также для составления заявлений об использовании лекарственного средства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs birinchi navbatda dori vositalarini, shu jumladan ingredientlarni aniqlash va ta'riflash, dori-darmonlarni buyurish, tarqatish va yuborish, shuningdek, dori vositalaridan foydalanish to'g'risida bayonotlar berish uchun ishlatiladi."
* #MedicationAdministration "MedicationAdministration"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Введение лекарственного средства"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori vositasini qo'llash"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает событие, когда пациент потребляет или иным образом получает лекарство. Это может быть простое проглатывание таблетки или длительная инфузия. Связанные ресурсы связывают это событие с авторизованным рецептом и конкретной встречей между пациентом и врачом. Это событие также можно использовать для записи отходов с использованием статуса не выполнено и соответствующего statusReason."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorning dori-darmonlarni iste'mol qilish yoki boshqa usulda qo'llash hodisasini tasvirlaydi. Bu planshetni yutish kabi oddiy bo'lishi mumkin yoki bu uzoq davom etadigan infuzion bo'lishi mumkin. Tegishli manbalar ushbu hodisani ruxsat beruvchi retsept va bemor va sog'liqni saqlash amaliyotchisi o'rtasidagi aniq uchrashuv bilan bog'laydi. Ushbu hodisa, shuningdek, bajarilmagan holati va tegishli status Sababini ishlatib, chiqindilarni yozib olish uchun ishlatilishi mumkin."
* #MedicationDispense "MedicationDispense"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отпуск лекарственного средства"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori vositasini berish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Указывает, что лекарственный продукт должен быть или был выдан указанному лицу/пациенту. Это включает описание предоставленного лекарственного продукта (поставки) и инструкции по приему лекарства. Выдача лекарства является результатом ответа аптечной системы на заказ лекарства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Dori-darmon mahsuloti nomi ko'rsatilgan shaxs/bemor uchun berilishi kerakligini yoki tarqatilganligini ko'rsatadi. Bunga taqdim etilgan dori-darmon mahsuloti (ta'minot) tavsifi va dori-darmonlarni qo'llash bo'yicha ko'rsatmalar kiradi. Dori tarqatish dorixona tizimining dori buyurtmasiga javob berishi natijasidir."
* #MedicationKnowledge "MedicationKnowledge"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Сведения о лекарственном средстве"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori vositasi haqida ma'lumot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Информация о лекарстве, используемом для поддержки знаний."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bilimlarni qo'llab-quvvatlash uchun ishlatiladigan dori haqida ma'lumot."
* #MedicationRequest "MedicationRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос на медикаменты"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Заказ или запрос на поставку лекарства и инструкции по его назначению пациенту. Ресурс называется «MedicationRequest», а не «MedicationPrescription» или «MedicationOrder», чтобы обобщить использование в стационарных и амбулаторных условиях, включая планы лечения и т. д., а также согласовать с шаблонами рабочего процесса."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Dori-darmonlarni etkazib berish uchun buyurtma yoki so'rov va bemorga dori-darmonlarni yuborish bo'yicha ko'rsatmalar. Resurs statsionar va ambulatoriya sharoitida foydalanishni umumlashtirish, shu jumladan parvarish rejalari va hokazolar va ish jarayoni naqshlari bilan uyg'unlashtirish uchun \"MedicationRequest\" yoki \"MedicationOrder\" emas, balki \"MedicationRequest\" deb nomlanadi."
* #MedicationStatement "MedicationStatement"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Сведения о приёме лекарственного средства"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori vositasini qabul qilish haqida ma'lumot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись о лекарстве, которое принимает пациент. MedicationStatement может указывать на то, что пациент может принимать лекарство в настоящее время или принимал лекарство в прошлом или будет принимать лекарство в будущем. Источником этой информации может быть пациент, близкий ему человек (например, член семьи или супруг) или врач. Обычный сценарий, когда эта информация собирается, — это процесс сбора анамнеза во время визита или пребывания пациента. Информация о лекарстве может поступать из таких источников, как память пациента, флакон с рецептом или список лекарств, которые ведет пациент, врач или другая сторона."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor tomonidan iste'mol qilinadigan dori yozuvi. Dori-darmon bayonoti bemor hozir dori-darmonlarni qabul qilishini yoki o'tmishda dori-darmonlarni qabul qilganligini yoki kelajakda dori-darmonlarni qabul qilishini ko'rsatishi mumkin. Ushbu ma'lumot manbai bemor, boshqa muhim (masalan, oila a'zosi yoki turmush o'rtog'i) yoki klinisyen bo'lishi mumkin. Ushbu ma'lumotni olishning umumiy stsenariysi bemorga tashrif buyurish yoki qolish paytida tarixni olish jarayonidir. Dori haqidagi ma'lumotlar bemor xotirasi kabi manbalardan, retsept bo'yicha ko'rsatilgan shishadan yoki bemor, klinisyen yoki boshqa tomon yuritadigan dori-darmonlar ro'yxatidan olinishi mumkin."
* #MedicinalProductDefinition "MedicinalProductDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение лекарственного препарата"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Dori mahsuloti ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Подробное определение лекарственного средства, как правило, для использования, отличного от непосредственного ухода за пациентами (например, нормативное использование, каталоги лекарственных средств, для обоснования назначения лекарств, управления нежелательными явлениями и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Dorivor mahsulotning batafsil ta'rifi, odatda bemorni bevosita parvarish qilishdan boshqa maqsadlarda foydalanish uchun (masalan, tartibga soluvchi foydalanish, dori-darmonlar kataloglari, retseptlashni qo'llab-quvvatlash, nojo'ya ta'sirlarni boshqarish va h.k.)."
* #MessageDefinition "MessageDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение сообщения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xabar ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определяет характеристики сообщения, которые могут передаваться между системами, включая тип события, инициирующего сообщение, передаваемое содержимое и разрешенные ответы (если таковые имеются)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tizimlar oʻrtasida boʻlishish mumkin boʻlgan xabarning xususiyatlarini, shu jumladan xabarni boshlaydigan hodisa turini, uzatiladigan tarkibni va agar mavjud boʻlsa, qanday javob(lar)ga ruxsat berilishini belgilaydi."
* #MessageHeader "MessageHeader"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Заголовок сообщения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xabar sarlavhasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Заголовок для обмена сообщениями, который либо запрашивает, либо отвечает на действие. Ссылки, которые являются предметом действия, а также другая информация, связанная с действием, обычно передаются в пакете, в котором экземпляр ресурса MessageHeader является первым ресурсом в пакете."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Harakatni so'ragan yoki unga javob beradigan xabar almashinuvi sarlavhasi. Amal mavzusi boʻlgan havola(lar) hamda harakatga tegishli boshqa maʼlumotlar odatda MessageHeader resurs namunasi toʻplamdagi birinchi resurs boʻlgan toʻplamda uzatiladi."
* #MolecularSequence "MolecularSequence"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Молекулярная последовательность"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Molekulyar ketma-ketlik"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Представление молекулярной последовательности."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Molekulyar ketma-ketlikning tasviri."
* #NamingSystem "NamingSystem"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Система именования"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Nomlash tizimi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Курируемое пространство имен, которое выдает уникальные символы в пределах этого пространства имен для идентификации концепций, людей, устройств и т. д. Представляет собой «Систему», используемую в типах данных «Идентификатор» и «Кодирование»."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Kontseptsiyalarni, odamlarni, qurilmalarni va hokazolarni identifikatsiyalash uchun ushbu nom maydoni ichida noyob belgilar chiqaradigan tanlangan nomlar maydoni. Identifikator va kodlash ma'lumotlar turlarida ishlatiladigan \"Tizim\" ni ifodalaydi."
* #NutritionIntake "NutritionIntake"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Приём пищи"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ovqat iste'moli"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись о еде или жидкости, потребляемой пациентом. NutritionIntake может указывать на то, что пациент может потреблять пищу или жидкость в настоящее время или потреблял пищу или жидкость в прошлом. Источником этой информации может быть пациент, близкий ему человек (например, член семьи или супруг) или врач. Обычный сценарий, когда эта информация собирается, — это процесс сбора анамнеза во время визита или пребывания пациента или через приложение, которое отслеживает потребляемую пищу или жидкости. Информация о потреблении может поступать из таких источников, как память пациента, этикетка с питанием или от врача, документирующего наблюдаемое потребление."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor tomonidan iste'mol qilinadigan oziq-ovqat yoki suyuqlik yozuvi. NutritionIntake bemor hozir oziq-ovqat yoki suyuqlik iste'mol qilishi yoki o'tmishda oziq-ovqat yoki suyuqlik iste'mol qilganligini ko'rsatishi mumkin. Ushbu ma'lumot manbai bemor, boshqa muhim (masalan, oila a'zosi yoki turmush o'rtog'i) yoki klinisyen bo'lishi mumkin. Ushbu ma'lumot olinadigan umumiy stsenariy bemor tashrifi yoki qolish paytida yoki iste'mol qilingan oziq-ovqat yoki suyuqliklarni kuzatuvchi ilova orqali tarixni olish jarayonida. Iste'mol ma'lumotlari bemor xotirasi, ovqatlanish yorlig'i yoki kuzatilgan qabul qilinganligini hujjatlashtirgan klinisyendan olingan bo'lishi mumkin."
* #NutritionOrder "NutritionOrder"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Назначение питания"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ovqatlanish tayinlovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запрос на поставку диетического питания, смеси для энтерального питания или пероральной пищевой добавки пациенту/резиденту."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga/rezidentga dieta, formulali oziqlantirish (enteral) yoki og'iz orqali yuboriladigan ozuqaviy qo'shimchalarni yetkazib berish so'rovi."
* #NutritionProduct "NutritionProduct"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Продукт питания"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Oziq-ovqat mahsuloti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Пища или добавка, потребляемая пациентами."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorlar tomonidan iste'mol qilinadigan oziq-ovqat yoki qo'shimcha."
* #Observation "Observation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Наблюдение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Kuzatuv"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Измерения и простые утверждения, касающиеся пациента, устройства или другого объекта."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor, qurilma yoki boshqa mavzu haqida o'lchovlar va oddiy tasdiqlar."
* #ObservationDefinition "ObservationDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение наблюдения"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Kuzatuv ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор определяющих характеристик для вида наблюдения или измерения, производимого или потребляемого заказываемой услугой здравоохранения."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Buyurtmali sog'liqni saqlash xizmati tomonidan ishlab chiqarilgan yoki iste'mol qilinadigan kuzatuv yoki o'lchov turi uchun tavsiflovchi xususiyatlar to'plami."
* #OperationDefinition "OperationDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение операции"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Operatsiya ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Формальное вычислимое определение операции (в интерфейсе RESTful) или именованного запроса (с использованием поискового взаимодействия)."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Operatsiyaning rasmiy hisoblangan ta'rifi (RESTful interfeysida) yoki nomlangan so'rov (qidiruv o'zaro ta'siridan foydalangan holda)."
* #OperationOutcome "OperationOutcome"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Результат операции"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Operatsiya natijasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор сообщений об ошибках, предупреждений или информационных сообщений, которые возникают в результате действия системы."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tizim harakati natijasida yuzaga keladigan xato, ogohlantirish yoki ma'lumot xabarlari to'plami."
* #Organization "Organization"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Организация"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tashkilot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Официально или неофициально признанная группа людей или организаций, созданная с целью достижения какой-либо формы коллективного действия. Включает компании, учреждения, корпорации, департаменты, общественные группы, группы практик здравоохранения, плательщика/страховщика и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Kollektiv harakatlarning qandaydir shakllariga erishish uchun tuzilgan odamlar yoki tashkilotlarning rasmiy yoki norasmiy ravishda tan olingan guruhi. Kompaniyalar, muassasalar, korporatsiyalar, bo'limlar, jamoat guruhlari, tibbiy amaliyot guruhlari, to'lovchi/sug'urtalovchi va boshqalarni o'z ichiga oladi."
* #OrganizationAffiliation "OrganizationAffiliation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Связь между организациями"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tashkilotlararo bog'liqlik"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определяет аффилированность/ассоциацию/отношения между двумя различными организациями, которые не являются отношениями части/подразделения."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "2 ta alohida tashkilot o'rtasidagi mansublik/assotsiatsiya/munosabatni belgilaydi, bu munosabatlarning/bo'linma munosabatlarining bir qismi emas."
* #PackagedProductDefinition "PackagedProductDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение упакованного продукта"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qadoqlangan mahsulot ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Предмет или предметы медицинского назначения в контейнере или упаковке."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Idishdagi yoki paketdagi tibbiy jihatdan bog'liq buyum yoki narsalar."
* #Parameters "Parameters"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Параметры"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Parametrlar"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс используется для передачи информации в операцию и обратно из нее (будь то вызванная напрямую из REST или в среде обмена сообщениями). Он не сохраняется и не может быть использован другими ресурсами, за исключением случаев, описанных в определении ресурса Parameters."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs ma'lumotni operatsiyaga va undan qaytarish uchun ishlatiladi (to'g'ridan-to'g'ri REST yoki xabar almashish muhitida chaqiriladi). Parametrlar resursi taʼrifida tavsiflangan hollar bundan mustasno, boshqa manbalar tomonidan qoʻllab-quvvatlanmaydi yoki havola qilinishiga ruxsat etilmaydi."
* #Patient "Patient"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Пациент"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Bemor"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Демографические данные и другая административная информация о человеке или животном, получающем уход или другие услуги, связанные со здоровьем."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Demografik va boshqa ma'muriy ma'lumotlarga ega bo'lgan jismoniy shaxs yoki hayvonlarga g'amxo'rlik yoki sog'liq bilan bog'liq boshqa xizmatlar."
* #PaymentNotice "PaymentNotice"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Уведомление о платеже"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "To'lov haqida bildirishnoma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Данный ресурс предоставляет информацию о статусе оплаты за оказанные товары и услуги, а также ссылки на ресурсы запросов и ответов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs ko'rsatilgan tovarlar va xizmatlar uchun to'lov holatini, so'rov va javob manbalari ma'lumotnomalarini taqdim etadi."
* #PaymentReconciliation "PaymentReconciliation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Сверка платежей"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "To'lovlarni solishtirish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс предоставляет подробную информацию, включая сумму платежа, а также распределяет оплачиваемые платежные позиции."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs to'lov miqdorini o'z ichiga olgan tafsilotlarni taqdim etadi va to'lanadigan to'lov elementlarini taqsimlaydi."
* #Permission "Permission"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Разрешение"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ruxsat"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс разрешений содержит правила доступа для заданных данных и контекста."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ruxsat resursi ma'lum ma'lumotlar va kontekst uchun kirish qoidalariga ega."
* #Person "Person"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Лицо"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Shaxs"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Демографические и административные данные о человеке независимо от конкретного контекста, связанного со здоровьем."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Muayyan sog'liq bilan bog'liq kontekstdan mustaqil shaxs haqidagi demografik va ma'muriy ma'lumotlar."
* #PlanDefinition "PlanDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение плана"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Reja ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Этот ресурс позволяет определять различные типы планов как артефакты, которые можно совместно использовать, которые можно использовать и которые можно выполнять. Ресурс достаточно общий, чтобы поддерживать описание широкого спектра клинических и неклинических артефактов, таких как правила поддержки клинических решений, наборы заказов, протоколы и спецификации качества лекарств."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ushbu resurs har xil turdagi rejalarni umumiy, sarflanadigan va bajariladigan artefakt sifatida aniqlash imkonini beradi. Resurs klinik qarorlarni qoʻllab-quvvatlash qoidalari, buyurtmalar toʻplami, protokollar va dori sifati spetsifikatsiyalari kabi keng doiradagi klinik va klinik boʻlmagan artefaktlarning tavsifini qoʻllab-quvvatlash uchun yetarli darajada umumiydir."
* #Practitioner "Practitioner"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Медицинский работник"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiyot xodimi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Лицо, которое прямо или косвенно участвует в предоставлении медицинских или связанных с ними услуг."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Sog'liqni saqlash yoki tegishli xizmatlarni ko'rsatishda bevosita yoki bilvosita ishtirok etadigan shaxs."
* #PractitionerRole "PractitionerRole"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Роль медицинского работника"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tibbiyot xodimining roli"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определенный набор ролей/мест/специальностей/услуг, которые практикующий специалист может выполнять или выполнял в организации в течение определенного периода времени."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Amaliyotchi bajarishi mumkin bo'lgan yoki tashkilotda ma'lum vaqt davomida bajargan rollar/joylar/mutaxassisliklar/xizmatlar to'plami."
* #Procedure "Procedure"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Процедура"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Protsedura"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Действие, которое выполняется или выполнялось для пациента, врача, устройства, организации или местоположения. Например, это может быть физическое вмешательство в пациента, например, операция, или менее инвазивное, например, долгосрочные услуги, консультирование или гипнотерапия. Это может быть проверка качества или безопасности местоположения, организации или устройства. Это может быть процедура аккредитации врача для лицензирования."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor, amaliyotchi, qurilma, tashkilot yoki joylashuvda yoki u uchun bajarilgan yoki bajarilgan harakat. Masalan, bu bemorga operatsiya kabi jismoniy aralashuv yoki uzoq muddatli xizmatlar, maslahat yoki gipnoterapiya kabi kamroq invaziv bo'lishi mumkin. Bu joy, tashkilot yoki qurilma uchun sifat yoki xavfsizlik tekshiruvi bo'lishi mumkin. Bu amaliyotchini litsenziyalash uchun akkreditatsiya qilish tartibi bo'lishi mumkin."
* #Provenance "Provenance"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Происхождение данных"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ma'lumotlar manbasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Происхождение ресурса — это запись, которая описывает сущности и процессы, вовлеченные в производство и доставку или иным образом влияющие на этот ресурс. Происхождение обеспечивает критически важную основу для оценки подлинности, обеспечения доверия и обеспечения воспроизводимости. Утверждения о происхождении являются формой контекстных метаданных и сами могут стать важными записями со своим собственным происхождением. Заявление о происхождении указывает на клиническую значимость с точки зрения уверенности в подлинности, надежности и достоверности, целостности и стадии жизненного цикла (например, Завершение документа — был ли артефакт юридически аутентифицирован), все из которых могут влиять на политику безопасности, конфиденциальности и доверия."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Resursning kelib chiqishi - bu resursni ishlab chiqarish va etkazib berish yoki boshqa yo'l bilan ta'sir qilish bilan bog'liq ob'ektlar va jarayonlarni tavsiflovchi yozuv. Provenance haqiqiylikni baholash, ishonchni ta'minlash va takrorlanishiga ruxsat berish uchun muhim asos bo'lib xizmat qiladi. Kelib chiqishi haqidagi da'volar kontekstli metama'lumotlarning bir shakli bo'lib, o'zlari o'zlarining kelib chiqishi bilan muhim yozuvlarga aylanishi mumkin. Kelib chiqishi haqidagi bayonot haqiqiylik, ishonchlilik va ishonchlilik, yaxlitlik va hayot aylanish bosqichiga (masalan, Hujjatni to'ldirish - artefakt qonuniy jihatdan tasdiqlangan) ishonch nuqtai nazaridan klinik ahamiyatga ega ekanligini ko'rsatadi, bularning barchasi xavfsizlik, maxfiylik va ishonch siyosatiga ta'sir qilishi mumkin."
* #Questionnaire "Questionnaire"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Опросник"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "So'rovnoma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Структурированный набор вопросов, предназначенный для руководства сбором ответов от конечных пользователей. Анкеты обеспечивают подробный контроль над порядком, представлением, фразеологией и группировкой для обеспечения последовательного, согласованного сбора данных."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yakuniy foydalanuvchilarning javoblarini to'plash uchun mo'ljallangan tuzilgan savollar to'plami. Anketalar izchil, izchil ma'lumotlarni to'plash uchun tartib, taqdimot, frazeologiya va guruhlash ustidan batafsil nazoratni ta'minlaydi."
* #QuestionnaireResponse "QuestionnaireResponse"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ответы на опросник"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "So'rovnomaga javoblar"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Структурированный набор вопросов и ответов на них. Вопросы упорядочены и сгруппированы в связные подмножества, соответствующие структуре группировки анкеты, на которую дается ответ."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tuzilgan savollar to'plami va ularga javoblar. Savollar tartibga solinadi va javob berilayotgan anketaning guruhlash tuzilishiga mos keladigan izchil kichik to'plamlarga guruhlanadi."
* #RegulatedAuthorization "RegulatedAuthorization"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Разрешение регулятора"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tartibga soluvchi organ ruxsati"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Регуляторное одобрение, разрешение или лицензирование, связанное с регулируемым продуктом, лечением, объектом или деятельностью, которые упоминаются в руководстве, постановлении, правиле или законодательном акте. Примером является разрешение на продажу, касающееся лекарственного средства."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yo'riqnomada, reglamentda, qoidada yoki qonun hujjatlarida keltirilgan tartibga solinadigan mahsulot, davolash, ob'ekt yoki faoliyat bilan bog'liq tartibga soluvchi tasdiqlash, ruxsat berish yoki litsenziyalash. Masalan, dorivor mahsulotga nisbatan bozor ruxsatnomasi."
* #RelatedPerson "RelatedPerson"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Связанное лицо"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Aloqador shaxs"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Информация о лице, которое принимает участие в охране здоровья пациента или в уходе за пациентом, но не является объектом оказания медицинской помощи и не несет официальной ответственности за процесс оказания медицинской помощи."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorning sog'lig'i yoki bemorga g'amxo'rlik qilish bilan shug'ullanadigan, ammo sog'liqni saqlashning maqsadi bo'lmagan va parvarishlash jarayonida rasmiy javobgarlikka ega bo'lmagan shaxs to'g'risidagi ma'lumotlar."
* #RequestOrchestration "RequestOrchestration"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Группа запросов"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "So'rovlar guruhi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Набор связанных запросов, которые можно использовать для фиксации предполагаемых взаимозависимых действий, например «дать это лекарство после того»."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "“Ushbu dorini undan keyin bering” kabi oʻzaro bogʻliqliklarga ega boʻlgan maqsadli faoliyatni qoʻlga kiritish uchun ishlatilishi mumkin boʻlgan tegishli soʻrovlar toʻplami."
* #Requirements "Requirements"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Требования"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Talablar"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс «Требования» используется для описания субъекта — человека или приложения, которые играют роль в обмене данными и могут иметь обязательства, связанные с ролью, которую играет субъект."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Talablar resursi aktyorni - inson yoki ma'lumotlar almashinuvida rol o'ynaydigan va aktyor o'ynagan roli bilan bog'liq majburiyatlarga ega bo'lgan ilovani tasvirlash uchun ishlatiladi."
* #ResearchStudy "ResearchStudy"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Научное исследование"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ilmiy tadqiqot"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Научное исследование природы, которое иногда включает процессы, связанные со здоровьем и болезнями. Например, клинические испытания — это исследования, в которых участвуют люди. Эти исследования могут быть связаны с новыми способами скрининга, профилактики, диагностики и лечения болезней. Они также могут изучать определенные результаты и определенные группы людей, рассматривая данные, собранные в прошлом или будущем."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tabiatni ilmiy o'rganish, ba'zan sog'liq va kasallik bilan bog'liq jarayonlarni o'z ichiga oladi. Masalan, klinik tadqiqotlar odamlarni qamrab oladigan tadqiqot ishlaridir. Ushbu tadqiqotlar kasallikni tekshirish, oldini olish, tashxislash va davolashning yangi usullari bilan bog'liq bo'lishi mumkin. Ular, shuningdek, o'tmishda yoki kelajakda to'plangan ma'lumotlarni ko'rib chiqish orqali ma'lum natijalarni va ma'lum odamlar guruhlarini o'rganishlari mumkin."
* #ResearchSubject "ResearchSubject"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Участник исследования"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tadqiqot ishtirokchisi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Субъект исследования — участник или объект, являющийся объектом следственной деятельности в ходе научного исследования."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tadqiqot predmeti - tadqiqot tadqiqotida tergov harakatlarining oluvchisi bo'lgan ishtirokchi yoki ob'ekt."
* #RiskAssessment "RiskAssessment"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Оценка риска"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xavfni baholash"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Оценка вероятного(ых) результата(ов) для пациента или другого субъекта, а также вероятности каждого результата."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemor yoki boshqa mavzu uchun mumkin bo'lgan natijalar (lar) ni, shuningdek, har bir natijaning ehtimolini baholash."
* #Schedule "Schedule"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Расписание"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Jadval"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Контейнер для временных интервалов, которые могут быть доступны для записи на прием."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Uchrashuvlarni bron qilish uchun mavjud bo'lishi mumkin bo'lgan vaqt oralig'i uchun konteyner."
* #SearchParameter "SearchParameter"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Параметр поиска"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qidiruv parametri"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Параметр поиска, определяющий именованный элемент поиска, который можно использовать для поиска/фильтрации по ресурсу."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Resursni qidirish/filtrlash uchun ishlatilishi mumkin bo'lgan nomli qidiruv elementini belgilaydigan qidiruv parametri."
* #ServiceRequest "ServiceRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Направление на услугу"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Xizmatga yo'llanma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись запроса на выполнение таких услуг, как диагностические исследования, лечение или операции."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Diagnostik tekshiruvlar, muolajalar yoki amalga oshiriladigan operatsiyalar kabi xizmat so'rovi qaydi."
* #Slot "Slot"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Временной слот"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Vaqt oralig'i"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Отрезок времени в расписании, который может быть доступен для записи на прием."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Uchrashuvlarni bron qilish uchun mavjud bo'lishi mumkin bo'lgan jadvaldagi vaqt oralig'i."
* #Specimen "Specimen"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Образец"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Namuna"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Образец для анализа."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tahlil qilish uchun ishlatiladigan namuna."
* #SpecimenDefinition "SpecimenDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение образца"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Namuna ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Своего рода образец с соответствующим набором требований."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Tegishli talablar to'plamiga ega namunaning bir turi."
* #StructureDefinition "StructureDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение структуры"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tuzilma ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Определение структуры FHIR. Этот ресурс используется для описания базовых ресурсов, типов данных, определенных в FHIR, а также для описания расширений и ограничений ресурсов и типов данных."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "FHIR strukturasining ta'rifi. Ushbu resurs FHIR da belgilangan asosiy manbalarni, ma'lumotlar turlarini tavsiflash, shuningdek, resurslar va ma'lumotlar turlari bo'yicha kengaytmalar va cheklovlarni tavsiflash uchun ishlatiladi."
* #StructureMap "StructureMap"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Карта преобразования структур"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tuzilmalarni o'zgartirish xaritasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Карта взаимосвязей между двумя структурами, которую можно использовать для преобразования данных."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ma'lumotlarni o'zgartirish uchun ishlatilishi mumkin bo'lgan 2 ta tuzilma o'rtasidagi munosabatlar xaritasi."
* #Subscription "Subscription"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Подписка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Obuna"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс подписки описывает запрос конкретного клиента на получение уведомлений о теме подписки."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Obuna resursi ma'lum bir mijozning SubscriptionTopic haqida xabardor bo'lish so'rovini tavsiflaydi."
* #SubscriptionStatus "SubscriptionStatus"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Статус подписки"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Obuna holati"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс SubscriptionStatus описывает состояние подписки во время уведомлений. Он не сохраняется."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "SubscriptionStatus resursi bildirishnomalar paytida obuna holatini tavsiflaydi. Bu davom etmaydi."
* #SubscriptionTopic "SubscriptionTopic"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Тема подписки"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Obuna mavzusi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает поток изменений состояния ресурсов, идентифицированных по критериям триггера и аннотированных метками, полезными для фильтрации проекций по этой теме."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Trigger mezonlari boʻyicha aniqlangan va ushbu mavzu boʻyicha proyeksiyalarni filtrlash uchun foydali yorliqlar bilan izohlangan resurs holatidagi oʻzgarishlar oqimini tavsiflaydi."
* #Substance "Substance"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Вещество"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Modda"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Однородный материал с определенным составом."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Aniq tarkibga ega bir hil material."
* #SubstanceDefinition "SubstanceDefinition"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Определение вещества"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Modda ta'rifi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Подробное описание вещества, как правило, на уровне, выходящем за рамки того, что используется для выписывания рецептов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Moddaning batafsil tavsifi, odatda retseptlash uchun ishlatiladigan darajadan tashqarida."
* #SubstanceNucleicAcid "SubstanceNucleicAcid"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Нуклеиновая кислота"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Nuklein kislota"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Нуклеиновые кислоты определяются тремя различными элементами: основанием, сахаром и связью. Для каждого из этих элементов будут созданы индивидуальные идентификаторы веществ/частей. Нуклеотидная последовательность всегда будет вводиться в направлении 5'-3'."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Nuklein kislotalar uchta alohida element bilan belgilanadi: asos, shakar va bog'lanish. Ushbu elementlarning har biri uchun individual modda/qism identifikatorlari yaratiladi. Nukleotidlar ketma-ketligi har doim 5'-3' yo'nalishda kiritiladi."
* #SubstancePolymer "SubstancePolymer"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Полимер"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Polimer"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Свойства вещества, характерные для того, чтобы оно было полимером."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Polimer bo'lgan unga xos moddaning xossalari."
* #SubstanceProtein "SubstanceProtein"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Белок"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Oqsil"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "SubstanceProtein определяется как отдельная единица линейной аминокислотной последовательности или комбинация субъединиц, которые либо ковалентно связаны, либо имеют определенную инвариантную стехиометрическую связь. Сюда входят все синтетические, рекомбинантные и очищенные SubstanceProteins определенной последовательности, независимо от того, является ли использование терапевтическим или профилактическим. Этот набор элементов будет использоваться для описания альбуминов, факторов свертывания крови, цитокинов, факторов роста, пептидных/SubstanceProtein гормонов, ферментов, токсинов, токсоидов, рекомбинантных вакцин и иммуномодуляторов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Modda oqsili chiziqli aminokislotalar ketma-ketligining yagona birligi yoki kovalent bog'langan yoki belgilangan o'zgarmas stexiometrik munosabatga ega bo'lgan subbirliklarning kombinatsiyasi sifatida aniqlanadi. Bu, foydalanish terapevtik yoki profilaktik bo'lishidan qat'i nazar, belgilangan ketma-ketlikdagi barcha sintetik, rekombinant va tozalangan moddalar oqsillarini o'z ichiga oladi. Ushbu elementlar to'plami albuminlar, koagulyatsion omillar, sitokinlar, o'sish omillari, peptidlar/moddalar oqsil gormonlari, fermentlar, toksinlar, toksoidlar, rekombinant vaktsinalar va immunomodulyatorlarni tavsiflash uchun ishlatiladi."
* #SubstanceReferenceInformation "SubstanceReferenceInformation"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Справочная информация о веществе"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Modda haqida ma'lumotnoma"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Справочная информация о веществе"
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Modda haqida ma'lumot"
* #SubstanceSourceMaterial "SubstanceSourceMaterial"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Исходный материал вещества"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Moddaning dastlabki xomashyosi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Исходный материал должен содержать информацию о таксономическом и анатомическом происхождении, а также о доле материала, которая может привести к образованию вещества или может быть модифицирована для его образования. Этот набор элементов данных должен использоваться для определения полимерных веществ, выделенных из биологических матриц. Таксономическое и анатомическое происхождение должно быть описано с использованием контролируемого словаря по мере необходимости. Эта информация собирается для полимеров, полученных естественным путем (. крахмал) и структурно разнообразных веществ. Для организмов, принадлежащих к царству растений, уровень вещества определяет свежий материал одного вида или внутривидового, растительное лекарство и растительный препарат. Для растительных препаратов информация о фракции будет собрана на уровне информации о веществе, а дополнительная информация для растительных экстрактов будет собрана на уровне информации об указанной группе веществ 1. Для получения дополнительных объяснений см. Класс вещества: структурно разнообразный и приложение о травах."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Manba materiali taksonomik va anatomik kelib chiqishi, shuningdek, moddani shakllantirishga olib kelishi mumkin bo'lgan yoki o'zgartirilishi mumkin bo'lgan materialning ulushi haqidagi ma'lumotlarni qamrab olishi kerak. Ushbu ma'lumotlar elementlari to'plami biologik matritsalardan ajratilgan polimer moddalarini aniqlash uchun ishlatilishi kerak. Taksonomik va anatomik kelib chiqishi kerak bo'lganda boshqariladigan lug'at yordamida tasvirlanishi kerak. Bu ma'lumotlar tabiiy kelib chiqadigan polimerlar (. kraxmal) va strukturaviy xilma-xil moddalar uchun olinadi. Kingdom Plantae ga mansub organizmlar uchun modda darajasi bitta tur yoki infraturning yangi materialini, o'simlik dori va o'simlik preparatini belgilaydi. O'simlik preparatlari uchun fraksiya ma'lumotlari moddalar haqida ma'lumot darajasida va o'simlik ekstraktlari uchun qo'shimcha ma'lumotlar Belgilangan moddalar guruhi 1 ma'lumot darajasida olinadi. Qo'shimcha tushuntirish uchun Moddalar klassi: Strukturaviy jihatdan xilma-xil va o'simlik ilovasiga qarang."
* #SupplyDelivery "SupplyDelivery"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Поставка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Yetkazib berish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись о доставке поставленного товара."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Yetkazib berilgan narsalarni etkazib berish yozuvi."
* #SupplyRequest "SupplyRequest"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Запрос на поставку"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ta'minot so'rovi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись не являющегося пациентом конкретного запроса на лекарственное средство, вещество, устройство, определенные типы биологически полученных продуктов и пищевых продуктов, используемых в медицинском учреждении."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Sog'liqni saqlash sharoitida ishlatiladigan dori, modda, qurilma, biologik olingan mahsulotning ayrim turlari va oziq-ovqat mahsuloti uchun bemorga xos bo'lmagan so'rovning qaydi."
* #Task "Task"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Задача"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Vazifa"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Задача, которую необходимо выполнить."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bajarilishi kerak bo'lgan vazifa."
* #TerminologyCapabilities "TerminologyCapabilities"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Возможности терминологического сервера"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Terminologiya serveri imkoniyatlari"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Ресурс TerminologyCapabilities документирует набор возможностей (поведений) сервера терминологии FHIR, которые могут использоваться в качестве заявления о фактической функциональности сервера или заявления о требуемой или желаемой реализации сервера."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "TerminologyCapabilities resursi FHIR Terminologiya Serverining imkoniyatlari (xatti-harakati) to'plamini hujjatlashtiradi, ulardan haqiqiy server funksionalligi haqidagi bayonot yoki kerakli yoki kerakli serverni amalga oshirish bayonoti sifatida foydalanish mumkin."
* #TestPlan "TestPlan"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "План тестирования"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sinov rejasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "План проведения тестирования артефакта или спецификаций"
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Artefakt yoki spetsifikatsiyalar bo'yicha sinovni o'tkazish rejasi"
* #TestReport "TestReport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Отчёт о тестировании"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sinov hisoboti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Сводка информации, основанная на результатах выполнения TestScript."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "TestScript-ni bajarish natijalariga asoslangan ma'lumotlarning qisqacha mazmuni."
* #TestScript "TestScript"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Сценарий тестирования"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Sinov ssenariysi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Структурированный набор тестов для реализации сервера или клиента FHIR для определения соответствия спецификации FHIR."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "FHIR spetsifikatsiyasiga muvofiqligini aniqlash uchun FHIR serveriga yoki mijozning amalga oshirilishiga qarshi tuzilgan testlar to'plami."
* #Transport "Transport"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Транспортировка"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tashish"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Запись о транспортировке."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Transport qaydnomasi."
* #ValueSet "ValueSet"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Набор значений"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Qiymatlar to'plami"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Экземпляр ресурса ValueSet определяет набор кодов, взятых из одной или нескольких кодовых систем, предназначенных для использования в определенном контексте. Наборы значений связывают определения CodeSystem и их использование в кодированных элементах ."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "ValueSet resurs namunasi ma'lum bir kontekstda foydalanish uchun mo'ljallangan bir yoki bir nechta kod tizimlaridan olingan kodlar to'plamini belgilaydi. Qiymat to'plamlari CodeSystem ta'riflari va ulardan kodlangan elementlarda foydalanish o'rtasidagi bog'liqlik ."
* #VerificationResult "VerificationResult"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Результат проверки"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Tekshiruv natijasi"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Описывает требования к проверке, источник(и), статус и даты для одного или нескольких элементов."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bir yoki bir nechta elementlar uchun tekshirish talablari, manba(lar), holat va sanalarni tavsiflaydi."
* #VisionPrescription "VisionPrescription"
  * ^designation[0].language = #ru
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Рецепт на очки или линзы"
  * ^designation[+].language = #uz
  * ^designation[=].use = $hl7TermMaintInfra#preferredForLanguage "Preferred For Language"
  * ^designation[=].value = "Ko'zoynak yoki linza retsepti"
  * ^designation[+].language = #ru
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Разрешение на предоставление пациенту очков и/или контактных линз."
  * ^designation[+].language = #uz
  * ^designation[=].use = $sct#900000000000550004 "Definition"
  * ^designation[=].value = "Bemorga ko'zoynak va/yoki kontakt linzalarni taqdim etish uchun ruxsatnoma."
