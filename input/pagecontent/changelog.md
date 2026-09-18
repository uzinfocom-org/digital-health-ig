### In development

#### Added

Added `organizational-specialization-cs#176.0` for adult geriatrics, `coverage-type-cs#covtp-0001-00014` for the Vaqf charitable fund, and `admit-source-local-cs#mserv-0006-00007` for a polyclinic referral - gaps found auditing Form 066 against the live DMED system. The [Provenance Participation Role Type value set](ValueSet-provenance-participation-role-type-vs.html) now includes `attester`.

#### Changed

`target` on [UZ Core Provenance](StructureDefinition-uz-core-provenance.html) now also accepts `Bundle`, since signing a whole FHIR document (as Form 066 does) previously had no valid target type.

### Version 0.9.2

#### Changed

The package is now built as a publication build. Since 0.2.0 its `package.json` carried `notForPublication` and a `file://` url, so [packages2.fhir.org](https://packages2.fhir.org/packages/uz.dhp.core) rejected every version from 0.6.0 on, and guides depending on UZ Core linked to its artifacts through `file://` paths. The package now declares `https://dhp.uz/fhir/core`. Content is unchanged from 0.9.1.

### Version 0.9.1

#### Changed

[ICD-O-3.2](CodeSystem-icd-o-3.html) declared its version as `3.2`; it now declares `3.2.0`, which is the release identifier validators expect. Codings that pin the version have to move from `http://terminology.hl7.org/CodeSystem/icd-o-3|3.2` to `|3.2.0`.

### Version 0.9.0

#### Added

Added [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) for ordering medications, with a [trustee extension](StructureDefinition-trustee.html) naming the relative (RelatedPerson) or patronage nurse (PractitionerRole) authorized to collect the medication on the patient's behalf. It comes with [status](ValueSet-medicationrequest-status-vs.html), [status reason](ValueSet-medicationrequest-status-reason-vs.html), [intent](ValueSet-medicationrequest-intent-vs.html) and [category](ValueSet-medicationrequest-admin-location-vs.html) value sets - the category adding a national [reimbursement order](CodeSystem-medication-request-order-type-cs.html) code - and [days of the week](ValueSet-days-of-week-vs.html), [event timing](ValueSet-event-timing-vs.html) and [timing abbreviation](ValueSet-timing-abbreviation-vs.html) value sets for dosage timing, all with Uzbek and Russian designations.

Added [ICD-O-3.2](CodeSystem-icd-o-3.html) in full - 330 topography and 1143 morphology codes, with Uzbek and Russian designations - under its HL7 Terminology canonical `http://terminology.hl7.org/CodeSystem/icd-o-3`, with [topography](ValueSet-icd-o-3-topography-vs.html) and [morphology](ValueSet-icd-o-3-morphology-vs.html) value sets.

Added a [unit of measurement CodeSystem](CodeSystem-unit-of-measurement-cs.html) with 181 local unit codes named in Uzbek, Russian and English, its [value set](ValueSet-unit-of-measurement-vs.html), and a [ConceptMap](ConceptMap-unit-of-measurement-cm.html) mapping 65 of them to UCUM.

`entity.detail` on [UZ Core AuditEvent](StructureDefinition-uz-core-auditevent.html) is now Must Support, with `detail.type` bound (example) to 13 new [audit event detail type](ValueSet-audit-event-detail-type-vs.html) codes covering authentication, the client, searches, resource versions and synchronisation.

The [encounter type CodeSystem](CodeSystem-encounter-type-cs.html) has grown from 7 to 8 codes, adding `mserv-0001-00008` for a screening encounter, available through the `nationalType` slice of `type` on [UZ Core Encounter](StructureDefinition-uz-core-encounter.html).

#### Changed

The [ICCC-3 CodeSystem](CodeSystem-iccc-3-cs.html) has moved from `https://terminology.dhp.uz/fhir/core/CodeSystem/iccc-3-cs` to its HL7 Terminology canonical `http://terminology.hl7.org/CodeSystem/iccc-3`, since the classification is IARC's rather than DHP's. The [value set](ValueSet-iccc-3-vs.html) keeps its URL.

The `passportLocal` and `passportInternational` identifier slices on [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) are now 0..* rather than 0..1, matching [UZ Core Patient](StructureDefinition-uz-core-patient.html).

`authorizingPrescription` on [UZ Core MedicationDispense](StructureDefinition-uz-core-medication-dispense.html) now references [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) rather than any MedicationRequest.

The [relationship type value set](ValueSet-relationship-type-vs.html) on [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) now includes `FTH` (father) and `GUARD` (guardian), with their Uzbek and Russian designations added to [RoleCodeCS](CodeSystem-role-code-cs.html).

The [route of administration value set](ValueSet-route-code-vs.html) now includes 8 local [route codes](CodeSystem-route-codes-cs.html) for routes SNOMED CT does not cover, such as implantation, iontophoresis and skin scarification. It is bound (extensible) to `dosageInstruction.route` on UZ Core MedicationRequest and (example) to `route` on [UZ Core Immunization](StructureDefinition-uz-core-immunization.html).

The [DMED position SNOMED supplement](CodeSystem-dmed-position-sct-cs.html) now carries Uzbek designations alongside the Russian ones, replacing the English designations it had in 0.8.0.

The [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) now declares the platform operations - [Person/$populate](OperationDefinition-person-populate.html), [Patient/$populate](OperationDefinition-patient-populate.html), [Organization/$practitioners](OperationDefinition-organization-practitioners.html), [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) and [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) - each linked to its OperationDefinition. It also lists Bundle and Flag, and now has a canonical URL, name, title and version.

`prescription` on [UZ Core Claim](StructureDefinition-uz-core-claim.html) now references [UZ Core MedicationRequest](StructureDefinition-uz-core-medicationrequest.html) rather than any MedicationRequest, as announced in 0.8.0.

#### Breaking changes

UZ Core VaccinationActivityDefinition has been renamed to [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html), as it is no longer limited to vaccination. This is a breaking change: the canonical URL moves from `https://dhp.uz/fhir/core/StructureDefinition/uz-core-vaccination-activity-definition` to `https://dhp.uz/fhir/core/StructureDefinition/uz-core-activitydefinition`, and instances must update `meta.profile`.

`code` is no longer fixed to `33879002` (active immunization) but bound (extensible) to [procedure codes](ValueSet-procedure-code-vs.html). The [vaccine code](ValueSet-vaccine-code-vs.html) binding on `product[x]` is now extensible, with an additional required binding when `code` is `33879002`, so a vaccination still names a vaccine from that value set.

The CVD risk screening questionnaire has been removed, along with the CvdRiskCategoryCS and CvdTobaccoUseCS code systems. The questionnaire and risk categories now live in the integration IG as `https://dhp.uz/fhir/integrations/Questionnaire/CVDRiskScreeningQuestionnaire` and `https://terminology.dhp.uz/fhir/integrations/CodeSystem/cvd-risk-category-cs`, which codes tobacco use in SNOMED CT instead, so references to the old core canonicals must switch.

The DMED role class supplement `https://terminology.dhp.uz/fhir/core/CodeSystem/dmed-role-class-cs`, added in 0.8.0, has been removed, so `PAT` in the [position and profession value set](ValueSet-position-and-profession-vs.html) no longer has Uzbek and Russian designations.

#### Documentation

The [Components](components.html) page now describes Blood Management, Nursing and Supplies. The [Referrals](components.html#referrals) section now covers the seven axes a referral is classified along, and how the referral ServiceRequest relates to the Tasks that drive its state-insurance approval.

Components with a workflow page now link to it, and each workflow page links back. The Prescription section points at the [e-Prescription and dispensing](workflow-prescription.html) workflow until its Technical Project is written.

The Components page now ends with an interactive [cross-component resource architecture](components.html#cross-component-resource-architecture) diagram showing the FHIR resources each of eleven components works with and which flow into another component. It marks which resources this IG defines and, with a ★, which ones a component is responsible for. Hovering over or tabbing to a resource shows the platform service that holds it, and clicking a component card opens its resource list.

The [e-Referral lifecycle](workflow-referral.html) no longer calls the ServiceRequest and Task profiles unpublished. Both are now published, as [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) and [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html), and are still experimental.

The [Laboratory order to result](workflow-lab.html) workflow's links and worked example now point at [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) instead of `uz-core-servicerequest-laboratory`, renamed in 0.8.0.

[UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html) now shows how to link a parent to their child so a system can let the parent act for them, with a new [example-mother-of-a-child](RelatedPerson-example-mother-of-a-child.html) example. The profile page explains matching children by PINFL, reading the child's age from `Patient.birthDate`, and why the relationship alone does not grant access.

### Version 0.8.0

#### Added

Added [UZ Core Composition](StructureDefinition-uz-core-composition.html) profile as the foundation for medical documents and digital forms, with terminology for the [document type](ValueSet-composition-type-vs.html) (470 national document, journal and form codes), [category](ValueSet-composition-category-vs.html), [status](ValueSet-composition-status-vs.html), [attestation mode](ValueSet-composition-att-mode-vs.html), and, on each section, the [narrative status](ValueSet-composition-narrative-status-vs.html), [ordering](ValueSet-composition-list-order-vs.html) and [reason a section is empty](ValueSet-composition-list-empty-reason-vs.html).

The operations the platform exposes are now published as OperationDefinitions, so implementers can see their parameters, error behaviour and idempotency without reading the platform documentation. [Person/$populate](OperationDefinition-person-populate.html) and [Patient/$populate](OperationDefinition-patient-populate.html) create a Person or Patient from an identity document - PINFL (`NI`), passport or ID card (`PPN`), or birth certificate (`BCT`) - populating it from the state registries, and return the existing resource rather than a duplicate when one already exists for that PINFL. [Organization/$practitioners](OperationDefinition-organization-practitioners.html), [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) and [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) resolve the links between practitioners and the organizations they work at.

A [status history extension](StructureDefinition-plan-definition-status-history.html) has been added to [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html), recording each status the definition has held with the period it applied, the reason it changed and who changed it.

`characteristic` on [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) is now sliced with a `paymentType` slice bound (required) to [payment type](ValueSet-payment-type-vs.html), so a service can state the funding arrangements it is offered under. The `labCategory` slice on `category.coding` is now bound to [service categories](ValueSet-service-categories-vs.html) rather than to the laboratory-specific value set that has been renamed (see below).

Added the [International Classification of Childhood Cancer, 3rd edition](CodeSystem-iccc-3-cs.html) with its 140 diagnostic groups, subgroups and divisions, and the [value set](ValueSet-iccc-3-vs.html) selecting them, for classifying childhood cancers by morphology in registry reporting. It is intended for use in the integration IG.

The [diagnosis type CodeSystem](CodeSystem-diagnosis-type-cs.html) has grown from 12 to 22 codes, with `cancer-0003-0001` to `cancer-0003-0010` naming the document a cancer registration was established from - a medical record or an extract from one, a record or notification from an oncology, haematology or other medical institution, a death certificate, or the civil registry office. They flow into the [diagnosis type value set](ValueSet-diagnosis-type-vs.html), bound (required) to the [diagnosis type extension](StructureDefinition-diagnosis-type.html) on [UZ Core Condition](StructureDefinition-uz-core-condition.html).

The [discharge disposition CodeSystem](CodeSystem-encounter-discharge-disposition-home-cs.html) has grown from 6 to 9 codes, with `cancer-0001-0001` to `cancer-0001-0003` recording how cancer registry follow-up ended - the patient is alive, the diagnosis was not confirmed, or the patient was taken off the register once the follow-up period ran out. They flow into the [discharge disposition value set](ValueSet-encounter-discharge-disposition-vs.html), which is bound (required) to `admission.dischargeDisposition` on [UZ Core Encounter](StructureDefinition-uz-core-encounter.html).

Added an [observation day CodeSystem](CodeSystem-observation-day-cs.html) with local codes for the day of life on which a newborn observation was recorded, to discriminate the nested Composition sections of Form 097.

#### Changed

The `passportLocal` and `passportInternational` identifier slices on [UZ Core Patient](StructureDefinition-uz-core-patient.html) are now 0..* rather than 0..1, so a patient may carry more than one of each - for example a current ID card alongside a superseded paper passport, as described on the [identifiers](identifiers.html) page.

`prescription` on [UZ Core Claim](StructureDefinition-uz-core-claim.html) is now Must Support, for the reimbursement prescription the claim is made against. It references MedicationRequest and will be narrowed to UZ Core MedicationRequest once that profile is published.

The title and description of [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) no longer split the resource name - "UZ Core Claim Response" is now "UZ Core ClaimResponse". Its canonical URL is unchanged.

The [position and profession value set](ValueSet-position-and-profession-vs.html), bound (required) to `code` on [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), now also admits the v3 RoleClass code system in full, four v3 RoleCode codes (`TPA`, `PAYOR`, `ORG` and `VALIDATOR`) and ten named SNOMED CT concepts, so that every target of DMEDPositionToDHPPositionCM is valid against the binding. Uzbek and Russian designations for them are carried by the new [DMED position SNOMED supplement](CodeSystem-dmed-position-sct-cs.html) and DMED role class supplement. [DMEDRoleCS](CodeSystem-dmed-role-cs.html) grew from 5 to 43 codes and [RoleCodeCS](CodeSystem-role-code-cs.html) from 2 to 6 as a result.

The display of `paytype-0001-0004` in the [payment type CodeSystem](CodeSystem-payment-type-cs.html) has changed from "Davlat tomonidan moliyalashtiriladigan" ("State-funded") to "Davlat tarifi" ("State tariff"). The code is unchanged, so systems storing it should check that their own label still matches. A fifth code `paytype-0001-0005` ("Boshqalar", "Other") has been added for payment arrangements that the other four do not describe.

The `routine` and `order` designations in the [request priority](CodeSystem-request-priority-cs.html) and [request intent](CodeSystem-request-intent-cs.html) supplements have been shortened to a single term each - "Обычный" rather than "Обычный (плановый)", "Назначение" rather than "Назначение / Приказ" - and `urgent`, `asap` and `stat` gained Uzbek and Russian designations.

#### Breaking changes

UZ Core ServiceRequest Laboratory has been renamed to [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html) and generalised from laboratory orders to any requested service - procedures, diagnostic investigations, consultations, screening and admissions. This is a breaking change: the canonical URL moves from `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory` to `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest`, and instances must update `meta.profile`. `priority` is now Must Support and bound (required) to [request priority](ValueSet-request-priority-vs.html). The `category` and `code` bindings have changed with it - see below.

LabServiceCategoriesVS has been renamed to [ServiceRequestCategoriesVS](ValueSet-service-request-categories-vs.html) and widened to cover service requests of any kind, adding SNOMED CT categories for imaging, diagnostic, surgical, physiotherapy, therapeutic and outpatient procedures, consultation, admission, rehabilitation, telemedicine, screening and donation, with a [supplement](CodeSystem-sr-sct-category-cs.html) carrying their Uzbek and Russian designations. This is a breaking change: the canonical URL moves from `https://dhp.uz/fhir/core/ValueSet/lab-service-categories-vs` to `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-categories-vs`.

ServiceRequestLabCodesVS has been replaced by [ServiceRequestCodesVS](ValueSet-service-request-code-vs.html), which adds the new [screening and home visit codes](CodeSystem-screening-code-cs.html) - 20 codes for screening questionnaires and programmes, among them cardiovascular risk, diabetes, breast cancer and cervical cancer, and for patronage (home visit) services - to the LOINC order codes, national laboratory panel codes and SNOMED CT procedures it already carried. This is a breaking change: the canonical URL moves from `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-labresearch-code-vs` to `https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs`.

UZ Core Immunization PlanDefinition has been renamed to [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html), because it now covers whole blood donation and screening schedules alongside immunization ones. This is a breaking change: the canonical URL moves from `https://dhp.uz/fhir/core/StructureDefinition/uz-core-immunization-plan-definition` to `https://dhp.uz/fhir/core/StructureDefinition/uz-core-plan-definition`, and instances must update `meta.profile`.

The profile now carries a `focus` use context naming the kind of schedule - `33879002` (active immunization), `25179006` (whole blood unit collection) or `360156006` (screening intent) - and a constraint requires exactly one of them, so a schedule of a given kind is found with `GET [base]/PlanDefinition?context-type-value=focus$http://snomed.info/sct|33879002`. The [immunization schedule type](ValueSet-immunization-schedule-type-vs.html) binding on the schedule category context is now required rather than extensible, so that the slicing can be validated.

`code` on [UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) is now mandatory (1..1).

The national identifier slice on [UZ Core Practitioner](StructureDefinition-uz-core-practitioner.html) now fixes `system` to the PINFL system `https://dhp.uz/fhir/core/sid/pid/uz/ni`, instead of `https://dhp.uz/fhir/core/sid/pro/uz/argos`. This matches the `NI` identifier type the slice already carried, and the system used for the same identifier on [UZ Core Patient](StructureDefinition-uz-core-patient.html) and [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html).

All 13 codes in the [coverage type CodeSystem](CodeSystem-coverage-type-cs.html) have been renumbered from mnemonic codes to the `covtp-0001-000NN` pattern used by the other national code systems: `dtsj-treated-case` is now `covtp-0001-00001`, `moh-budget` is `covtp-0001-00008`, `self-pay` is `covtp-0001-00009`, and so on in the order the codes are listed. Displays and meanings are unchanged. This is a breaking change: coverage type codes stored under the previous version must be re-mapped.

The DMEDPositionToSnomedCM ConceptMap has been removed. Its mappings are now groups inside [DMEDPositionToDHPPositionCM](ConceptMap-dmed-position-to-dhp-position-cm.html), which maps DMED role and profession codes to national positions, SNOMED CT, v3 RoleCode and v3 RoleClass in a single map. Implementers referencing `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-snomed-cm` must use `https://terminology.dhp.uz/fhir/core/ConceptMap/dmed-position-to-dhp-position-cm` instead.

#### Documentation

The Forms page is now called [Questionnaires](forms.html), so that it is not read as the medical forms used in Uzbekistan. The page address is unchanged.

The [how to read this guide](how-to-read.html) page now says what to do when no code in a bound value set fits the data, for each binding strength, with worked JSON showing an extensible binding satisfied from the national list and then from SNOMED CT with the original wording kept in `text`.

### Version 0.7.0

#### Added

Added [UZ Core Claim](StructureDefinition-uz-core-claim.html) and [UZ Core ClaimResponse](StructureDefinition-uz-core-claim-response.html) profiles for insurance claims, pre-authorization and predetermination, and for the adjudication and reimbursement responses to them. They are supported by [claim type](ValueSet-claim-type-vs.html), [claim use](ValueSet-claim-use-vs.html) and [financial management status](ValueSet-fm-status-vs.html) terminology, plus [response category](ValueSet-claim-response-category-vs.html), [decision](ValueSet-claim-response-decision-vs.html) and [outcome](ValueSet-claim-response-outcome-vs.html) codes. A [cancellation reason extension](StructureDefinition-claim-response-cancellation-reason.html) records why a response was cancelled, for example when a pre-authorization expires before the claim completes.

Added [UZ Core Task Referral Approval](StructureDefinition-uz-core-referral-approval-task.html) profile for tracking the workflow steps of the state insurance referral and hospitalization approval process (Annex 1 to Resolution of the Cabinet of Ministers No. 694, 04.11.2025), with [task code](ValueSet-task-codes-vs.html), [status](ValueSet-task-status-vs.html), [intent](ValueSet-task-intent-vs.html) and [business status](ValueSet-task-business-status-vs.html) terminology. A warning-level constraint flags unfinished tasks that are past their requested end date but not marked overdue, for SLA monitoring.

Added [UZ Core Group](StructureDefinition-uz-core-group.html) profile for defined collections of entities - screening, vaccination and donation target groups and their outcome cohorts - with [group type](ValueSet-group-type-vs.html), [group kind](ValueSet-group-kind-vs.html), [membership basis](ValueSet-group-membership-basis-vs.html) and [characteristic kind](ValueSet-group-characteristic-kind-vs.html) terminology.

Added the CVD risk screening questionnaire, an early-detection form for cardiovascular disease risk that calculates its score and risk category from the answers using SDC FHIRPath expressions. The guide now depends on `hl7.fhir.uv.sdc` so those expressions resolve.

Added SNOMED CT supplements carrying Uzbek and Russian designations for [condition severity](CodeSystem-condition-severity-cs.html), [procedure outcome](CodeSystem-procedure-outcome-cs.html), [reaction type](CodeSystem-reaction-type-cs.html), [goal description](CodeSystem-goal-description-cs.html), [goal start event](CodeSystem-goal-start-event-cs.html) and [socioeconomic observation codes](CodeSystem-socioeconomic-observation-codes-cs.html).

Added a [UCUM units supplement](CodeSystem-ucum-units-supp-cs.html) with Uzbek and Russian translations of the unit displays, surfaced as the [UCUM units value set](ValueSet-ucum-units-supp-vs.html). `permittedUnit` on [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) is now bound to it (extensible) rather than to the UCUM common units value set, and `permittedDataType` is now bound (required) to the new [laboratory observation value types](ValueSet-permitted-data-type-vs.html) value set.

Added a [laboratory source system units CodeSystem](CodeSystem-lab-units-cs.html) holding the unit strings used by the source laboratory systems, its [value set](ValueSet-lab-units-vs.html), and a [ConceptMap translating them to UCUM](ConceptMap-lab-units-to-ucum-cm.html), so results arriving with local unit strings can be normalised.

Added DMED terminology bridges for [administration routes](ConceptMap-dmed-administration-route-to-dhp-sct-cm.html) mapped to the national and SNOMED CT route codes, and expanded the [measurement unit](ConceptMap-dmed-measure-unit-to-dhp-cm.html) and [vaccine code](ConceptMap-dmed-vaccine-to-cvx-cm.html) mappings, with further units added to the [DMED measurement unit code system](CodeSystem-dmed-measure-unit-cs.html).

#### Changed

The SNOMED CT value sets now select a hierarchy where one expresses the intent, instead of listing individual codes: [body site](ValueSet-body-site-vs.html) is any body structure, [procedure code](ValueSet-procedure-code-vs.html) any procedure, [target disease](ValueSet-target-disease-vs.html) any disease, [route code](ValueSet-route-code-vs.html) any route of administration, [condition severity](ValueSet-condition-severity-vs.html) any severity, [adverse event outcome](ValueSet-adverse-event-outcome-vs.html) any adverse reaction, and [goal description](ValueSet-goal-description-vs.html), [reaction type](ValueSet-reaction-type-vs.html) and [recommendation reason](ValueSet-recommendation-reason-vs.html) any clinical finding. This widens what these value sets accept compared with 0.6.0. [Procedure outcome](ValueSet-procedure-outcome-vs.html), [socioeconomic observation codes](ValueSet-socioeconomic-observation-codes-vs.html), [goal start event](ValueSet-goal-start-event-vs.html) and [action participant role](ValueSet-action-participant-role-vs.html) keep their explicit code lists, because their concepts share no ancestor narrow enough to select on.

The [laboratory panel code system](CodeSystem-lab-pan-cs.html) now declares `kind` and `parent` properties, so a client expanding the observation codes value set can tell panels apart from the analytes reported within them. Language designations on the panel codes were also corrected.

`component.code` on [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) gained an additional binding for the user interface flow: when a user creates a custom laboratory definition in the Patient Portal, the analyte code must be selected from LOINC. National laboratory panel codes remain reserved for the pre-defined laboratory catalogue.

`method` on [UZ Core Observation](StructureDefinition-uz-core-observation.html) now states its binding strength explicitly as extensible.

`participant.actor` on [UZ Core Condition](StructureDefinition-uz-core-condition.html) may now reference [UZ Core Organization](StructureDefinition-uz-core-organization.html).

On [UZ Core Location](StructureDefinition-uz-core-location.html) the tax identifier slice has been removed, and `name` is optional again (0..1), reverting the requirement introduced in 0.6.0.

#### Breaking changes

The organization type ConceptMaps have been renamed from the MIS2 prefix to SSV, matching the SSV ValueSets they map from: [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html), [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) and [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html). The duplicate `mis2-*` ConceptMaps have been removed; implementers should reference the `ssv-*` canonical URLs. The nomenclature group mappings have been split out of SSVMedicalTypeToOrganizationalStructureCM into the new [SSVMedicalTypeToNomenclatureGroupCM](ConceptMap-ssv-medical-type-to-nomenclature-group-cm.html), so that each ConceptMap declares a single source and target scope.

[UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) now requires a second `useContext` stating the kind of schedule, bound (extensible) to the new [immunization schedule type](ValueSet-immunization-schedule-type-vs.html) value set. The choice-type slicing on `action.definition[x]` has been removed, because it made the validator reject `definitionCanonical`, and the examples now use `definitionCanonical`.

The UZ Core ActivityDefinition profile has been renamed to UZ Core VaccinationActivityDefinition and its canonical URL changed from `.../uz-core-activity-definition` to `.../uz-core-vaccination-activity-definition`. Implementers referencing the old canonical must update it.

#### Documentation

Added a [Forms](forms.html) page where any questionnaire published by this guide can be filled in as a working form, in Uzbek, Russian or English, to check the wording, answer options, skip logic and calculated results before implementing it. The page can pre-fill a form with sample answers and links to the underlying QuestionnaireResponse JSON.

The modelling guidelines now require terminology versions to be in SemVer format (`MAJOR.MINOR.PATCH`), because the DHP terminology platform cannot parse other formats, and describe how to encode release identifiers that are not SemVer, such as SNOMED CT's `2026-01`.

### Version 0.6.0

#### Added

Added [UZ Core DiagnosticReport](StructureDefinition-uz-core-diagnostic-report.html) profile for laboratory and diagnostic reports, with supporting terminology for [service category](ValueSet-diagnostic-report-service-category-vs.html), [status](ValueSet-diagnostic-report-status-vs.html) and [report types](ValueSet-lab-report-types-vs.html).

Added UZ Core ServiceRequest Laboratory profile for ordering laboratory tests and panels, including [payment type](ValueSet-payment-type-vs.html) and [request status](ValueSet-service-request-status-vs.html) terminology.

Added [UZ Core Specimen](StructureDefinition-uz-core-specimen.html) profile for clinical specimens, with terminology for [collection method](ValueSet-specimen-collection-method-vs.html), [specimen type](ValueSet-specimen-types-vs.html), [role](ValueSet-specimen-role-vs.html) and [status](ValueSet-specimen-status-vs.html). It is referenced from the laboratory ServiceRequest and DiagnosticReport profiles.

Added [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html) profile so systems can publish definitions of laboratory tests - permitted units, measurement methods and sex-specific reference ranges - for the Patient Portal and integrating systems.

Added [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) profile for recording vaccinations, with terminology for [target disease](ValueSet-target-disease-vs.html), [administration site](ValueSet-immunization-site-vs.html), [route](ValueSet-route-code-vs.html) and [funding source](ValueSet-funding-source-vs.html), plus a ConceptMap translating [national DMED vaccine codes to CVX](ConceptMap-dmed-vaccine-to-cvx-cm.html).

Added [UZ Core ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html) profile for vaccination forecasts, with [forecast status](ValueSet-recommendation-forecast-status-vs.html), [date criterion](ValueSet-recommendation-date-criterion-vs.html) and [reason](ValueSet-recommendation-reason-vs.html) terminology.

Added [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) profile for national immunization schedules.

Added [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html) profile for defining reusable clinical activities (procedures, tests, medication protocols) independent of a specific patient.

Added [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) profile for reporting adverse events, with [actuality](ValueSet-adverse-event-actuality-vs.html), [seriousness](ValueSet-adverse-event-seriousness-vs.html), [outcome](ValueSet-adverse-event-outcome-vs.html) and [status](ValueSet-adverse-event-status-vs.html) terminology.

Added [UZ Core Medication](StructureDefinition-uz-core-medication.html) profile with Uzbekistan-specific medication identifiers (marking ID, registration certificate, GTIN, box aggregation ID, national product/service classification code) and ATC-based [classification](ValueSet-medication-classification-vs.html) and [dose form](ValueSet-medication-doseform-vs.html) terminology.

Added [UZ Core Procedure](StructureDefinition-uz-core-procedure.html) profile, with [procedure status](ValueSet-procedure-event-status-vs.html), SNOMED CT-based [procedure codes](ValueSet-procedure-code-vs.html) and [outcome](ValueSet-procedure-outcome-vs.html) terminology, plus an example [SNOMED CT to ICHI](ConceptMap-snomed-to-ichi-procedures.html) ConceptMap for reimbursement reporting.

Added [laboratory method codes](CodeSystem-lab-methods-cs.html), with ConceptMaps mapping the laboratory [panel and analyte codes](ConceptMap-lab-pan-codes-to-loinc.html) to LOINC and [method codes](ConceptMap-lab-methods-to-loinc.html) to SNOMED CT. The method codes are surfaced as the [laboratory methods value set](ValueSet-lab-method-vs.html), bound to `method` on [UZ Core Observation](StructureDefinition-uz-core-observation.html).

Added a [turnaround time extension](StructureDefinition-turnaround-time.html) to [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html) for stating the expected result turnaround on laboratory services. The category and type bindings on this profile have also been relaxed from required to extensible, so implementers may add local codes.

Added DMED terminology bridges for ingesting data from the national DMED system: [country codes](ConceptMap-dmed-country-to-dhp-country-cm.html) mapped to ISO 3166, [measurement units](ConceptMap-dmed-measure-unit-to-dhp-cm.html) to UCUM, and DMED professions mapped to both SNOMED CT and [DHP positions](ConceptMap-dmed-position-to-dhp-position-cm.html).

Added State Health Insurance Fund (SHIF) and Ministry of Health (Minzdrav) identifier slices to [UZ Core Organization](StructureDefinition-uz-core-organization.html). SHIF-assigned provider codes are typed as `PRN` (provider number). A new [payor identification](payor-identification.html) page explains how payors and their contracted providers are identified.

#### Changed

Reference targets across several profiles now point to UZ Core profiles where they exist - for example [UZ Core Observation](StructureDefinition-uz-core-observation.html) `specimen` to UZ Core Specimen and `partOf` to UZ Core Procedure/Immunization, [UZ Core Immunization](StructureDefinition-uz-core-immunization.html) `administeredProduct` to UZ Core Medication, and [UZ Core AdverseEvent](StructureDefinition-uz-core-adverse-event.html) `suspectEntity` to UZ Core Medication. Referenced resources must now conform to the corresponding UZ Core profile.

[UZ Core Encounter](StructureDefinition-uz-core-encounter.html) `reason` and [UZ Core Observation](StructureDefinition-uz-core-observation.html) `basedOn` may now reference an ImmunizationRecommendation.

Corrected English display names in [OrganizationalSpecializationCS](CodeSystem-organizational-specialization-cs.html) (consistent casing; "Children" changed to "Pediatric"). Codes are unchanged.

`gender` on [UZ Core Patient](StructureDefinition-uz-core-patient.html) is now bound (required) to a new [administrative gender ValueSet](ValueSet-administrative-gender-vs.html) with Russian and Uzbek translations.

`managingOrganization` on [UZ Core Patient](StructureDefinition-uz-core-patient.html) is now Must Support and must reference [UZ Core Organization](StructureDefinition-uz-core-organization.html).

On [UZ Core Patient](StructureDefinition-uz-core-patient.html) and [UZ Core RelatedPerson](StructureDefinition-uz-core-relatedperson.html), the local passport identifier no longer fixes `use` to `official`: use `official` for the current ID card and `old` for a superseded paper passport sharing the same system. See the [identifiers](identifiers.html) page.

#### Breaking changes

[UZ Core PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) `code` is now bound (required) to the [position and profession ValueSet](ValueSet-position-and-profession-vs.html) (previously the practitioner-role value set); `specialty` remains bound (required) to the [profession specialization ValueSet](ValueSet-profession-specialization-vs.html). Implementers must populate practitioner roles with codes from these value sets.

`type` on [UZ Core Encounter](StructureDefinition-uz-core-encounter.html) and [UZ Core EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), and `signature.type` on [UZ Core Provenance](StructureDefinition-uz-core-provenance.html), are now sliced so a national code is required while additional codings remain allowed.

The canonical URLs of the identifier-domain and EpisodeOfCare value sets (and the foreign passport and drivers-license value sets) moved from `https://dhp.uz/fhir/core/ValueSet/...` to `https://terminology.dhp.uz/fhir/core/ValueSet/...`. Implementers referencing these canonicals directly must update them.

The [nationality CodeSystem](CodeSystem-nationality-cs.html), used by the [nationality value set](ValueSet-nationality-vs.html) on [UZ Core Patient](StructureDefinition-uz-core-patient.html), has been rebuilt from the updated dmp.uz nationality list: it grew from 306 to 512 entries, displays were standardised to uppercase, with Russian and English designations added, and codes were reassigned - the same code can now denote a different nationality (e.g. `#1` changed from "Ruslar" to "ADIGEY"). This is a breaking change: nationality codes stored under the previous version must be re-mapped.

The multilingual translation extension (Uzbek base value plus Russian and Karakalpak translations) has been added to `name` on [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html), and to `title` on [UZ Core ActivityDefinition](StructureDefinition-uz-core-activitydefinition.html), [UZ Core Laboratory ObservationDefinition](StructureDefinition-uz-core-laboratory-observation-definition.html), [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) and [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html). `name` is now required on [UZ Core Organization](StructureDefinition-uz-core-organization.html) and [UZ Core Location](StructureDefinition-uz-core-location.html).

#### Documentation

Added implementation guidance pages - [how to read this guide](how-to-read.html), [general guidance](general-guidance.html) and [Must Support](must-support.html) - plus end-to-end [workflow walkthroughs](workflows.html) for the [laboratory](workflow-lab.html), [immunization](workflow-immunization.html), [referral](workflow-referral.html), [patient journey](workflow-patient-journey.html) and [prescription](workflow-prescription.html) processes. Each profile now also has narrative intro and notes sections.

Added [guidance on validating resources against UZ Core](api-access.html#validation) using the command-line validator and validator.fhir.org.

Updated [API access](api-access.html) guidance: only ICD-10 and HL7 code systems currently validate on the playground, PKCE is mandatory for frontend clients, and the authentication details now link to the external SSO documentation.

Renamed the Services page to [Components](components.html) and expanded it with component descriptions and Russian/Uzbek translations.

### Version 0.5.0

#### Added

Added [UZ Core AllergyIntolerance](StructureDefinition-uz-core-allergy-intolerance.html) profile with supporting CodeSystems and ValueSets ([AllergenCodesVS](ValueSet-allergen-codes-vs.html), [ReactionSubstanceVS](ValueSet-allergy-reaction-substance-vs.html), [ReactionManifestationVS](ValueSet-allergy-reaction-manifestation-vs.html), [AllergyCategoryVS](ValueSet-allergy-category-vs.html), [AllergyTypeVS](ValueSet-allergy-type-vs.html), [AllergyClinicalStatusVS](ValueSet-allergy-clinical-status-vs.html), [AllergyVerificationStatusVS](ValueSet-allergy-verification-status-vs.html), [AllergyReactionSeverityVS](ValueSet-allergy-reaction-severity-vs.html)) along with ConceptMaps for translating local allergen and manifestation codes to SNOMED CT.

Added [laboratory observation codes](CodeSystem-lab-pan-cs.html) for panels and analytes used in Uzbekistan.

In [UZ Core HealthcareService](StructureDefinition-uz-core-healthcareservice.html), `category.coding` and `type.coding` are now sliced to support a new `labCategory` slice bound to [LabServiceCategoriesVS](ValueSet-service-request-categories-vs.html) (codes from [LabCategoriesCS](CodeSystem-lab-categories-cs.html)). Laboratory healthcare services should populate the `labCategory` slice in addition to the existing `dhpCategory`.

In [UZ Core Patient](StructureDefinition-uz-core-patient.html), [MahallaVS](ValueSet-mahalla-vs.html) (used for `address.city`) has been expanded to include codes from the new [Mahalla COATO](CodeSystem-mahalla-coato-cs.html) code system, providing 2,600+ COATO-based mahalla identifiers in addition to the existing MahallaCS codes.

In [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html), the **BenefitCS** code system has been expanded with new codes (e.g., `#regis0004.00020`, `#regis0004.00021`, `#regis0004.00022`, `#regis0004.00023`).

In [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html), new codes have been added to the **EducationCS** code system (e.g., `#regis0005.00011` "No education", `#regis0005.00012` "Specialty").

In [UZ Core Socioeconomic Observation](StructureDefinition-uz-core-socioeconomic-observation.html), the **SocialStatusCS** code system has been expanded (e.g., `#regis0010.00010` "School student", `#regis0010.00011` "Eligible for benefits").

A new term has been added to [DisabilityCS](CodeSystem-disability-cs.html):  
- `#regis0011.00005` "Disability not established"

For [UZ Core Encounter](StructureDefinition-uz-core-encounter.html), a new [AdmitSourceLocalCS](CodeSystem-admit-source-local-cs.html) code system has been created with the following codes:
- `#mserv-0006-00001` "Without referral / Self-referred"
- `#mserv-0006-00002` "Dispensary"
- `#mserv-0006-00003` "District psychiatry service"
- `#mserv-0006-00004` "Emergency medical service"
- `#mserv-0006-00005` "By court decision"
- `#mserv-0006-00006` "For examination"

Additionally, a new [AdmissionOriginVS](ValueSet-admission-origin-vs.html) ValueSet has been created which includes codes from [AdmitSourceHomeCS](CodeSystem-admit-source-home-cs.html).

For [UZ Core Encounter](StructureDefinition-uz-core-encounter.html), [EncounterPriorityCS](CodeSystem-encounter-priority-cs.html) has been expanded with missing codes based on HL7 `v3-ActPriority` (e.g., `#A`, `#CR`, `#EL`, `#R`, `#RR`, `#S`, `#T`, `#UD`, `#UR`), and a new [EncounterPriorityLocalCS](CodeSystem-encounter-local-priority-cs.html) code system has been created with local priority codes (e.g., `#transferred`, `#mandatory-treatment`, `#involuntary-hospitalization`).

For [UZ Core Encounter](StructureDefinition-uz-core-encounter.html), a new [ReAdmissionLocalCS](CodeSystem-re-admission-local-cs.html) code system has been created for readmission cases (e.g., `#first-time`, `#repeat-current-year`).

For [UZ Core Encounter](StructureDefinition-uz-core-encounter.html), [EncounterDischargeDispositionHomeCS](CodeSystem-encounter-discharge-disposition-home-cs.html) has been expanded with new codes:
- `#mserv-0004-00004` "Discharged"
- `#mserv-0004-00002` "Died"
- `#mserv-0004-00005` "Transferred to Ministry of Internal Affairs facility"
- `#mserv-0004-00006` "Moved to a charity home (residential care facility)"

For [UZ Core Encounter](StructureDefinition-uz-core-encounter.html), a new [EncounterLocalSubjectStatusCS](CodeSystem-encounter-local-subject-status-cs.html) code system has been created to represent patient status:
- `#loc-cs-001` "Recovered"
- `#loc-cs-002` "Improved"
- `#loc-cs-003` "Unchanged"
- `#loc-cs-004` "Worsened"

Although there is no dedicated profile for Coverage in UZ Core, a new **CoverageTypeCS** code system has been created due to requirements from SSV forms.  
It includes funding types through DTSJ and social funds (e.g., `#dtsj-treated-case`, `#dtsj-privileged-category`, `#saxovat-komak-fund`, `#womens-notebook-fund`, `#youth-notebook-fund`).

Added [document identifier namespace](identifiers.html#document-identifiers) (doc) to identifier systems.

Added `type.coding[organizationGrouping]` slice to [UZ Core Organization](StructureDefinition-uz-core-organization.html) using [OrganizationGroupingCS](CodeSystem-organization-grouping-uz-cs.html) for detailed facility grouping (e.g. `#104` "Specialized hospitals", `#210` "Family polyclinic"). Implementers should populate this new slice.

Added code I_6 "Organizations with foreign investors participation" to [OrganizationalSubordinationGroupCS](CodeSystem-organizational-subordination-group-cs.html). Implementers should use this code in `type.coding[subordinationGroup]` for applicable organizations.

[OrganizationalStructureCS](CodeSystem-organizational-structure-cs.html) expanded with new codes for outpatient facilities (e.g. `#200` polyclinics), educational institutions (`#300`), blood transfusion centers (`#400`), sanepid services (`#500`), and others. Some existing translations corrected (e.g. `#116` fixed from "Medical center center" to "Medical center"). Implementers should review if a more specific code now exists for their facilities.

Added [coverage area extension](StructureDefinition-coverage-area.html) to [UZ Core Organization](StructureDefinition-uz-core-organization.html) for specifying the administrative territory an organization serves, bound to [StateVS](ValueSet-state-vs.html). SSV territory codes can be mapped to StateCS using [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html).

Added [example](Organization-xonobod-medical-association.html) demonstrating how to translate a MIS2 JSON organization into a UZ Core Organization resource using the ConceptMaps.

Added ConceptMaps for translating MIS2 codes to UZ Core terminology: [SSVMedicalTypeToOrganizationalStructureCM](ConceptMap-ssv-medical-type-to-organizational-structure-cm.html) for `type.coding[organizationalStructure]`, [SSVLevelTypeToSubordinationGroupCM](ConceptMap-ssv-level-type-to-subordination-group-cm.html) for `type.coding[subordinationGroup]`, and [SSVServiceTypeToOrganizationalServiceGroupCM](ConceptMap-ssv-service-type-to-organizational-service-group-cm.html) for `type.coding[organizationalServiceGroup]`. Implementers translating from MIS2 should use these maps to populate the corresponding slices.

#### Changed

In [UZ Core Observation](StructureDefinition-uz-core-observation.html), [ObservationCodesVS](ValueSet-observation-codes-vs.html) has been changed from required to **preferred** binding and now includes SNOMED CT codes in addition to LOINC and local codes. Implementers may use SNOMED CT codes where appropriate.

`type.coding[organizationalServiceGroup]` and `type.coding[specialization]` cardinality in [UZ Core Organization](StructureDefinition-uz-core-organization.html) widened from 0..1 to 0..\*. Implementers can now send multiple service group and specialization codes per organization.

#### Breaking changes

`UZCoreClinicalCondition` has been removed and merged into [UZ Core Condition](StructureDefinition-uz-core-condition.html). Implementers must update references from `uz-core-clinical-condition` to `uz-core-condition`. A new [ConditionCodeVS](ValueSet-condition-code-vs.html) ValueSet combining ICD-10 and SNOMED CT (preferred binding) is now used for `Condition.code`.

In the [Patient Satisfaction Questionnaire](Questionnaire-PatientSatisfactionQuestionnaire.html), `answerOption` codes have been moved out of the Questionnaire's own URL into a dedicated [PatientSatisfactionCS](CodeSystem-patient-satisfaction-cs.html) code system. Implementers populating QuestionnaireResponse answers for this questionnaire must update the Coding `system` from `https://dhp.uz/fhir/core/Questionnaire/PatientSatisfactionQuestionnaire` to `https://terminology.dhp.uz/fhir/core/CodeSystem/patient-satisfaction-cs`. Codes themselves are unchanged.

`type.coding[organizationType]` in [UZ Core Organization](StructureDefinition-uz-core-organization.html) now uses OrganizationTypeUZCS instead of the HL7 `organization-type` CodeSystem. For example, `$organization-type-cs#prov` must be replaced with a code from `organization-types-uz-cs` (e.g. `#I` "Distribution by management"). There is no 1:1 mapping - each organization must be classified into the new system (codes I-V).

#### Documentation

In [UZ Core Patient](StructureDefinition-uz-core-patient.html), the [identifiers documentation](identifiers.html) has been updated to clarify that the national identifier is the **PINFL** (Personal Identification Number of an Individual), and to clarify the difference between `medicalRecordTemp` and `unknownPatient` identifier usage.

Added an [example of a transaction bundle](Bundle-example-transaction-bundle.html) and an [example of a PractitionerRole with freetext qualifications](PractitionerRole-example-practitionerrole-freetext.html) for implementers needing reference patterns.

### Version 0.4.0
Added [UZ Core Goal](StructureDefinition-uz-core-goal.html) profile with associated codesystems and valuesets.

Added [UZ Core Questionnaire](StructureDefinition-uz-core-questionnaire.html) and [QuestionnaireResponse](StructureDefinition-uz-core-questionnaire-response.html) profiles with multilingual support for translated answer options.

Added [pension certificate identifier type](NamingSystem-patient-id-uzb-pension-number.html) (Номер пенсионного удостоверения) with NamingSystem support in [Patient](StructureDefinition-uz-core-patient.html) resource.

Clarified binding strength requirements in [modelling guidelines](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md).

Applied feedback from DHP Connectathon 1.

Fixed profile references to use UZ Core profiles where possible instead of base FHIR resources.

[Patient](StructureDefinition-uz-core-patient.html) citizenship now uses ISO 3166-1 alpha-2 codes instead of custom MVD codes.

Fixed [OrganizationalSpecialization](CodeSystem-organizational-specialization-cs.html) code consistency (101 → 101.0).

Fixed Russian translation for I_3 in [OrganizationalSubordinationGroup](CodeSystem-organizational-subordination-group-cs.html).

Clarified descriptions for [NomenclatureGroup](CodeSystem-nomenclature-group-cs.html), [OrganizationalStructure](CodeSystem-organizational-structure-cs.html), and [OrganizationalServiceGroup](CodeSystem-organizational-service-group-cs.html) to explain their purpose and hierarchy.

Added [managing organization attachment extension](StructureDefinition-managing-organization-attachment.html) to track when a patient was attached to a managing organization.

Added [ConceptMap](ConceptMap-countries-mvd-to-iso3166-alpha2-cm.html) for translating MVD country codes to ISO 3166-1 alpha-2 codes.

Added explicit slices for foreign patient passport numbers and drivers licenses with country code support.

Updated [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html) description.

Improved [identifier documentation](identifiers.html) including PINFL clarity and migration to alpha-2 country codes.

Added [vital signs section](vital-signs.html) with guidance and examples.

Added Karakalpak language (kaa) support in the MultilingualName ruleset, used for multilingual names in [Organization](StructureDefinition-uz-core-organization.html) and [Location](StructureDefinition-uz-core-location.html) profiles.

Updated IP holder to Ministry of Health.

UZ Core Clinical Condition added to differentiate clinical (ICD-10) and non-ICD-10 based conditions.

Patient disability status has been moved from the [Patient](StructureDefinition-uz-core-patient.html) resource (using a FHIR-standard extension) to the [Condition](StructureDefinition-uz-core-condition.html) resource.

Underscores have been removed from NamingSystem identifiers.

Added a [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) describing DHP's supported resources, profiles, operations and searchparameters.

Added IP statements, globals table, and a dependency table to the IG.

Canonical URLs of NamingSystems now start with `https://terminology.dhp.uz`.

Name of the [Observation Interpretation](CodeSystem-observation-interpretation-cs.html) codesystem supplement has been fixed.

Added multilingual terminology strategy with Uzbek-authored CodeSystems and THO supplements for UI localization.

Documented use of ConceptMaps and their associated strategy.

Updated slice names to follow best practice naming convention of lower camelCase.

Added support for international addresses in [Patient](StructureDefinition-uz-core-patient.html), [Practitioner](StructureDefinition-uz-core-practitioner.html), and [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) resources.

Added Uzbek translations.

### Version 0.3.0

UZ Core profiles for [Encounter](StructureDefinition-uz-core-encounter.html), [EpisodeOfCare](StructureDefinition-uz-core-episodeofcare.html), and [Observation](StructureDefinition-uz-core-observation.html) have been added.

Canonical URLs have been changed to `https://dhp.uz/fhir/core` for conformance resources and `https://terminology.dhp.uz/fhir/core` for terminology resources to accommodate future IGs, which will follow a pattern of `https://dhp.uz/fhir/<ig>`.

Russian translations have been added.

### Version 0.2.0

This is a first, in-development release of the IG that updates the canonical URLs of all resources to their final version.

#### Major changes
UZ Core profiles for AuditEvent, Consent, Condition, HealthcareService, Location, Organization, Patient, Practitioner, PractitionerRole, RelatedPerson, Provenance and the Socioeconomic Observation have been added.

Canonical URLs of profiles, terminology resources, and the IG have been changed from the temporary `medcore.uz` domain to the official `dhp.uz` domain.
