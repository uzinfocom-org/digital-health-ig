# Must Support

Many elements in UZ Core profiles are flagged **Must Support** (the **S** flag in the profile tables). This page defines exactly what that obligation means - because "must support" is meaningless without a precise definition, and it is the single most common source of confusion for implementers.

## The short version

> If an element is marked **Must Support**, a system that **produces** the resource must be able to populate it whenever the information is available, and a system that **consumes** the resource must be able to receive and process it without error.

Must Support is about *capability*. It does not, by itself, make an element mandatory - that is what cardinality (`1..`) does. An element can be Must Support and still be optional (`0..1`): you only have to send it *when you have the data*.

## Must Have vs Must Support

Each profile page lists two sets in plain language at the top:

- **"Each [Resource] Must Have …"** - the **mandatory** elements (cardinality `1..1` or `1..*`). These must always be present, or the resource is invalid.
- **"Each [Resource] Must Support …"** - the **Must Support** elements (the **S** flag). These must be populated *when the data exists*, and must be handled on receipt.

A worked example, [UZ Core Patient](StructureDefinition-uz-core-patient.html):

- **Must Have:** at least one `identifier`.
- **Must Support:** `name`, `gender`, `birthDate`, `address`, `active`, and the nationality / citizenship / managing-organization extensions.

So a Patient is invalid without an identifier, but a Patient whose birth date is genuinely unknown is still valid - you supported `birthDate`, you just did not have a value.

## What "support" means, by element kind

The obligation is interpreted according to the kind of element:

| Element kind | A **producing** system must … | A **consuming** system must … |
|--------------|-------------------------------|-------------------------------|
| **Primitive** (string, date, code, boolean …) | be able to provide the value when it has it | be able to read and store/display the value |
| **Complex** (e.g. `address`, `name`) | be able to provide at least one of the sub-elements that are themselves Must Support | be able to process those sub-elements |
| **Reference** | be able to provide a reference to the target profile(s) listed | be able to resolve and follow the reference |
| **Coded** (bound to a value set) | be able to provide a code from the bound value set | be able to interpret codes from that value set |
| **Sliced** element | be able to provide the slices relevant to its data | be able to process any of the defined slices it receives |

## When you do not have the data

A producer that supports an element but has no value for it should follow the rules on [General guidance → Missing & suppressed data](general-guidance.html#missing-data). In short:

- If a value is simply **not present**, omit the element (unless cardinality makes it mandatory).
- If the element is **mandatory but the value is genuinely unknown**, use the appropriate "unknown" code or a data-absent-reason rather than inventing a value.
- Never send a placeholder or fake value to satisfy a Must Support element.

## How Must Support is enforced

The DHP platform validates every create and update against the relevant profile and its value sets - structure, cardinality, data types and terminology bindings. A resource that violates a mandatory cardinality or a required binding is rejected with an `OperationOutcome` (see [General guidance → Errors](general-guidance.html#errors)). Must Support obligations on *consumers* are a conformance expectation for connecting systems rather than something the server can reject, but they are part of what your system is certified against when it onboards to the platform.

## What Must Support is *not*

- It is **not** the same as mandatory. A Must Support optional element can be absent when you have no data.
- It does **not** mean "display in the UI". It means your system can technically handle the element; how you surface it is your design choice.
- It does **not** relax when inconvenient. If your system simply cannot produce or process a Must Support element, it does not conform.

## Where to go next

- [How to read this guide](how-to-read.html) - the flags and table columns.
- [General guidance](general-guidance.html) - missing data, units, terminology, Bundles.
- Each profile page - the per-resource "Must Have / Must Support" lists.
