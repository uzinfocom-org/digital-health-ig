### Ambulance
\< add one paragraph description of the service here \>

### Appointment and Scheduling
### Blood Management
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

The MDM Service ensures the timeliness, reliability, and accessibility of information, thereby supporting effective coordination, adherence to regulatory requirements, and the safe and high-quality provision of healthcare services.


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

The goal of developing the MSM is to create a centralized mechanism for managing metadata from medical information systems; ensure transparent and controlled access to medical data based on patient consents and a role-based model; implement comprehensive auditing mechanisms to log all significant actions within the system; introduce tools for protecting personal data and adhering to information security policies; and support integration with national and industry-specific medical information systems.

### Nursing
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

### Prescription
### Public Health Reporting
### Quality Assurance
### Referrals

The Referrals component is intended for centralized management of the processes for creating, transmitting, fulfilling, and monitoring patient referrals within the Digital Health Platform (DHP).

Referrals ensures:

- transparent routing of the patient between levels of medical care;
- monitoring of referral statuses from creation through fulfilment;
- prevention of referral loss and duplication of services.

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

### Screening Schedules Management

The Screening Schedules Management component is developed to create a single digital service for centralized management of screening activities within the national healthcare system of the Republic of Uzbekistan. Its purpose is to automate the planning, ordering, performance, and monitoring of screening examinations, and to ensure the timely detection of diseases and risk factors among the population.

The component provides:

- centralized screening records;
- increased population coverage by preventive programs;
- data transparency and accessibility;
- integration with national and local medical systems;
- decision support, including risk assessment through Questionnaire.

### Supplies
### Vaccination Management

The Vaccination Management component is developed for the purpose of creating a unified standardized digital service for managing vaccination processes at the scale of the national healthcare system.

The purpose of the component is to eliminate fragmentation of vaccination data, increase transparency and manageability of immunization processes, and ensure reliable and timely information exchange between healthcare organizations, government authorities, and analytical systems.

The component ensures:

- centralized accounting of patient vaccination data;
- support of the full vaccination lifecycle (prescription, scheduling, administration, monitoring);
- integration with Medical Information Systems and national immunization programs;
- generation of analytics and reporting for monitoring population immunization coverage.

