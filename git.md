# GIT

## basic commands

- git init NAME
- git clone URL (To get repository to LOCAL directory)
- git status (to check changes)
- git add/rm (to add or remove files)
- git commit (to commit for push)
- git push (to update the repository)
- git pull origin master (to Update from repository)

## branches

- git checkout -b newBranch
- git checkout master
- git branch (list all branches)
- git branch -m currentName newName
- git branch -d branchName (delete branch)
- git branch -D branchName (force delete branch)

### compare branches

- git diff branch1 branch2

### merge branch

- git checkout tragetBranch
- git merge sourceBranch

## Using subtree in GIT

- git remote add subtreeRefName repo.git
- git subtree add --prefix=folderName subtreeRefName master

after making changes to subtree

- git subtree push subtreeRefName master

## Tips

Use of branches if possible. eg: bug/..., feature/..., refactor/..., style/...

<pre>
  git log --oneline --graph --decorate --all -20 (numbers of commits to display)

  git fetch -all : to update references with master

  git rebase other branch - makes commit clean, commits on other branch applied first and commits on current branch added, fast forward merge possible

  git stash save "stash name" (save changes for later)
  git stash apply stash@{index} (use stash with index, without stash@{index} uses last one)
  git stash list
  git stash drop stash@{index} (delete last stash)
  git stash -u (include untracked files too)
  git stash pop (apply + drop)
  git stash show stash@{index} (0 is latest)
  git stash clear (remove all stashes)
  git stash branch BRANCH-NAME (create new branch and apply the stash, and drop stash, useful if changed made but should be in other branch)

  ANNOTATION TAGS (represent release versions)
  git tag -a TAG-NAME commit-id-to-tag -m "message"
  git tag -a TAG-NAME -f commit-id-to-tag (to correct tag to other commit, use force option)
  git push origin TAG-NAME (to push tags to remote)
  git push origin BRANCH-NAME --tags (to push all tags)
  git tag --list
  git push origin :TAG-NAME (delete this tag from remote repo)
  git diff TAG-1 TAG-2

  LIGHTWEIGHT TAG
  git tag TAG-NAME
  git tag --list
  git show TAG-NAME
  git tag --delete TAG-NAME

  git remote show -v
  git remote add -m master NAME URL
  git remote add -t BRANCH NAME URL
  git remote add -f NAME URL

  git blame FILE -s

  TO INVESTIGATE BUG
  git bisect start
  git bisect HASH good
  git bisect HASH bad
  git bisect reset

  GIT LOCAL REMOTE REPO
  on remote folder
    git init --bare
  on working folder
    git init
    git add .
    git commit -m "message"
    git remote add origin file:///path-to-remote-folder
    git push origin master
  to clone
    git clone file:///path-to-remote-folder

  also look git-subtree.md
</pre>

### If chages made without creating branch

#### If no commits are made

  <pre>
    git stash
    git checkout -b feature/new-feature
    git stash pop
  </pre>

#### If already commited

  <pre>
    git push origin development:fix/fix-name
    git checkout master
    git fetch
    git checkout development
    git checkout fix/fix-name
  </pre>

  git reset HEAD filename - uncommit
  git checkout -- filename - undo changes to last commit
