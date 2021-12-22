#Stream EDitor (SED) is an important text-processing utilities on GNU/Linux. 
#It uses a simple programming language and is capable of solving complex text processing tasks with few lines of code
$ cat datafile.txt
2 Brussels is a big city!

# Text substitution with SED - replace big with small
#general syntax:
#sed/regular-expression/replacement text/{flags}
4 $ sed -e 's/big/small/g' datafile
5 
