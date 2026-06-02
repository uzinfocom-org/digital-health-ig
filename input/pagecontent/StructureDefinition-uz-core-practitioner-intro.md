UZ Core Practitioner describes an individual healthcare professional - a doctor, nurse, technician, or other clinical staff member - across the Digital Health Platform. A Practitioner on its own carries identity, demographics, and qualifications; it is placed into a working context (organization, specialty, role) by [PractitionerRole](StructureDefinition-uz-core-practitioner-role.html), which is what clinical resources reference as the performer or requester. Practitioner records are mastered centrally: identity and demographics flow from the State Personalization Centre by PINFL, the professional identifier comes from the HRM Argos system, and qualifications come from Tibtoifa - so you should **search for an existing Practitioner by identifier before creating a new one**.

### Each UZ Core Practitioner **Must Have**

The base FHIR Practitioner has no mandatory elements, and this profile does not add any. In practice you will almost always populate the professional identifier and name (see Must Support below).

### Each UZ Core Practitioner **Must Support**

- an **identifier** - in particular the HRM Argos professional identifier slice (which carries the PINFL as a national unique individual identifier). See [Identifier systems](identifiers.html) for the supported system URIs;
- the **active** flag;
- a **name** (family, given, suffix, with a required name-use binding);
- **telecom** contact details (phone, email, with a required contact-system binding);
- a **gender** (with the national `gender-other` extension where applicable);
- a **birth date**, and the **deceased** date/flag;
- an **address** - either an Uzbek address (coded administrative divisions) or an international free-text address;
- a **photo**;
- one or more **qualifications**, each with a code from the Tibtoifa licence/certificate value set, plus its validity period and issuing organization.

> The `gender-other` extension may only be used when `gender` is set to `other`.
