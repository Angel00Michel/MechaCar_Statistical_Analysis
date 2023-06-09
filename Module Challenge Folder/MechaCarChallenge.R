# Use the library() function to load the dplyr package.
library(dplyr)

# PART 1

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_df <- read.csv(file = "MechaCar_mpg.csv")
mechacar_df

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)) 
#R value = 0.7149
#P-value = 5.35e-11

# SAVE

# PART 2

# Download the Suspension_Coil.csv file, and place it in the active directory for your R session.

# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file = 'Suspension_Coil.CSV')
Suspension_Coil

# Write an RScript that creates a total_summary dataframe using the summarize() 
# function to get the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.
total_summary = Suspension_Coil %>% summarize(Mean_PSI = mean(PSI), median_PSI = median(PSI),variance_PSI = var(PSI), SD_PSI = sd(PSI,na.rm = FALSE))
total_summary

# Write an RScript that creates a lot_summary dataframe using the group_by() 
# and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation 
# of the suspension coil’s PSI column.
lot_summary = Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI = mean(PSI), median_PSI = median(PSI),variance_PSI = var(PSI), SD_PSI = sd(PSI,na.rm = FALSE))
lot_summary

# SAVE

# PART3

# In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the 
# PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu = 1500)
# p value = 0.06 hence we cannot say its statistically different from the population mean of 1,500 PSI

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
# and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.

LOT_1 <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI,mu = 1500)
LOT_1
# pvalue = 1 for LOT 1, mean is 1500 hence not statistically different from the population mean of 1,500 PSI

LOT_2 <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI,mu = 1500)
LOT_2
# pvalue = 0.6 for LOT 2, mean is 1500.2 hence not statistically different from the population mean of 1,500 PSI

LOT_3 <- t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI,mu = 1500)
LOT_3
# pvalue = 0.04 for LOT 3, hence we can say statistically different from the population mean of 1,500 PSI

# SAVE


