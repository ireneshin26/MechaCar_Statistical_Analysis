#=============================================================
# ****Deliverable 1: Linear Regression to Predict MPG****

# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
mechacar_df

# Perform linear regression using the lm() function. 
# Pass in all six variables (i.e., columns) in lm() function, and add the dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)


# Use summary() function to determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df))


#=============================================================
# ****Deliverable 2: Summary Statistics of Suspension Coils****

# Import and read in the Suspension_Coil.csv file as a table
suspension_table <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Write RScript that creates a total_summary datatframe using summarize() function
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
total_summary

# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary_df <- suspension_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary_df


#=============================================================
# ****Deliverable 3: T-Tests on Suspension Coils****

# t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI,mu = 1500)

# t.test() function across all lots

t.test(subset(suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

t.test(subset(suspension_table,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

t.test(subset(suspension_table,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

