---
name: standup
description: Find out what I did yesteray, and what I'm working on today
---

## Pre-requisites
If the following are unavailable, abort the skill and explain why.

1. The linear MCP server
2. The github CLI (gh)
3. The gws CLI (gws)

## Instructions

1. Invoke the /linear-me skill.
2. Use gh to search my recent github PRs.
3. Use gws calendar events (gws calendar events list --params '{"calendarId":"primary") to get my events.
4. Find out what I did yesterday, and what I'm planning on doing today.
5. Output this in the template style shown below.
6. Ask me clarifications and edits.

## Guidelines

- No em-dashes
- Be brief and keep the updates high level
- Write for your manager, not another engineer on your team.
- Don't report implementation details. No function names, lass names, variables, etc.
- Only report relevant calendar meetings. Skip 1 on 1s and rote updates like standup or planning sessions.
- Don't include Pull Request or linear issue identifiers and links.

## Template
Progress:
- Bullets for what I did yesterday
Plans
- Bullets for what I'm planning today

