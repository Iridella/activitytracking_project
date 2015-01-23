# Activity Tracking Project

This project include a script to create two tidy data sets starting from data collected from the accelerometers from the Samsung Galaxy S smartphone.

## How the script works

1. Download and unzip the [data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and put it into a folder on your local drive.
2. Set your working directory using setwd("working_directory") function in R Console
3. Copy the "run_analysis.R" script in your working directory
3. Run source("run_analysis.R")
4. Run the script with your data directory: run_analysis("data_dir")
5. The script will generate a new file "tinydata_average.txt" in your working directory.
