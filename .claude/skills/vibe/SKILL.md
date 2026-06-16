---
name: vibe
description: Vibe coding mode, defines your target output. Use only when user explicitly specifies /vibe.
---

Vibe coding mode. Activated only when the user explicitly invokes /vibe.

## Planning

- Keep the plan test-free: no test code and no test plan, matching vibe output.

## Output

- NO test code. NO over-engineering — no premature abstractions, config, or
  layers the task doesn't need unless the user explicitly asks for them.
- Focus on the final, runnable output the user actually sees.
- Keep it simple: fewest files and moving parts that get the job done.

## Quality

- Vibe mode changes *what I build*, not the *quality bar*. Code must still be
  correct and run.
- "No tests / no over-engineering" is NOT license to ship broken or sloppy code.
