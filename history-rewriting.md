# 🌿 Git Branching & Recovery Cheat Sheet

## 📊 1. Listing Timelines
* `git branch` ➔ Lists local branches (active one is highlighted)
* `git branch -v` ➔ Verbose list (shows latest commit message next to each)
* `git branch -a` ➔ Lists all local and remote branches

---

## 🗑️ 2. Deleting Timelines
*Note: Always switch away from the target branch first (`git switch main`).*

* `git branch -d <branch-name>` ➔ **Safe Delete:** Erases the branch *only* if it has been safely merged.
* `git branch -D <branch-name>` ➔ **Force Delete:** Instantly destroys the branch and its unmerged code.

---

## ⏳ 3. Reflog Resurrection (The Safety Net)
If you force-delete an unmerged branch by mistake, its commits float invisibly in the background. You can restore it in two simple steps:

### Step A: Find the lost hash
Run the local action tracker:
```bash
git reflog