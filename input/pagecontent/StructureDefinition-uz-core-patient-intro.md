UZ Core Patient carries the administrative and demographic information that identifies a patient across the Digital Health Platform. It is the anchor that almost every clinical resource references through `subject` or `patient`. Patient identity is mastered centrally - in most workflows you will search for an existing Patient by identifier before creating a new one (see Quick Start below), so that the same person is not registered twice.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each UZ Core Patient Must Have

- at least one identifier. The PINFL (national personal identification number) is the primary way patients are identified on the platform and should be sent whenever it is known; the other identifiers (passport, birth certificate, health card, and so on) supplement it, or substitute for it when no PINFL is available. See [Identifier systems](identifiers.html) for every supported system URI and which to use, including the temporary identifiers for unidentified patients.

#### Each UZ Core Patient Must Support



- a name (Uzbek authoritative, with translations as designations);
- a gender (with the national `gender-other` extension where applicable);
- a birth date;
- an address - either an Uzbek address (coded administrative divisions: region, district, mahalla) or an international free-text address;
- the active flag (whether this patient record is in active use);
- nationality, citizenship, and the managing-organization attachment date (the patient's enrolment with their primary healthcare organization).

`maritalStatus` and the contact (next-of-kin) details are bound to national value sets where present.

> Populate the identifier *slice* that matches your data - you do not populate every slice. A patient typically has a PINFL plus one or more document identifiers.

For example API calls and a sample payload, see the [Quick Start](#quick-start) at the bottom of this page.
