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
The Master Data Service is a mission-critical component of the DHP, as it ensures the consolidation, standardization, and centralized storage of data originating from various medical information systems. It is the platform core, within which the MDM operates, that will serve as the single source of truth for all connected digital healthcare services. This ensures continuity, accuracy and consistency of data across the national system.

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

The MDM Service is not merely an auxiliary module, but rather the foundation of Uzbekistan's digital healthcare transformation. It ensures high data quality, interoperability, and security, while supporting the implementation of initiatives within the DHP. The development and implementation of the MDM, based on international standards and integrated with national systems, demonstrate a sustainable and scalable approach to the establishment of a digital healthcare ecosystem.


### Metadata and Security Management (MSM)
As part of the development of the Digital Health Platform (DHP), the Metadata and Security Management component plays a key role in metadata management, ensuring information security, and implementing access control mechanisms.

The development and implementation of this service are driven by the need to standardize processes related to the description, structuring, protection, and auditing of data stored and processed within the DHP, as well as to ensure compliance with legal requirements in the fields of information security, personal data protection, and healthcare regulations.

The purpose of creating the Metadata and Security Management service is:

- To ensure reliable, standardized, and secure interaction among the components of the healthcare ecosystem connected to the Digital Health Platform (DHP) through:
  - Metadata is a centralized and machine-readable description of the capabilities, constraints, and structure of the FHIR server, expressed through the CapabilityStatement resource, StructureDefinition profiles, as well as dictionaries and classifiers (CodeSystem, ValueSet).
  - Security Management:
- access control, transparent audit of actions, and patient consent management (Consent),
- recording authorship and the legal significance of operations (Provenance),
- action logging (AuditEvent).
- To create a digital environment in which each participant (patient, physician, system, administrator) clearly understands:
  - What the platform does
  - How it protects data
  - Who has access, when, and for what purpose

The Metadata service is used in all cases when it is required to:

- Find out what the server supports (resources, operations, versions, profiles)
- Automatically configure the FHIR client for interaction
- Get a description of extensions, restrictions, and custom profiles
- Verify compliance with international or local requirements

Security Management Service is used wherever medical personal data is affected, including:

- Signing of electronic medical documents (Provenance)
- Managing patient access to data (Consent)
- Audit of all operations and actions of users (AuditEvent)
- Investigation of information security incidents
- Protection of the legal interests of the physician and the patient (through the recording of events and authorship)

### Nursing
### Patient health journey management

The PHJM Service defines the digital patient journey — from the initial point of contact to the final outcome of a treatment episode, encompassing intermediate observations, clinical orders, and interactions. The objective of the service is to provide end-to-end, structured, and reliable support for the patient's care pathway within the Unified Digital Healthcare Platform (UDHP) through:

* integration of all key clinical events of the patient into a single chain: encounters, diagnoses, observations, treatments, episodes, and outcomes;

* use of FHIR resources for standardized storage and linking of data across healthcare organizations, medical information systems (MIS), and the platform;

* provision of a unified view of treatment for the patient, physician, and administrator — in machine-readable, analytical, and visual forms.

Main objectives and use cases of the PHJM include:

- Viewing the complete patient history (medical record):
  - consolidation of all visits, diagnoses, tests, and prescriptions from different healthcare organizations into a single electronic patient record;
  - enabling physicians to access the context of previous encounters (including inpatient, outpatient, and laboratory data).
- Analyzing the effectiveness and outcomes of treatment:
  - identification of repeated visits, relapses, and chronic conditions;
  - monitoring the patient's condition dynamics through key indicators.
- Supporting interagency cooperation:
  - facilitating communication between different healthcare institutions and levels of care;
  - eliminating duplication of tests and reducing the burden on patients.
- Patient engagement in managing their health:
  - providing the patient with access to their medical events via a personal account;
  - enabling preparation for visits, tracking health dynamics, and monitoring prescriptions.
- Quality control of medical care delivery:
  - assessment of the completeness, timeliness, and justification of medical actions;
  - detection of deviations, duplicate encounters, and unnecessary prescriptions.
- Collecting patient feedback via the patient portal:
  - evaluation of the performance of a specific institution, physician, or service;
  - analysis of the quality of care;
  - strengthening patient trust.

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
### Supplies
### Vaccination Management

The Vaccination Management component is developed for the purpose of creating a unified standardized digital service for managing vaccination processes at the scale of the national healthcare system.

The purpose of the component is to eliminate fragmentation of vaccination data, increase transparency and manageability of immunization processes, and ensure reliable and timely information exchange between healthcare organizations, government authorities, and analytical systems.

The component ensures:

- centralized accounting of patient vaccination data;
- support of the full vaccination lifecycle (prescription, scheduling, administration, monitoring);
- integration with Medical Information Systems and national immunization programs;
- generation of analytics and reporting for monitoring population immunization coverage.

