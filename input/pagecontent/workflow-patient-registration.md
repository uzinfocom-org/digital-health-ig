This workflow shows how a medical information system (MIS) identifies or registers a patient and records which polyclinic and family doctor the patient is attached to. It is usually the first thing a MIS does, because every clinical resource points back to the [Patient](StructureDefinition-uz-core-patient.html). The one-line rule:

> Don't build the Patient by hand from what the patient tells you. Call [Patient/$populate](OperationDefinition-patient-populate.html) with the PINFL (or a document) and the platform finds or creates the Patient from the state registries. Attachment lives on that Patient and is changed with [$attach](OperationDefinition-patient-attach.html) and [$detach](OperationDefinition-patient-detach.html), not by editing the Patient with `PUT`.

Actors: the MIS at the registration desk; the platform (DHP), which checks organizations and practitioners against its master data registry; the state registries of natural persons and the Ministry of Justice child registry, which the platform calls on the MIS's behalf.

<div>{% include patient-registration-sequence.svg %}</div><br clear="all"/>

All operations below are declared in the [CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html) of both the playground and production [endpoints](api-access.html#endpoints). Patient/$populate, $attach, $detach and $relate are still `draft` OperationDefinitions, so their details may change.

### 1. Find or create the patient

Send the patient's identifier as a `system` + `code` + `value` triple. The operation resolves it to a PINFL, returns the existing Patient if one with that PINFL is already on the platform, and otherwise creates one from the state registries. The response is the Patient itself, not Parameters; keep its `id` for every later call.

```
POST [base]/Patient/$populate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "system", "valueUri": "http://terminology.hl7.org/CodeSystem/v2-0203" },
    { "name": "code", "valueCode": "NI" },
    { "name": "value", "valueString": "[PINFL]" } ] }
```

| `code` | Document | `value` | `birthDate` |
|--------|----------|---------|-------------|
| `NI` (National unique individual identifier) | PINFL | the 14-digit PINFL, checked locally | optional, extra matching criterion |
| `PPN` (Passport number) | passport or ID card | series and number | mandatory |
| `BCT` (Birth Certificate) | birth certificate | series and number | optional, extra matching criterion |

`system` is `http://terminology.hl7.org/CodeSystem/v2-0203`, as above, or one of the [identifier systems](identifiers.html) `https://dhp.uz/fhir/core/sid/pid/uz/ni`, `.../ppn/local`, `.../ppn/intl` or `.../bct`. If the citizen is not found in the registries, nothing is created and an error is returned. The address is fetched separately; if it is unavailable the Patient is still created, without an address. A patient the registries cannot know, such as a foreign national or an unidentified patient, is registered with a plain `POST [base]/Patient` as shown on the [Patient](StructureDefinition-uz-core-patient.html) profile page.

To check whether a patient is already registered without creating one, search instead:

```
GET [base]/Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[PINFL]
```

[Person/$populate](OperationDefinition-person-populate.html) takes the same parameters and returns a Person rather than a Patient. UZ Core defines no Person profile; for registering a patient, use Patient/$populate.

### 2. Choose the polyclinic and the doctor

Practitioners are linked to organizations through [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html). Three read-only operations resolve those links in one call, so the MIS can offer the patient a doctor who actually works at the chosen polyclinic:

```
GET [base]/Organization/[id]/$practitioners?_page=1&_count=20
GET [base]/Practitioner/[id]/$specializations
GET [base]/Practitioner/[id]/$organizations
```

- [Organization/$practitioners](OperationDefinition-organization-practitioners.html) lists the [Practitioner](StructureDefinition-uz-core-practitioner.html)s who work at an [Organization](StructureDefinition-uz-core-organization.html), each once. It is paged: `_count` defaults to 20, at most 100; `Bundle.total` is the full count.
- [Practitioner/$specializations](OperationDefinition-practitioner-specializations.html) returns the practitioner's active PractitionerRoles with `specialty`, `code` (job title) and `organization`, plus the referenced Organizations as `search.mode = include` entries. Use it to confirm the doctor is a family doctor at that polyclinic. It is not paged.
- [Practitioner/$organizations](OperationDefinition-practitioner-organizations.html) is the reverse of $practitioners: the organizations a practitioner works at.

The `[id]` must be a UUID, otherwise the server answers `400` with `invalid` (Invalid Content). When there is nothing to list, the answer is `200` with a Bundle holding one OperationOutcome with `not-found` (Not Found), not an empty Bundle. To find the organization's `id` from its tax ID, search `GET [base]/Organization?identifier=https://dhp.uz/fhir/core/sid/org/uz/soliq|[tin]`.

### 3. Attach the patient

[Patient/$attach](OperationDefinition-patient-attach.html) writes `Patient.managingOrganization` (the polyclinic), `Patient.generalPractitioner` (the family doctor) and the [attachment date](StructureDefinition-managing-organization-attachment.html) in one call, after checking that the organization and the practitioner exist. At least one of `organization` and `practitioner` is required.

```
POST [base]/Patient/[id]/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "organization", "valueReference": { "reference": "Organization/[id]" } },
    { "name": "practitioner", "valueReference": { "reference": "Practitioner/[id]" } },
    { "name": "attachmentDate", "valueDate": "2026-11-25" } ] }
```

If the MIS knows only the PINFL, call the operation at type level instead. It finds or creates the patient as $populate does, so one call replaces the $populate + $attach pair:

```
POST [base]/Patient/$attach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "patientIdentifier", "valueIdentifier": { "value": "[PINFL]" } },
    { "name": "organization", "valueIdentifier": { "value": "[organization identifier]" } } ] }
```

`organization` and `practitioner` take either a relative `valueReference` or a `valueIdentifier` that must match exactly one resource (its `system` is ignored). `practitioner` must be a Practitioner, not a PractitionerRole. The response is the updated Patient:

```
{ "resourceType": "Patient", "id": "[id]",
  "extension": [{ "url": "https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment",
                  "valueDate": "2026-11-25" }],
  "managingOrganization": { "reference": "Organization/[id]" },
  "generalPractitioner": [{ "reference": "Practitioner/[id]" }], ... }
```

Changing one side of the attachment affects the other:

| Call | `managingOrganization` | `generalPractitioner` | Attachment date |
|------|------------------------|-----------------------|-----------------|
| new `organization`, no `practitioner` | set | cleared | `attachmentDate`, or today |
| new `practitioner`, no `organization` | cleared | set | set to today |
| both supplied | set | set | `attachmentDate`, or today |
| same `organization` as now | unchanged | set if supplied | unchanged |
| identical repeat call | no new version of the Patient | | |

`attachmentDate` is a full `YYYY-MM-DD` date, is accepted only with `organization`, and may be neither in the future nor earlier than the date already stored.

> The server does not enforce the rule that a patient may change polyclinic only once a year, does not check that the practitioner works at the organization, and ignores `Patient.active` and `Patient.deceased[x]`. The MIS checks these before calling: read the stored attachment date from the Patient, and use step 2 for the doctor.

To list the patients attached to a polyclinic or a doctor:

```
GET [base]/Patient?organization=Organization/[id]
GET [base]/Patient?general-practitioner=Practitioner/[id]
```

### 4. Relate a parent and a child

[Patient/$relate](OperationDefinition-patient-relate.html) is called on the parent's Patient, which must carry a PINFL in `https://dhp.uz/fhir/core/sid/pid/uz/ni`. The child is named by PINFL. The platform confirms against the Ministry of Justice child registry that the parent is the child's mother or father, finds or creates the child's Patient as $populate does, and creates a [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) for the parent pointing to the child.

```
POST [base]/Patient/[parent-id]/$relate
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "childIdentifier", "valueIdentifier": { "value": "[child PINFL]" } },
    { "name": "relationship", "valueCode": "MTH" },
    { "name": "link", "valueBoolean": true } ] }
```

- `relationship` defaults to `GUARD` (guardian) from `http://terminology.hl7.org/CodeSystem/v3-RoleCode`; send `MTH` (mother) or `FTH` (father) when you know it.
- `link = true` also adds a `Patient.link` with `type = seealso` (See also) from the parent Patient to the RelatedPerson.
- The response is a `collection` Bundle: the RelatedPerson, the child Patient, the parent Patient (only when `link` is `true` and the write succeeded), and an OperationOutcome, always last.

> $relate always answers `200`. Read the severity of the closing OperationOutcome: `error` means nothing was created and the Bundle holds only that OperationOutcome. Unconfirmed kinship is `business-rule` (Business Rule Violation) and leaves no child Patient behind.

The call is idempotent per parent PINFL and child: an existing active relation is returned unchanged, though kinship is re-checked every time. The relation records kinship only and by itself grants no access to the child's data. To find a parent's children:

```
GET [base]/RelatedPerson?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|[parent PINFL]
```

### 5. Detach the patient

[Patient/$detach](OperationDefinition-patient-detach.html) reverses $attach: it clears `managingOrganization`, `generalPractitioner` and the attachment date together. A `reason` is required; no code system is defined for it, so a `text` is enough. The reason is logged but not stored on the Patient.

```
POST [base]/Patient/[id]/$detach
{ "resourceType": "Parameters",
  "parameter": [
    { "name": "reason", "valueCodeableConcept": { "text": "Patient's application to detach" } } ] }
```

Detaching only the polyclinic or only the doctor is not supported; use $attach to change one side. If there is nothing to detach, the current Patient is returned without a new version.

### 6. Handle the outcomes

| Issue code | Where | Meaning and action |
|------------|-------|--------------------|
| `invalid` (Invalid Content) | $populate | unknown `system` or `code`; fix the request |
| `invalid` (Invalid Content), HTTP `400` | $practitioners, $organizations, $specializations | the `[id]` is not a UUID |
| `invalid` (Invalid Content) | $attach | `patientIdentifier` sent at instance level |
| `required` (Required element missing) | $attach; $detach with HTTP `400` | neither `organization` nor `practitioner`; no `reason` |
| `value` (Element value invalid) | $attach; $detach with HTTP `400` | an absolute or non-Organization/Practitioner reference; an empty `reason` |
| `structure` (Structural Issue) | $attach | both `valueReference` and `valueIdentifier` sent for one parameter |
| `not-found` (Not Found), HTTP `422` | $attach | the organization or practitioner does not exist |
| HTTP `412` | $attach, $detach | the Patient changed between read and write; read it again and retry |
| severity `error`, HTTP `200` | $relate | the relation was refused; nothing was created |

### Related

- Profiles: [Patient](StructureDefinition-uz-core-patient.html) &middot; [RelatedPerson](StructureDefinition-uz-core-relatedperson.html) &middot; [Practitioner](StructureDefinition-uz-core-practitioner.html) &middot; [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html) &middot; [Organization](StructureDefinition-uz-core-organization.html)
- [Identifier systems](identifiers.html) &middot; [Managing organization attachment](StructureDefinition-managing-organization-attachment.html)
- Component: [Master Data Management](components.html#master-data-management-mdm)
- [Workflows overview](workflows.html) &middot; [General guidance](general-guidance.html)
