# myapp-devops
myapp-devops this project is for assignment 2


# myapp-devops Project

## Git Commands

### Initializing a Git Repository
To start a new Git repository in your project folder:
```bash
git init
```

### Renaming the Default Branch
If the default branch is named `master`, rename it to `main`:
```bash
git branch -m master main
```

### Adding a Remote Repository
Link your local Git repository to a remote repository on GitHub:
```bash
git remote add origin git@github.com:shefat-global/myapp-devops.git
```

### Checking Remote URL
Verify the remote repository URL:
```bash
git remote -v
```

### Updating Remote URL
If the remote URL needs to be updated:
```bash
git remote set-url origin git@github-id_shefat-global:shefat-global/myapp-devops.git
```

### Fetching Changes from Remote
Fetch updates from the remote repository:
```bash
git fetch origin
```

### Resetting to Remote State
Reset the local branch to match the remote branch exactly:
```bash
git reset --hard origin/main
```

### Pulling Changes from Remote
Pull the latest changes from the remote main branch:
```bash
git pull origin main
```

---

### Working with Branches

#### List Current Branches
To see a list of all local branches:
```bash
git branch
```

#### Create a New Branch
To create a new branch and switch to it:
```bash
git checkout -b <branch-name>
```

Example:
```bash
git checkout -b develop
```

#### Push a New Branch to Remote
To push a new branch to the remote repository:
```bash
git push -u origin feature/login
```

#### Rename a Branch
To rename a local branch:
```bash
git branch -m old-branch-name new-branch-name
```

#### Merge a Branch
To merge changes from another branch into the `main` branch:
```bash
git checkout main
git merge feature/profile
```

#### Adding Changes
To add a file for commit:
```bash
git add feature/payment.py
```

---

### Rebase Operations

#### View Commit History
To view a concise commit history:
```bash
git log --oneline
```

#### Count Number of Commits
To count the number of commits in the current branch:
```bash
git rev-list --count HEAD
```

#### Interactive Rebase
To rebase the last `n` commits interactively:
```bash
git rebase -i HEAD~n
```
After making the changes, save and close the rebase editor.

---

### Setting Up Git Hooks

To make a pre-commit hook executable:
```bash
chmod +x hooks/pre-commit.sh
```
To verify the permissions:
```bash
ls -l hooks/pre-commit.sh
```

To make a commit-msg hook executable:
```bash
chmod +x .git/hooks/commit-msg
```
To verify the permissions:
```bash
ls -l .git/hooks/commit-msg
```
