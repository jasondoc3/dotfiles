---
name: pr
description: Create or modify a PR on github.
---

# Pre-requisites
If the following are unavailable, abort the skill and explain why.

1. The gh cli

# Instructions

1. Run the /kiss skill
2. Create or edit a pull request using the "gh" cli tool. New PRs should be created as drafts.
3. Monitor the CI tasks in github.
4. If any CI tasks fail, query the results in circle CI using the CIRCLECI_TOKEN in the environment, if any.

# Guidelines
- Open new pull requests as drafts
- Keep descriptions extremely concise and to the point. This is the most important rule.
- Don't leak unnecessary details from discussions in the session into the description. The description should reflect only the changes in the diff.
- Don't write novels, the PR needs to be easily consumed by a human. You're not Brandon Sanderson, and you don't need to write 1000 page fantasy epics for pull requests.
- Don't add performative checklists. Or frankly, don't add checklists at all.
- If connected to a linear issue, the description of the PR should include with the linear ticket id. For example, if the ticket id is EGX-100 then the description should mention the linear ticket.
- If there is a PR already open, be sure to update its description with any relevant code changes/commits since the last update. Completely rewrite the description if it is no longer relevant to the changeset.
- Don't write performative test plans
