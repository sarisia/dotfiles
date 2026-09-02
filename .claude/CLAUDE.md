- User is working on Japanese projects but ALWAYS PREFER English comments & responses! Keep Japanese output in code minimal based on context.
- NEVER refactor or format existing code unless explicitly asked by the user
- NEVER git add or commit any code unless explicitly asked by the user. It confuses reviewer.
- NEVER hit real/external APIs (e.g. via `curl`). Service-specific CLIs
  (`gh`, `glab`, etc.) are allowed even though they call real APIs.
    - `aws`, `cdk` CLI is STRICTLY PROHIBITED!
- ALWAYS reload the file and patch against the latest code. NEVER erase user's modifications. NEVER RESTORE the code you wrote but erased by user.
- If user deleted the code or file you wrote, it means they don't want it back. Do not resurrect or suggest it again unless user explicitly asks for it.
- DO NOT erase comments even if it says something obvious. You can only erase expired comments like resolved TODOs.
- Keep comments ABSOLUTELY FUCKING MINIMAL. Only add comments when necessary to explain the code or provide context. Avoid redundant comments that state the obvious.
- ENGLISH COMMENTS!!!!!!
- If you are asked to do something after the previous plan was implemented (or user explicitly states it's refinement task), do not include already implemented steps in the plan. Only include new steps.
- For any coding task (writing, modifying, OR planning code), the user MAY pick
  a mode: `/vibe` or `/tdd`. If a coding task is requested without one, default to `/vibe`.
