## Payor identification

In the healthcare system of the Republic of Uzbekistan, care is paid for by payors — organizations that finance the services of providers (healthcare organizations). Today the only payor is the State Health Insurance Fund (SHIF), though the model allows for others in the future. This page describes how payors themselves are identified in the UZ Core profiles, and how a payor identifies the providers it has contracted with.

### How a payor is identified

A payor is an organization (`Organization` with `type.coding = #pay`). Today a payor is identified by its tax identifier (Soliq), the same universal legal-entity identifier that any organization in the Republic carries.

### How a payor identifies providers

A payor (such as SHIF) maintains its own registry of the providers it has contracted with and assigns each of them a registration number within that registry. In FHIR this identifier is modelled as follows:

- type HL7 v2-0203 `PRN` ("Provider number") — it identifies the provider, not the payor;
- `system` — the namespace of the specific payor;
- `value` — unique within the payor's namespace: one code corresponds to exactly one organization;
- `assigner` — a reference to the payor organization that assigned the code.

Each payor uses its own namespace and its own code format. A single provider may carry several such identifiers — one per payor it works with.

### Contract, legal entity, and branches

A payor contracts with a legal entity, so the contracted organization always has a tax identifier (Soliq); it is to this legal entity that the payor assigns its code (`PRN`) and to which the contract is tied.

Care, however, may be delivered by branches of that legal entity. A branch is modelled as a separate `Organization` linked to the head organization through `partOf`. A branch is not always a separate economic entity and may not have its own `taxId`. Therefore the existence of a contract with the payor is determined not from the branch itself but from the head legal entity: from the branch, follow `partOf` up to the organization that has a `taxId` (and the payor's code), and check the contract against it.

### State Health Insurance Fund (SHIF)

SHIF is a payor (`type.coding = #pay`); as an organization it is identified by its tax identifier (Soliq). To the providers that have contracted with it, the Fund assigns a code within its own namespace:

- `system`: `https://dhp.uz/fhir/core/sid/org/uz/shif`
- type: `PRN` ("Provider number")
- value format: `^[A-Z]{3}[0-9]{6}$` — 3 uppercase Latin letters followed by 6 digits (e.g., `OAA000024`)
- `assigner`: a reference to the SHIF organization

For the concrete system URIs and a JSON example, see [Identifier systems](identifiers.html).
