# CIS454 — Master Study Guide

*Living document — updated as new course materials are added. Last updated after: Core_Scrum.pdf, CIS454_PP_Ch1.pptx, CIS454_PP_Ch2.pptx, CIS454_PP_Scrum_Ch_1.pptx*

*Format note: terms are defined inline the first time they're used in a bullet, rather than in a separate glossary.*

---

## CHAPTER 1: Introduction to Systems Analysis and Design

### Learning Objectives
- Understand the **systems development life cycle (SDLC)** — the standard set of phases every information system project moves through, from the initial idea to a working, supported system: the purpose of each of the four phases, the steps within each, and how the phases relate to one another.
- Identify project team roles in systems analysis and design (the different job functions people fill on a project team).
- Discuss criteria for choosing between **Waterfall** (a strict, one-pass-through-the-phases approach) and **Agile/Scrum** (an iterative, adaptive approach — both defined in detail below).

### The SDLC — Four Phases

**1. Planning** — *"Why should we build this system?"*
- **Project Initiation**: the formal kickoff of a project.
  - Develop a **system request** — the formal document that asks the organization to commit resources to a project (its parts are detailed in Chapter 2).
  - Conduct a **feasibility analysis** — a study of whether the project is realistic and worth doing (technically, financially, and organizationally — detailed in Chapter 2).
- **Project Management**: the ongoing job of keeping the project on track.
  - Develop a **work plan** — a schedule that lists and tracks every task the project needs.
  - Staff the project — assign the right people to it.
  - Control and direct the project — monitor progress and correct course as needed.

**2. Analysis** — *"What should the system do for us? Where and when will it be used?"*
- Develop analysis strategies — decide the overall approach for figuring out what the system needs to do.
- Gather requirements — collect the specific things the system must be able to do, using methods such as:
  - **Interviews** — one-on-one conversations with stakeholders to learn their needs.
  - **Document analysis** — reviewing existing forms, reports, or manuals to understand current processes.
  - **Joint Application Development (JAD)** — a structured workshop where users, managers, and analysts meet together to define requirements collaboratively (instead of one-on-one).
  - **Questionnaires** — written surveys sent to a broad group of stakeholders.
  - **Observation** — watching people do their actual work to see how the process really functions.

**3. Design** — *"How will we build the system?"*
- Develop a design strategy — decide the technical approach for building the solution.
- Design architecture and interfaces — plan the system's overall technical structure and how users will interact with it.
- Develop databases and file specifications — plan how and where data will be stored.
- Develop the program design — plan the actual code/program structure that developers will build from.

**4. Implementation** — *"Build the system!"*
- Construct the system — write and assemble the actual code.
- Install the system — put the finished system into the live/production environment.
- Implement a training plan for users — teach the people who will use the system how to use it.
- Establish a support plan — set up how user problems and system issues will be handled after launch.

### Systems Development Methodologies
A **methodology** = a formalized, repeatable approach to carrying out the SDLC (i.e., a specific "recipe" for how to do planning, analysis, design, and implementation).

**Waterfall Development** (also called **Structured Design**)
- Flow: linear phases completed one after another in strict sequence — Plan → Analyze → Design → Implement — with no going backward.
- Planning: extensive and rigid, done entirely upfront before any building starts.
- Change: discouraged; any change requires a **formal change control process** (an official review/approval procedure before a change can be made).
- Testing: conducted near the end of the project, after most/all of the system is built.
- Customer input: concentrated at the very beginning (defining requirements) and the very end (accepting the finished system).

**Agile / Scrum Development**
- Uses the **Scrum Framework** — a specific, lightweight structure of roles, artifacts, and meetings for doing Agile work in short cycles called **sprints** (a sprint is a fixed, short time period — typically 1–4 weeks — in which the team builds a usable piece of the product).
- Flow: iterative cycles (sprints), typically 1–4 weeks each, repeating until the product is complete.
- Planning: adaptive and continuous; the list of work (the **backlog**, defined below) evolves as the project goes.
- Change: welcomed and simply folded into upcoming sprints rather than requiring formal approval.
- Testing: continuous — happens during every sprint, not just at the end.
- Customer input: frequent feedback throughout the project, not just at the start/end.

### Choosing Between Scrum and Waterfall

| Choose **Scrum** when... | Choose **Waterfall** when... |
|---|---|
| Requirements are unclear, complex, or expected to change | Requirements are completely well-defined, stable, and locked in |
| Fast time-to-market and regular delivery of working features matter | Total budget, scope, and final delivery timeline are fixed from day one |
| Customers/stakeholders are available to give continuous feedback | Comprehensive documentation is mandatory (e.g., for legal or regulatory compliance) |
| Building digital products, mobile apps, or SaaS platforms (**SaaS** = "Software as a Service," meaning software delivered over the internet rather than installed locally) | Working in hardware, construction, or strict manufacturing environments, where later-stage changes are very costly or physically impossible |

### Object-Oriented Tools
- **UML (Unified Modeling Language)** — a standardized set of diagram types and symbols used to visually model a software system, from the analysis phase through implementation, so that everyone on the team "speaks the same visual language."
- Two major diagram groups:
  - **Behavior diagrams** — diagrams that show what the system *does* or how it behaves over time:
    - **Activity diagrams** — show the flow of steps/actions in a process (similar to a flowchart).
    - **Use-Case diagrams** — show the different ways users ("actors") interact with the system to accomplish goals.
  - **Structure diagrams** — diagrams that show what the system *is made of*:
    - **Class diagrams** — show the system's data objects ("classes"), their attributes, and how they relate to each other.

### Project Team Roles & Skills
Team members act as **change agents** — people who actively drive improvement in how the organization works, rather than just following existing processes.

Broad range of skills required:
- **Technical** — knowledge of the technology being used.
- **Business** — understanding of how the organization operates.
- **Analytical** — the ability to break down problems and figure out solutions.
- **Interpersonal** — communication and relationship skills for working with people.
- **Management** — the ability to plan, organize, and coordinate work.
- **Ethical** — sound judgment about doing the right thing, especially with sensitive data/decisions.

| Role | Responsibilities |
|---|---|
| **Business Analyst** — focuses on the business side of the project | Analyzes key business aspects of the system; identifies how the system will provide business value (the benefit it creates for the organization); designs the new business processes and policies |
| **Systems Analyst** — the bridge between business needs and technology | Identifies how technology can improve business processes; designs the new technology to fit those processes; designs the information system; ensures the system conforms to IS (Information Systems) standards |
| **Infrastructure Analyst** — focuses on the technical environment the system runs in | Ensures the system conforms to infrastructure standards (servers, networks, etc.); identifies infrastructure changes required, including networks and cloud infrastructure (computing resources hosted over the internet rather than on local hardware) |
| **Change Management Analyst** — manages the human side of the transition | Develops and executes a change management plan (a plan for helping people adapt to the new system) and a user training plan |
| **Project Manager** — oversees the whole effort | Manages the team; develops and monitors the project plan; assigns resources; serves as the primary point of contact for the project |

---

## CHAPTER 2: Project Initiation & Project Management

### Project Identification and Initiation
- Projects are driven by **business needs** (a business-related reason or problem that prompts the project — defined further below).
- Identified by: businesspeople, IT people, or — ideally — jointly by both, so the project addresses a real business problem *and* is technically sound.
- **Project sponsor** — the person who believes in the system and wants it to succeed; normally a businessperson (not an IT person); should have the organizational authority to actually move the project forward (approve budget, resolve roadblocks, etc.).

### Elements of a System Request
A **system request** is the formal document used to ask an organization to commit time and money to a project. Its key elements:

| Element | Definition | Examples |
|---|---|---|
| **Project sponsor** | The person who initiates the project and serves as the primary point of contact for the business side | Members of the Finance Department, VP of Marketing, a Sales/Marketing/Account Manager, the Steering Committee Chair (head of the group that oversees project approvals), CEO/CFO/CMO |
| **Business need** | The business-related reason prompting the project | Increase sales, improve market share (the company's share of total sales in its industry), improve access to information, improve customer service, decrease product defects, streamline the supply acquisition process |
| **Business requirements** | The business capabilities the system will need to have | Provide online access to information, capture customer demographics (statistical data about customers, e.g., age/location), include product search capabilities, produce management reports, include online user support |
| **Business value** | The benefits the organization can expect from the project | **Tangible** (measurable in concrete numbers): a 3% increase in sales, a 1% increase in market share, reduction of headcount by 5 **FTEs** (Full-Time Employees — a unit for measuring staffing, where one FTE = one person working full-time), $150,000 in savings by relocating data to the cloud. **Intangible** (real but hard to measure precisely): improved customer service |
| **Special issues** | Anything else relevant to the implementation decision | A government-mandated deadline, a system needed in time for the Christmas shopping season, top-level security clearance needed by the project team |

### Feasibility Analysis
**Feasibility analysis** guides the organization in deciding whether to proceed with a project, and identifies the risks that would need to be managed if it's approved. Three major components:

**1. Technical Feasibility** — *"Can we build it?"* (can the team realistically build this with the skills and technology available?)
- User/Analyst familiarity with the application — how well the team knows this *type* of system; less familiarity generates more risk.
- User/Analyst familiarity with the technology — how well the team knows the specific tools/platform being used; less familiarity generates more risk.
- Project size — larger projects carry more risk (more can go wrong, more coordination needed).
- Compatibility — how well the new system needs to work with existing systems; difficult integration increases risk.

**2. Economic Feasibility** — *"Should we build it?"* (does the financial payoff justify the cost?)
- Development costs — the cost to analyze, design, and create the new system.
- Annual operating costs — the ongoing yearly cost to run the system once it's live.
- Annual benefits — cost savings and revenues the system generates each year.
- Intangible costs and benefits — non-financial effects, like whether work will be easier or customers/employees happier.
- This analysis is called a **cost-benefit analysis** — a comparison of a project's total costs against its total benefits, often used to calculate the **break-even point** (the point in time at which the cumulative benefits of a project equal its cumulative costs — i.e., when the project "pays for itself").

**3. Organizational Feasibility** — *"If we build it, will they come?"* (will the organization actually adopt and support it?)
- **Stakeholder analysis** — the process of identifying everyone with a stake in the project and the role each plays:
  - **Project champion(s)** — the person/people who pay for the project.
  - **Project sponsor** — provides requirements (see definition above).
  - Senior management — leadership who can support or block the project.
  - Users — the people who will actually use the system day-to-day.
  - Others — any other affected party.
- Is the project strategically aligned with the business (does it support the organization's broader goals)?

### Project Selection
- **Project portfolio management** — a process that optimizes which projects an organization selects and in what order (sequencing), so the mix of projects best supports business goals.
- Business goals are expressed in terms of:
  - Quantitative economic measures — hard numbers, like expected ROI (**Return on Investment**, i.e., the financial gain relative to what was spent).
  - Business strategy goals — how the project supports the company's broader direction.
  - IT strategy goals — how the project supports the technology department's broader direction.
- Once selected, projects enter the **project management** process (the ongoing planning/tracking work described below).

### Estimating Project Timeframes
- Note: **Scrum combines the Analysis and Design phases** into one combined effort (~55% of the project timeline per the course slide), instead of treating them as two separate sequential phases like Waterfall does.

### Creating and Managing the Work Plan
- A **work plan** is a dynamic (regularly updated) schedule that records and tracks all tasks to be accomplished over the course of the project.
- Created after a project manager has a general idea of the project's size and rough schedule.
- The work plan is usually the main item tracked inside project management software (e.g., Microsoft Project).

**Sample Task fields** (the pieces of information tracked for each task in the work plan):
- Task name — what the task is called.
- Start date / Completion date — when it begins and is due.
- Person assigned to the task — who is responsible.
- Deliverable(s) — the tangible output the task produces.
- Completion status — whether it's done, in progress, etc.
- Priority — how urgent/important it is.
- Resources needed — tools or materials required (e.g., spreadsheet software).
- Estimated time vs. Actual time — planned effort vs. what it really took (used to improve future estimates).

**Identifying Tasks — two approaches:**
- **Top-down approach** — start by identifying the highest-level tasks, then break each one into increasingly smaller units.
- **Methodology-based approach** — use a standard list of tasks provided by prior projects or industry standards, rather than building the list from scratch.

**Displaying the Work Plan:**
- **Work Breakdown Structure (WBS)** — a hierarchical chart that displays all the tasks and related information (like duration and dependencies) from the work plan, broken down from big tasks into smaller sub-tasks.
- **Gantt Chart** — a horizontal bar chart showing each task plotted against a timeline, so you can see start/end dates and overlaps at a glance; created automatically when the WBS is entered into Microsoft Project.

**Scope Management**
- **Scope creep** — happens when new requirements are added to the project after the original project **scope** (the defined boundaries of what the project will and won't include) was defined and "frozen" (locked in), often causing budget/timeline overruns.

### Staffing the Project
- Determine the average number of people needed = total **person-months** of effort (a unit meaning one person working for one month) divided by the optimal schedule length.
- Important principle: **adding more people to a late project will not reduce the schedule** — often called **Brooks's Law** — because new people need time to get up to speed and add communication overhead.
- Create a **staffing plan**, which includes:
  - Roles required for the project.
  - Reporting structure — who reports to whom.

### Motivation
- Use monetary rewards (pay, bonuses) cautiously — they can backfire or lose effectiveness over time.
- Favor **intrinsic rewards** — rewards that come from the work itself rather than external pay, such as:
  - Recognition — being acknowledged for good work.
  - Achievement — the satisfaction of accomplishing something.
  - The work itself — finding the work inherently engaging.
  - Responsibility — being trusted with meaningful ownership.
  - Advancement — opportunities to grow into bigger roles.
  - The chance to learn new skills.

### Managing Risk
- *(Title-only slide in the deck — no detail provided yet. Add specifics once lecture notes/readings on risk management are available.)*

---

## SCRUM — Combined from Core_Scrum.pdf and CIS454_PP_Scrum_Ch_1.pptx

### Foundations
**Agile Manifesto** — a short foundational document (written by a group of software developers) that lays out four core values favored by all Agile approaches, including Scrum:
- Individuals and interactions **over** processes and tools — trusting people and how they work together matters more than rigid procedures.
- Working software **over** comprehensive documentation — a functioning product matters more than extensive paperwork about it.
- Customer collaboration **over** contract negotiation — working *with* the customer throughout matters more than locking everything into an upfront contract.
- Responding to change **over** following a plan — adapting to new information matters more than rigidly sticking to the original plan.

**Scrum's Five Values**:
- **Focus** — concentrating on only a few things at a time so the team works well together.
- **Courage** — the confidence to take on bigger challenges because the team has support.
- **Openness** — being willing to express how things are going, including problems.
- **Commitment** — dedication to success that comes from having real control over the work.
- **Respect** — mutual regard built through working together and sharing both successes and failures.

**The Essence of Scrum** (course slide):
- The team is given clear goals.
- The team organizes itself around the work (**self-organizes** — decides internally how to divide and do the work, without being told exactly how by a manager).
- The team regularly delivers the most valuable features.
- The team receives feedback from people outside it.
- The team reflects on its way of working in order to improve.
- The entire organization has visibility (clear insight) into the team's progress.
- The team and management honestly communicate about progress and risks.

### Scrum Roles

**Product Owner**
- The single individual responsible for maximizing the value of the product delivered by the desired date.
- Manages and prioritizes the **Product Backlog** (defined below — the master list of everything that might be built).
- Manages the flow of work into the team by selecting and refining backlog items.
- Gathers requirements and works on a shared vision for the product with the team.
- Accepts the software at the end of each iteration (sprint) — confirms it meets expectations.
- Manages the release plan — the plan for when/how finished work goes out to real users.
- Owns the profitability of the project, i.e., its **ROI** (Return on Investment).
- May be supported by others but must ultimately be a single accountable person.

**ScrumMaster / Scrum Master**
- A **"servant leader"** — a leadership style focused on serving and supporting the team's needs, rather than directing them top-down; manages the *process*, not the product.
- Must understand the Scrum framework well enough to train others in its details.
- Removes **impediments** (obstacles blocking the team's progress), whether they come from inside or outside the team.
- Helps the Product Owner learn to create and maintain the Product Backlog.
- Helps the Development Team find technical practices to reach the **Definition of Done** (defined below).
- Socializes Scrum — helps people outside the team understand how Scrum works and how to interact with the team productively.
- Fosters self-organization and protects the team from distractions.
- Keeps meetings **time-boxed** (a **time-box** is a strict, fixed maximum duration for a meeting or activity — once time is up, the meeting ends regardless of whether the discussion is finished).

**Development Team**
- A self-organizing, **cross-functional** group — meaning that, collectively, the team members possess all the skills needed to deliver the product (so no outside specialist is required).
- Expected to work full-time on the project.
- Forecasts how much work they can complete in a sprint and decides *how* to do it (as opposed to the Product Owner, who decides *what* to do).
- Responsibilities: estimate the size of backlog items, commit to delivering increments of working software (and actually deliver them), track their own progress.
- Self-organizing but still accountable to the Product Owner for delivering as promised.
- No dictated leadership hierarchy within the team — everyone is a peer.
- Can include: developers, testers, analysts, architects, writers, designers, and even users.

> **Key distinction**: the Product Owner manages the *product* (and its ROI); the Scrum Master manages the *process*; the Team manages *itself*. Together these three roles split up the responsibilities that a traditional single project manager would otherwise hold.

**Self-organized teams** (course emphasis):
- Highly disciplined, given full autonomy, and correspondingly carry greater responsibility for delivery.
- Encouraged to take reasonable risks and learn through failure and self-reflection (looking back at their own performance to improve).
- Encouraged to take ownership of their work.
- No appointed leaders beyond the Product Owner and Scrum Master.

### Scrum Artifacts
An **artifact**, in Scrum, just means a key work product/document the framework produces to keep everyone informed.

| Artifact | Definition |
|---|---|
| **Product Backlog** | The ordered (prioritized) list of everything that might be needed in the product; the single source from which all requirements flow — every feature, bug fix, or piece of work traces back to a backlog item. Each item includes a description and an estimate. Anyone (Product Owner, team, or other stakeholders) can add items. It's a "living document" that requires ongoing **refinement/"grooming"** (see below). Often written as **user stories** — short descriptions of a feature from the end user's point of view, traditionally on 4×6 index cards. |
| **Sprint Backlog** | The set of refined Product Backlog items chosen for development in the *current* sprint, plus the team's plan for how to accomplish them; reflects the team's forecast of what they can complete. Tracked on a **Sprint task board** (a visual board showing tasks and their status, e.g., "to do / in progress / done"). |
| **Product Increment** | The most important Scrum artifact — a working, integrated, potentially shippable piece of the product produced at the end of *every* sprint. Must meet the **Definition of Done** (below) and be acceptable to the Product Owner. |

**Additional visibility tools**: burn charts, task boards (extra artifacts the team creates as needed to keep progress transparent).
- **Sprint Burndown Chart** — a chart graphing the team's remaining work (in stories or tasks) over the course of the *current sprint*, making it easy to see whether they're on track to meet their sprint commitment.
- **Product Burndown Chart** — a chart measuring the rate at which working, tested features are delivered over the life of the entire *product* (i.e., across many sprints).

**Definition of Done**
- The shared understanding, agreed on by the whole Scrum Team, of exactly what "done" means for a Product Increment (e.g., coded, tested, integrated, documented).
- Different for every team, and it typically expands and becomes more stringent as the team matures.
- Must always include: the increment is of high enough quality to be **shippable** (ready to be released to real users) immediately, if the Product Owner chooses to do so.
- The increment must include the functionality of all previous increments and be fully tested so everything still works together.

### Scrum Activities / Meetings
All Scrum meetings are **time-boxed** (fixed maximum duration — see definition above).

**1. Product Backlog Refinement** ("grooming") — an ongoing activity throughout the project, not a one-time meeting
- Keep the Product Backlog ordered (prioritized).
- Remove or demote items that no longer seem important.
- Add or promote items that arise or become more important.
- Split large items into smaller ones; merge small items into larger ones.
- Estimate items (assign a rough size/effort to each).
- Prepare upcoming items so they have clear business value, can fit within a single sprint, and are understood by everyone.

**2. Sprint Planning** — recommended time-box: **2 hours per week of sprint length**
- *Part 1 — What will be done* (Requirements Gathering):
  - The Product Owner presents ordered Product Backlog items to the team.
  - The team asks questions to reach a shared understanding sufficient to commit to delivering the feature.
  - The team alone decides how many items to take on — the Product Owner (or anyone else) cannot push extra work onto them.
  - Often produces a **Sprint Goal** — a short statement of the overall purpose of the sprint, helping the team focus on the essence of what's needed rather than small details.
  - The team commits to what they believe they can deliver as "running, tested features" (working software that has actually been tested, not just written).
- *Part 2 — How the work will be accomplished* (Design):
  - The team collaborates to create a high-level design for the features they've committed to.
  - Produces the **Sprint Backlog** (defined above) — the specific list of tasks needed to turn commitments into working features.
  - The team may still ask clarifying questions about requirements during this part.
  - Design is **emergent** (it develops and changes as work proceeds, rather than being fully planned upfront) — it's normal not to finish the design perfectly in this meeting, and the team will discover more tasks during the sprint itself.

**3. Development / The Sprint**
- Fixed length: 1–4 weeks (shorter preferred).
- The self-organizing team builds the Product Increment according to the Sprint Backlog and the Definition of Done.

**4. Daily Scrum / Daily Stand-up** — time-box: **15 minutes** (course slide also separately describes a **Daily Stand-up** of just 1–2 minutes per person)
- Happens at the same time and place every day.
- Each team member answers three questions:
  1. What I accomplished since the last meeting.
  2. What I plan to accomplish before the next one.
  3. What is impeding (blocking) my progress.
- It is **not** a status report to management, the Product Owner, or the Scrum Master — it's a synchronization meeting for the Development Team itself.
- No deep discussion happens during the meeting itself; any needed follow-up conversations happen right after.
- Only Scrum Team members (Dev Team, Scrum Master, Product Owner) speak; other interested people may observe silently.
- Impediments raised are meant to be resolved quickly ("bulldozed").

**5. Sprint Review** — time-box: **1 hour per week of sprint length**
- The Scrum Team demos and inspects the Product Increment completed during the sprint.
- **Stakeholders** (anyone with a "stake," or interest, in the outcome) are encouraged to attend and give input.
- The group discusses what they observed, new product ideas, and the state of the Product Backlog, including possible future completion dates.
- The Product Owner makes the final decisions about the future direction and updates the Product Backlog accordingly.
- Described in the course slide as gathering feedback from "the whole world" — i.e., as broad an audience as makes sense.

**6. Sprint Retrospective** — time-box: **1 hour per week of sprint length**
- Happens after the Sprint Review; attended only by Scrum Team members (not outside stakeholders).
- Focuses on **process**, not the product itself: how well the team worked together, and whether their skills, practices, and tools are serving them well.
- Operates on the assumption that everyone did their best — the question is whether different skills, practices, or tools are needed to succeed going forward.
- Produces a plan for improving in the next sprint, while staying within the Scrum framework.

### The Scrum Cycle (summary flow)
Product Backlog → **Refinement** (ongoing) → **Sprint Planning** (Part 1: what; Part 2: how) → Sprint Backlog → **Development** (with Daily Scrums) → Product Increment → **Sprint Review** → **Sprint Retrospective** → repeat for the next sprint.

---

## Quick-Reference: Time-Boxes Cheat Sheet
| Meeting | Time-Box | What it's for |
|---|---|---|
| Sprint | 1–4 weeks | The full work cycle that produces one Product Increment |
| Sprint Planning | ≤2 hrs per week of sprint | Deciding what to build and how |
| Daily Scrum | ≤15 minutes | Daily team sync on progress and blockers |
| Daily Stand-up (course variant) | 1–2 minutes per person | A shorter version of the daily sync |
| Sprint Review | 1 hr per week of sprint | Demoing the increment and gathering feedback |
| Sprint Retrospective | 1 hr per week of sprint | Reflecting on team process, not the product |

---

## Notes / Gaps to Fill Later
- "Managing Risk" (Ch2, slide 33) was a title-only slide — add detail once lecture notes/readings on this are provided.
- "Reporting Structures" (Ch2, slide 31) and the "Sample Cost-Benefit Analysis" / "Equations for Cost-Benefit Analysis" (slides 14–16) were diagram/image-based slides — add specifics once available as text, or describe the diagrams and I'll write them up.

---
*Send new chapters, slides, readings, or notes any time and I'll fold them into this guide, keeping the same inline-definition style.*
