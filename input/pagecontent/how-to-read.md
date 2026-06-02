# How to read this guide

This page explains how to read the UZ Core profiles so you can move from "I have a clinical task" to "this is the resource and these are the fields I need". Read it once before you start implementing - it explains the conventions used on every profile page.

If you are completely new to FHIR, start with [FHIR basics](fhir-basics.html) first, then come back here.

## What a profile is

UZ Core does not invent new data structures. Each UZ Core profile takes a standard FHIR R5 resource (for example `Patient` or `Observation`) and adds national rules on top of it: which elements are required, which must be supported, which national identifier systems and terminologies to use, and which Uzbekistan-specific extensions apply. A FHIR resource that is valid against a UZ Core profile is also a valid base FHIR resource.

Because profiles only add rules, **a profile page mostly tells you what is *different* from base FHIR** - what you must populate, and what you must be able to handle. Everything else behaves exactly as it does in the [base FHIR R5 specification](https://hl7.org/fhir/R5/).

## The four views on a profile page

Every profile page (for example [UZ Core Patient](StructureDefinition-uz-core-patient.html)) shows the same set of tabs above the element table:

| View | What it shows | When to use it |
|------|---------------|----------------|
| **Key Elements** | The constrained, must-support and mandatory elements - the curated short list | Start here. This is the "what do I actually need" view. |
| **Differential** | Only what UZ Core changed relative to base FHIR | To see the national rules at a glance. |
| **Snapshot** | Every element of the resource, base + profile | When you need the full picture of an element you don't see elsewhere. |
| **All** | Everything, including mappings and constraints | Reference. |

For most implementation work, the **Key Elements** view plus the narrative on this and the profile page is all you need.

## Reading the element table

Each row in the table is one element (field). The columns are:

- **Name** - the element path, e.g. `Patient.identifier` or `Observation.value[x]`. Indentation shows nesting.
- **Flags** - short symbols that carry the most important rules:

  | Flag | Meaning | What it means for you |
  |------|---------|------------------------|
  | **S** | Must Support | You must be able to populate this when you have the data, and to process it when you receive it. See [Must Support](must-support.html). |
  | **?!** | Modifier element | This element/extension changes the meaning of the resource (e.g. `status = entered-in-error`). Applications must process this element/extension and are not allowed to ignore it. |
  | **&Sigma;** | Summary element | Returned in search summaries. |
  | **C** | Has a constraint | An invariant applies - hover the element or read the Constraints section. |
  | **I** | Invariant | A formal rule (FHIRPath) that the data must satisfy. |

- **Cardinality** - how many times the element may appear:

  | Cardinality | Meaning |
  |-------------|---------|
  | `1..1` | **Mandatory**, exactly one. You *must* send it. |
  | `1..*` | **Mandatory**, at least one. |
  | `0..1` | Optional, at most one. |
  | `0..*` | Optional, any number. |

  Mandatory (`1..`) elements are the **"Must Have"** set. Must Support (`S`) elements are the **"Must Support"** set. The narrative at the top of each profile page lists both in plain language so you do not have to decode the table.

- **Type** - the data type or, for references, which resource(s) it points to. A reference like `Reference(UZ Core Patient)` means it must point to a resource conforming to that profile.
- **Description & Constraints** - the definition, the value set binding, and any fixed values.

## Slices

Some elements are **sliced** - the same element is split into named variants with their own rules. For example, `Patient.identifier` is sliced into `nationalId`, `passportLocal`, `passportForeign`, and so on, each fixed to a specific national identifier system. In the table, slices appear as indented rows under the element with the slice name in brackets, e.g. `identifier:nationalId`. Populate the slice that matches your data; you do not have to populate every slice.

See [Identifier systems](identifiers.html) for the full set of patient, practitioner and organization identifier slices and their system URIs.

## Terminology bindings

When an element is bound to a value set, the binding strength tells you how strict it is:

- **required** - you *must* use a code from the value set.
- **extensible** - use a code from the value set if one fits; otherwise you may use another code.
- **preferred** - the value set is encouraged but not enforced.
- **example** - illustrative only.

UZ Core publishes national CodeSystems and ValueSets in Uzbek (with Russian and English translations) and supplements international HL7 terminology with Uzbek/Russian translations. Codes can be validated against the platform terminology server - see [General guidance](general-guidance.html#terminology).

## Conventions used across UZ Core

- **Profiles are built on base FHIR R5** and document only the national delta.
- **Identifiers** follow a single hierarchical scheme (`https://dhp.uz/fhir/core/sid/...`). See [Identifier systems](identifiers.html).
- **Names and other human-readable text** carry Uzbek as the authoritative language, with translations as designations.
- **Every resource** is expected to carry profile and provenance metadata - see [General guidance](general-guidance.html#metadata).
- The platform **validates** every create/update against the relevant profile and value sets, returning an `OperationOutcome` on failure - so the rules on these pages are enforced, not advisory.

## Where to go next

- [Must Support](must-support.html) - what the **S** flag obliges you to do.
- [General guidance](general-guidance.html) - cross-cutting rules (missing data, units, Bundles, terminology, logical delete).
- [Workflows](workflows.html) - end-to-end scenarios showing which resources to create, in what order, for a real clinical task.
- Each profile page - the "Must Have / Must Support" narrative plus a "Quick Start" with example API calls.
