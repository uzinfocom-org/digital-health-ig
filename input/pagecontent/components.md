See how these components relate to each other in the [cross-component resource architecture](#cross-component-resource-architecture) diagram at the end of this page.

### Ambulance
\< add one paragraph description of the service here \>

### Appointment and Scheduling
### Blood Management

The Blood Management component is created for standardized management of blood and blood components within the Digital Health Platform. It addresses inconsistent stock data, the difficulty of managing requests and distribution between facilities, and the limited ability to trace how a unit of blood was used.

The Blood Management component provides:

- Centralized accounting of blood and blood component stocks, including component type, blood group, expiry date, and storage location.
- Registration and processing of requests for blood components, stating the component required, the quantity, the priority, and the patient it is intended for (SupplyRequest, ServiceRequest).
- Registration of donor collection, component processing, and transfusion procedures, each linked to the patient and to the responsible specialist (Procedure).
- Recording of blood parameters, laboratory indicators, and patient reactions following transfusion (Observation).
- End-to-end traceability of the blood lifecycle, from donor registration through processing, storage, and transport to use in a patient.
- Standardized protocols for transfusion therapy, and grouping of donors and patients for donation campaigns and statistical processing.
- A foundation for analytics and reporting on stocks, consumption, shortages, and the effectiveness of blood use.

Donation scheduling is already modelled in this guide. [UZ Core PlanDefinition](StructureDefinition-uz-core-plan-definition.html) marks a whole blood donation schedule through its `focus` use context, and [UZ Core Group](StructureDefinition-uz-core-group.html) carries donation target groups together with the cohorts of donors who did and did not complete a donation.

Laboratory testing of donors and donations is performed by the Laboratory component, and Blood Management consumes those results rather than duplicating laboratory functionality. Transport and logistics of blood, and the reservation of donation slots, are outside the scope of the component.

### Clinical Decision Support
### Clinical Health Records (CHR)

CHR is designed for the centralized storage, processing, and exchange of structured patient medical data within the Digital Health Platform (DHP).

CHR ensures standardized clinical record management in accordance with the international HL7 FHIR® specification, providing full compatibility with the Master Data Management (MDM) and Metadata and Security Management (MSM) components, as well as with external medical information systems (MIS, LIS, RIS, and others).

Primary Objectives of the CHR Component:

1. Centralized storage of medical information. CHR serves as the unified repository of clinical data, containing structured FHIR resources describing patient information, episodes of care, diagnoses, observations, procedures, allergies, medication requests, laboratory results, and other clinical events.
2. Support for longitudinal clinical information. The component enables the creation and maintenance of a complete electronic patient dossier - the Clinical Health Record - aggregating data from various sources (healthcare facilities, laboratories, diagnostic centers, pharmaceutical systems, and others).
3. Interoperability and data exchange. CHR provides interfaces (FHIR REST API) for integration with internal and external systems, supporting standardized data exchange formats across DHP components and external healthcare service providers.
4. Managed access and security. The component implements attribute-based access control (ABAC) and consent-based access models, leveraging MSM authentication and authorization mechanisms, with mandatory auditing of all operations.
5. Regulatory compliance and data traceability. All actions involving clinical data are recorded in accordance with the requirements for medical information systems, ISO/HL7 standards, and national regulatory acts, including that governing personal data protection.
6. Support for analytics and reporting. CHR provides unified datasets for analytical and reporting systems, enabling extraction of information for statistics, epidemiological surveillance, treatment effectiveness monitoring, and medical research.

### Diagnostics and Imaging
### Laboratory

The Laboratory component is created for standardized management of laboratory data within the Digital Health Platform. It addresses key issues of decentralized data storage, incompatibility of formats, and the absence of a unified process for handling results.

The Laboratory component provides:

- Centralized storage of information on laboratory requests, biological specimens, results, and conclusions of laboratory studies.
- Standardization and unification of data using FHIR resources (Observation, Specimen, DiagnosticReport, ServiceRequest), ensuring interoperability of laboratory information between different laboratories, healthcare facilities, and information systems.
- Establishment of a foundation for analytics and reporting, including monitoring of the frequency and accuracy of tests, identification of epidemiological trends, and improvement of the quality of laboratory diagnostics.
- Reduction of duplication of laboratory tests through reuse of previously performed tests when appropriate conditions and access rights are available.

The [Laboratory order to result](workflow-lab.html) workflow shows how these resources connect, from the order through specimen collection to the released report.

### Master Data Management (MDM)
The Master Data Management (MDM) component provides centralized management of master (reference) data within the Digital Health Platform (DHP). It unifies and normalizes data originating from various medical information systems - eliminating duplication of information about patients, healthcare organizations, personnel, services, and resources - and creates a single source of truth (SSOT) for all DHP components, supporting data consistency, quality, and the identification and minimal deduplication of records (including patients, based on key parameters such as PINFL, passport, and date of birth).

Description of key functionality:

- Healthcare organization data management
  - Verification of healthcare facilities using common identifiers
- Healthcare Professionals Data Management
  - Maintaining a single register of physicians, nurses and technical personnel
  - Accounting of qualification data of medical personnel
- Reference Data Management
  - Health Services
  - Organizations
  - Specialization, etc.
- Integration with external systems
  - Third-party medical information systems (MIS)
  - LIS
  - RIS
  - National registries

The MDM Service ensures the timeliness, reliability, and accessibility of information, thereby supporting effective coordination, adherence to regulatory requirements, and the safe and high-quality provision of healthcare services. The identifiers it matches and deduplicates on are defined on the [Identifier systems](identifiers.html) page.


### Metadata and Security Management (MSM)
The MSM component is implemented as a metadata management and data security service, based on the FHIR R5 (Fast Healthcare Interoperability Resources) architecture. It includes FHIR resources (StructureDefinition, ValueSet, CodeSystem, Provenance, AuditEvent, Consent, CapabilityStatement), catalogs (CodeSystem, ValueSet), a set of open API interfaces for data access, editing, and synchronization, and a mechanism for record normalization, identification, and minimal deduplication.

The MSM is designed for:

- Message Validation Gateway: acting as a validation layer for messages exchanged within and through the DHP to ensure structural and semantic consistency.
- Metadata Management: storing and providing information about components' structure and capabilities through CapabilityStatement and StructureDefinition resources.
- Auditing and Access Control: logging user and application actions (AuditEvent), tracking data changes (Provenance), and managing access based on patient consents (Consent).
- Data Standardization: using coded catalogs (CodeSystem) and value sets (ValueSet) for data unification.
- Integration with External Systems: supporting interaction with MIS and other systems.
- Flexible Configuration: adapting FHIR profiles for various scenarios and customer requirements.
- Data Security: implementing access control, protecting confidential information, and logging security events.

The endpoints the platform exposes, and how a client authenticates against them, are described on the [API access](api-access.html) page.

The goal of developing the MSM is to create a centralized mechanism for managing metadata from medical information systems; ensure transparent and controlled access to medical data based on patient consents and a role-based model; implement comprehensive auditing mechanisms to log all significant actions within the system; introduce tools for protecting personal data and adhering to information security policies; and support integration with national and industry-specific medical information systems.

### Nursing

The Nursing component is designed to organize, plan, perform, and document nursing care, with an emphasis on patronage (home visit) monitoring of the population. It provides digital support for patronage nurses, primary care physicians, and polyclinic specialists caring for patients both in outpatient settings and at home.

The component provides:

- referrals for nursing care, stating the purpose of the patronage visit, the clinical indication, and the nurse assigned to it (ServiceRequest, Condition);
- registration of the patronage visit and of the nursing care delivered at it (Encounter);
- recording of the observations taken during the visit, including vital signs, anthropometry, and complaints (Observation);
- accounting for the nursing procedures performed, such as physiotherapy, massage, dressings, and intravenous and intramuscular injections (Procedure);
- standardized assessment forms and their completed results, used to assess risk factors, quality of life, and adherence to treatment (Questionnaire, QuestionnaireResponse);
- patient access to visit results, procedures performed, and recommendations through the patient portal;
- monitoring of patronage activity and reporting by healthcare organization and region.

The purposes a patronage visit is made for - post-vaccination and postpartum patronage, patronage of women of reproductive age, preventive examination, chronic disease follow-up, and home inpatient care - are published in this guide as [screening and home visit codes](CodeSystem-screening-code-cs.html), used on `code` in [UZ Core ServiceRequest](StructureDefinition-uz-core-servicerequest.html).

Scheduling of nursing visits is handled by the Appointment and Scheduling component.

### Patient health journey management

The Patient Health Journey Management (PHJM) component is designed to manage data related to the clinical journey of a patient — from the initial contact to the completion of treatment and subsequent follow-up. It provides collection, storage, aggregation, and analysis of medical information about patients at all levels of healthcare delivery, using the HL7 FHIR R5 standard. PHJM is a core component of the Digital Health Platform (DHP) and serves as a connecting layer between clinical components, healthcare service management systems, and analytical components of the platform.

Within its functionality, the component provides:

- maintenance of a unified Patient Journey — consistent tracking of encounters, examinations, prescriptions, and procedures;
- coordination of interaction between organizations, practitioners, and patients at all stages of care;
- centralized storage and access to treatment data, including EpisodeOfCare, Encounter, Condition, CarePlan, and Observation resources;
- integration with other DHP components (CHR, MSM, MDM, DHP Core Services) to ensure data consistency and completeness of medical records;
- generation of analytical and clinical-statistical reports based on patient journeys and associated clinical data;
- implementation of security and confidentiality principles, including auditing, consent management, and access control.

The main development objectives of PHJM include:

- Digitalization of the patient lifecycle — an end-to-end digital patient journey covering registration, diagnosis, treatment, follow-up, and rehabilitation.
- Integration of clinical data — consolidating information from various components into a unified logical structure providing a holistic view of the patient's health status.
- Support for clinical decision-making — generating structured data suitable for use in clinical decision support systems (CDSS).
- Improvement of healthcare efficiency — enabling monitoring of the quality and accessibility of healthcare services at both organizational and system levels.
- Compliance with FHIR and HL7 standards — ensuring interoperability with internal and external systems.
- Transparency and accountability — a unified audit trail and complete history of patient-related medical events.
- Implementation of patient-centered care principles — engaging patients in their care process through access to personalized data and questionnaire-based feedback (Questionnaire / QuestionnaireResponse).

The [Patient journey (Episode of Care)](workflow-patient-journey.html) workflow shows how EpisodeOfCare, Encounter and the clinical resources recorded against them connect.

### Prescription

The [e-Prescription and dispensing](workflow-prescription.html) workflow describes how prescribing and dispensing are modelled while this component's Technical Project is being prepared.

### Public Health Reporting
### Quality Assurance
### Referrals

The Referrals component is intended for centralized management of the processes for creating, transmitting, fulfilling, and monitoring patient referrals within the Digital Health Platform (DHP).

Referrals ensures:

- transparent routing of the patient between levels of medical care;
- monitoring of referral statuses from creation through fulfilment;
- prevention of referral loss and duplication of services.

A referral is classified along seven axes: purpose (diagnostic, therapeutic, consultation, hospitalization, rehabilitation), level of care (primary, secondary, tertiary), urgency (emergency, urgent, routine), method of service delivery (in person or telemedicine), outcome, service support (transport, hospitalization, or no transfer of the patient), and financing. Purpose is carried in `ServiceRequest.category` and urgency in `ServiceRequest.priority`; level of care, delivery method, financing and the need for hospitalization or transport are carried in extensions.

The referral itself is a [ServiceRequest](StructureDefinition-uz-core-servicerequest.html), and it is the source of truth for the process. Where the referral is funded by state insurance, the platform also creates a chain of approval [Tasks](StructureDefinition-uz-core-referral-approval-task.html) - family doctor, specialist, regional commission, republican commission, insurance fund, hospitalization - to drive the stages and monitor the deadline on each; under other funding arrangements no Task is created. Tasks are opened and closed by the platform in response to business events and have no user-facing interface. Fulfilment is recorded as an Encounter, Procedure, DiagnosticReport, Observation or Composition referencing the referral, and the referral completes only once the clinical evidence appropriate to its category is present. The [e-Referral lifecycle](workflow-referral.html) sets out this wiring, the approval chain and the status rules in full.

The component serves as a key element in coordinating the provision of medical care, ensuring continuity of patient treatment and transparency of interaction among process participants.

### Reimbursement

The Reimbursement Component is intended to automate healthcare cost reimbursement processes based on the integration of clinical, administrative, and socioeconomic data, including:

- generation of justified reimbursement claims based on clinical data (Claim, ClaimResponse);
- accounting for the context of healthcare delivery (Encounter);
- calculation of reimbursements based on actually provided services (Procedure, MedicationDispense);
- use of diagnostic data (Condition, Observation) to substantiate the necessity of services;
- accounting for long-term treatment (CarePlan);
- processing of supporting documentation (Composition);
- processing of reimbursement claims.

The component acts as a centralized aggregator of patient medical data and healthcare service delivery data required by SHIF for processing reimbursement claims. It consolidates data from multiple domains of the DHP, ensuring consistent processing and transmission to SHIF.

Key purposes:

- reduction of fragmentation of insurance payment data;
- increased transparency of reimbursement processes;
- automation of insurance claim processing;
- ensuring interoperability among healthcare system participants.

SHIF and the organizations contracting with it are identified as described on the [Payor identification](payor-identification.html) page.

### Screening Schedules Management

The Screening Schedules Management component is developed to create a single digital service for centralized management of screening activities within the national healthcare system of the Republic of Uzbekistan. Its purpose is to automate the planning, ordering, performance, and monitoring of screening examinations, and to ensure the timely detection of diseases and risk factors among the population.

The component provides:

- centralized screening records;
- increased population coverage by preventive programs;
- data transparency and accessibility;
- integration with national and local medical systems;
- decision support, including risk assessment through Questionnaire.

The questionnaires themselves, and how they are rendered and answered, are described on the [Questionnaires](forms.html) page.

### Supplies

The Supplies component is designed to build a consistent view of medical equipment and critical medical stock across the Digital Health Platform, and to make that view available both for operational work in healthcare organizations and for the analytical work of health administration bodies.

The component provides:

- accounting of medical equipment by healthcare organization and location, with creation and update of equipment records within the limits of the user's rights;
- registration of the current condition of equipment, and review of the list of faulty equipment;
- search, viewing, and filtering of information on equipment and medicinal products for authorized users;
- consolidation of the critical medical stock - intensive care beds, ventilators, doctors available by specialty, vaccines, blood and blood components, defibrillators, and anesthesia machines - from the systems that supply it;
- maintenance of the list of medicines and medical devices provided by the state free of charge or on preferential terms, shown to the public through the patient portal;
- aggregated analytics and dashboards on resource availability, broken down by region and organization.

### Vaccination Management

The Vaccination Management component is developed for the purpose of creating a unified standardized digital service for managing vaccination processes at the scale of the national healthcare system.

The purpose of the component is to eliminate fragmentation of vaccination data, increase transparency and manageability of immunization processes, and ensure reliable and timely information exchange between healthcare organizations, government authorities, and analytical systems.

The component ensures:

- centralized accounting of patient vaccination data;
- support of the full vaccination lifecycle (prescription, scheduling, administration, monitoring);
- integration with Medical Information Systems and national immunization programs;
- generation of analytics and reporting for monitoring population immunization coverage.

The [Immunization](workflow-immunization.html) workflow shows how the national schedule, the recommendation it produces and the administered dose connect.

### Cross-component resource architecture

In practice, several of the components described above exchange the same underlying FHIR resources. This diagram drops to the resource level: which resources each component owns, and which of those resources connect to another component. Plain lines show two components integrating broadly, or several resource connections merged into one while both components are closed; arrows show a specific resource flowing from one component into another. Drag to pan, scroll to zoom, and hover or tab to a resource, component, or legend item to see its connections. A ★ marks a resource the component itself is responsible for; the others it shares with the component that is.

<br clear="all"/>

<style>
  .arch-diagram {
    --blueprint: #2255AA;
    --blueprint-soft: #dce7f6;
    --pencil-soft: #e6e6e6;
    --ink: #1b232a;
    --ink-soft: #5c6b74;
    --paper: #ffffff;
    --paper-raised: #f4f7f9;
    --line: #c9d2d6;
    --grid: rgba(27, 35, 42, 0.05);
    --mono-font: ui-monospace, "SFMono-Regular", Menlo, Consolas, "Liberation Mono", monospace;
    margin: 1.5rem 0;
  }
  .arch-legend { display: flex; flex-wrap: wrap; gap: 1.1rem; margin: 0 0 0.7rem; font-size: 0.78rem; color: var(--ink-soft); }
  .arch-legend span { display: inline-flex; align-items: center; gap: 0.35rem; }
  .arch-legend span[data-legend] { cursor: pointer; padding: 2px 4px; margin: -2px -4px; border-radius: 3px; }
  .arch-legend span[data-legend]:hover, .arch-legend span[data-legend]:focus-visible { background: var(--paper-raised); }
  .arch-legend .swatch-box { width: 12px; height: 12px; background: var(--blueprint-soft); border: 1px solid var(--line); }
  .arch-legend .swatch-box.pale { background: var(--pencil-soft); }
  .arch-legend .swatch-star { color: var(--blueprint); font-size: 0.85rem; line-height: 1; }

  .arch-wrap { display: flex; gap: 1rem; align-items: flex-start; flex-wrap: wrap; }

  .arch-canvas {
    flex: 1 1 480px;
    height: 640px;
    position: relative;
    overflow: hidden;
    border: 1px solid var(--line);
    cursor: grab;
    touch-action: none;
    background-color: var(--paper);
    background-image:
      linear-gradient(var(--grid) 1px, transparent 1px),
      linear-gradient(90deg, var(--grid) 1px, transparent 1px);
    background-size: 24px 24px;
  }
  .arch-canvas.dragging { cursor: grabbing; }
  .arch-canvas svg { display: block; }

  .arch-info {
    flex: 0 0 240px;
    min-width: 220px;
    border: 1px solid var(--line);
    background: var(--paper-raised);
    padding: 0.9rem 1rem;
    font-size: 0.82rem;
    max-height: 640px;
    overflow-y: auto;
  }
  .arch-info-hint { margin: 0 0 0.8rem; color: var(--ink-soft); font-size: 0.82rem; }
  .arch-stat-row {
    display: flex; justify-content: space-between; gap: 0.6rem;
    padding: 0.28rem 0; border-bottom: 1px solid var(--line);
    color: var(--ink-soft); font-size: 0.78rem;
  }
  .arch-stat-row:last-child { border-bottom: none; }
  .arch-stat-n { color: var(--ink); font-weight: 600; font-family: var(--mono-font); }

  .arch-info-title {
    font-family: var(--mono-font);
    font-weight: 600; font-size: 0.92rem; color: var(--ink); margin: 0 0 0.2rem;
  }
  .arch-info-sub { font-size: 0.76rem; color: var(--ink-soft); margin: 0 0 0.8rem; }
  .arch-info-service { font-family: var(--mono-font); font-size: 0.76rem; color: var(--ink-soft); margin: -0.55rem 0 0.8rem; }
  .arch-rel-list { list-style: none; margin: 0; padding: 0; display: flex; flex-direction: column; gap: 0.55rem; }
  .arch-rel-item { border-left: 2px solid var(--blueprint); padding-left: 0.6rem; }
  .arch-rel-head { font-size: 0.8rem; color: var(--ink); font-weight: 600; }
  .arch-rel-desc { font-size: 0.76rem; color: var(--ink-soft); margin: 0.15rem 0 0; }

  .arch-node { cursor: pointer; }
  .arch-node rect { transition: opacity 0.15s ease; }
  .arch-node text { pointer-events: none; }
  .arch-edge { transition: opacity 0.15s ease; }
  .arch-node.dim, .arch-edge.dim { opacity: 0.15; }
  .arch-node.active { filter: drop-shadow(0 0 3px var(--blueprint)); }
  #arch-arrow path { fill: var(--blueprint); }

  @media (prefers-reduced-motion: reduce) {
    .arch-node rect, .arch-edge { transition: none; }
  }

  @media (max-width: 720px) {
    .arch-canvas { height: 420px; }
    .arch-info { flex-basis: 100%; }
  }
</style>

<div class="arch-diagram">
  <div class="arch-legend">
    <span data-legend="profiled" tabindex="0" role="button"><span class="swatch-box"></span> defined in this IG</span>
    <span data-legend="unprofiled" tabindex="0" role="button"><span class="swatch-box pale"></span> named, not yet defined</span>
    <span data-legend="own" tabindex="0" role="button"><span class="swatch-star">★</span> the component is responsible for this resource</span>
  </div>
  <div class="arch-wrap">
    <div class="arch-canvas" id="arch-canvas">
      <svg id="arch-svg" width="100%" height="100%"></svg>
    </div>
    <div class="arch-info" id="arch-info">
      <div id="arch-info-body">
        <p class="arch-info-hint">Click a component to open its resources; ★ marks the ones the component is responsible for. Hover or tab to a resource, component, or legend item to see what it connects to.</p>
        <div class="arch-stat-row"><span>Components shown</span><span class="arch-stat-n" id="arch-stat-components">–</span></div>
        <div class="arch-stat-row"><span>Resources</span><span class="arch-stat-n" id="arch-stat-resources">–</span></div>
        <div class="arch-stat-row"><span>Relationships</span><span class="arch-stat-n" id="arch-stat-relationships">–</span></div>
      </div>
    </div>
  </div>
</div>
<script src="architecture-diagram.js"></script>

