---
name: linear-do
description: Start working on the linear issue(s) given in the skill.
---

## Pre-Requisites
If the following are unavailable, abort the skill and explain why.

## Instructions

For each issue given:

1. Invoke the /linear-grok skill with the issue(s) given.
2. Create a new git feature branch from master (or main).
3. Implement the changes described in the issue.
4. Commit the changes to the feature branch.
5. Invoke the /pr skill to create a draft pull request.

## Guidelines
- If there's more than one issue, work on them serially in the order that makes the most sense.
- I may have feedback once the PR has been created, so continue to work with me until I'm satisfied with the outcome. Once I'm satisfied, we can move onto the next issue if there is one. The PR doesn't need to be merged to move on as it's waiting for human review. Once concluded, we're done!
