---
name: linear-do
description: Start working on the linear issue(s) given in the skill.
---

The linear MCP server is a pre-requisite to using this skill. It must be available. If it's not bail, and tell me why.

Start working on the linear ticket or tickets given with the skill. Before starting work on the ticket,
check the description to make sure there's enough context in the description of the ticket
to perform the work.

If there's not enough context, let's have a mini planning session so I can clarify what the ticket or tickets should 
accomplish. Any planning that we do here should be written back to the tickets' descriptions so 
context can be reloaded if needed. Do not hesitate to enter this planning session if you're confused or don't know
how to start.

Create a new git feature branch from master (or main) before starting implementation on any ticket. If there's more than one ticket, work on them serially in the order that makes the most sense.

Once implementation has completed, commit the changes to the feature branch and create a draft PR using the /pr skill

I may have feedback once the PR has been created, so continue to work with me until I'm satisfied with the outcome. Once I'm satisfied, we can move
onto the next ticket if there is one. The PR doesn't need to be merged to move on as it's waiting for human review. Once concluded, we're done!
