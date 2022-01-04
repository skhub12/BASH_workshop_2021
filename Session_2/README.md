

 #### CHEATSHEET 2 - LINUX BASH SHELL ##

  
  ###                                                                 Basic file manipulation

![image](https://user-images.githubusercontent.com/51481004/147791087-5f99a40c-2a3f-419b-a3fe-224bbd5b42e9.png)


 #####  How to use chmod codes:
There are three types of permissions in files and folders in unix - 

Read (r)

Write (w)

Execute (x) [^note]

 ##### File permission example:     
       $ chmod 777 file <=> rwx rwx rwx i.e. give read write and execute permission to everybody.
       $ chmod 755 file <=> Set rwx to the owner and r_x for the group and everyone else.
       $ chmod 744 dir <=> rwx r-- r-- only user can read, write and execute, group and others only read dir.
       $ chmod 200 file <=> -w- --- --- only user can write the file
    
    

    
 #####   Makefile Syntax:
  
  	target: dependency1 dependency2 ....
         	<TAB>command1
 	        <TAB>command2



  

###                                                                    File compression and archives    
       
###### Create an archive called 'filename.tar' from the file:    
       tar cf <filename>.tar <filename> 
###### Decompress from arhive <filename>.tar:   
       tar xf <filename>.tar                  
###### Create a gzipped archive from the file:
       tar zcvf <filename>.tar.gz <filename>  
###### Compress a single file file.txt with .gz extension:   
      gzip file.txt                              
       
##### View files without decompressing:
      zcat = view the entire file in the console (same as cat)
      zmore = view one screen at a time the content of the file (same as more)
      zless = view one line of the file at a time (same as less)
##### Show the content of .tar, .gz or .bz2 without decompressing it:
      gzip:
      gzip -ztf archive.tar.gz

      tar:
      tar -tf archive.tar
##### Add an extra file to the .tar:
        tar -rvf archive.tar file.txt 
#### Customizing bash commands: 
1. Modifying .bash_aliases file: $HOME/.bash_aliases stores command aliases.
2. Modifying .bashrc file: you can put everything, in general, in $HOME/.bashrc.

#### Bash alias example: Custom comment to store the full date using tee command, then cut the 1st field and display hello
      alias getdates="date | tee /tmp/fulldate.txt | cut --delimiter=' ' --fields=1 | xargs echo hello"
Modify the .bashrc file in the nano editor:

![bashrc](https://user-images.githubusercontent.com/51481004/147841996-b2df6aea-d91f-4b2a-aaba-0598dc3c368f.png)

Now, we can use the new custom-made command getdates (after we refresh the bash):


![getdatesbashrc](https://user-images.githubusercontent.com/51481004/147842246-e6729a28-131e-4582-96c4-66cf3e9b780e.png)



[^note]:http://www.pa.msu.edu/~abdo/unixcc.html
