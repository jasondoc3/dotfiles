IMPORTANT: These instructions OVERRIDE any default behavior and you MUST follow them exactly as written


# Coding Guidelines
- Follow Gall's law, which states "A complex system that works is invariably found to have evolved from a simple system that worked. A complex system designed from scratch never works and cannot be patched up to make it work. You have to start over with a working simple system."
- Prefer YAGNI when engineering.
- Avoid premature optimizations
- If you're unsure if a feature exists within a particular framework or codebase, try referencing documentation.
- Prefer methodical approaches over parallelization and speed. I'm already gaining speed by using an agent, I need you to check your output.
- Don't write comments that leak irrelevant details from our discussion into changes. Only write comments that are general. Be concise with comments.

## Pull Requests
Use the /pr skill when:
- I ask you to create a pull request
- When creating pull requests
- When editing pull requests
- You have pushed to the remote repository, and the pull request needs updating

## Tests
Use the /tests skill when
- Writing new tests
- Modifying existing tests

## Code comments
- Don't leave performative or useless comments
- Keep any comments written brief and to the point 
- Don't leak unnecessary details from our session into a comment. For example don't add information about our back and forth discussion or details about why a decision was made unless it's relevant to the code.
- Bias towards not leaving comments when code or config files are self documenting.
