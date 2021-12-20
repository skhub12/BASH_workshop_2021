

## Create a new repository on the command line
## Prerequisite: You need to first set up your github with ssh and add a new ssh-key-to-your-github-account

touch README.md   ### Using touch command to create readme file in the nano editor
git init #initialise git
git commit -m "Initial commit” #Committing the changes 
git remote add origin git@github.com:yourgithubaccountname/<reponame>.git  #usage: git remote add [<options>] <name> <url> 

### Some usage of git remote
### -f, --fetch           fetch the remote branches
### --tags                import all tags and associated objects when fetching
###                       or do not fetch any tag at all (--no-tags)
### -t, --track <branch>  branch(es) to track
### -m, --master <branch>
        
### Pushing the repository to github.com

git push -u origin master
