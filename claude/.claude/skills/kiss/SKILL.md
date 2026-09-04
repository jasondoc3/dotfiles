---
name: kiss
description: Keep it stupid simple
---

# Instructions

Review your current work and follow the mantra of "Keep it stupid simple."

1. Trim the changeset using the guidelines below.
2. Walk the diff once per section - names, comments, tests - plus the open PR's
   description, applying that section's rules to every item. Record a verdict for each:
   - names: what breaks if it's deleted? "Nothing" or "one call site changes shape" means
     delete it. A new name claims a concept exists; one-caller helpers, one-use constants,
     and prefixes nothing matches on are not concepts.
   - comments: delete it, reread the code. Still clear? It stays deleted.
   - tests: would any other example fail if this behavior broke? Then delete it.
   - description: cut every sentence a reviewer could get from the diff itself. What
     survives is why the change exists and what a reviewer would otherwise get wrong.
3. To keep an item, cite the rule that permits it. If you are writing a sentence of
   justification rather than citing a rule, delete it.
4. Repeat 2 and 3 until a full pass produces zero deletions.

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
- Always double check library capabilities at the source for features missed or misused.
- Never disable a lint rule. If a change seems to require one, re-evaluate the change
- Delete constants that have single references

## Code comments
- Always delete comments that restate the line below them
- Always delete comments describing a library's documented behavior
- Always delete comments narrating an absence.
- Always delete comments justifying why the code isn't some other design
- Always delete comments that restate session archaeology (what was tried, who asked, why a decision was made)
- Don't leave performative or useless comments
- A comment that survives must be brief and to the point. Brevity is not a reason to keep one.

## Tests
- Only add new test examples if there is genuinely missing coverage
- Follow the guidelines in the /tests skill, while keeping this skill's instructions in mind

## Pull requests
Follow the guidelines for the pr description in the /pr skill, while keeping this skill's instructions in mind
