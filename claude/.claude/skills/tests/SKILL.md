---
name: tests
description: Write tests for the current changeset.
---

Write tests for the current diff/changeset. When writing tests, use the following guidance:

- Do not test private methods. Test only public interfaces. Examples: In python, don't write tests for functions beginning with an underscore. In ruby, don't use send to test private methods.
- Test the behavior, not the implementation.
- Write both functional and unit tests, if applicable.
- Don't waste time testing nitty gritty behavior if the larger test suite covers those cases.

