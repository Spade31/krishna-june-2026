# Git Basics Cheatsheet

Quick reference guide for Git architecture, core workflows, and timeline restoration.

---

## 🏗️ 1. The 3 Core Local Zones

* **Working Tree (Sandbox):** Where you edit code. Changes here are untracked or modified.
* **Staging Area (Index/Draft):** The loading dock where files are prepared for the next snapshot.
* **Local Repository (Database):** The hidden `.git` folder containing permanently saved history.

> **Workflow Flowchart:** `Working Tree` ➔ *git add* ➔ `Staging Area` ➔ *git commit* ➔ `Local Repository`

---

## 🔄 2. Daily Workflow Commands

### Setup & Inspection
* `git init` : Turns the current folder into a brand new local Git repository.
* `git clone <url>` : Downloads a copy of a remote GitHub repository to your machine.
* `git status` : Lists files that are modified, staged, or untracked.
* `git diff` : Shows line-by-line workspace changes that haven't been staged yet.
* `git diff --staged` : Shows changes locked in the staging area waiting to be committed.

### Saving Progress
* `git add <file>` : Moves a specific file to the Staging Area.
* `git add .` : Stages all modified, new, and deleted files in the directory.
* `git commit -m "message"` : Saves the staged snapshot permanently into local history.

### Auditing Logs
* `git log` : Shows full chronological history (author, date, full hash).
* `git log --oneline` : Displays a highly compressed, one-line-per-commit history view.

---

## ⏳ 3. Undoing Changes & Time Travel

### Local Workspace Tweaks
* `git restore <file>` : Vaporizes unsaved edits in your working tree, resetting the file back to the last commit.
* `git restore --staged <file>` : Pulls a file out of the Staging Area but keeps your written code intact.

### Moving the Timeline (Get Commit ID from `git log --oneline`)
* `git reset --soft <commit-id>` : Rolls history back to the target commit; keeps newer code edits staged.
* `git reset --hard <commit-id>` : **⚠️ DANGER:** Moves history back and permanently destroys all code changes after that commit.
* `git revert <commit-id>` : Creates a brand new commit that mathematically undoes a bad commit. Safe for shared projects on GitHub.

---

## 🛑 4. The `.gitignore` Bouncer Rules

* **The Catch:** `.gitignore` only filters **new/untracked** files. It has no effect on files already saved in repository history.
* **The Untrack Fix:** To force Git to ignore a file that was accidentally committed in the past without deleting it from your hard drive, run:
    ```bash
    git rm --cached <filename>
    ```

### Rule Syntax Cheat Sheet
* `*.log` ➔ Ignores every single file ending in `.log`
* `secrets/` ➔ Ignores the entire folder named `secrets` and everything inside it
* `.env` ➔ Ignores the explicit file containing sensitive keys