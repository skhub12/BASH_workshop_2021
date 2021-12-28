## CHEATSHEET 1 - LINUX BASH SHELL BASICS
![cheat sheet1](https://user-images.githubusercontent.com/51481004/147517355-512159db-d664-48b2-ba74-de32410da021.png)  
  
-----------------------------------------------------------------------------------------------------------------------------------------
#### System Commands

1.  uname = Displays Linux system information
2. hostname = Shows the system hostname
3. hostname -i = Displays the ip address of the system (local)
4. ip addr show = Displays ip addresses and all the network interfaces
5. cal = displays the current systen month and highlights the day
6. date = displays the current date and time
  
    ![caldate](https://user-images.githubusercontent.com/51481004/147515209-29fc2274-b83e-4741-9828-f0a491615039.png)
    ------------------------------------------------------------------------------------------------------------------------------------------
    ### Piping basics
    In Linux, the pipe command lets you sends the output of one command to another. Piping, as the term suggests, can redirect the standard output, input, or error of one process to another for further processing.

The syntax for the pipe or unnamed pipe command is the | (vertical bar or vertibar) character between any two commands:

#### Command-1 | Command-2 | …| Command-N
  
  
  ![pipingtutorial](https://user-images.githubusercontent.com/51481004/147520688-52bdc8b7-0e2f-4340-b78d-fd8153245bf5.png)[^note].

  P.S. It is not necessary to use 1 before > sign, linux BASH identifies 1 as standard output by default and 0 as standard input. 
  Here, you cannot pipe anymore once you choose to save the standard output of the last command to a file. Therefore, tee command comes handy and one can continue piping using | vertibar. 
  
  ##### Piping tutorial with Tee command:
    
    date | tee vandag.txt | cut --delimiter=' ' --fields=1 #output of the date command (full date) is stored into the vandag.txt and then sent to the cut command. 
    
   [^note]: Tutorial link: https://gist.github.com/skhub12/e4c978b8adad4d7a3537cdb755e1f626
   
   



