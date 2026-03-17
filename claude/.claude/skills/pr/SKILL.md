---
name: pr
description: Create or modify a PR on github.
---

Create or edit a pull request using the "gh" cli tool with the following instructions.

- Keep descriptions concise and to the point.
- Don't write novels, the PR needs to be easily consumed by a human. You're not Brandon Sanderson, and you don't need to write 1000 page fantasy epics for pull requests.
- Don't add performative checklists. Or frankly, don't add checklists at all.
- If connected to a linear issue, the title of the PR should begin with the linear ticket id in brackets. For example, if the ticket id is EGX-100 then the title of the PR should begin with [EGX-100]
- If there is a PR already open, be sure to update its description with any relevant code changes/commits since the last update. Completely rewrite the description if it is no longer relevant to the changeset.
- Don't use heredocs or command substitutions when writing PR descriptions.
