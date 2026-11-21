# Clinical views

Clinician-facing views of an IG's profiles, styled on the openEHR CKM: overview, data table, mind map, form preview and, for use cases, the exchange steps.

```bash
scripts/clinical-views/generate.py --output-dir output --config scripts/clinical-views/views.json -o temp/clinical-views/clinical-views.html
```

`--config` is optional; leave it out for another IG to get the default view of every profile. Pass `--packages DIR` (repeatable) when the dependency packages are not in `~/.fhir/packages`, e.g. a private package cache.

It reads only the IG publisher's `output/` folder (snapshots, `expansions.json`, examples, `ImplementationGuide-*.json`) plus the dependency packages in `~/.fhir/packages`, so it works on any FHIR STU3 or later IG. Python 3 standard library only.

Every resource profile gets a view with no configuration. Elements shown are the Must Support ones (extensions included), the elements that contain them, mandatory top-level elements and extensions, and the mandatory parts of shown elements, never prohibited (`0..0`) ones; for a profile with no Must Support at all, the constrained (differential) elements. A shown element with no shown parts lists all of its parts. Datatypes such as Identifier, ContactPoint or CodeableConcept show as one field, with the codes the profile fixes or binds on their parts. Additional (R5 conditional) bindings show with the condition under which they apply. Complex extensions show their sub-extensions. Example values come from the largest instance whose `meta.profile` names the profile; in a use case, a section from another profile shows the instance the main example references (or, for a section with no `element`, an instance that references the main example), or no example when there is none.

## views.json

All keys are optional.

| Key | Meaning |
|---|---|
| `title`, `intro` | Page heading and intro text |
| `guideName` | Name used in "Open in the ..." links and the version badge |
| `titlePrefix` | Removed from profile titles, e.g. `UZ Core ` |
| `languages` | Listed on each overview |
| `igUrl` | Base for links into the guide; empty means relative links |
| `autoProfiles` | `false` to show curated views only (same as `--no-auto`) |
| `profiles` | Per-profile settings shared by every view, keyed by profile id |
| `views` | Curated views, shown as tabs ahead of the profile picker |

Per-profile settings: `labels`, `descriptions` (element id to text), `show`, `hide`, `expand`, `flatten`, `collapsed`, `attach`, `types`, `values`, `example`.

A view has `id`, `title`, `sub`, `icon`, `kind` (`archetype` for one profile, `template` for a use case), `profile`, overview text (`concept`, `description`, `purpose`, `use`, `misuse`, `keywords`), optional `sections` to group elements, `coverage` (more profiles whose elements must all be placed), `profiles` overrides (merged into the shared settings) and `steps` for the exchange view. See `views.json` for worked examples of both kinds.
