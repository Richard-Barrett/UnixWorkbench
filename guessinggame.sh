#!/bin/bash
# =============================================
# Author: Richard Barrett
# Date: Jan 02, 2020
# Purpose: Completion of Unix Workbench Course
# Organization: Coursera
# =============================================

# Variables
NUM_FILES_CWD="ls -LAh | wc -l"

# Interactive Prompt for Check on Number of Files in $(pwd)
echo "How many files are in your current working direcotry $(pwd) where this script resides (Enter INT from Wordcount Command)?
read ANS
while true; do
    read -p "Is $ANS your final answer (yes/no)?" yn
    case $yn in
        [Yy]* ) echo "===================================================="; \
                echo "        Checking Num of Files in $(pwd)..."; \
                echo "===================================================="; \
                if [ $ANS == $NUM_FILES_CWD]; \
                  then echo "You are Correct there are $ANS files within your directory"; \
                elif [ $ANS == remote]; \
                   then echo "You are incorrect $ANS does not equal $NUM_FILES_CWD within your directory"; \
                        echo "Please try again using the command ls -LAh | wc -l"
                fi; \
                echo "===================================================="; \
                break;; \
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
