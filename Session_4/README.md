
 ### CHEATSHEET 4 - LINUX BASH SHELL
##### Advanced file manipulation:
    locate <fileName> = search for a file  (sometimes slow)
    tree = lists out folder structure in a nested manner
    cat <fileName> = show content of file 
    find -name “<fileName>”
    find . –maxdepth 1  =finds all file upto level 1. Maxdepth defines the level at which find command should stop
    find / =lists all the files on your computer.
    find . =lists files from the present folder.
    find . –name ‘*.csv’  = finds only csv data files in the folder
    find . –maxdepth 1 –type f #lists files upto one maxdepth. -type d is for directory and –type f is for files.
    find . –name”*1.txt” = finds text files that end with 1.
    find . –type f –size +100k |wc –l #finds files greater than 100 kilobytes in pwd"
    ln file1 file2 = physical link
    ln -s file1 file2 = symbolic link
        

![image](https://user-images.githubusercontent.com/51481004/148111081-364895b6-0c59-40c2-a1b8-bed3995c0fc4.png)

#####      tac/rev tutorial:
    
    First of all, download the data file tac.txt
   
    $cat tac.txt          # Print contents of the file 
    $tac tac.txt          # tac - concatenates and prints files in reverse (vertically) 
    $rev tac.txt          # rev - prints files in reverse horizontally
    $seq 10 | tac         # Prints integers from 10 to 1 (reverses the sequence)
   
 ![tac](https://user-images.githubusercontent.com/51481004/148111303-1ab022ec-3bb5-40d0-9bc3-e1a3aa40be48.png)

        
######        Why use tac: For better solutions one might use AWK or Perl expressions, whereas tac is an uncomplicated, minimalist parsing command that can be used to reverse any type of file (including .mp3 music files). The tac command is limited, obviously, because it doesn’t manipulate data in any way aside from reversing them. But sometimes that’s the only manipulation you need.

## Create a new repository on the command line
###### Prerequisite: You need to first set up your github with ssh and add a new ssh-key-to-your-github-account (For details: refer slides).
    touch README.md   ### Using touch command to create readme file in the nano editor
    git init #initialise git
    git commit -m "Initial commit” #Committing the changes 
    git remote add origin git@github.com:yourgithubaccountname/<reponame>.git   
##### Usage of git remote:
    syntax: git remote add [<options>] <name> <url> 
    -f, --fetch           fetch the remote branches
    --tags                import all tags and associated objects when fetching
                          or do not fetch any tag at all (--no-tags)
    -t, --track <branch>  branch(es) to track
    -m, --master <branch>
##### Pushing the repository to github.com:
    git push -u origin master
