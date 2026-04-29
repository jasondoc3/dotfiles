---
name: linear-create
description: Take the current ask, get linear context, create a linear issue retroactively
---

The linear MCP server is a pre-requisite to using this skill. It must be available. If it's not bail, and tell me why.

This skill is to take the current context of what we're working on, create a linear issue. Follow any additional instructions given upon skill invocation.

Perform the following steps:

1. Gain context of my current linear project using /linear-me unless already obtained.
2. Draft an issue title and description and propose it to me. Let's work through any necessary modifications.
3. Create the linear issue in my current project assigned to me that's in the "todo" status unless instructed otherwise. If no current project, create an issue in triage on my current team instead.
