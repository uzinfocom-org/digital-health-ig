UZ Core RelatedPerson represents a person connected to a patient - a next-of-kin, legal representative, or parent/guardian. It always belongs to one [Patient](StructureDefinition-uz-core-patient.html) and is used wherever the platform needs to record who a patient is associated with: for example, the parent who consents to and views a child's immunizations. Unlike a Practitioner, a RelatedPerson is not a member of staff and has no professional role.

### Each UZ Core RelatedPerson **Must Have**

- **at least one identifier** - a national or document identifier from one of the defined slices (PINFL, local or international passport, birth certificate, driver's licence, diplomatic passport, health card, or military ID). Where a value is genuinely absent, the identifier may carry a `data-absent-reason`. See [Identifier systems](identifiers.html) for the supported system URIs;
- a **patient** reference - the patient this person is related to (must point to a UZ Core Patient).

### Each UZ Core RelatedPerson **Must Support**

- the **relationship** to the patient (coded from a required relationship value set);
- a **name** (use, text, family, given, suffix, period);
- **telecom** contact details (with required system and use bindings);
- a **gender** (with the national `gender-other` extension where applicable);
- an **address** - either an Uzbek address (coded administrative divisions) or an international free-text address;
- the **active** flag, a **birth date**, and the **period** during which the relationship is/was valid.

> Populate the identifier *slice* that matches your data - you do not populate every slice - but at least one identifier is required. The `gender-other` extension may only be used when `gender` is set to `other`.
