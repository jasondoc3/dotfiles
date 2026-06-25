---
name: linear-create
description: Create a linear issue
---

## Pre-Requisites
If the following are unavailable, abort the skill and explain why.

1. The linear MCP server

## Instructions

1. Invoke the /linear-me skill.
2. Gain context of my current linear project.
3. Draft an issue title and description and propose it to me.
4. Let's work through any necessary modifications.
5. Upon my acceptance, create the linear issue following the guidelines. 

## Guidelines

This skill is to take the current context of what we're working on, create a linear issue. Follow any additional instructions given with the skill invocation.

When creating a ticket, use these guidelines unless instructed otherwise:
- Use the issue template given below 
- Be concise in your description
- Don't get overly verbose with implementation details
- Leave some open endedness for implementation upon work starting
- Don't make references to functions or code, keeping the task description high level.
- Keep acceptance criteria high level
- Create issues in my current project in the "todo" status. If I have no current project, create them in triage on my current team.
- Assign issues to me unless
- Use the default template unless specified otherwise.
- Use the spike template if creating a spike

## Issue Template (s)

The following templates can be used to create issues.

### Default Template

#### Description

Who will the work impact? Why is is valuable? What work is required?

#### Acceptance criteria

Acceptance criteria are the “conditions that a software product must satisfy to be accepted by a user, customer or other stakeholders.”

### Spike Template

The title of the spike ticket should be prefixed with [Spike]

#### Description

A Spike is created when a user story or task cannot be estimated well enough until the team has done further research or investigation. What is the spike for? What research is required? Who will the spike impact and why is it valuable?

#### Acceptance criteria
A spike requires output. The output should be linked. That output can be one of.

- Scoped out linaer issues.
- Technical spec/diagram

