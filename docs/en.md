# Projectholic User Guide

Welcome. This guide covers everything Projectholic can do — from your very first project to running real work day to day. It's built to be skimmed: jump to any topic from the contents, or read it straight through. Every button and label below matches exactly what you see in the app.

## What's new

Focus first, then organize the work when the session is real:

- **Start-first Focus** — begin from Home with one tap, without choosing or creating a task first. Available on iPhone, iPad, and Mac. See section 16.
- **Unlogged Focus** — after a session, link the time to a task, phase, or project; create a task; or keep it in the inbox for later. See section 16.
- **Focus Calendar** — completed sessions appear on the Today timeline and open their linked work. See section 16.
- **Focus App Lock** — on iPhone and iPad, use Screen Time to block chosen distracting apps while focus is running. See section 16.
- **Apple Import** — add selected Apple Calendar events and Reminders directly to any project. See section 30.
- **Clearer Task View** — review schedules, subtasks, recurring rules, and details in a cleaner read-only layout before choosing Edit. See section 31.

This release also improves Today and Gantt interactions, recurring-task focus progress, and overall reliability.

## 1. Product overview

Projectholic is a project execution system combining:
- `Projects` for project containers and goals
- `Calendar` for daily/weekly execution and Focus history
- `Gantt` for timeline planning on iPhone, iPad, and Mac
- `Board` for status-based task flow
- `Focus` for start-first sessions, Focus Calendar, and unlogged time
- `Follow-up` for delegated/shared task tracking
- `Stats` for progress and performance analysis
- `Settings` for language, appearance, work hours, and data transfer

## 2. What “full usage” looks like

A complete workflow in Projectholic usually looks like this:
1. Start Focus immediately, or create a project in `Projects`
2. Define phases/deliverables
3. Add tasks with suitable `Type` (`Regular`, `Multi-day`, `Recurring`)
4. Place tasks on schedule in `Calendar`/`Gantt`
5. Link unlogged Focus time to the work when you are ready
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
- `Gantt`
- `Board`
- `More`

## iPad/Mac sidebar tabs
- `Projects`
- `Gantt`
- `Calendar`
- `Board`
- `Focus`
- `Follow-up`
- `Stats`
- `Learn`
- `Settings`

Notes:
- On iPhone, `More` contains Focus inbox, Follow-up, Stats, Learn, and Settings destinations that do not fit the compact tab bar.
- On iPhone, `Gantt` uses a compact portrait layout and expands in landscape.
- On iPad/Mac, `Gantt` and month-style `Calendar` are separated for planning clarity.

## 5. Projects screen deep guide

`Projects` is the project library and entry point for creation.

Top bar controls:
- Sort tile (`chevron.up.chevron.down`)
- Add tile (`plus`)

Add options:
- `Guided (PMBOK)`
- `Quick Add`
- `From a Template` (opens the `Start with a Template` gallery — see section 29)

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
- single tap: open the read-only task view
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

## 16. Start-first Focus, Focus Calendar, and App Lock

Focus no longer requires a task up front.

Start-first entry points:
- tap the Focus control from Home to begin immediately
- on iPad and Mac, open the `Focus` sidebar destination for the timer hub
- use a task's `Start Focus` action or double-tap its Calendar block when you already know the work

Session lifecycle:
- start
- pause
- resume
- minimize and keep timing elsewhere in the app
- conclude

When an unassigned session ends, choose one of these outcomes:
- link it to an existing task, phase, or project
- create a new task for the work
- keep it in the `Unlogged Focus` inbox and organize it later

Focus Calendar:
- completed sessions appear as overlays on the Today timeline
- linked sessions open the related work
- the regular-width `Focus` destination groups the timer, Focus Calendar, and unlogged inbox

Focus App Lock (iPhone and iPad):
- choose distracting apps under `Focus App Lock`
- grant the Screen Time permission when prompted
- selected apps are blocked while the timer is running and released when focus ends

Task-linked sessions continue to preserve history on the task and contribute to project focus progress.

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

## 22. What each button and icon does

Not sure what a button does? Here's a quick key to the icons you'll run into most:
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
1. Start Focus from Home as soon as you begin
2. Open `Calendar` when you need the day's scheduled blocks
3. Conclude the session and link it to the work, or keep it unlogged
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
4. Learn start-first Focus, assignment, and the unlogged inbox
5. Learn `Follow-up` delegation operations
6. Learn `Stats` interpretation basics
7. Configure `Settings` defaults and `Work Hours`

## 26. Task Dependencies & Cascade (`Dependencies`, `Beta`)

Link tasks so one only starts after another finishes. When a task you depend on moves, everything downstream automatically reschedules to stay in order — and one tap undoes the shift. This ships as `Beta`: it works, but expect ongoing refinements.

Two ways to link tasks:
- On the `Gantt`: long-press a task bar, choose `Do before…`, then tap the task it comes before.
- From a task: open it, go to `Plan` > `Dependencies`, and add under `Do after` or `Do before`.

Cascade behavior:
- Moving or rescheduling a predecessor shifts its dependents forward to keep the order valid.
- Before it applies, a preview shows how many tasks will move (`Shift N tasks?`); `Undo` reverts the whole cascade.
- Circular links are blocked (`Would create a loop`).

Where: `Gantt` tab (long-press a bar), or a task's `Plan` > `Dependencies`.

## 27. Costs & profit (`Costs & profit`)

See whether a project actually pays off. Log the money going out, set the money coming in, and read profit and margin at a glance.

What you can log:
- one-time charges
- recurring subscriptions

How it works:
- Set the project's income under `Project revenue` (`Track project revenue`).
- Add costs with `Add cost`; each cost has its own active period.
- The screen shows `Total cost`, `Profit`, and `Margin`.
- A `Calculation range` views costs across any date window (defaults to the project's start and end). Costs are scoped to the selected range; revenue is the project total.

Entry points:
- `Projects` > select a project > `Edit` > `Costs & profit`
- the `Costs & profit` card in `Stats`

Pro feature: if your Pro access lapses you can still view costs, but not add new ones.

Where: `Projects` > select a project > `Edit` > `Costs & profit`.

## 28. Task attachments (`Attachments`)

Attach references directly to a task so everything you need sits in one place.

Supported attachments:
- links
- images (photo library or camera)
- documents (PDF, Office, text, and more)

Adding attachments (in the task editor):
- `Photo Library`
- `Take Photo`
- `Choose File`
- `Add Link`

Opening: tap an attachment to view it in-app — images and documents open in a built-in preview, links open in a browser. You can `Rename` or `Delete` any attachment.

Notes:
- Each file must be under the size limit shown in the app (large files are rejected).
- Pro feature: if your Pro access lapses you can still view existing attachments, but not add new ones.

Where: task editor > `Info` tab > `Attachments` (below `Notes`).

## 29. Project templates (`Start with a Template`)

Start from a proven plan instead of a blank page. Pick a template and Projectholic sets up the phases, tasks, and schedule for you — then you can change anything.

Where to find templates:
- First launch: the quick-start step offers a template or building your own.
- Anytime: `Projects` > add (`plus`) > `From a Template`, which opens the `Start with a Template` gallery.

After you pick one, the project is created fully structured; edit its phases, tasks, and dates like any other project.

Where: `Projects` > add (`plus`) > `From a Template`.

## 30. Apple Calendar and Reminders import

Bring selected items from Apple's apps into the project where you will do the work.

How to import:
1. Open a project and choose `Edit Project`.
2. Go to `Reminders & Sync`.
3. Choose `Import from Apple Calendar` or `Import from Apple Reminders`.
4. Select the calendars or reminder lists you want to browse.
5. Select individual events or reminders, then import them.

Projectholic creates project tasks from the selected items and skips items that were already imported. Calendar and Reminders access stays under the system permissions on your device.

Where: project editor > `Reminders & Sync`.

## 31. Read-only Task View

Opening a task now starts with a cleaner review layout instead of putting every field into edit mode.

The view groups the information you are most likely to inspect:
- schedule and duration
- project and phase
- subtasks and completion
- recurring rule and progress
- notes, dependencies, attachments, and other details

Use `Edit` only when you want to change the task. Your preferred font style is applied to the reading layout.

## 32. Troubleshooting

Stuck on something? Here are the quick fixes for the questions we hear most.

## “I can’t find a task”
It's almost always hiding behind a filter or a date. Check:
- the date range you're viewing
- any active filters or tags
- the `Unscheduled` area
- the `Inbox` (unassigned-phase area)

## “I can’t add more projects”
The free plan includes your first project; creating more needs Pro.

## “Sync isn’t updating”
Open `iCloud Status` to see what's happening, then tap `Refresh`. If it's still stuck, make sure you're signed in to iCloud.

## “My long task’s schedule looks wrong”
Open the task and confirm its `Type` is `Multi-day`, then review the spread settings — max minutes per day, block sizes, and whether weekends are skipped.

## “A recurring task isn’t behaving as expected”
Open the recurring settings and double-check `Every`, `End Condition`, and the pattern you picked.

## 33. Glossary

- Project: top-level container in `Projects`
- Phase: deliverable segment inside a project
- `Regular`: one-time task type
- `Multi-day`: long task spread over time blocks
- `Recurring`: rule-based repeating task
- `Unscheduled`: task without scheduled slot
- Focus session: timed work record that can start with or without a linked task
- Unlogged Focus: completed focus time waiting in the inbox to be linked or kept for later
- `Follow-up`: shared/delegated task tracking screen
- Dependency: a `Do after` / `Do before` link between tasks; cascade auto-reschedules dependents
- Cost item: a one-time or recurring charge logged on a project (`Costs & profit`)
- `Margin`: profit as a share of revenue
- `Attachments`: links, images, and documents attached to a task
- Template: a ready-made project plan (`Start with a Template`)
