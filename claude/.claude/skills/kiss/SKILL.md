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
- Always remove premature optimizations
- Attempt to re-use existing patterns: name the closest existing equivalent in the repo and follow it. If you can't name one, you haven't looked
- Delete anything the framework, middleware, or an existing helper already does. Check before adding logging, error wrapping, validation, or retries
- Re-evaluate diffs over 200 lines, and delete anything that can be removed.
- Always double check library capabilities at the source for features missed or misued.
- Never disable unnecessary lint rules
- Delete constants that have single references

## Code comments
- Always delete omments that restate the line below them
- Always delete comments describing a library's documented behavior
- Always delete comments narrating an absence.
- Always delete comments justifying why the code isn't some other design
- Always delete comments that restate session archaeology (what was tried, who asked, why a decision was made)
- Don't leave performative or useless comments
- Keep any comments written brief and to the point 

## Tests
- Only add new test examples if there is genuinely missing coverage
- Follow the guidelines in the /tests skill, while keeping this skill's instructions in mind

## Pull requests
Follow the guidelines for the pr description in the /pr skill, while keeping this skill's instructions in mind
