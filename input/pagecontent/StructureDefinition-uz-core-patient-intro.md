UZ Core Patient carries the administrative and demographic information that identifies a patient across the Digital Health Platform. It is the anchor that almost every clinical resource references through `subject` or `patient`. Patient identity is mastered centrally - in most workflows you will **search for an existing Patient by identifier before creating a new one** (see Quick Start below), so that the same person is not registered twice.

### Each UZ Core Patient **Must Have**

- **at least one identifier** - a national or document identifier from one of the defined slices (PINFL, passport, birth certificate, health card, and so on). See [Identifier systems](identifiers.html) for every supported system URI and which to use, including the temporary identifiers for unidentified patients.

### Each UZ Core Patient **Must Support**

- a **name** (Uzbek authoritative, with translations as designations);
- a **gender** (with the national `gender-other` extension where applicable);
- a **birth date**;
- an **address** - either an Uzbek address (coded administrative divisions: region, district, mahalla) or an international free-text address;
- the **active** flag (whether this patient record is in active use);
- **nationality**, **citizenship**, and the **managing-organization attachment** date (the patient's enrolment with their primary healthcare organization).

`maritalStatus` and the contact (next-of-kin) details are bound to national value sets where present.

> Populate the identifier *slice* that matches your data - you do not populate every slice. A patient typically has a PINFL plus one or more document identifiers.
