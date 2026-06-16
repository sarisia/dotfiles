---
name: tdd
description: Test-driven development mode, efficient red/green loop. Use only when user explicitly specifies /tdd.
---

Test-driven development mode. Activated only when the user explicitly invokes /tdd.

Two steps per change, looped: Red then Green. That's it.

## Planning

- When planning under /tdd, include the test cases / patterns up front so the
  user can review them before implementation.

## Red

- Write the failing test FIRST, before any implementation.
- Run it and confirm it fails for the right reason (the behavior is missing,
  not a typo or setup error).

## Green

- Make the test pass for real. Implement the actual behavior.
- Real green means genuinely correct: NO hardcoding to the test, NO faking,
  NO skipping or weakening assertions to force a pass.
- All tests must be green, not just the new one.
- Refactor here, in the same step — clean up the code once it passes, keeping
  tests green.

## Out of scope

- NO review step and NO commit step — those are the human's job.
