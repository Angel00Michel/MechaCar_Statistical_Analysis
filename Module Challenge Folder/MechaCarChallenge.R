# Use the library() function to load the dplyr package.
library(dplyr)

# PART 1

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_df <- read.csv(file="MechaCar_mpg.csv")
mechacar_df

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
# and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_df)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)) 
#R value = 0.7149
#P-value = 5.35e-11

# SAVE

# PART 2



