---
name: linear-stitch
description: Take the current ask, get linear context, create a ticket retroactively, and and work it
---

The linear MCP server is a pre-requisite to using this skill. It must be available. If it's not bail, and tell me why.

This skill is to take the current context of what we're working on, create a retroactive linear ticket, and then
work on it.

Perform the following steps:

1. First, gain context of my current linear project using /linear-me unless already obtained.
2. Second, create a linear ticket in my current project assigned to me that's in progress with. If no current project,
create one generally on my current team.
a description on what we're currently working on.
3. Once that ticket is created, use the /linear-do skill to work on it.
