# Projectholic Complete User Manual (Display-Name Aligned)

This is the full self-learn manual for end users.
It is intentionally detailed and uses the same display labels shown in the app UI (from `Projectholic/en.lproj/Localizable.strings`).

## 1. Product overview

Projectholic is a project execution system combining:
- `Projects` for project containers and goals
- `Calendar` for daily/weekly execution
- `Gantt` for timeline planning (iPad/Mac, Pro-oriented)
- `Follow-up` for delegated/shared task tracking
- `Stats` for progress and performance analysis
- `Settings` for language, appearance, work hours, and data transfer

## 2. What “full usage” looks like

A complete workflow in Projectholic usually looks like this:
1. Create a project in `Projects`
2. Define phases/deliverables
3. Add tasks with suitable `Type` (`Regular`, `Multi-day`, `Recurring`)
4. Place tasks on schedule in `Calendar`/`Gantt`
5. Run execution with `Start Focus`
6. Close loops in `Daily Summary` and `Day-End Review`
7. Review outcomes in `Stats`

## 3. First launch experience

On first launch, Projectholic shows a guided project setup flow.

Typical steps include:
1. Intro
2. Project name and color
3. Outcome / direction
4. Deliverables/phases
5. Starter tasks
6. Optional settings such as deadline, budget, weekend strategy

What users should do after onboarding:
1. Open the created project in `Projects`
2. Add at least 3 tasks (one for each `Type`)
3. Schedule them immediately in `Calendar`

## 4. Navigation model by device

## iPhone tabs
- `Projects`
- `Calendar`
- `Follow-up`
- `Stats`
- `Settings`

## iPad/Mac sidebar tabs
- `Projects`
- `Gantt`
- `Calendar`
- `Follow-up`
- `Stats`
- `Settings`

Notes:
- On iPhone, `Month` is represented through calendar experiences rather than a dedicated tab.
- On iPad/Mac, `Gantt` and month-style `Calendar` are separated for planning clarity.

## 5. Projects screen deep guide

`Projects` is the project library and entry point for creation.

Top bar controls:
- Sort tile (`chevron.up.chevron.down`)
- Add tile (`plus`)

Add options:
- `Guided (PMBOK)`
- `Quick Add`

Search and filtering:
- Search placeholder: `Search projects...`
- Tag-based filtering: `Filter by tags`
- Tag tokens also work with search text

Context menu on a project card:
- `Star Project` / `Unstar Project`
- `Tags`
- `Edit Project`
- `Copy Project`
- delete action

Copy options (when prompted):
- `Copy Project & Tasks`
- `Copy Project Only`

Subscription behavior:
- Free tier can create first project.
- Additional project creation may trigger a Pro gate.

## 6. Project detail architecture (`Plan` and `Timeline`)

Inside a project, users switch between:
- `Plan`
- `Timeline`

`Plan` is for structure:
- phases
- tasks
- subtasks
- editing project outcome/metadata

`Timeline` is for sequence and timing:
- order and schedule
- collapse/expand timeline sections
- status tracking across time

Common in-project sections:
- phase sections
- unassigned phase section (`Inbox` from `phase_task_unassigned`)
- `Unscheduled` task handling

## 7. Phases and deliverables

Phases are used to break projects into structured chunks.

Users can:
- add phase
- edit phase
- mark phase complete
- reorder phases
- delete phase

On phase deletion, app may ask whether to:
- remove phase only and keep tasks
- remove phase with tasks

This prevents accidental data loss when reorganizing.

## 8. Task creation and edit fundamentals

Task editor can set:
- title
- notes
- project linkage
- plan date/time
- duration
- due date
- subtasks
- reminder/calendar sync overrides
- task `Type`

Primary edit actions users see:
- `Edit Task`
- `Copy Task`
- `Delete Task`

Task completion controls:
- `circle` means incomplete
- `checkmark.circle.fill` means complete

## 9. Task `Type` concept

UI label: `Type`

Available display values:
- `Regular`
- `Multi-day`
- `Recurring`

Each type changes scheduling behavior and visual indicators.

## 10. `Regular` tasks

Use when work should be represented as a single normal task.

Typical behavior:
- appears as one block when scheduled
- uses normal completion state
- supports focus and sharing actions

## 11. `Multi-day` tasks

Use for large tasks that cannot fit one practical session/day.

Behavior:
- supports overflow schedule blocks
- can auto-spread work using constraints
- supports per-block completion handling

Typical auto constraints:
- start date
- max minutes/day
- min block minutes
- max block minutes
- skip weekends

Visual cues for multi-day continuation:
- backward arrow variant: continuing from previous day
- forward arrow variant: continuing into next day

## 12. `Recurring` tasks

Use for repeated obligations or routines.

Recurring settings include concepts like:
- `Repeats`
- `Every`
- `End Condition`
- `Never`
- `On Date`
- `Count`

Users can define daily/weekly/monthly/yearly patterns.
Instances can be managed from timeline/calendar views.

## 13. Calendar execution guide (`Calendar`)

`Calendar` is the daily operating screen.

Core operations:
- open scheduled tasks
- edit schedule rapidly
- complete tasks from timeline blocks
- inspect day workloads

Top area includes date controls and quick entries.
Menu includes:
- `Daily Summary`
- `Day-End Review`

Task block interactions:
- single tap: open task editor/details
- double tap: quick launch focus (auto-start path)
- long press: context menu actions

## 14. Multi-project planning guide (`Gantt`)

`Gantt` is designed for timeline-level planning.

Users can:
- inspect multiple projects in one timeline
- zoom timeline density
- filter by project or tags
- jump through time ranges
- open tasks from gantt rows

Toolbar controls include:
- filter (`line.3.horizontal.decrease.circle`)
- zoom out (`minus.magnifyingglass`)
- zoom in (`plus.magnifyingglass`)

If access is gated, users may see Pro upgrade UI.

## 15. Month planning (iPad/Mac `Calendar`)

Month view supports:
- selecting date cells
- opening day panel
- filtering by projects and tags

Filter sheet actions:
- `Clear`
- `Done`

Useful when users want mid-level planning without full gantt complexity.

## 16. Focus workflow (`Start Focus`)

Focus is task-linked.

Entry points:
- task context menu (`Start Focus`)
- double-tap task block

Session lifecycle:
- start
- pause
- resume
- stop

Additional behavior:
- active sessions can be minimized
- minimized session can be resumed via floating indicator
- history/logging preserved on task level

## 17. `Follow-up` (shared/delegated tasks)

`Follow-up` is where delegated tasks are monitored.

Capabilities:
- view shared tasks
- sort/group by date/person
- open task details
- reassign to another person
- stop sharing
- mark completion

Related symbols users often ask about:
- `person.2.fill`
- `person.2.arrow.trianglehead.counterclockwise`
- `xmark.circle`

## 18. `Stats` interpretation guide

`Stats` provides:
- month-level view
- quarter-level view
- year-level view
- project-level drill-ins

How to use as a user:
1. check trend quality
2. compare project completion behavior
3. identify overcommitment or delayed execution patterns

## 19. `Settings` full walkthrough

Main sections users will see:
- `Subscription Status`
- `General`
- `Learn`
- `About`
- `Support & Sharing`
- data transfer section
- `Purchases`

High-value controls:
- `Language`
- `Appearance`
- `Default Tab`
- `Work Hours`

Learning/support entries:
- `Projectholic 101`
- `View Onboarding`

Data transfer:
- export project data
- import project data
- choose import identity behavior

## 20. Cloud sync help (`iCloud Status`)

Cloud menu title is `iCloud Status`.

Common user-facing labels:
- `Cloud Sync Requires Pro`
- `Upgrade to Sync`
- `Uploading...`
- `Downloading...`
- `Sync Failed`
- `Sync Complete`
- `Refresh`
- `Sync Status`

When users report sync issues, ask them to:
1. open `iCloud Status`
2. read current state label
3. tap `Refresh`
4. check iCloud sign-in status if needed

## 21. Context menus: exact actions

## Task context menu
Possible actions include:
- `Start Focus`
- `Edit Task`
- `Copy Task`
- `Delete Task`
- completion toggle (in some contexts)

## Project context menu
Possible actions include:
- `Star Project` / `Unstar Project`
- `Tags`
- `Edit Project`
- `Copy Project`
- delete action

## 22. Button and icon reference (quick answers)

When a user asks “what does this button do?”, use this mapping:
- `xmark`: close current sheet/page
- `chevron.right`: open details / drill-down
- `ellipsis`: open additional actions
- `square.and.pencil`: edit action (`Edit Task`/edit context)
- `doc.on.doc`: copy/duplicate (`Copy Task`/`Copy Project`)
- `trash`: delete action
- `plus`, `plus.circle`, `plus.circle.fill`: add action
- `checkmark.circle.fill` / `circle`: completion state
- `timer`: focus action (`Start Focus`)
- `line.3.horizontal.decrease.circle`: filter panel
- `sparkles`: guided/help/upgrade highlight entry
- `lock.fill`: locked/Pro-gated state

## 23. Icon legend by area

## Navigation
- `folder.fill` => `Projects`
- `calendar` => `Calendar`
- `person.2.fill` => `Follow-up`
- `chart.xyaxis.line` => `Stats`
- `gear` => `Settings`
- `chart.bar.yaxis` => `Gantt`

## Task type indicators
- `repeat` / `repeat.circle.fill` => `Recurring`
- `repeat.1` / `repeat.1.circle.fill` => first recurring occurrence
- `arrow.backward(.circle.fill)` => multi-day block from previous day
- `arrow.forward(.circle.fill)` => multi-day block into next day

## Completion states
- `circle` => incomplete
- `checkmark.circle.fill` => complete
- `square` => subtask/block incomplete
- `checkmark.square.fill` => subtask/block complete

## Cloud states
- `icloud` + lock badge => Pro needed for sync
- `icloud.slash` => sign-in issue
- rotating cloud arrows => active sync
- `checkmark` cloud/circle => sync success
- warning/error cloud icons => sync issue

## 24. Daily user routines

## Routine A: Fast daily execution
1. Open `Calendar`
2. Check scheduled blocks
3. Start one priority task with `Start Focus`
4. Mark completions inline
5. End with `Daily Summary`

## Routine B: Weekly planning
1. Open `Projects`
2. Adjust project structure in `Plan`
3. Open `Gantt` (or `Calendar` month on iPad/Mac)
4. Rebalance tasks across days
5. Validate in `Stats`

## Routine C: Delegation follow-up
1. Open `Follow-up`
2. Group by person/date
3. Reassign or stop sharing where needed
4. Confirm completion status

## 25. Suggested learning order for new users

1. Learn `Projects` creation and sorting
2. Learn task `Type` differences
3. Learn `Calendar` block editing
4. Learn `Start Focus` and session lifecycle
5. Learn `Follow-up` delegation operations
6. Learn `Stats` interpretation basics
7. Configure `Settings` defaults and `Work Hours`

## 26. Troubleshooting reference

## “I can’t find a task”
Check:
- date range
- active filters
- `Unscheduled` area
- `Inbox`/unassigned phase area

## “I cannot add more projects”
Likely free-tier limitation after first project.

## “Sync is not updating”
Check `iCloud Status` labels and use `Refresh`.

## “My long task schedule looks wrong”
Open task editor, verify `Type` is `Multi-day`, then validate spread constraints.

## “Recurring behavior is unexpected”
Open recurring settings and check `Every`, `End Condition`, and selected pattern.

## 27. Support-answer template for UI questions

When users ask about a specific control:
1. Ask where they are (`Projects`, `Calendar`, `Gantt`, `Follow-up`, `Stats`, `Settings`)
2. Identify icon shape and nearby label
3. Map to section 22 and 23
4. If destructive action, explain confirmation impact

## 28. Glossary

- Project: top-level container in `Projects`
- Phase: deliverable segment inside a project
- `Regular`: one-time task type
- `Multi-day`: long task spread over time blocks
- `Recurring`: rule-based repeating task
- `Unscheduled`: task without scheduled slot
- Focus session: timed work record started via `Start Focus`
- `Follow-up`: shared/delegated task tracking screen
