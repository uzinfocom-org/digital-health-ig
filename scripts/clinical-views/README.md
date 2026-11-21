# Clinical views

Clinician-facing views of an IG's profiles, styled on the openEHR CKM: overview, data table, mind map, form preview and, for use cases, the exchange steps.

```bash
scripts/clinical-views/generate.py --output-dir output -o temp/clinical-views/clinical-views.html
```

It reads only the IG publisher's `output/` folder (snapshots, `expansions.json`, examples, `ImplementationGuide-*.json`) plus the dependency packages in `~/.fhir/packages`, so it works on any IG. Python 3 standard library only.

Every resource profile gets a view with no configuration. Elements shown are the Must Support ones plus mandatory top-level elements; for a profile with no Must Support at all, the constrained (differential) elements. Examples come from the first instance whose `meta.profile` names the profile.

## views.json

All keys are optional; with no file the guide's title and the defaults are used.

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

A view has `id`, `title`, `sub`, `icon`, `kind` (`archetype` for one profile, `template` for a use case), `profile`, overview text (`concept`, `description`, `purpose`, `use`, `misuse`, `keywords`), optional `sections` to group elements, `coverage` (more profiles whose elements must all be placed), `profiles` overrides and `steps` for the exchange view. See `views.json` for worked examples of both kinds.
