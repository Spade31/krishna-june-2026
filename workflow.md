```markdown
# 🚀 Git Engineering Workflow Guide

This guide outlines our team's **Trunk-Based Development** workflow. Follow these steps daily to keep your code integrated, prevent merge conflicts, and maintain a stable production environment.

---

## 🗺️ 1. The Core Rule
* **`main` is the Trunk:** The `main` branch must always be stable, tested, and ready to deploy. 
* **No Direct Commits:** Never write or save code directly to `main`. Always use a short-lived branch that gets merged back within 1–2 days.

---

## 🔄 2. The Daily 4-Step Code Loop

### Step A: Sync Your Local Machine
Before writing any new code, update your local repository to match the absolute latest version from GitHub:
```bash
git switch main
git pull origin main

```

### Step B: Create a Short-Lived Feature Branch

Create a side branch named cleanly based on what you are building. Use prefixes like `feat/`, `fix/`, or `docs/`:

```bash
git switch -c feat/add-login-button

```

### Step C: Code and Commit

Save your changes in small, logical checkpoints.

* **The Shortcut:** `git commit -am "message"` automatically stages and commits your edited files.
* *Note: If you create a brand-new file, you must run `git add <file>` manually before committing.*

```bash
git commit -am "feat: add login button UI component"

```

### Step D: Push to GitHub

Send your branch to the cloud so it can be reviewed:

```bash
git push -u origin feat/add-login-button

```

---

## 💬 3. Pull Requests, Reviews, & Cleanup

### 1. Open the Pull Request (PR)

* Go to your repository on GitHub and click **Compare & pull request**.
* Ensure the mapping is set correctly: `base: main` ◄ `compare: feat/add-login-button`.
* Provide a clear description of what your code changes accomplish.

### 2. Code Review Protocol

* **Inline Comments:** In the **Files changed** tab, click the blue `+` icon on any line of code to ask a question or leave feedback.
* **Smart Suggestions:** Use the `+-` suggestion button in the comment toolbar to submit exact code fixes that the author can apply with a single click.

### 3. Merge and Clean Up

* Once approved, click the green **Merge pull request** button on GitHub, then confirm the merge.
* Immediately click the purple **Delete branch** button on GitHub to keep the remote tree clean.
* Return to your local terminal and delete the dead local pointer:
```bash
git switch main
git pull origin main
git branch -d feat/add-login-button

```



---

## 🛠️ 4. The Emergency Safe-Undo Playbook

Use this table to quickly find the exact command needed to fix a mistake based on where it happened.

| Scenario / Problem | Precise Command | Safe for Shared Branches? |
| --- | --- | --- |
| **Wipe away unsaved text edits on your screen** | `git restore <file>` | ✅ Yes |
| **Clear uncommitted index changes blocking a rebase** | `git stash` ➔ *run rebase* ➔ `git stash pop` | ✅ Yes |
| **Erase local commits completely (Delete history)** | `git reset --hard HEAD~1` | ⚠️ Local Only! |
| **Combine local commits together (Keep code staged)** | `git reset --soft HEAD~1` | ⚠️ Local Only! |
| **Undo a bad commit that was already pushed to GitHub** | `git revert <commit-hash> --no-edit` | ✅ Yes (Industry Standard) |
| **Force-delete a timeline without merging its code** | `git branch -D <branch-name>` | ✅ Yes |

### 🕰️ Resurrecting Lost Work with Git Reflog

If you run a hard reset or delete a branch by accident, Git's hidden security camera log tracks your movements for 30–90 days.

1. View your complete local activity history:
```bash
git reflog

```


2. Identify the step right before the disaster happened (e.g., `HEAD@{2}`) or copy its 7-character hash code.
3. Bring your work back from the dead instantly:
```bash
# Option A: Teleport your entire workspace back to step 'n'
git reset --hard HEAD@{n}

# Option B: Recreate a deleted branch exactly where it used to stand
git switch -c recovered-branch-name <commit-hash>

```



```

```