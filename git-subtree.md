# Using subtree in GIT

git remote add subtreeRefName repo.git
git subtree add --prefix=folderName subtreeRefName master

- after making changes to subtree

git subtree push subtreeRefName master
