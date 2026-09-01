---
name: kiss
description: Keep it stupid simple
---

# Instructions

Review your current work and follow the mantra of "Keep it stupid simple."

1. Using the guidelines below trim down the current changeset until it's simple.
2. Repeat 1 until satisfied.

# Guidelines

Ask yourself, "What is the simplest thing that can possibly solve this problem."

## Principles
- Follow Gall's law
- Practice YAGNI
- Elegance is simplicity
- Complexity proves nothing
- You're not trying to impress me (or anyone else)

## Code
- Remove premature optimizations
- Re-use existing patterns in the codebase if they are present
- Is the diff over 200 lines? How could it be simplified?
- If working with a library, do research to confirm/deny better approaches
- If a change requires disabling a lint rule, re-evaluate that change
- No unnecessary constants

## Code comments
- Remove code comments unless they are absolutely necessary
- Don't leave performative or useless comments
- Keep any comments written brief and to the point 
- Don't leak unnecessary details from our session into a comment. For example don't add information about our back and forth discussion or details about why a decision was made unless it's relevant to the code.
- Bias towards not leaving comments when code or config files are self documenting.

## Tests
- Only add new test examples if there is genuinely missing coverage
- Follow the guidelines in the /tests skill, while keeping this skill's instructions in mind

## Pull requests
Follow the guidelines for the pr description in the /pr skill, while keeping this skill's instructions in mind
