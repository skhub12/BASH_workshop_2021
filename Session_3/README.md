 #### CHEATSHEET 3 - LINUX BASH SHELL ##  
 #####  SPECIAL CHARACTERS                   


![image](https://user-images.githubusercontent.com/51481004/147691107-3e8a5044-ba81-49cd-8137-ff600ede3b78.png)


   
  ##### Checking status of the previous command
 Returns 0 if previous command was successful and non-zero otherwise.
     
    echo $? 
    
    
 ![stringcomparisoncheat](https://user-images.githubusercontent.com/51481004/147788006-51059405-ccf2-4ae2-9506-a29678cb1872.png)







  
 ##### ONE LINER ARITHMETIC EXPRESSION: $((   )):
 
     
    echo "Only $(( (365-$(date +%j)) / 7 )) weeks until the New Year" 
##### IF condition example:     
       a=100
    if [[ $a -eq 10 ]];then
	    echo "1:True"
        else
	    echo "1:False"
    fi

