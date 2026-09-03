---
name: kiss
description: Keep it stupid simple
---

# Instructions

Review your current work and follow the mantra of "Keep it stupid simple."

1. Using the guidelines below trim down the current changeset until it's simple.
2. For every new name in the diff file, function, constant, parameter, prefix
   ask what breaks if it's deleted. "Nothing" or "one call site changes shape" means delete it.
   A new name claims a concept exists; one-caller helpers, one-use constants, and prefixes nothing matches on are not concepts.
3. Repeat 1 and 2 until there's nothing left to cleanup or remove

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
- Re-use existing patterns: name the closest existing equivalent in the repo and follow it. If you can't name one, you haven't looked
- Delete anything the framework, middleware, or an existing helper already does. Check before adding logging, error wrapping, validation, or retries
- Is the diff over 200 lines? How could it be simplified?
- If working with a library, research better approaches, and check it's worth its weight. If you're using a parser to read three fields, read them directly
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
