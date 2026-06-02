UZ Core AuditEvent is the immutable audit log of who accessed or changed what on the Digital Health Platform. It follows the IHE ATNA / DICOM audit model: the platform logs reads, creates, updates, deletes, searches, logins and break-glass events. A search records its query (base64-encoded) in `entity.query`, and failed or denied access (HTTP 401 / 403) is logged with a failure `outcome`. AuditEvents are written by the platform and are read-only to clients; they link to the [Patient](StructureDefinition-uz-core-patient.html) whose data was involved through `patient`.

### Each UZ Core AuditEvent **Must Have**

This profile adds no top-level mandatory cardinality of its own. The required elements are the ones inherited from the base resource: a **code** (what happened), a **recorded** timestamp, an **outcome.code**, at least one **agent** with a **who**, and a **source** with an **observer**. Within the **dhpCategory** category slice, when present, the **system** (DICOM `dcm`) and **code** are each 1..1.

### Each UZ Core AuditEvent **Must Support**

- a **category** - the event grouping, with a sliced **dhpCategory** coding from DICOM (required binding on its code);
- a **code** - the specific event sub-type (required binding);
- an **action** - create, read, update, delete or execute (required binding);
- an **occurredDateTime** and the **recorded** timestamp;
- an **outcome**, whose **code** uses the required outcome binding (success, or a failure for denied 401 / 403 access);
- the **patient** whose data was involved;
- an **agent** with its **type**, **role**, **who** and **authorization** (the purpose-of-use, required binding) - `who` may be a PractitionerRole, Practitioner, Patient or RelatedPerson;
- an **entity** with its **role**, **what**, **securityLabel** and **query** (the base64-encoded search, where applicable).

> Break-glass access is recorded here as an AuditEvent whose `agent.authorization` carries an emergency purpose-of-use.
