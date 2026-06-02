UZ Core PlanDefinition holds the national immunization schedule of Uzbekistan expressed as computable logic. Each recommended dose is a `PlanDefinition.action`: the vaccine detail is given on the action itself, or via `definitionCanonical` to an ActivityDefinition, or via national extensions (dose sequence, maximum interval, grace period). The timing of a dose is carried in `action.timing[x]` (an age or a schedule), minimum intervals between doses in `action.relatedAction.offsetDuration`, and eligibility rules in `action.condition`. This is the resource the recommendation engine reads to build each patient's [ImmunizationRecommendation](StructureDefinition-uz-core-immunization-recommendation.html). Only one schedule version may be active at a time for a given scope or jurisdiction.

### Each UZ Core PlanDefinition **Must Have**

- a **url** - the canonical identifier for this schedule;
- a machine-processable **name**;
- a **description** of what the schedule covers.

### Each UZ Core PlanDefinition **Must Support**

- an **identifier**, **version** and **version algorithm**, a human-readable **title**, and the **status** (draft, active, retired);
- the **subject** the schedule applies to (a coded concept or a reference);
- the **date**, **publisher**, **use context**, **approval date** and **effective period**;
- the **actions** that make up the schedule, each with a **linkId**, **title**, **description** and **code**;
- per action: a **condition** (eligibility - its **kind** and FHIRPath **expression**), a **related action** (the **target** action, **relationship**, and **offset** as a duration or range for minimum intervals), the **timing** (an **age** or a **schedule**), a **participant** (its **actor id** and **type**), and the **definition** (a **canonical** link to an ActivityDefinition or other definition, or a **uri**).

> The schedule must satisfy schedule-validation rules: no gaps in the dose sequence, no impossible timing windows, and no two active overlapping versions for the same scope.
