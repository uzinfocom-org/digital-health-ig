Profile: UZCoreGoal
Parent: Goal
Id: uz-core-goal
Title: "UZ Core Goal"
Description: "Uzbekistan Core Goal profile, used for a patient, group or organization care. For example: weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc."
* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "The external identifier of this goal (for example, the number in the database of an insurance company or another clinic)."

* lifecycleStatus MS
* lifecycleStatus ^short = "At what stage of planning is the goal.

Options: proposed, planned, accepted, active (in progress), suspended, completed, canceled, input error, rejected."
* lifecycleStatus from GoalStatusVS (required)

* achievementStatus MS
* achievementStatus ^short = "Assessment of progress (how are things going?).

Options: in progress, improving, deteriorating, unchanged, achieved, maintained, not achieved, no progress, unreachable."
* achievementStatus from GoalAchievementVS (required)

* category MS
* category ^short = "Grouping goals by type.

Examples: Treatment, Diet, Behavioral therapy, Nursing."
* category from GoalCategoryVS (example)

* continuous MS
* continuous ^short = "Check box (Yes/No). If the answer is Yes, it means that after achieving the goal, efforts do not stop, but are constantly required to maintain the result (for example, «maintain a diet» for life)."

* priority MS
* priority ^short = "The importance of this goal.

Options: high, medium, low."
* priority from GoalPriorityVS (required)

* description MS
* description ^short = "A text or code that tells you exactly what the goal is."
* description from GoalDescriptionVS (example)

* subject MS
* subject only Reference(UZCorePatient or Group or UZCoreOrganization)
* subject ^short = "The person for whom this goal is set (Patient, Group of people or Organization)."

* start[x] MS
* start[x] ^short = "When the work on the goal begins."
* start[x] from GoalStartEventVS (example)

* target MS
* target ^short = "A container for specific numbers or conditions that we strive for.

+ Rule: Goal.target.measure is required if Goal.target.detail is populated."
* target.measure MS
* target.measure ^short = "What parameter are we monitoring? (Parameter code, for example, «Body weight» or «Blood glucose»)."
* target.detail[x] MS
* target.detail[x] ^short = "The figure itself or the state that needs to be achieved."
* target.due[x] MS
* target.due[x] ^short = "The deadline for achieving the indicator.
May be:
• DueDate: A specific date (by 01.01.2024).
• dueDuration: Duration (2 weeks after the start)."

* statusDate MS
* statusDate ^short = "The calendar date when the lifeCycleStatus was updated."
* statusReason MS
* statusReason ^short = "The reason for the current status."

* source MS
* source only Reference(CareTeam or UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson)
* source ^short = "Who came up with/set this goal?"

* addresses MS
* addresses only Reference(UZCoreCondition or UZCoreClinicalCondition or UZCoreObservation or UZCoreSocioeconomicObservation or MedicationStatement or MedicationRequest or NutritionOrder or ServiceRequest or RiskAssessment or Procedure)
* addresses ^short = "Medical problems for which the goal is set."

* note MS
* note ^short = "Comments about the goal."

* outcome MS
* outcome only CodeableReference(UZCoreObservation)
* outcome ^short = "What result was achieved regarding this goal? Free-text in concept.text, SNOMED, or custom codes may be used."


Instance: example-goal
InstanceOf: UZCoreGoal
Title: "Example Goal"
Description: "An example goal instance for a patient aiming to manage benign essential hypertension."
Usage: #example
* language = #en

* lifecycleStatus = #active "Active"
* achievementStatus = $goal-achievement#in-progress "In progress"

* category = $goal-category#dietary "Dietary"
* continuous = true

* priority = $goal-Priority#high-priority "High priority"
* description = $sct#1201005 "Benign essential hypertension"

* subject = Reference(example-salim)
* startDate = "2024-01-01"
* target[0].dueDate = "2024-06-01"

* statusDate = "2024-01-15"
* statusReason = "The patient started taking medications."

* source = Reference(example-practitioner)
* note[0].text = "Weekly blood pressure monitoring."
