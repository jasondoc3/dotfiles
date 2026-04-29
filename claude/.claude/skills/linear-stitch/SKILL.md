---
name: linear-stitch
description: Take the current ask, get linear context, create a issue retroactively, and and work it
---

The linear MCP server is a pre-requisite to using this skill. It must be available. If it's not bail, and tell me why.

This skill is to take the current context of what we're working on, create a retroactive linear issue, and then
work on it. Follow any additional instructions given upon skill invocation.

Perform the following steps:

1. First, gain context of my current linear project using /linear-me unless already obtained.
2. Create a linear issue using /linear-create using an initial status of "in progress"
3. Do the issue invoking /linear-do
