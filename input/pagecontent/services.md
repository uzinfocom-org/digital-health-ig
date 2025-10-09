### Ambulance  
\< add one paragraph description of the service here \>

### Appointment and Scheduling  
### Blood Management 
### Clinical Decision Support  
### Clinical Health Records 
### Diagnostics and Imaging  
### Laboratory 
### Master Data Management 
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

The MDM Service is not merely an auxiliary module, but rather the foundation of Uzbekistan’s digital healthcare transformation. It ensures high data quality, interoperability, and security, while supporting the implementation of initiatives within the DHP. The development and implementation of the MDM, based on international standards and integrated with national systems, demonstrate a sustainable and scalable approach to the establishment of a digital healthcare ecosystem.


### Metadata and Security Management 
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

The PHJM Service defines the digital patient journey — from the initial point of contact to the final outcome of a treatment episode, encompassing intermediate observations, clinical orders, and interactions. The objective of the service is to provide end-to-end, structured, and reliable support for the patient’s care pathway within the Unified Digital Healthcare Platform (UDHP) through:

* integration of all key clinical events of the patient into a single chain: encounters, diagnoses, observations, treatments, episodes, and outcomes;

* use of FHIR resources for standardized storage and linking of data across healthcare organizations, medical information systems (MIS), and the platform;

* provision of a unified view of treatment for the patient, physician, and administrator — in machine-readable, analytical, and visual forms.

Main objectives and use cases of the PHJM include:

- Viewing the complete patient history (medical record):
  - consolidation of all visits, diagnoses, tests, and prescriptions from different healthcare organizations into a single electronic patient record;
  - enabling physicians to access the context of previous encounters (including inpatient, outpatient, and laboratory data).
- Analyzing the effectiveness and outcomes of treatment:
  - identification of repeated visits, relapses, and chronic conditions;
  - monitoring the patient’s condition dynamics through key indicators.
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
### Reimbursement 
### Screening Schedules Management  
### Supplies   
### Vaccination Management  

