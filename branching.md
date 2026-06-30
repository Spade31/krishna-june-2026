#  Git Multiverse: Quick Reference

## 1. Branching Basics
* **Create & Switch:** `git switch -c <branch-name>`
* **Switch Existing:** `git switch <branch-name>`
* **List Branches:** `git branch`

---

## 2. Merge Strategies
* **Fast-Forward Merge:** Happens when `main` has no new commits. Git simply slides the pointer forward. No new merge commit is made.
* **3-Way Merge:** Happens when history diverges (commits made on both branches). Git creates a new **Merge Commit** to fuse them.

---

## 3. Merge Conflicts
Triggered when the same line is modified in both timelines. 

### Conflict Markers:
```text
<<<<<<< HEAD
Your current branch changes (main)
=======
Incoming branch changes
>>>>>>> branch-name