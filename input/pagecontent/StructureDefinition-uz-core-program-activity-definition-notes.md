### Program activity focus and compatibility

New program activities use this profile and declare exactly one `useContext` with `code = usage-context-type#focus` and a coded focus value, following the same recognition rule as UZ Core PlanDefinition. The existing UZ Core ActivityDefinition canonical remains unchanged and does not acquire a new mandatory constraint: previously published activities continue to validate against it. Migrate activities to this stricter profile after adding their focus.

ActivityDefinition.kind accepts the existing ImmunizationRecommendation and MedicationRequest types and additionally ServiceRequest and Task. Their translations are supplied by the request-resource-types supplement.

The standard `workflow-shallComplyWith` extension can name a Questionnaire definition whose expectations apply to an activity. Screening-specific questionnaires and examples belong to Integrations, not Core. ActivityDefinition describes expected work; it does not record a patient's performance or implement an evaluation service.

For screening definitions, the program identifier convention is `https://dhp.uz/fhir/core/sid/prg/uz/program`, in addition to any stable definition identifier. The identifier's value is the program code from [Screening Program Types](ValueSet-screening-program-type-vs.html). Clinical coding and integration-area useContext are separate fields. Integrations registers this identifier namespace and profiles its use on both program definitions and patient plans.
