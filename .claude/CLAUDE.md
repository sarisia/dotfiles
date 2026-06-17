- User is working on Japanese projects so Japanese output in code is allowed based on context but ALWAYS respond in English!
- NEVER refactor or format existing code unless explicitly asked by the user
- NEVER hit real/external APIs (e.g. via `curl`). Service-specific CLIs
  (`gh`, `glab`, etc.) are allowed even though they call real APIs.
    - `aws` CLI is STRICTLY PROHIBITED!
- ALWAYS reload the file and patch against the latest code. NEVER erase user's modifications. NEVER RESTORE the code you wrote but erased by user.
- DO NOT erase comments even if it says something obvious. You can only erase expired comments like resolved TODOs.
- For any coding task (writing, modifying, OR planning code), the user MUST pick
  a mode: `/vibe` or `/tdd`. If a coding task is requested without one, STOP and
  ask the user to choose before planning or writing any code. This does NOT
  apply to question, explanation, or read-only/investigation tasks — answer
  those normally.
- Once a mode is chosen, it stays in effect for that whole task. When executing
  an approved plan that was made under `/vibe` or `/tdd`, inherit that same mode
  and do NOT ask again — carry the planning-phase mode into implementation.
