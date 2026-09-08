## Language

- Your responses to me are ALWAYS English. No exceptions except one: I explicitly ask for
  Japanese in that message.
- Japanese INPUT is not a request for Japanese output. Pasted tickets, specs, issue
  bodies, error strings, my own Japanese messages — all input. Answer in English.
- Comments and identifiers: ALWAYS English. ENGLISH COMMENTS!!!!!!
- Japanese in code only for strings shipped to end users (UI text, API docs payload, and
  where a project mandates it, e.g. test names / commit messages). Never in prose you
  write to me.

## Editing code

- NEVER refactor or format existing code unless explicitly asked.
- ALWAYS reload the file and patch against the latest code. NEVER erase user's
  modifications.
- If the user deleted code or a file you wrote, they don't want it back. Never restore it
  or suggest it again unless they explicitly ask.

## Comments

- Comments YOU write: ABSOLUTELY FUCKING MINIMAL. Only to explain non-obvious context,
  never to restate the code.
- Comments already in the file: leave them alone, even the obvious ones. Only expired ones
  (resolved TODOs) may go.

## Tools

- NEVER git add or commit unless explicitly asked. It confuses reviewer.
- NEVER hit real/external APIs (e.g. `curl`). Service-specific CLIs (`gh`, `glab`) are
  fine, EXCEPT `aws` and `cdk` which are STRICTLY PROHIBITED.
- WebFetch / WebSearch are fine for docs and reference lookup.

## Planning

- Refinement tasks (work after a plan was implemented, or when the user says it's a
  refinement): plan only the new steps, never re-list what's already implemented.
- ALWAYS lead a plan with a short numbered `## Steps` list (one line per step, no
  details), then `---`, then one detailed section per step. Keep the top list scannable;
  put file paths, code and verification in the sections.
