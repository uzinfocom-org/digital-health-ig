Profile: UZCoreDocumentReference
Parent: DocumentReference
Id: uz-core-documentreference
Title: "UZ Core DocumentReference"
Description: "Uzbekistan Core DocumentReference Profile, used to stores the metadata for a clinical document of any format (e.g., text, scan, image, or media) to enable its discovery, identification, and management"
* ^experimental = true
* ^status = #active
* ^date = "2025-10-09"
* ^publisher = "Uzinfocom"

* identifier MS
* version MS
* basedOn MS
* status MS
* docStatus MS
* type MS
* category MS
* subject MS
* context MS
* bodySite MS
* facilityType MS
* practiceSetting MS
* period MS
* date MS
* author MS
* attester MS
  * mode MS
  * time MS
  * party MS
* custodian MS
* relatesTo MS
  * code MS
  * target MS
* description MS
* content MS
  * attachment MS


* status from DocumentReferenceStatusVS (required)
* category from DocumentCategoryLocalVS (extensible) 
* type from DocumentTypeLocalVS (extensible)
* docStatus from DocumentReferenceCompositionStatusVS (required)
* bodySite from $bodysite (example)
* facilityType from OrganizationalStructureVS (required)
* practiceSetting from $c80-practice-codes (example)
* attester.mode from DocumentReferenceCompositionAttestationModeVS (preferred)
* relatesTo.code from DocumentRelationshipTypeVS (extensible)



* basedOn only Reference(Appointment or AppointmentResponse or CarePlan or Claim or CommunicationRequest or Contract or 
CoverageEligibilityRequest or DeviceRequest or EnrollmentRequest or ImmunizationRecommendation or MedicationRequest or
NutritionOrder or RequestOrchestration or ServiceRequest or SupplyRequest or VisionPrescription)
* subject only Reference(Resource)
* context only Reference(Appointment or UZCoreEncounter or UZCoreEpisodeOfCare)
* bodySite only CodeableReference(BodyStructure)
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or Device or UZCorePatient or 
UZCoreRelatedPerson or CareTeam)
* attester.party only Reference(UZCorePatient or UZCoreRelatedPerson or UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* custodian only Reference(UZCoreOrganization)
* relatesTo.target only Reference(UZCoreDocumentReference)



Instance: example-document-reference
InstanceOf: UZCoreDocumentReference
Title: "Example Document Reference"
Description: "Пример медицинской карты (форма 025), привязанной к пациенту и визиту."
Usage: #example
* language = #en

* status = $document-reference-status#current "Current"
* docStatus = $document-reference-composition-status#final "Final"
* category = DocumentCategoryLocalCS#docum-0001 "Card"
* type = DocumentTypeLocalCS#docum-0001-00004 "025-Outpatient medical record"
* subject = Reference(example-patient)
* context = Reference(example-encounter)
* date = "2024-01-10T12:00:00+05:00"
* period
  * start = "2024-01-01T09:00:00+05:00"
  * end = "2024-01-10T12:00:00+05:00"
* author[0] = Reference(example-practitioner) // Врач, создавший документ
* custodian = Reference(example-organization) // Организация-хранитель
// -------Тут их не нужно давать, это выдает warning, так как их есть связь в context.---------
// * practiceSetting = $sct#394802001 "General medicine"
// * facilityType = OrganizationalStructureCS#132 "Ko'p tarmoqli tibbiyot markazi"
* attester[0]
  * mode = $document-reference-composition-attestation-mode#professional "Professional"
  * time = "2024-01-10T12:00:00+05:00"
  * party = Reference(example-practitioner)
* relatesTo[0]
  * code = $document-relationship-type#replaces "Replaces"
  * target = Reference(example-document-reference)
// --- Само содержимое документа (Content) ---
* content[0]
  * attachment
    * contentType = #application/pdf
    * url = "https://dhp.uz/documents/12345.pdf" // Это фейковый пример. Или используйте поле .data для base64
    * title = "Scanned 025 Form"
    * creation = "2024-01-10T12:00:00+05:00"
    * language = #uz
* bodySite.concept.text = "Whole body"