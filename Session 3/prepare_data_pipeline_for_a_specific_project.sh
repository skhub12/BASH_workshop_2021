#!/usr/bin/env bash

 # For loops
 # ------------------ Data preparation begin -------------------
 # Lets create some layout of files to play with
 for country in data_BE data_US
 do
     mkdir -p $country/morning
     mkdir -p $country/evening
     for i in {1..3}
     do
         touch $country/morning/$i.csv
         touch $country/evening/${i}.csv # it is better to 'use' a variable with ${i} instead of $i
                                         # to create a clear boundary between ${i}_and_what_follows_it
                                         # i.e, echo $iabc is different from echo ${i}abc
     done
 done
 # ------------------ Data preparation end ---------------------
 # This created the data in the following format
 #        data_BE
 #        ├── evening
 #        │   ├── 1.csv
 #        │   ├── 2.csv
 #        │   └── 3.csv
 #        └── morning
 #            ├── 1.csv
 #            ├── 2.csv
 #            └── 3.csv
 #        data_US
 #        ├── evening
 #        │   ├── 1.csv
 #        │   ├── 2.csv
 #        │   └── 3.csv
 #        └── morning
 #            ├── 1.csv
 #            ├── 2.csv
 #            └── 3.csv


 # Consider the following a second script that does the 'data preparation step for your main work scripts (e.g., python)'
 # --- say your scripts requires data in the form
 #    input_dir/
 #     ├── evening_data_BE_1.csv
 #     ├── evening_data_BE_2.csv
 #     ├── evening_data_BE_3.csv
 #     ├── evening_data_US_1.csv
 #     ├── evening_data_US_2.csv
 #     ├── evening_data_US_3.csv
 #     ├── morning_data_BE_1.csv
 #     ├── morning_data_BE_2.csv
 #     ├── morning_data_BE_3.csv
 #     ├── morning_data_US_1.csv
 #     ├── morning_data_US_2.csv
 #     └── morning_data_US_3.csv
 #     First: make the input_dir
 mkdir -p input_dir
 # Now, let's fill it up
 for country in BE US # but our directories are of the form data_BE, data_US etc?!
 do
     country=data_$country  # so we make the adjustment here, re-define country to add data_ prefix
     # instead of repeating commands for morning-evening like it was done in 'data preparation' step
     #  we write one more loop instead
     for partofday in morning evening
     do
         # copy all csv files uin the $country/$partofday directory to
         #   input_dir/ BUT, in the format defined above
         # how do we do that?
         # do ls of only *.csv files in the specified path, and go over each file in the loop
         for file in `ls $country/$partofday/*.csv`
         do
             echo path is $file, the basename of it is `basename $file`
             basefilename=`basename $file`
             cp -v $file input_dir/${partofday}_${country}_$basefilename # -v means verbose: it prints what it did
             # if the files are large, instead of copying them, you can create symbolic links instead
             # ln -s $file input_dir/${partofday}_${country}_$basefilename
         done
     done
 done
