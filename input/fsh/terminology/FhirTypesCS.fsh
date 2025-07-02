CodeSystem: FhirTypesCS
Id: fhir-types-cs
Title: "All FHIR Types"
Description: "One of the types defined as part of this version of FHIR with Uzbek and Russian translations."
* ^url = "https://terminology.medcore.uz/CodeSystem/fhir-types-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $fhir-types
* #Account "A financial tool for tracking value accrued for a particular purpose. In the healthcare field, used to track charges for a patient, cost centers, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Финансовый инструмент для отслеживания стоимости, накопленной для определенной цели. В сфере здравоохранения используется для отслеживания расходов на пациента, центров затрат и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muayyan maqsad uchun hisoblangan qiymatni kuzatish uchun moliyaviy vosita. Sog'liqni saqlash sohasida bemor uchun to'lovlarni, xarajatlar markazlarini va boshqalarni kuzatish uchun foydalaniladi."
* #ActivityDefinition "This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс позволяет определить некоторую деятельность, которая должна быть выполнена, независимо от конкретного пациента, врача или другого контекста выполнения."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs muayyan bemor, amaliyotchi yoki boshqa ishlash kontekstidan qat'i nazar, bajarilishi kerak bo'lgan ba'zi faoliyatni aniqlash imkonini beradi."
* #ActorDefinition "The ActorDefinition resource is used to describe an actor - a human or an application that plays a role in data exchange, and that may have obligations associated with the role the actor plays."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс ActorDefinition используется для описания субъекта — человека или приложения, которые играют роль в обмене данными и могут иметь обязательства, связанные с ролью, которую играет субъект."
  * ^designation[+].language = #uz
  * ^designation[=].value = "ActorDefinition resursi aktyorni tasvirlash uchun ishlatiladi - inson yoki ma'lumotlar almashinuvida rol o'ynaydigan va aktyor o'ynagan roli bilan bog'liq majburiyatlarga ega bo'lishi mumkin bo'lgan dastur."
* #AdministrableProductDefinition "A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лекарственное средство в готовой форме, пригодной для введения пациенту (после смешивания нескольких компонентов, растворения и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga qo'llash uchun yaroqli bo'lgan yakuniy shakldagi dorivor mahsulot (bir nechta komponentlarni har qanday aralashtirish, eritish va hokazolardan keyin)."
* #AdverseEvent "An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research participant. The unintended effects may require additional monitoring, treatment, hospitalization, or may result in death. The AdverseEvent resource also extends to potential or avoided events that could have had such effects. There are two major domains where the AdverseEvent resource is expected to be used. One is in clinical care reported adverse events and the other is in reporting adverse events in clinical research trial management. Adverse events can be reported by healthcare providers, patients, caregivers or by medical products manufacturers. Given the differences between these two concepts, we recommend consulting the domain specific implementation guides when implementing the AdverseEvent Resource. The implementation guides include specific extensions, value sets and constraints."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Событие (т. е. любое изменение текущего состояния пациента), которое может быть связано с непреднамеренными эффектами для пациента или участника исследования. Непреднамеренные эффекты могут потребовать дополнительного мониторинга, лечения, госпитализации или могут привести к смерти. Ресурс AdverseEvent также распространяется на потенциальные или предотвращенные события, которые могли бы иметь такие эффекты. Существует две основные области, в которых ожидается использование ресурса AdverseEvent. Одна из них — это неблагоприятные события, зарегистрированные в клинической практике, а другая — это сообщение о неблагоприятных событиях в управлении клиническими исследованиями. О неблагоприятных событиях могут сообщать поставщики медицинских услуг, пациенты, лица, осуществляющие уход, или производители медицинских изделий. Учитывая различия между этими двумя концепциями, мы рекомендуем ознакомиться с руководствами по внедрению для конкретных областей при внедрении ресурса AdverseEvent. Руководства по внедрению включают в себя определенные расширения, наборы значений и ограничения."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga yoki tadqiqot ishtirokchisiga kutilmagan ta'sirlar bilan bog'liq bo'lishi mumkin bo'lgan hodisa (ya'ni bemorning hozirgi holatidagi har qanday o'zgarish). Kutilmagan ta'sirlar qo'shimcha monitoring, davolanish, kasalxonaga yotqizishni talab qilishi yoki o'limga olib kelishi mumkin. Salbiy hodisa resursi, shuningdek, bunday ta'sir ko'rsatishi mumkin bo'lgan potentsial yoki oldini olish mumkin bo'lgan hodisalarga ham taalluqlidir. AdverseEvent resursidan foydalanish kutilayotgan ikkita asosiy domen mavjud. Ulardan biri nojo'ya hodisalar haqida xabar berilgan klinik yordam, ikkinchisi esa klinik tadqiqot sinovlarini boshqarishda noxush hodisalar haqida xabar berish. Salbiy hodisalar haqida tibbiy yordam ko'rsatuvchi provayderlar, bemorlar, parvarish qiluvchilar yoki tibbiy mahsulotlar ishlab chiqaruvchilari xabar berishi mumkin. Ushbu ikki tushuncha o'rtasidagi farqni hisobga olgan holda, AdverseEvent Resursni amalga oshirishda domenga xos dastur qo'llanmalariga murojaat qilishni tavsiya etamiz. Amalga oshirish qo'llanmalari maxsus kengaytmalarni, qiymatlar to'plamini va cheklovlarni o'z ichiga oladi."
* #AllergyIntolerance "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Риск возникновения вредной или нежелательной физиологической реакции, которая является уникальной для каждого человека и связана с воздействием вещества."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Zararli yoki kiruvchi, fiziologik reaktsiya xavfi, bu faqat individualdir va moddaga ta'sir qilish bilan bog'liq."
* #Appointment "A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бронирование медицинского мероприятия среди пациентов, врачей, связанных лиц и/или устройств на определенную дату/время. Это может привести к одному или нескольким Encounter(s)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor(lar), amaliyotchi(lar), tegishli shaxs(lar) va/yoki qurilma(lar) oʻrtasida maʼlum bir sana/vaqt uchun sogʻliqni saqlash tadbirini bron qilish. Bu bir yoki bir nechta Uchrashuv(lar)ga olib kelishi mumkin."
* #AppointmentResponse "A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ответ на запрос о приеме пациента и/или врача(-ов), например, подтверждение или отклонение."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlash yoki rad etish kabi bemor va/yoki amaliyotchi(lar)ni tayinlash soʻroviga javob."
* #ArtifactAssessment "This Resource provides one or more comments, classifiers or ratings about a Resource and supports attribution and rights management metadata for the added content."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс предоставляет один или несколько комментариев, классификаторов или рейтингов о ресурсе и поддерживает метаданные атрибуции и управления правами для добавленного контента."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu Resurs Resurs haqida bir yoki bir nechta sharhlar, tasniflagichlar yoki reytinglarni taqdim etadi va qo'shilgan kontent uchun atribut va huquqlarni boshqarish metama'lumotlarini qo'llab-quvvatlaydi."
* #AuditEvent "A record of an event relevant for purposes such as operations, privacy, security, maintenance, and performance analysis."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись события, имеющая значение для таких целей, как эксплуатация, конфиденциальность, безопасность, техническое обслуживание и анализ производительности."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Operatsiyalar, maxfiylik, xavfsizlik, texnik xizmat ko'rsatish va samaradorlikni tahlil qilish kabi maqsadlarga tegishli voqea yozuvi."
* #Basic "Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing resource, and custom resources not appropriate for inclusion in the FHIR specification."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Базовый вариант используется для обработки концепций, еще не определенных в FHIR, ресурсов, содержащих только повествование и не соответствующих существующему ресурсу, а также пользовательских ресурсов, не подлежащих включению в спецификацию FHIR."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Basic FHIRda hali aniqlanmagan tushunchalarni, mavjud resursga mos kelmaydigan faqat hikoyaviy resurslarni va FHIR spetsifikatsiyasiga kiritish uchun mos bo‘lmagan maxsus resurslarni boshqarish uchun ishlatiladi."
* #Binary "A resource that represents the data of a single raw artifact as digital content accessible in its native format. A Binary resource can contain any content, whether text, image, pdf, zip archive, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс, представляющий данные одного необработанного артефакта в виде цифрового контента, доступного в его собственном формате. Двоичный ресурс может содержать любой контент, будь то текст, изображение, pdf, zip-архив и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bitta xom artefakt maʼlumotlarini oʻzining mahalliy formatida foydalanish mumkin boʻlgan raqamli kontent sifatida aks ettiruvchi resurs. Ikkilik resurs matn, rasm, pdf, zip arxivi va boshqalarni o'z ichiga olishi mumkin."
* #BiologicallyDerivedProduct "A biological material originating from a biological entity intended to be transplanted or infused into another (possibly the same) biological entity."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биологический материал, полученный из биологического объекта, предназначенный для трансплантации или вливания в другой (возможно, тот же самый) биологический объект."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Transplantatsiya qilish yoki boshqa (ehtimol bir xil) biologik ob'ektga quyish uchun mo'ljallangan biologik mavjudotdan olingan biologik material."
* #BiologicallyDerivedProductDispense "A record of dispensation of a biologically derived product."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись о выдаче биологически полученного продукта."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Biologik olingan mahsulotni tarqatish yozuvi."
* #BodyStructure "Record details about an anatomical structure. This resource may be used when a coded concept does not provide the necessary detail needed for the use case."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запишите детали анатомической структуры. Этот ресурс может использоваться, когда закодированная концепция не обеспечивает необходимых деталей, необходимых для варианта использования."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Anatomik tuzilish haqida ma'lumotlarni yozib oling. Kodlangan kontseptsiya foydalanish holati uchun zarur bo'lgan tafsilotlarni ta'minlamasa, ushbu manbadan foydalanish mumkin."
* #Bundle "A container for a collection of resources."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контейнер для сбора ресурсов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Resurslar to'plami uchun konteyner."
* #CapabilityStatement "A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server or Client for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "В заявлении о возможностях документируется набор возможностей (поведений) сервера или клиента FHIR для конкретной версии FHIR, которые могут использоваться в качестве заявления о фактической функциональности сервера или заявления о требуемой или желаемой реализации сервера."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Imkoniyatlar bayonnomasi FHIR serveri yoki mijozining FHIR ning ma'lum bir versiyasi uchun qobiliyatlari (xatti-harakatlari) to'plamini hujjatlashtiradi, ular haqiqiy server funksionalligi yoki serverning talab qilingan yoki istalgan amalga oshirilishi bayoni sifatida ishlatilishi mumkin."
* #CarePlan "Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает намерение одного или нескольких специалистов оказывать медицинскую помощь конкретному пациенту, группе или сообществу в течение определенного периода времени, возможно, ограничиваясь лечением определенного состояния или набора состояний."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bir yoki bir nechta amaliyotchilar ma'lum bir bemorga, guruhga yoki jamoaga ma'lum bir holat yoki shartlar to'plamiga g'amxo'rlik qilish bilan cheklangan vaqt davomida qanday yordam ko'rsatish niyatini tasvirlaydi."
* #CareTeam "The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care."
  * ^designation[0].language = #ru
  * ^designation[=].value = "В команду по оказанию помощи входят все люди и организации, которые планируют участвовать в координации и предоставлении помощи."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xizmat guruhiga yordamni muvofiqlashtirish va yetkazib berishda ishtirok etishni rejalashtirgan barcha odamlar va tashkilotlar kiradi."
* #ChargeItem "The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс ChargeItem описывает предоставление продуктов поставщика медицинских услуг определенному пациенту, поэтому ссылается не только на продукт, но и содержит дополнительные сведения о предоставлении, такие как дата, время, суммы и участвующие организации и лица. Основное использование ChargeItem заключается в обеспечении процесса выставления счетов и внутреннего распределения затрат."
  * ^designation[+].language = #uz
  * ^designation[=].value = "ChargeItem resursi ma'lum bir bemor uchun tibbiy xizmat ko'rsatuvchi mahsulot bilan ta'minlashni tavsiflaydi, shuning uchun nafaqat mahsulotga ishora qiladi, balki qo'shimcha sana, vaqt, miqdor va ishtirokchi tashkilotlar va shaxslar kabi ta'minot tafsilotlarini ham o'z ichiga oladi. ChargeItem-dan asosiy foydalanish hisob-kitob jarayonini va ichki xarajatlarni taqsimlashni yoqishdir."
* #ChargeItemDefinition "The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс ChargeItemDefinition предоставляет свойства, которые применяются к (биллинговым) кодам, необходимым для расчета затрат и цен. Свойства могут значительно различаться в зависимости от типа и области, поэтому этот ресурс дает только грубую структуру и требует профилирования для каждого типа системы биллинговых кодов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "ChargeItemDefinition resursi xarajatlar va narxlarni hisoblash uchun zarur bo'lgan (to'lov) kodlariga tegishli xususiyatlarni taqdim etadi. Xususiyatlar turi va sohasiga qarab sezilarli darajada farq qilishi mumkin, shuning uchun bu resurs faqat taxminiy tuzilmani beradi va hisob-kitob kodlari tizimining har bir turi uchun profillashni talab qiladi."
* #Citation "The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс цитирования позволяет ссылаться на любой артефакт знаний для целей идентификации и атрибуции. Ресурс цитирования поддерживает существующие структуры ссылок и развивающиеся практики публикации, такие как управление версиями, выражение сложных ролей соавторства и ссылки на вычисляемые ресурсы."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Iqtibos resursi identifikatsiya va atributlashtirish maqsadida har qanday bilim artefaktiga havola qilish imkonini beradi. Iqtibos resursi mavjud ma'lumot tuzilmalarini qo'llab-quvvatlaydi va versiya yaratish, murakkab hissa qo'shuvchi rollarni ifodalash va hisoblanuvchi resurslarga havola qilish kabi nashr amaliyotlarini ishlab chiqadi."
* #Claim "A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поставщик услуг составляет список профессиональных услуг и продуктов, которые были предоставлены или должны быть предоставлены пациенту, и направляет его страховщику для возмещения расходов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Provayder bemorga ko'rsatilgan yoki taqdim etilishi kerak bo'lgan professional xizmatlar va mahsulotlarning ro'yxatini beradi, bu esa sug'urtalovchiga to'lovni qoplash uchun yuboriladi."
* #ClaimResponse "This resource provides the adjudication details from the processing of a Claim resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс содержит подробную информацию о судебном решении, вынесенном в ходе обработки претензии."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bu resurs daʼvo resursini qayta ishlash natijasidagi qaror tafsilotlarini taqdim etadi."
* #ClinicalImpression "A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter, but this varies greatly depending on the clinical workflow. This resource is called \"ClinicalImpression\" rather than \"ClinicalAssessment\" to avoid confusion with the recording of assessment tools such as Apgar score."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись клинической оценки, выполненной для определения того, какие проблемы могут повлиять на пациента, и перед планированием лечения или стратегий управления, которые лучше всего подходят для управления состоянием пациента. Оценки часто проводятся 1:1 с клинической консультацией / встречей, но это сильно зависит от клинического рабочего процесса. Этот ресурс называется «ClinicalImpression», а не «ClinicalAssessment», чтобы избежать путаницы с записью инструментов оценки, таких как оценка по шкале Апгар."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga qanday muammolar (muammolar) ta'sir qilishi mumkinligini aniqlash uchun va bemorning ahvolini boshqarish uchun eng yaxshi muolajalar yoki boshqaruv strategiyalarini rejalashtirishdan oldin o'tkazilgan klinik baholash yozuvi. Klinik konsultatsiya/uchrashuv bilan baholashlar ko'pincha 1:1 ni tashkil qiladi, ammo bu klinik ish jarayoniga qarab katta farq qiladi. Apgar balli kabi baholash vositalarini yozib olish bilan chalkashmaslik uchun ushbu resurs \"Klinik baholash\" emas, balki \"Klinik taassurot\" deb nomlanadi."
* #ClinicalUseDefinition "A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отдельная проблема — показание, противопоказание, взаимодействие или нежелательный эффект лекарственного средства, препарата, устройства или процедуры."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yagona masala - dorivor mahsulot, dori, qurilma yoki protsedura uchun ko'rsatma, kontrendikatsiya, o'zaro ta'sir yoki nomaqbul ta'sir."
* #CodeSystem "The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс CodeSystem используется для объявления существования и описания системы кодирования или дополнения к системе кодирования и ее основных свойств, а также для опционального определения части или всего ее содержимого."
  * ^designation[+].language = #uz
  * ^designation[=].value = "CodeSystem resursi kod tizimi yoki kod tizimining qo'shimchasi va uning asosiy xususiyatlarini e'lon qilish va tavsiflash va ixtiyoriy ravishda uning bir qismini yoki barcha mazmunini aniqlash uchun ishlatiladi."
* #Communication "A clinical or business level record of information being transmitted or shared; e.g. an alert that was sent to a responsible provider, a public health agency communication to a provider/reporter in response to a case report for a reportable condition."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клиническая или деловая запись информации, которая передается или распространяется; например, оповещение, отправленное ответственному поставщику, сообщение органа здравоохранения поставщику/отчетчику в ответ на отчет о случае заболевания, подлежащего отчетности."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uzatilayotgan yoki almashilayotgan ma'lumotlarning klinik yoki biznes darajasidagi yozuvi; masalan, mas'ul provayderga yuborilgan ogohlantirish, sog'liqni saqlash agentligi provayderga/muxbirga xabar qilinishi mumkin bo'lgan holat bo'yicha ish hisobotiga javoban."
* #CommunicationRequest "A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на передачу информации; например, система CDS предлагает отправить оповещение ответственному поставщику услуг, система CDS предлагает уведомить орган общественного здравоохранения о подлежащем отчетности состоянии."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Axborotni uzatish uchun ariza; Masalan, CDS tizimi ogohlantirishni mas'ul provayderga yuborishni taklif qiladi, CDS tizimi sog'liqni saqlash agentligini xabar qilinadigan holat haqida xabardor qilishni taklif qiladi."
* #CompartmentDefinition "A compartment definition that defines how resources are accessed on a server."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение отсека, определяющее, как осуществляется доступ к ресурсам на сервере."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Serverda resurslarga qanday kirishni belgilaydigan bo'linma ta'rifi."
* #Composition "A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор информации, связанной со здравоохранением, собранный в единый логический пакет, который обеспечивает единое связное утверждение смысла, устанавливает свой собственный контекст и имеет клиническую аттестацию относительно того, кто делает утверждение. Композиция определяет структуру и повествовательное содержание, необходимые для документа. Однако сама по себе Композиция не является документом. Скорее, Композиция должна быть первой записью в Bundle, где Bundle.type=document, и любые другие ресурсы, на которые ссылается Композиция, должны быть включены в качестве последующих записей в Bundle (например, Patient, Practitioner, Encounter и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yagona mantiqiy to'plamga yig'ilgan sog'liqni saqlashga oid ma'lumotlar to'plami, bu ma'noning yagona izchil bayonini ta'minlaydi, o'z kontekstini o'rnatadi va bayonotni kim tomonidan aytilganligi haqida klinik sertifikatga ega. Kompozitsiya hujjat uchun zarur bo'lgan tuzilma va hikoya mazmunini belgilaydi. Biroq, kompozitsiyaning o'zi hujjatni tashkil etmaydi. Aksincha, Tarkibi Bundle.type=hujjat va Kompozisiyadan havola qilingan boshqa manbalar Toʻplamning keyingi yozuvlari sifatida kiritilishi kerak boʻlgan Toʻplamdagi birinchi yozuv boʻlishi kerak (masalan, Bemor, Amaliyotchi, Uchrashuv va h.k.)."
* #ConceptMap "A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение отношений одного набора концепций к одной или нескольким другим концепциям — либо концепциям в системах кодирования, либо элементам данных/концепциям элементов данных, либо классам в моделях классов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bir tushunchalar to'plamidan bir yoki bir nechta boshqa tushunchalarga o'zaro munosabatlar bayoni - kod tizimlaridagi tushunchalar yoki ma'lumotlar elementi/ma'lumotlar elementi tushunchalari yoki sinf modellaridagi sinflar."
* #Condition "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клиническое состояние, проблема, диагноз или другое событие, ситуация, вопрос или клиническая концепция, которые достигли уровня беспокойства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xavotir darajasiga ko'tarilgan klinik holat, muammo, tashxis yoki boshqa hodisa, vaziyat, muammo yoki klinik tushuncha."
* #ConditionDefinition "A definition of a condition and information relevant to managing it."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение состояния и информация, касающаяся его управления."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaziyatning ta'rifi va uni boshqarish uchun tegishli ma'lumotlar."
* #Consent "A record of a healthcare consumer’s choices or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись выбора потребителя медицинских услуг или выбора, сделанного от его имени третьей стороной, которая разрешает или запрещает идентифицированному получателю (получателям) или роли (ролям) получателя выполнять одно или несколько действий в рамках заданного политического контекста для определенных целей и периодов времени."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Belgilangan qabul qiluvchi(lar) yoki oluvchi rol(lar)iga ma’lum bir siyosat kontekstida, ma’lum maqsadlar va vaqt oralig‘ida bir yoki bir nechta amallarni bajarishga ruxsat beruvchi yoki rad etadigan, sog‘liqni saqlash iste’molchisining uchinchi shaxs tomonidan o‘z nomidan qilgan tanlovlari yoki tanlovlari qaydi."
* #Contract "Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Юридически осуществимая, официально зафиксированная односторонняя или двусторонняя директива, т. е. политика или соглашение."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qonuniy ravishda kuchga kiradigan, rasmiy ravishda qayd etilgan bir tomonlama yoki ikki tomonlama ko'rsatma, ya'ni siyosat yoki kelishuv."
* #Coverage "Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Финансовый инструмент, который может быть использован для возмещения или оплаты медицинских продуктов и услуг. Включает как страховку, так и самооплату."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sog'liqni saqlash mahsulotlari va xizmatlarini qoplash yoki to'lash uchun ishlatilishi mumkin bo'lgan moliyaviy vosita. Ham sug'urta, ham o'z-o'zidan to'lovni o'z ichiga oladi."
* #CoverageEligibilityRequest "The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос CoverageEligibilityRequest предоставляет страховщику информацию о пациенте и страховом покрытии, чтобы тот мог ответить в форме ответа CoverageEligibilityResponse с информацией о том, является ли заявленное покрытие действительным и вступило ли оно в силу, а также, при желании, предоставить данные о страховании полиса."
  * ^designation[+].language = #uz
  * ^designation[=].value = "CoverageEligibilityRequest bemor va sug'urta qoplamasi to'g'risidagi ma'lumotni sug'urtalovchiga, ular javob berishlari uchun, \"Qoplamaga muvofiqlik\" javobi ko'rinishida, ko'rsatilgan sug'urta to'g'ri va amalda ekanligi haqidagi ma'lumotni taqdim etadi va ixtiyoriy ravishda sug'urta ma'lumotlarini taqdim etadi."
* #CoverageEligibilityResponse "This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс предоставляет сведения о праве на участие и плане, полученные в результате обработки ресурса CoverageEligibilityRequest."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs CoverageEligibilityRequest resursini qayta ishlashdan olingan muvofiqlik va reja tafsilotlarini taqdim etadi."
* #DetectedIssue "Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, gaps in care, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Указывает на фактическую или потенциальную клиническую проблему, связанную с одним или несколькими активными или предлагаемыми клиническими действиями для пациента, или между ними; например, взаимодействие лекарственных препаратов, неэффективная частота лечения, конфликт между процедурой и состоянием, пробелы в уходе и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor uchun bir yoki bir nechta faol yoki tavsiya etilgan klinik harakatlar bilan yoki ular orasidagi haqiqiy yoki potentsial klinik muammoni ko'rsatadi; Masalan, dori vositalarining o'zaro ta'siri, davolashning samarasiz chastotasi, protsedura-shart ziddiyatlari, parvarishdagi bo'shliqlar va boshqalar."
* #Device "This resource describes the properties (regulated, has real time clock, etc.), adminstrative (manufacturer name, model number, serial number, firmware, etc.), and type (knee replacement, blood pressure cuff, MRI, etc.) of a physical unit (these values do not change much within a given module, for example the serail number, manufacturer name, and model number). An actual unit may consist of several modules in a distinct hierarchy and these are represented by multiple Device resources and bound through the 'parent' element."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс описывает свойства (регулируемый, имеет часы реального времени и т. д.), административные (название производителя, номер модели, серийный номер, прошивка и т. д.) и тип (заменитель колена, манжета для измерения артериального давления, МРТ и т. д.) физического блока (эти значения не сильно меняются в пределах данного модуля, например, серийный номер, название производителя и номер модели). Фактический блок может состоять из нескольких модулей в отдельной иерархии, и они представлены несколькими ресурсами Device и связаны через элемент «родитель»."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs jismoniy blokning xususiyatlarini (tartibga solingan, real vaqt rejimiga ega va hokazo), ma'muriy (ishlab chiqaruvchi nomi, model raqami, seriya raqami, proshivka va boshqalar) va turini (tizzalarni almashtirish, qon bosimi manjeti, MRI va boshqalar) tavsiflaydi (bu qiymatlar berilgan modulda unchalik o'zgarmaydi, masalan, seriya raqami, ishlab chiqaruvchining nomi, model raqami). Haqiqiy birlik alohida ierarxiyadagi bir nechta modullardan iborat bo'lishi mumkin va ular bir nechta Qurilma resurslari bilan ifodalanadi va \"ota\" element orqali bog'lanadi."
* #DeviceAssociation "A record of association of a device."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись ассоциации устройства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilmaning birlashma yozuvi."
* #DeviceDefinition "This is a specialized resource that defines the characteristics and capabilities of a device."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Это специализированный ресурс, определяющий характеристики и возможности устройства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bu qurilmaning xarakteristikalari va imkoniyatlarini belgilaydigan maxsus resurs."
* #DeviceDispense "Indicates that a device is to be or has been dispensed for a named person/patient. This includes a description of the product (supply) provided and the instructions for using the device."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Указывает, что устройство должно быть или было выдано указанному лицу/пациенту. Это включает описание предоставленного продукта (поставки) и инструкции по использованию устройства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilma nomi ko'rsatilgan shaxs/bemor uchun berilishi kerakligini yoki berilganligini ko'rsatadi. Bunga taqdim etilgan mahsulot (ta'minot) tavsifi va qurilmadan foydalanish bo'yicha ko'rsatmalar kiradi."
* #DeviceMetric "Describes a measurement, calculation or setting capability of a device. The DeviceMetric resource is derived from the ISO/IEEE 11073-10201 Domain Information Model standard, but is more widely applicable."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает возможность измерения, вычисления или настройки устройства. Ресурс DeviceMetric получен из стандарта Domain Information Model ISO/IEEE 11073-10201, но имеет более широкое применение."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qurilmaning o'lchash, hisoblash yoki sozlash qobiliyatini tavsiflaydi. DeviceMetric resursi ISO/IEEE 11073-10201 domen ma'lumotlari modeli standartidan olingan, ammo kengroq qo'llanilishi mumkin."
* #DeviceRequest "Represents a request a device to be provided to a specific patient. The device may be an implantable device to be subsequently implanted, or an external assistive device, such as a walker, to be delivered and subsequently be used."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Представляет собой запрос на предоставление устройства конкретному пациенту. Устройство может быть имплантируемым устройством, которое впоследствии будет имплантировано, или внешним вспомогательным устройством, например, ходунками, которое будет доставлено и впоследствии использовано."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muayyan bemorga qurilma taqdim etilishi haqidagi so'rovni ifodalaydi. Qurilma keyinchalik implantatsiya qilinadigan implantatsiya qilinadigan qurilma yoki etkazib beriladigan va keyinchalik ishlatilishi kerak bo'lgan tashqi yordamchi qurilma bo'lishi mumkin."
* #DeviceUsage "A record of a device being used by a patient where the record is the result of a report from the patient or a clinician."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись об использовании устройства пациентом, которая является результатом отчета пациента или врача."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor tomonidan ishlatiladigan qurilmaning yozuvi, bunda yozuv bemor yoki klinisyenning hisoboti natijasidir."
* #DiagnosticReport "The findings and interpretation of diagnostic tests performed on patients, groups of patients, products, substances, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports. The report also includes non-clinical context such as batch analysis and stability reporting of products and substances."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Результаты и интерпретация диагностических тестов, проведенных на пациентах, группах пациентов, продуктах, веществах, устройствах и местах и/или образцах, полученных из них. Отчет включает клинический контекст, такой как запрос информации о поставщике, и некоторую смесь атомарных результатов, изображений, текстовых и кодированных интерпретаций и форматированного представления диагностических отчетов. Отчет также включает неклинический контекст, такой как анализ партии и отчет о стабильности продуктов и веществ."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorlar, bemorlar guruhlari, mahsulotlar, moddalar, qurilmalar va joylashuvlar va/yoki ulardan olingan namunalar bo'yicha o'tkazilgan diagnostik testlarning topilmalari va talqini. Hisobot provayder ma'lumotlarini so'rash kabi klinik kontekstni, shuningdek, atom natijalari, tasvirlar, matn va kodli talqinlar va diagnostika hisobotlarining formatlangan ko'rinishini o'z ichiga oladi. Hisobot, shuningdek, mahsulot va moddalarning seriyali tahlili va barqarorlik hisoboti kabi klinik bo'lmagan kontekstni o'z ichiga oladi."
* #DocumentReference "A reference to a document of any kind for any purpose. While the term “document” implies a more narrow focus, for this resource this “document” encompasses any serialized object with a mime-type, it includes formal patient-centric documents (CDA), clinical notes, scanned paper, non-patient specific documents like policy text, as well as a photo, video, or audio recording acquired or used in healthcare. The DocumentReference resource provides metadata about the document so that the document can be discovered and managed. The actual content may be inline base64 encoded data or provided by direct reference."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ссылка на документ любого типа для любых целей. Хотя термин «документ» подразумевает более узкую направленность, для этого ресурса этот «документ» охватывает любой сериализованный объект с типом mime, он включает в себя формальные документы, ориентированные на пациента (CDA), клинические заметки, отсканированные документы, не относящиеся к пациенту документы, такие как текст политики, а также фото, видео или аудиозаписи, приобретенные или используемые в здравоохранении. Ресурс DocumentReference предоставляет метаданные о документе, чтобы документ можно было обнаружить и управлять им. Фактическое содержимое может быть встроенными данными в кодировке base64 или предоставлено прямой ссылкой."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Har qanday maqsad uchun har qanday turdagi hujjatga havola. “Hujjat” atamasi torroq fokusni nazarda tutsa-da, ushbu resurs uchun ushbu “hujjat” mim tipidagi har qanday ketma-ketlashtirilgan ob'ektni o'z ichiga oladi, u bemorga yo'naltirilgan rasmiy hujjatlarni (CDA), klinik eslatmalarni, skanerlangan qog'ozni, siyosat matni kabi bemorga tegishli bo'lmagan hujjatlarni, shuningdek sog'liqni saqlashda olingan yoki qo'llaniladigan fotosurat, video yoki audio yozuvni o'z ichiga oladi. DocumentReference resursi hujjatni topish va boshqarish uchun hujjat haqidagi metama'lumotlarni taqdim etadi. Haqiqiy tarkib inline base64 kodlangan ma'lumotlar bo'lishi yoki to'g'ridan-to'g'ri havola orqali taqdim etilishi mumkin."
* #Encounter "An interaction between healthcare provider(s), and/or patient(s) for the purpose of providing healthcare service(s) or assessing the health status of patient(s)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Взаимодействие между поставщиками медицинских услуг и/или пациентами с целью предоставления медицинских услуг или оценки состояния здоровья пациентов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy xizmat ko'rsatish (lar)ni ko'rsatish yoki bemor(lar)ning sog'lig'ini baholash maqsadida tibbiy xizmat ko'rsatuvchi provayder(lar) va/yoki bemor(lar) o'rtasidagi o'zaro aloqa."
* #EncounterHistory "A record of significant events/milestones key data throughout the history of an Encounter"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись важных событий/важных этапов, ключевые данные за всю историю встречи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uchrashuv tarixidagi muhim voqealar/marslar haqidagi asosiy ma'lumotlarning rekordi"
* #Endpoint "The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b, a REST endpoint for another FHIR server, or a s/Mime email address. This may include any security context information."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Технические детали конечной точки, которые могут использоваться для электронных услуг, например, для веб-служб, предоставляющих XDS.b, конечной точки REST для другого сервера FHIR или адреса электронной почты как/Mime. Это может включать любую информацию о контексте безопасности."
  * ^designation[+].language = #uz
  * ^designation[=].value = "XDS.b ni taqdim etuvchi veb-xizmatlar, boshqa FHIR serveri uchun REST so‘nggi nuqtasi yoki as/Mime elektron pochta manzili kabi elektron xizmatlar uchun ishlatilishi mumkin bo‘lgan so‘nggi nuqtaning texnik tafsilotlari. Bu har qanday xavfsizlik konteksti ma'lumotlarini o'z ichiga olishi mumkin."
* #EnrollmentRequest "This resource provides the insurance enrollment details to the insurer regarding a specified coverage."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс предоставляет страховщику данные о страховании в отношении определенного страхового покрытия."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs sug'urtalovchiga belgilangan qoplama bo'yicha sug'urta ro'yxatga olish tafsilotlarini taqdim etadi."
* #EnrollmentResponse "This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс предоставляет сведения о регистрации и плане, полученные в результате обработки ресурса EnrollmentRequest."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs EnrollmentRequest resursini qayta ishlashdan ro'yxatga olish va reja tafsilotlarini taqdim etadi."
* #EpisodeOfCare "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Связь между пациентом и организацией/поставщиком медицинских услуг, в течение которой могут происходить встречи. Управляющая организация берет на себя определенный уровень ответственности за пациента в течение этого времени."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor va tashkilot/sog'liqni saqlash provayder(lar)i o'rtasidagi aloqa, bu vaqt davomida uchrashuvlar yuz berishi mumkin. Boshqaruv tashkiloti bu vaqt davomida bemor uchun mas'uliyat darajasini o'z zimmasiga oladi."
* #EventDefinition "The EventDefinition resource provides a reusable description of when a particular event can occur."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс EventDefinition предоставляет повторно используемое описание того, когда может произойти определенное событие."
  * ^designation[+].language = #uz
  * ^designation[=].value = "EventDefinition resursi ma'lum bir hodisa sodir bo'lishi mumkin bo'lgan qayta foydalanish mumkin bo'lgan tavsifni beradi."
* #Evidence "The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс доказательств предоставляет машинно-интерпретируемое выражение концепции доказательств, включая переменные доказательств (например, популяция, воздействия/вмешательства, компараторы, результаты, измеряемые переменные, искажающие переменные), статистику и достоверность этих доказательств."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dalillar resursi dalil oʻzgaruvchilari (masalan, aholi soni, taʼsirlar/aralashuvlar, taqqoslashlar, natijalar, oʻlchangan oʻzgaruvchilar, chalkash oʻzgaruvchilar), statistika va bu dalillarning aniqligini oʻz ichiga olgan dalillar tushunchasining mashina tomonidan talqin qilinadigan ifodasini taqdim etadi."
* #EvidenceReport "The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс EvidenceReport — это специализированный контейнер для сбора ресурсов и кодируемых концепций, адаптированный для поддержки композиций ресурсов Evidence, EvidenceVariable и Citation, а также связанных концепций."
  * ^designation[+].language = #uz
  * ^designation[=].value = "EvidenceReport Resurs - bu Evidence, EvidenceVariable va Citation resurslari va tegishli tushunchalar kompozitsiyalarini qo'llab-quvvatlash uchun moslashtirilgan manbalar va kodlash mumkin bo'lgan tushunchalar to'plami uchun maxsus konteyner."
* #EvidenceVariable "The EvidenceVariable resource describes an element that knowledge (Evidence) is about."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс EvidenceVariable описывает элемент, о котором идет речь в знаниях (Evidence)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "EvidenceVariable resursi bilim (Dalil) haqida bo'lgan elementni tavsiflaydi."
* #ExampleScenario "A walkthrough of a workflow showing the interaction between systems and the instances shared, possibly including the evolution of instances over time."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пошаговое руководство по рабочему процессу, демонстрирующее взаимодействие между системами и общими экземплярами, возможно, включая эволюцию экземпляров с течением времени."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tizimlar va baham ko'rilgan misollar o'rtasidagi o'zaro ta'sirni, ehtimol vaqt o'tishi bilan misollarning evolyutsiyasini ko'rsatadigan ish jarayonining batafsil tavsifi."
* #ExplanationOfBenefit "This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Данный ресурс предоставляет: сведения о претензии; сведения о судебном решении по результатам обработки претензии; а также, по желанию, информацию о балансе счета для информирования абонента о предоставляемых преимуществах."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs quyidagilarni ta'minlaydi: da'vo tafsilotlari; da'voni ko'rib chiqishdan olingan qaror tafsilotlari; va ixtiyoriy ravishda abonentni taqdim etilgan imtiyozlar haqida xabardor qilish uchun hisob balansi ma'lumotlari."
* #FamilyMemberHistory "Significant health conditions for a person related to the patient relevant in the context of care for the patient."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Существенные состояния здоровья человека, связанные с пациентом и имеющие значение в контексте ухода за пациентом."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor bilan bog'liq bo'lgan shaxsning muhim sog'lig'i holati, bemorga g'amxo'rlik kontekstida."
* #Flag "Prospective warnings of potential issues when providing care to the patient."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предупреждения о возможных проблемах при оказании помощи пациенту."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga yordam ko'rsatishda yuzaga kelishi mumkin bo'lgan muammolar haqida istiqbolli ogohlantirishlar."
* #FormularyItem "This resource describes a product or service that is available through a program and includes the conditions and constraints of availability. All of the information in this resource is specific to the inclusion of the item in the formulary and is not inherent to the item itself."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс описывает продукт или услугу, которые доступны через программу, и включает условия и ограничения доступности. Вся информация в этом ресурсе относится к включению элемента в формуляр и не присуща самому элементу."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs dastur orqali mavjud bo'lgan mahsulot yoki xizmatni tavsiflaydi va mavjudlik shartlari va cheklovlarini o'z ichiga oladi. Ushbu resursdagi barcha ma'lumotlar ob'ektni formulaga kiritish uchun xosdir va elementning o'ziga xos emas."
* #GenomicStudy "A set of analyses performed to analyze and generate genomic data."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор анализов, выполняемых для анализа и получения геномных данных."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Genomik ma'lumotlarni tahlil qilish va yaratish uchun amalga oshirilgan tahlillar to'plami."
* #Goal "Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает предполагаемую цель(и) ухода за пациентом, группой или организацией, например, снижение веса, восстановление повседневной активности, получение коллективного иммунитета посредством иммунизации, достижение цели по улучшению процесса и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga, guruhga yoki tashkilotga g'amxo'rlik qilish uchun mo'ljallangan maqsad(lar)ni tavsiflaydi, masalan, vazn yo'qotish, kundalik hayot faoliyatini tiklash, immunizatsiya orqali poda immunitetini olish, jarayonni yaxshilash maqsadiga erishish va boshqalar."
* #GraphDefinition "A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Формальное вычислимое определение графа ресурсов, то есть связного набора ресурсов, которые образуют граф, следуя ссылкам. Ресурс определения графа определяет набор и устанавливает правила для этого набора."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Resurslar grafigining rasmiy hisoblangan taʼrifi, yaʼni quyidagi havolalar orqali grafikni tashkil etuvchi izchil resurslar toʻplami. Grafik ta'rifi resursi to'plamni belgilaydi va to'plam haqida qoidalar yaratadi."
* #Group "Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an Organization."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Представляет собой определенную совокупность сущностей, которые могут обсуждаться или в отношении которых могут предприниматься коллективные действия, но от которых не ожидается коллективных действий, и которые не признаны официально или юридически; т. е. совокупность сущностей, которая не является Организацией."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muhokama qilinishi yoki birgalikda harakat qilishi mumkin bo'lgan, lekin birgalikda harakat qilishi kutilmaydigan va rasmiy yoki qonuniy ravishda tan olinmagan ob'ektlarning belgilangan to'plamini ifodalaydi; ya'ni Tashkilot bo'lmagan ob'ektlar to'plami."
* #GuidanceResponse "A guidance response is the formal response to a guidance request, including any output parameters returned by the evaluation, as well as the description of any proposed actions to be taken."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ответ на руководство представляет собой формальный ответ на запрос руководства, включающий любые выходные параметры, возвращенные в результате оценки, а также описание любых предлагаемых действий, которые необходимо предпринять."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'l-yo'riqli javob - bu yo'l-yo'riq so'roviga rasmiy javob, shu jumladan baholash natijasida qaytarilgan har qanday chiqish parametrlari, shuningdek, har qanday taklif qilingan harakatlar tavsifi."
* #HealthcareService "The details of a healthcare service available at a location or in a catalog. In the case where there is a hierarchy of services (for example, Lab -> Pathology -> Wound Cultures), this can be represented using a set of linked HealthcareServices."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подробная информация о медицинской услуге, доступной в определенном месте или в каталоге. В случае, если существует иерархия услуг (например, Лаборатория -> Патология -> Культуры ран), это может быть представлено с помощью набора связанных HealthcareServices."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bir joyda yoki katalogda mavjud bo'lgan sog'liqni saqlash xizmatining tafsilotlari. Agar xizmatlar ierarxiyasi mavjud bo'lsa (masalan, Laboratoriya -> Patologiya -> Yara madaniyati), bu bog'langan HealthcareServices to'plami yordamida taqdim etilishi mumkin."
* #ImagingSelection "A selection of DICOM SOP instances and/or frames within a single Study and Series. This might include additional specifics such as an image region, an Observation UID or a Segmentation Number, allowing linkage to an Observation Resource or transferring this information along with the ImagingStudy Resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выборка экземпляров DICOM SOP и/или кадров в пределах одного исследования и серии. Это может включать дополнительные характеристики, такие как область изображения, UID наблюдения или номер сегментации, что позволяет связывать ресурс наблюдения или передавать эту информацию вместе с ресурсом ImagingStudy."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bitta tadqiqot va seriya doirasidagi DICOM SOP nusxalari va/yoki ramkalar tanlovi. Bu kuzatuv resursiga ulanishga yoki ImagingStudy resursi bilan birga bu ma'lumotlarni uzatishga imkon beruvchi tasvir hududi, Kuzatuv UID yoki Segmentatsiya raqami kabi qo'shimcha xususiyatlarni o'z ichiga olishi mumkin."
* #ImagingStudy "Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Представление контента, полученного в ходе исследования DICOM-изображений. Исследование состоит из набора серий, каждая из которых включает набор экземпляров пар «услуга-объект» (экземпляры SOP — изображения или другие данные), полученных или созданных в общем контексте. Серия относится только к одной модальности (например, рентген, КТ, МРТ, ультразвук), но исследование может иметь несколько серий различных модальностей."
  * ^designation[+].language = #uz
  * ^designation[=].value = "DICOM tasvirlash tadqiqotida ishlab chiqarilgan tarkibning ifodasi. Tadqiqot umumiy kontekstda olingan yoki ishlab chiqarilgan xizmat-ob'ekt juftliklari (SOP misollari - tasvirlar yoki boshqa ma'lumotlar) to'plamini o'z ichiga olgan seriyalar to'plamini o'z ichiga oladi. Seriya faqat bitta modallikka ega (masalan, rentgen, KT, MR, ultratovush), ammo tadqiqot turli xil usullarning bir nechta seriyasiga ega bo'lishi mumkin."
* #Immunization "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает событие, связанное с введением пациенту вакцины, или запись об иммунизации, сообщенную пациентом, врачом или другой стороной."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor, klinisyen yoki boshqa tomon xabar berganidek, bemorga vaktsina qo'llanilgan voqea yoki emlash rekordini tavsiflaydi."
* #ImmunizationEvaluation "Describes a comparison of an immunization event against published recommendations to determine if the administration is \"valid\" in relation to those recommendations."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает сравнение мероприятия по иммунизации с опубликованными рекомендациями для определения того, является ли вакцинация «действительной» по отношению к этим рекомендациям."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'muriyat ushbu tavsiyalarga nisbatan \"haqiqiy\" yoki yo'qligini aniqlash uchun emlash hodisasini nashr etilgan tavsiyalar bilan taqqoslashni tavsiflaydi."
* #ImmunizationRecommendation "A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор рекомендаций (т. е. прогнозирование) для пациента на определенный момент времени в соответствии с опубликованным графиком с дополнительным обоснованием."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorning ixtiyoriy qo'llab-quvvatlovchi asosli e'lon qilingan jadvalga muvofiq o'z vaqtida tavsiyalar to'plami (ya'ni prognozlash)."
* #ImplementationGuide "A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор правил того, как решается конкретная проблема взаимодействия или стандартов — обычно с помощью ресурсов FHIR. Этот ресурс используется для объединения всех частей руководства по внедрению в логическое целое и публикации вычислимого определения всех частей."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muayyan o'zaro muvofiqlik yoki standartlar muammosi qanday hal qilinishiga oid qoidalar to'plami - odatda FHIR resurslaridan foydalanish orqali. Ushbu resurs amaldagi qo'llanmaning barcha qismlarini mantiqiy yaxlitlikka to'plash va barcha qismlarning hisoblab chiqiladigan ta'rifini nashr qilish uchun ishlatiladi."
* #Ingredient "An ingredient of a manufactured item or pharmaceutical product."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ингредиент промышленного изделия или фармацевтического продукта."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ishlab chiqarilgan mahsulot yoki farmatsevtika mahsulotining tarkibiy qismi."
* #InsurancePlan "Details of a Health Insurance product/plan provided by an organization."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подробная информация о продукте/плане медицинского страхования, предоставляемом организацией."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tashkilot tomonidan taqdim etilgan Sog'liqni saqlash sug'urtasi mahsuloti/rejasi tafsilotlari."
* #InventoryItem "functional description of an inventory item used in inventory and supply-related workflows."
  * ^designation[0].language = #ru
  * ^designation[=].value = "функциональное описание элемента инвентаря, используемого в рабочих процессах, связанных с инвентаризацией и поставками."
  * ^designation[+].language = #uz
  * ^designation[=].value = "inventarizatsiya va ta'minot bilan bog'liq ish oqimlarida ishlatiladigan inventar ob'ektining funktsional tavsifi."
* #InventoryReport "A report of inventory or stock items."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отчет об инвентаризации или остатках на складе."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Inventarizatsiya yoki zaxira buyumlari to'g'risidagi hisobot."
* #Invoice "Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Счет-фактура, содержащий собранные ChargeItems со счета с рассчитанной индивидуальной и общей ценой для целей выставления счета."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hisob-kitob qilish maqsadida hisoblangan individual va umumiy narx bilan hisobdan yig‘ilgan ChargeItemsni o‘z ichiga olgan invoys."
* #Library "The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a collection of knowledge assets."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс Library — это универсальный контейнер для определений активов знаний. Его можно использовать для описания и раскрытия существующих активов знаний, таких как библиотеки логики и описания информационных моделей, а также для описания коллекции активов знаний."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kutubxona resursi bilim aktivlari taʼriflari uchun umumiy maqsadli konteynerdir. Undan mantiqiy kutubxonalar va axborot modeli tavsiflari kabi mavjud bilim aktivlarini tavsiflash va ochish, shuningdek, bilim aktivlari to‘plamini tavsiflash uchun foydalanish mumkin."
* #Linkage "Identifies two or more records (resource instances) that refer to the same real-world \"occurrence\"."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентифицирует две или более записей (экземпляров ресурсов), которые относятся к одному и тому же реальному «событию»."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ikki yoki undan ortiq yozuvlarni (resurs misollari) aniqlaydi, ular bir xil real dunyo \"voqea\"ga ishora qiladi."
* #List "A List is a curated collection of resources, for things such as problem lists, allergy lists, facility list, organization list, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Список — это тщательно подобранная коллекция ресурсов, например, списки проблем, списки аллергий, списки учреждений, списки организаций и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Roʻyxat – muammolar roʻyxati, allergiya roʻyxati, obʼyektlar roʻyxati, tashkilotlar roʻyxati va boshqalar uchun moʻljallangan resurslar toʻplami."
* #Location "Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подробная информация и местоположение места, где предоставляются услуги, а также могут храниться, находиться, содержаться или размещаться ресурсы и участники."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xizmatlar taqdim etiladigan joy va resurslar va ishtirokchilar saqlanishi, topilishi, saqlanishi yoki joylashtirilishi mumkin bo'lgan joy uchun tafsilotlar va joylashuv ma'lumotlari."
* #ManufacturedItemDefinition "The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение и характеристики лекарственного средства, например таблетки или капсулы, содержащегося в упакованном лекарственном средстве."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qadoqlangan dorivor mahsulot tarkibidagi planshet yoki kapsula kabi dorivor mahsulotning ta'rifi va tavsifi."
* #Measure "The Measure resource provides the definition of a quality measure."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс «Мера» дает определение меры качества."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Measure resursi sifat o'lchovining ta'rifini beradi."
* #MeasureReport "The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс MeasureReport содержит результаты расчета меры и, при необходимости, ссылку на ресурсы, задействованные в этом расчете."
  * ^designation[+].language = #uz
  * ^designation[=].value = "MeasureReport resursi o'lchovni hisoblash natijalarini o'z ichiga oladi; va ixtiyoriy ravishda ushbu hisob-kitobga jalb qilingan resurslarga havola."
* #Medication "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Данный ресурс в первую очередь используется для идентификации и определения лекарственного средства, включая ингредиенты, в целях назначения, выдачи и применения лекарственного средства, а также для составления заявлений об использовании лекарственного средства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs birinchi navbatda dori vositalarini, shu jumladan ingredientlarni aniqlash va ta'riflash, dori-darmonlarni buyurish, tarqatish va yuborish, shuningdek, dori vositalaridan foydalanish to'g'risida bayonotlar berish uchun ishlatiladi."
* #MedicationAdministration "Describes the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet or it may be a long running infusion. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner. This event can also be used to record waste using a status of not-done and the appropriate statusReason."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает событие, когда пациент потребляет или иным образом получает лекарство. Это может быть простое проглатывание таблетки или длительная инфузия. Связанные ресурсы связывают это событие с авторизованным рецептом и конкретной встречей между пациентом и врачом. Это событие также можно использовать для записи отходов с использованием статуса не выполнено и соответствующего statusReason."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorning dori-darmonlarni iste'mol qilish yoki boshqa usulda qo'llash hodisasini tasvirlaydi. Bu planshetni yutish kabi oddiy bo'lishi mumkin yoki bu uzoq davom etadigan infuzion bo'lishi mumkin. Tegishli manbalar ushbu hodisani ruxsat beruvchi retsept va bemor va sog'liqni saqlash amaliyotchisi o'rtasidagi aniq uchrashuv bilan bog'laydi. Ushbu hodisa, shuningdek, bajarilmagan holati va tegishli status Sababini ishlatib, chiqindilarni yozib olish uchun ishlatilishi mumkin."
* #MedicationDispense "Indicates that a medication product is to be or has been dispensed for a named person/patient. This includes a description of the medication product (supply) provided and the instructions for administering the medication. The medication dispense is the result of a pharmacy system responding to a medication order."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Указывает, что лекарственный продукт должен быть или был выдан указанному лицу/пациенту. Это включает описание предоставленного лекарственного продукта (поставки) и инструкции по приему лекарства. Выдача лекарства является результатом ответа аптечной системы на заказ лекарства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori-darmon mahsuloti nomi ko'rsatilgan shaxs/bemor uchun berilishi kerakligini yoki tarqatilganligini ko'rsatadi. Bunga taqdim etilgan dori-darmon mahsuloti (ta'minot) tavsifi va dori-darmonlarni qo'llash bo'yicha ko'rsatmalar kiradi. Dori tarqatish dorixona tizimining dori buyurtmasiga javob berishi natijasidir."
* #MedicationKnowledge "Information about a medication that is used to support knowledge."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Информация о лекарстве, используемом для поддержки знаний."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bilimlarni qo'llab-quvvatlash uchun ishlatiladigan dori haqida ma'lumot."
* #MedicationRequest "An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called \"MedicationRequest\" rather than \"MedicationPrescription\" or \"MedicationOrder\" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заказ или запрос на поставку лекарства и инструкции по его назначению пациенту. Ресурс называется «MedicationRequest», а не «MedicationPrescription» или «MedicationOrder», чтобы обобщить использование в стационарных и амбулаторных условиях, включая планы лечения и т. д., а также согласовать с шаблонами рабочего процесса."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori-darmonlarni etkazib berish uchun buyurtma yoki so'rov va bemorga dori-darmonlarni yuborish bo'yicha ko'rsatmalar. Resurs statsionar va ambulatoriya sharoitida foydalanishni umumlashtirish, shu jumladan parvarish rejalari va hokazolar va ish jarayoni naqshlari bilan uyg'unlashtirish uchun \"MedicationRequest\" yoki \"MedicationOrder\" emas, balki \"MedicationRequest\" deb nomlanadi."
* #MedicationStatement "A record of a medication that is being consumed by a patient. A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future. The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician. A common scenario where this information is captured is during the history taking process during a patient visit or stay. The medication information may come from sources such as the patient's memory, from a prescription bottle, or from a list of medications the patient, clinician or other party maintains."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись о лекарстве, которое принимает пациент. MedicationStatement может указывать на то, что пациент может принимать лекарство в настоящее время или принимал лекарство в прошлом или будет принимать лекарство в будущем. Источником этой информации может быть пациент, близкий ему человек (например, член семьи или супруг) или врач. Обычный сценарий, когда эта информация собирается, — это процесс сбора анамнеза во время визита или пребывания пациента. Информация о лекарстве может поступать из таких источников, как память пациента, флакон с рецептом или список лекарств, которые ведет пациент, врач или другая сторона."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor tomonidan iste'mol qilinadigan dori yozuvi. Dori-darmon bayonoti bemor hozir dori-darmonlarni qabul qilishini yoki o'tmishda dori-darmonlarni qabul qilganligini yoki kelajakda dori-darmonlarni qabul qilishini ko'rsatishi mumkin. Ushbu ma'lumot manbai bemor, boshqa muhim (masalan, oila a'zosi yoki turmush o'rtog'i) yoki klinisyen bo'lishi mumkin. Ushbu ma'lumotni olishning umumiy stsenariysi bemorga tashrif buyurish yoki qolish paytida tarixni olish jarayonidir. Dori haqidagi ma'lumotlar bemor xotirasi kabi manbalardan, retsept bo'yicha ko'rsatilgan shishadan yoki bemor, klinisyen yoki boshqa tomon yuritadigan dori-darmonlar ro'yxatidan olinishi mumkin."
* #MedicinalProductDefinition "Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use, drug catalogs, to support prescribing, adverse events management etc.)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подробное определение лекарственного средства, как правило, для использования, отличного от непосредственного ухода за пациентами (например, нормативное использование, каталоги лекарственных средств, для обоснования назначения лекарств, управления нежелательными явлениями и т. д.)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dorivor mahsulotning batafsil ta'rifi, odatda bemorni bevosita parvarish qilishdan boshqa maqsadlarda foydalanish uchun (masalan, tartibga soluvchi foydalanish, dori-darmonlar kataloglari, retseptlashni qo'llab-quvvatlash, nojo'ya ta'sirlarni boshqarish va h.k.)."
* #MessageDefinition "Defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определяет характеристики сообщения, которые могут передаваться между системами, включая тип события, инициирующего сообщение, передаваемое содержимое и разрешенные ответы (если таковые имеются)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tizimlar oʻrtasida boʻlishish mumkin boʻlgan xabarning xususiyatlarini, shu jumladan xabarni boshlaydigan hodisa turini, uzatiladigan tarkibni va agar mavjud boʻlsa, qanday javob(lar)ga ruxsat berilishini belgilaydi."
* #MessageHeader "The header for a message exchange that is either requesting or responding to an action. The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заголовок для обмена сообщениями, который либо запрашивает, либо отвечает на действие. Ссылки, которые являются предметом действия, а также другая информация, связанная с действием, обычно передаются в пакете, в котором экземпляр ресурса MessageHeader является первым ресурсом в пакете."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Harakatni so'ragan yoki unga javob beradigan xabar almashinuvi sarlavhasi. Amal mavzusi boʻlgan havola(lar) hamda harakatga tegishli boshqa maʼlumotlar odatda MessageHeader resurs namunasi toʻplamdagi birinchi resurs boʻlgan toʻplamda uzatiladi."
* #MolecularSequence "Representation of a molecular sequence."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Представление молекулярной последовательности."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Molekulyar ketma-ketlikning tasviri."
* #NamingSystem "A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc. Represents a \"System\" used within the Identifier and Coding data types."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Курируемое пространство имен, которое выдает уникальные символы в пределах этого пространства имен для идентификации концепций, людей, устройств и т. д. Представляет собой «Систему», используемую в типах данных «Идентификатор» и «Кодирование»."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kontseptsiyalarni, odamlarni, qurilmalarni va hokazolarni identifikatsiyalash uchun ushbu nom maydoni ichida noyob belgilar chiqaradigan tanlangan nomlar maydoni. Identifikator va kodlash ma'lumotlar turlarida ishlatiladigan \"Tizim\" ni ifodalaydi."
* #NutritionIntake "A record of food or fluid that is being consumed by a patient. A NutritionIntake may indicate that the patient may be consuming the food or fluid now or has consumed the food or fluid in the past. The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician. A common scenario where this information is captured is during the history taking process during a patient visit or stay or through an app that tracks food or fluids consumed. The consumption information may come from sources such as the patient's memory, from a nutrition label, or from a clinician documenting observed intake."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись о еде или жидкости, потребляемой пациентом. NutritionIntake может указывать на то, что пациент может потреблять пищу или жидкость в настоящее время или потреблял пищу или жидкость в прошлом. Источником этой информации может быть пациент, близкий ему человек (например, член семьи или супруг) или врач. Обычный сценарий, когда эта информация собирается, — это процесс сбора анамнеза во время визита или пребывания пациента или через приложение, которое отслеживает потребляемую пищу или жидкости. Информация о потреблении может поступать из таких источников, как память пациента, этикетка с питанием или от врача, документирующего наблюдаемое потребление."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor tomonidan iste'mol qilinadigan oziq-ovqat yoki suyuqlik yozuvi. NutritionIntake bemor hozir oziq-ovqat yoki suyuqlik iste'mol qilishi yoki o'tmishda oziq-ovqat yoki suyuqlik iste'mol qilganligini ko'rsatishi mumkin. Ushbu ma'lumot manbai bemor, boshqa muhim (masalan, oila a'zosi yoki turmush o'rtog'i) yoki klinisyen bo'lishi mumkin. Ushbu ma'lumot olinadigan umumiy stsenariy bemor tashrifi yoki qolish paytida yoki iste'mol qilingan oziq-ovqat yoki suyuqliklarni kuzatuvchi ilova orqali tarixni olish jarayonida. Iste'mol ma'lumotlari bemor xotirasi, ovqatlanish yorlig'i yoki kuzatilgan qabul qilinganligini hujjatlashtirgan klinisyendan olingan bo'lishi mumkin."
* #NutritionOrder "A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на поставку диетического питания, смеси для энтерального питания или пероральной пищевой добавки пациенту/резиденту."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga/rezidentga dieta, formulali oziqlantirish (enteral) yoki og'iz orqali yuboriladigan ozuqaviy qo'shimchalarni yetkazib berish so'rovi."
* #NutritionProduct "A food or supplement that is consumed by patients."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пища или добавка, потребляемая пациентами."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorlar tomonidan iste'mol qilinadigan oziq-ovqat yoki qo'shimcha."
* #Observation "Measurements and simple assertions made about a patient, device or other subject."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Измерения и простые утверждения, касающиеся пациента, устройства или другого объекта."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor, qurilma yoki boshqa mavzu haqida o'lchovlar va oddiy tasdiqlar."
* #ObservationDefinition "Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор определяющих характеристик для вида наблюдения или измерения, производимого или потребляемого заказываемой услугой здравоохранения."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Buyurtmali sog'liqni saqlash xizmati tomonidan ishlab chiqarilgan yoki iste'mol qilinadigan kuzatuv yoki o'lchov turi uchun tavsiflovchi xususiyatlar to'plami."
* #OperationDefinition "A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction)."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Формальное вычислимое определение операции (в интерфейсе RESTful) или именованного запроса (с использованием поискового взаимодействия)."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Operatsiyaning rasmiy hisoblangan ta'rifi (RESTful interfeysida) yoki nomlangan so'rov (qidiruv o'zaro ta'siridan foydalangan holda)."
* #OperationOutcome "A collection of error, warning, or information messages that result from a system action."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор сообщений об ошибках, предупреждений или информационных сообщений, которые возникают в результате действия системы."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tizim harakati natijasida yuzaga keladigan xato, ogohlantirish yoki ma'lumot xabarlari to'plami."
* #Organization "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Официально или неофициально признанная группа людей или организаций, созданная с целью достижения какой-либо формы коллективного действия. Включает компании, учреждения, корпорации, департаменты, общественные группы, группы практик здравоохранения, плательщика/страховщика и т. д."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kollektiv harakatlarning qandaydir shakllariga erishish uchun tuzilgan odamlar yoki tashkilotlarning rasmiy yoki norasmiy ravishda tan olingan guruhi. Kompaniyalar, muassasalar, korporatsiyalar, bo'limlar, jamoat guruhlari, tibbiy amaliyot guruhlari, to'lovchi/sug'urtalovchi va boshqalarni o'z ichiga oladi."
* #OrganizationAffiliation "Defines an affiliation/assotiation/relationship between 2 distinct organizations, that is not a part-of relationship/sub-division relationship."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определяет аффилированность/ассоциацию/отношения между двумя различными организациями, которые не являются отношениями части/подразделения."
  * ^designation[+].language = #uz
  * ^designation[=].value = "2 ta alohida tashkilot o'rtasidagi mansublik/assotsiatsiya/munosabatni belgilaydi, bu munosabatlarning/bo'linma munosabatlarining bir qismi emas."
* #PackagedProductDefinition "A medically related item or items, in a container or package."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предмет или предметы медицинского назначения в контейнере или упаковке."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Idishdagi yoki paketdagi tibbiy jihatdan bog'liq buyum yoki narsalar."
* #Parameters "This resource is used to pass information into and back from an operation (whether invoked directly from REST or within a messaging environment). It is not persisted or allowed to be referenced by other resources except as described in the definition of the Parameters resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс используется для передачи информации в операцию и обратно из нее (будь то вызванная напрямую из REST или в среде обмена сообщениями). Он не сохраняется и не может быть использован другими ресурсами, за исключением случаев, описанных в определении ресурса Parameters."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs ma'lumotni operatsiyaga va undan qaytarish uchun ishlatiladi (to'g'ridan-to'g'ri REST yoki xabar almashish muhitida chaqiriladi). Parametrlar resursi taʼrifida tavsiflangan hollar bundan mustasno, boshqa manbalar tomonidan qoʻllab-quvvatlanmaydi yoki havola qilinishiga ruxsat etilmaydi."
* #Patient "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Демографические данные и другая административная информация о человеке или животном, получающем уход или другие услуги, связанные со здоровьем."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Demografik va boshqa ma'muriy ma'lumotlarga ega bo'lgan jismoniy shaxs yoki hayvonlarga g'amxo'rlik yoki sog'liq bilan bog'liq boshqa xizmatlar."
* #PaymentNotice "This resource provides the status of the payment for goods and services rendered, and the request and response resource references."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Данный ресурс предоставляет информацию о статусе оплаты за оказанные товары и услуги, а также ссылки на ресурсы запросов и ответов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs ko'rsatilgan tovarlar va xizmatlar uchun to'lov holatini, so'rov va javob manbalari ma'lumotnomalarini taqdim etadi."
* #PaymentReconciliation "This resource provides the details including amount of a payment and allocates the payment items being paid."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс предоставляет подробную информацию, включая сумму платежа, а также распределяет оплачиваемые платежные позиции."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs to'lov miqdorini o'z ichiga olgan tafsilotlarni taqdim etadi va to'lanadigan to'lov elementlarini taqsimlaydi."
* #Permission "Permission resource holds access rules for a given data and context."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс разрешений содержит правила доступа для заданных данных и контекста."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ruxsat resursi ma'lum ma'lumotlar va kontekst uchun kirish qoidalariga ega."
* #Person "Demographics and administrative information about a person independent of a specific health-related context."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Демографические и административные данные о человеке независимо от конкретного контекста, связанного со здоровьем."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muayyan sog'liq bilan bog'liq kontekstdan mustaqil shaxs haqidagi demografik va ma'muriy ma'lumotlar."
* #PlanDefinition "This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Этот ресурс позволяет определять различные типы планов как артефакты, которые можно совместно использовать, которые можно использовать и которые можно выполнять. Ресурс достаточно общий, чтобы поддерживать описание широкого спектра клинических и неклинических артефактов, таких как правила поддержки клинических решений, наборы заказов, протоколы и спецификации качества лекарств."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu resurs har xil turdagi rejalarni umumiy, sarflanadigan va bajariladigan artefakt sifatida aniqlash imkonini beradi. Resurs klinik qarorlarni qoʻllab-quvvatlash qoidalari, buyurtmalar toʻplami, protokollar va dori sifati spetsifikatsiyalari kabi keng doiradagi klinik va klinik boʻlmagan artefaktlarning tavsifini qoʻllab-quvvatlash uchun yetarli darajada umumiydir."
* #Practitioner "A person who is directly or indirectly involved in the provisioning of healthcare or related services."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лицо, которое прямо или косвенно участвует в предоставлении медицинских или связанных с ними услуг."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sog'liqni saqlash yoki tegishli xizmatlarni ko'rsatishda bevosita yoki bilvosita ishtirok etadigan shaxs."
* #PractitionerRole "A specific set of Roles/Locations/specialties/services that a practitioner may perform, or has performed at an organization during a period of time."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определенный набор ролей/мест/специальностей/услуг, которые практикующий специалист может выполнять или выполнял в организации в течение определенного периода времени."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Amaliyotchi bajarishi mumkin bo'lgan yoki tashkilotda ma'lum vaqt davomida bajargan rollar/joylar/mutaxassisliklar/xizmatlar to'plami."
* #Procedure "An action that is or was performed on or for a patient, practitioner, device, organization, or location. For example, this can be a physical intervention on a patient like an operation, or less invasive like long term services, counseling, or hypnotherapy. This can be a quality or safety inspection for a location, organization, or device. This can be an accreditation procedure on a practitioner for licensing."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Действие, которое выполняется или выполнялось для пациента, врача, устройства, организации или местоположения. Например, это может быть физическое вмешательство в пациента, например, операция, или менее инвазивное, например, долгосрочные услуги, консультирование или гипнотерапия. Это может быть проверка качества или безопасности местоположения, организации или устройства. Это может быть процедура аккредитации врача для лицензирования."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor, amaliyotchi, qurilma, tashkilot yoki joylashuvda yoki u uchun bajarilgan yoki bajarilgan harakat. Masalan, bu bemorga operatsiya kabi jismoniy aralashuv yoki uzoq muddatli xizmatlar, maslahat yoki gipnoterapiya kabi kamroq invaziv bo'lishi mumkin. Bu joy, tashkilot yoki qurilma uchun sifat yoki xavfsizlik tekshiruvi bo'lishi mumkin. Bu amaliyotchini litsenziyalash uchun akkreditatsiya qilish tartibi bo'lishi mumkin."
* #Provenance "Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Происхождение ресурса — это запись, которая описывает сущности и процессы, вовлеченные в производство и доставку или иным образом влияющие на этот ресурс. Происхождение обеспечивает критически важную основу для оценки подлинности, обеспечения доверия и обеспечения воспроизводимости. Утверждения о происхождении являются формой контекстных метаданных и сами могут стать важными записями со своим собственным происхождением. Заявление о происхождении указывает на клиническую значимость с точки зрения уверенности в подлинности, надежности и достоверности, целостности и стадии жизненного цикла (например, Завершение документа — был ли артефакт юридически аутентифицирован), все из которых могут влиять на политику безопасности, конфиденциальности и доверия."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Resursning kelib chiqishi - bu resursni ishlab chiqarish va etkazib berish yoki boshqa yo'l bilan ta'sir qilish bilan bog'liq ob'ektlar va jarayonlarni tavsiflovchi yozuv. Provenance haqiqiylikni baholash, ishonchni ta'minlash va takrorlanishiga ruxsat berish uchun muhim asos bo'lib xizmat qiladi. Kelib chiqishi haqidagi da'volar kontekstli metama'lumotlarning bir shakli bo'lib, o'zlari o'zlarining kelib chiqishi bilan muhim yozuvlarga aylanishi mumkin. Kelib chiqishi haqidagi bayonot haqiqiylik, ishonchlilik va ishonchlilik, yaxlitlik va hayot aylanish bosqichiga (masalan, Hujjatni to'ldirish - artefakt qonuniy jihatdan tasdiqlangan) ishonch nuqtai nazaridan klinik ahamiyatga ega ekanligini ko'rsatadi, bularning barchasi xavfsizlik, maxfiylik va ishonch siyosatiga ta'sir qilishi mumkin."
* #Questionnaire "A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Структурированный набор вопросов, предназначенный для руководства сбором ответов от конечных пользователей. Анкеты обеспечивают подробный контроль над порядком, представлением, фразеологией и группировкой для обеспечения последовательного, согласованного сбора данных."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakuniy foydalanuvchilarning javoblarini to'plash uchun mo'ljallangan tuzilgan savollar to'plami. Anketalar izchil, izchil ma'lumotlarni to'plash uchun tartib, taqdimot, frazeologiya va guruhlash ustidan batafsil nazoratni ta'minlaydi."
* #QuestionnaireResponse "A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Структурированный набор вопросов и ответов на них. Вопросы упорядочены и сгруппированы в связные подмножества, соответствующие структуре группировки анкеты, на которую дается ответ."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tuzilgan savollar to'plami va ularga javoblar. Savollar tartibga solinadi va javob berilayotgan anketaning guruhlash tuzilishiga mos keladigan izchil kichik to'plamlarga guruhlanadi."
* #RegulatedAuthorization "Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регуляторное одобрение, разрешение или лицензирование, связанное с регулируемым продуктом, лечением, объектом или деятельностью, которые упоминаются в руководстве, постановлении, правиле или законодательном акте. Примером является разрешение на продажу, касающееся лекарственного средства."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'riqnomada, reglamentda, qoidada yoki qonun hujjatlarida keltirilgan tartibga solinadigan mahsulot, davolash, ob'ekt yoki faoliyat bilan bog'liq tartibga soluvchi tasdiqlash, ruxsat berish yoki litsenziyalash. Masalan, dorivor mahsulotga nisbatan bozor ruxsatnomasi."
* #RelatedPerson "Information about a person that is involved in a patient's health or the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Информация о лице, которое принимает участие в охране здоровья пациента или в уходе за пациентом, но не является объектом оказания медицинской помощи и не несет официальной ответственности за процесс оказания медицинской помощи."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorning sog'lig'i yoki bemorga g'amxo'rlik qilish bilan shug'ullanadigan, ammo sog'liqni saqlashning maqsadi bo'lmagan va parvarishlash jarayonida rasmiy javobgarlikka ega bo'lmagan shaxs to'g'risidagi ma'lumotlar."
* #RequestOrchestration "A set of related requests that can be used to capture intended activities that have inter-dependencies such as \"give this medication after that one\"."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Набор связанных запросов, которые можно использовать для фиксации предполагаемых взаимозависимых действий, например «дать это лекарство после того»."
  * ^designation[+].language = #uz
  * ^designation[=].value = "“Ushbu dorini undan keyin bering” kabi oʻzaro bogʻliqliklarga ega boʻlgan maqsadli faoliyatni qoʻlga kiritish uchun ishlatilishi mumkin boʻlgan tegishli soʻrovlar toʻplami."
* #Requirements "The Requirements resource is used to describe an actor - a human or an application that plays a role in data exchange, and that may have obligations associated with the role the actor plays."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс «Требования» используется для описания субъекта — человека или приложения, которые играют роль в обмене данными и могут иметь обязательства, связанные с ролью, которую играет субъект."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Talablar resursi aktyorni - inson yoki ma'lumotlar almashinuvida rol o'ynaydigan va aktyor o'ynagan roli bilan bog'liq majburiyatlarga ega bo'lgan ilovani tasvirlash uchun ishlatiladi."
* #ResearchStudy "A scientific study of nature that sometimes includes processes involved in health and disease. For example, clinical trials are research studies that involve people. These studies may be related to new ways to screen, prevent, diagnose, and treat disease. They may also study certain outcomes and certain groups of people by looking at data collected in the past or future."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Научное исследование природы, которое иногда включает процессы, связанные со здоровьем и болезнями. Например, клинические испытания — это исследования, в которых участвуют люди. Эти исследования могут быть связаны с новыми способами скрининга, профилактики, диагностики и лечения болезней. Они также могут изучать определенные результаты и определенные группы людей, рассматривая данные, собранные в прошлом или будущем."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tabiatni ilmiy o'rganish, ba'zan sog'liq va kasallik bilan bog'liq jarayonlarni o'z ichiga oladi. Masalan, klinik tadqiqotlar odamlarni qamrab oladigan tadqiqot ishlaridir. Ushbu tadqiqotlar kasallikni tekshirish, oldini olish, tashxislash va davolashning yangi usullari bilan bog'liq bo'lishi mumkin. Ular, shuningdek, o'tmishda yoki kelajakda to'plangan ma'lumotlarni ko'rib chiqish orqali ma'lum natijalarni va ma'lum odamlar guruhlarini o'rganishlari mumkin."
* #ResearchSubject "A ResearchSubject is a participant or object which is the recipient of investigative activities in a research study."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Субъект исследования — участник или объект, являющийся объектом следственной деятельности в ходе научного исследования."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tadqiqot predmeti - tadqiqot tadqiqotida tergov harakatlarining oluvchisi bo'lgan ishtirokchi yoki ob'ekt."
* #RiskAssessment "An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оценка вероятного(ых) результата(ов) для пациента или другого субъекта, а также вероятности каждого результата."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemor yoki boshqa mavzu uchun mumkin bo'lgan natijalar (lar) ni, shuningdek, har bir natijaning ehtimolini baholash."
* #Schedule "A container for slots of time that may be available for booking appointments."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контейнер для временных интервалов, которые могут быть доступны для записи на прием."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uchrashuvlarni bron qilish uchun mavjud bo'lishi mumkin bo'lgan vaqt oralig'i uchun konteyner."
* #SearchParameter "A search parameter that defines a named search item that can be used to search/filter on a resource."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Параметр поиска, определяющий именованный элемент поиска, который можно использовать для поиска/фильтрации по ресурсу."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Resursni qidirish/filtrlash uchun ishlatilishi mumkin bo'lgan nomli qidiruv elementini belgilaydigan qidiruv parametri."
* #ServiceRequest "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись запроса на выполнение таких услуг, как диагностические исследования, лечение или операции."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Diagnostik tekshiruvlar, muolajalar yoki amalga oshiriladigan operatsiyalar kabi xizmat so'rovi qaydi."
* #Slot "A slot of time on a schedule that may be available for booking appointments."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отрезок времени в расписании, который может быть доступен для записи на прием."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uchrashuvlarni bron qilish uchun mavjud bo'lishi mumkin bo'lgan jadvaldagi vaqt oralig'i."
* #Specimen "A sample to be used for analysis."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Образец для анализа."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tahlil qilish uchun ishlatiladigan namuna."
* #SpecimenDefinition "A kind of specimen with associated set of requirements."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Своего рода образец с соответствующим набором требований."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tegishli talablar to'plamiga ega namunaning bir turi."
* #StructureDefinition "A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in FHIR, and also for describing extensions and constraints on resources and data types."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение структуры FHIR. Этот ресурс используется для описания базовых ресурсов, типов данных, определенных в FHIR, а также для описания расширений и ограничений ресурсов и типов данных."
  * ^designation[+].language = #uz
  * ^designation[=].value = "FHIR strukturasining ta'rifi. Ushbu resurs FHIR da belgilangan asosiy manbalarni, ma'lumotlar turlarini tavsiflash, shuningdek, resurslar va ma'lumotlar turlari bo'yicha kengaytmalar va cheklovlarni tavsiflash uchun ishlatiladi."
* #StructureMap "A Map of relationships between 2 structures that can be used to transform data."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карта взаимосвязей между двумя структурами, которую можно использовать для преобразования данных."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'lumotlarni o'zgartirish uchun ishlatilishi mumkin bo'lgan 2 ta tuzilma o'rtasidagi munosabatlar xaritasi."
* #Subscription "The subscription resource describes a particular client's request to be notified about a SubscriptionTopic."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс подписки описывает запрос конкретного клиента на получение уведомлений о теме подписки."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Obuna resursi ma'lum bir mijozning SubscriptionTopic haqida xabardor bo'lish so'rovini tavsiflaydi."
* #SubscriptionStatus "The SubscriptionStatus resource describes the state of a Subscription during notifications. It is not persisted."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс SubscriptionStatus описывает состояние подписки во время уведомлений. Он не сохраняется."
  * ^designation[+].language = #uz
  * ^designation[=].value = "SubscriptionStatus resursi bildirishnomalar paytida obuna holatini tavsiflaydi. Bu davom etmaydi."
* #SubscriptionTopic "Describes a stream of resource state changes identified by trigger criteria and annotated with labels useful to filter projections from this topic."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает поток изменений состояния ресурсов, идентифицированных по критериям триггера и аннотированных метками, полезными для фильтрации проекций по этой теме."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Trigger mezonlari boʻyicha aniqlangan va ushbu mavzu boʻyicha proyeksiyalarni filtrlash uchun foydali yorliqlar bilan izohlangan resurs holatidagi oʻzgarishlar oqimini tavsiflaydi."
* #Substance "A homogeneous material with a definite composition."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Однородный материал с определенным составом."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniq tarkibga ega bir hil material."
* #SubstanceDefinition "The detailed description of a substance, typically at a level beyond what is used for prescribing."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подробное описание вещества, как правило, на уровне, выходящем за рамки того, что используется для выписывания рецептов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Moddaning batafsil tavsifi, odatda retseptlash uchun ishlatiladigan darajadan tashqarida."
* #SubstanceNucleicAcid "Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нуклеиновые кислоты определяются тремя различными элементами: основанием, сахаром и связью. Для каждого из этих элементов будут созданы индивидуальные идентификаторы веществ/частей. Нуклеотидная последовательность всегда будет вводиться в направлении 5'-3'."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nuklein kislotalar uchta alohida element bilan belgilanadi: asos, shakar va bog'lanish. Ushbu elementlarning har biri uchun individual modda/qism identifikatorlari yaratiladi. Nukleotidlar ketma-ketligi har doim 5'-3' yo'nalishda kiritiladi."
* #SubstancePolymer "Properties of a substance specific to it being a polymer."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Свойства вещества, характерные для того, чтобы оно было полимером."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Polimer bo'lgan unga xos moddaning xossalari."
* #SubstanceProtein "A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators."
  * ^designation[0].language = #ru
  * ^designation[=].value = "SubstanceProtein определяется как отдельная единица линейной аминокислотной последовательности или комбинация субъединиц, которые либо ковалентно связаны, либо имеют определенную инвариантную стехиометрическую связь. Сюда входят все синтетические, рекомбинантные и очищенные SubstanceProteins определенной последовательности, независимо от того, является ли использование терапевтическим или профилактическим. Этот набор элементов будет использоваться для описания альбуминов, факторов свертывания крови, цитокинов, факторов роста, пептидных/SubstanceProtein гормонов, ферментов, токсинов, токсоидов, рекомбинантных вакцин и иммуномодуляторов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Modda oqsili chiziqli aminokislotalar ketma-ketligining yagona birligi yoki kovalent bog'langan yoki belgilangan o'zgarmas stexiometrik munosabatga ega bo'lgan subbirliklarning kombinatsiyasi sifatida aniqlanadi. Bu, foydalanish terapevtik yoki profilaktik bo'lishidan qat'i nazar, belgilangan ketma-ketlikdagi barcha sintetik, rekombinant va tozalangan moddalar oqsillarini o'z ichiga oladi. Ushbu elementlar to'plami albuminlar, koagulyatsion omillar, sitokinlar, o'sish omillari, peptidlar/moddalar oqsil gormonlari, fermentlar, toksinlar, toksoidlar, rekombinant vaktsinalar va immunomodulyatorlarni tavsiflash uchun ishlatiladi."
* #SubstanceReferenceInformation "Substance Reference Information"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Справочная информация о веществе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Modda haqida ma'lumot"
* #SubstanceSourceMaterial "Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исходный материал должен содержать информацию о таксономическом и анатомическом происхождении, а также о доле материала, которая может привести к образованию вещества или может быть модифицирована для его образования. Этот набор элементов данных должен использоваться для определения полимерных веществ, выделенных из биологических матриц. Таксономическое и анатомическое происхождение должно быть описано с использованием контролируемого словаря по мере необходимости. Эта информация собирается для полимеров, полученных естественным путем (. крахмал) и структурно разнообразных веществ. Для организмов, принадлежащих к царству растений, уровень вещества определяет свежий материал одного вида или внутривидового, растительное лекарство и растительный препарат. Для растительных препаратов информация о фракции будет собрана на уровне информации о веществе, а дополнительная информация для растительных экстрактов будет собрана на уровне информации об указанной группе веществ 1. Для получения дополнительных объяснений см. Класс вещества: структурно разнообразный и приложение о травах."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Manba materiali taksonomik va anatomik kelib chiqishi, shuningdek, moddani shakllantirishga olib kelishi mumkin bo'lgan yoki o'zgartirilishi mumkin bo'lgan materialning ulushi haqidagi ma'lumotlarni qamrab olishi kerak. Ushbu ma'lumotlar elementlari to'plami biologik matritsalardan ajratilgan polimer moddalarini aniqlash uchun ishlatilishi kerak. Taksonomik va anatomik kelib chiqishi kerak bo'lganda boshqariladigan lug'at yordamida tasvirlanishi kerak. Bu ma'lumotlar tabiiy kelib chiqadigan polimerlar (. kraxmal) va strukturaviy xilma-xil moddalar uchun olinadi. Kingdom Plantae ga mansub organizmlar uchun modda darajasi bitta tur yoki infraturning yangi materialini, o'simlik dori va o'simlik preparatini belgilaydi. O'simlik preparatlari uchun fraksiya ma'lumotlari moddalar haqida ma'lumot darajasida va o'simlik ekstraktlari uchun qo'shimcha ma'lumotlar Belgilangan moddalar guruhi 1 ma'lumot darajasida olinadi. Qo'shimcha tushuntirish uchun Moddalar klassi: Strukturaviy jihatdan xilma-xil va o'simlik ilovasiga qarang."
* #SupplyDelivery "Record of delivery of what is supplied."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись о доставке поставленного товара."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yetkazib berilgan narsalarni etkazib berish yozuvi."
* #SupplyRequest "A record of a non-patient specific request for a medication, substance, device, certain types of biologically derived product, and nutrition product used in the healthcare setting."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись не являющегося пациентом конкретного запроса на лекарственное средство, вещество, устройство, определенные типы биологически полученных продуктов и пищевых продуктов, используемых в медицинском учреждении."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sog'liqni saqlash sharoitida ishlatiladigan dori, modda, qurilma, biologik olingan mahsulotning ayrim turlari va oziq-ovqat mahsuloti uchun bemorga xos bo'lmagan so'rovning qaydi."
* #Task "A task to be performed."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Задача, которую необходимо выполнить."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilishi kerak bo'lgan vazifa."
* #TerminologyCapabilities "A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ресурс TerminologyCapabilities документирует набор возможностей (поведений) сервера терминологии FHIR, которые могут использоваться в качестве заявления о фактической функциональности сервера или заявления о требуемой или желаемой реализации сервера."
  * ^designation[+].language = #uz
  * ^designation[=].value = "TerminologyCapabilities resursi FHIR Terminologiya Serverining imkoniyatlari (xatti-harakati) to'plamini hujjatlashtiradi, ulardan haqiqiy server funksionalligi haqidagi bayonot yoki kerakli yoki kerakli serverni amalga oshirish bayonoti sifatida foydalanish mumkin."
* #TestPlan "A plan for executing testing on an artifact or specifications"
  * ^designation[0].language = #ru
  * ^designation[=].value = "План проведения тестирования артефакта или спецификаций"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Artefakt yoki spetsifikatsiyalar bo'yicha sinovni o'tkazish rejasi"
* #TestReport "A summary of information based on the results of executing a TestScript."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сводка информации, основанная на результатах выполнения TestScript."
  * ^designation[+].language = #uz
  * ^designation[=].value = "TestScript-ni bajarish natijalariga asoslangan ma'lumotlarning qisqacha mazmuni."
* #TestScript "A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Структурированный набор тестов для реализации сервера или клиента FHIR для определения соответствия спецификации FHIR."
  * ^designation[+].language = #uz
  * ^designation[=].value = "FHIR spetsifikatsiyasiga muvofiqligini aniqlash uchun FHIR serveriga yoki mijozning amalga oshirilishiga qarshi tuzilgan testlar to'plami."
* #Transport "Record of transport."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запись о транспортировке."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Transport qaydnomasi."
* #ValueSet "A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between CodeSystem definitions and their use in coded elements."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экземпляр ресурса ValueSet определяет набор кодов, взятых из одной или нескольких кодовых систем, предназначенных для использования в определенном контексте. Наборы значений связывают определения CodeSystem и их использование в кодированных элементах ."
  * ^designation[+].language = #uz
  * ^designation[=].value = "ValueSet resurs namunasi ma'lum bir kontekstda foydalanish uchun mo'ljallangan bir yoki bir nechta kod tizimlaridan olingan kodlar to'plamini belgilaydi. Qiymat to'plamlari CodeSystem ta'riflari va ulardan kodlangan elementlarda foydalanish o'rtasidagi bog'liqlik ."
* #VerificationResult "Describes validation requirements, source(s), status and dates for one or more elements."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Описывает требования к проверке, источник(и), статус и даты для одного или нескольких элементов."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bir yoki bir nechta elementlar uchun tekshirish talablari, manba(lar), holat va sanalarni tavsiflaydi."
* #VisionPrescription "An authorization for the provision of glasses and/or contact lenses to a patient."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Разрешение на предоставление пациенту очков и/или контактных линз."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorga ko'zoynak va/yoki kontakt linzalarni taqdim etish uchun ruxsatnoma."
