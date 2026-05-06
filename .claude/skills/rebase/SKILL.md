---
name: rebase
description: Performing git rebase without lossing codes. Use this skill only when user asks it explicitly
---

This skill guides how user wants you to perform when asked to git rebase.

## Prompt

When user asks "rebase against develop", it means "Rebase this branch based on develop branch." In git command, it's equivalent to "git rebase develop" on current checked out branch. NEVER checkout another branch unless user explicitly asks you to do so.

## Steps

- Create git stash for backup with comment "backup before auto rebasing"
- Run "git rebase develop"
- Resolve conflicts
- Commit resolved codes and continue rebasing until it's done
- Apply stashed changes without removing stash. Resolve conflicts if there are any

## Rules

- When resolving conflicts, NEVER allow losing any features (== code changes) from both current and incoming branches
