# MechaCar_Statistical_Analysis
R

### Linear Regression to Predict MPG (Part 1)
1. The most outstanding variables that provided a non-random amount of variance to the mpg values in the dataset were ground_clearance (pvalue = 5.77e-08) and vehicle_length (pvalue =  2.60e-12).
2. The slope of the linear model is not considered to be zero due to the coefficient of the variables being not equal to 0. 
3. This linear model represents mpg of MechaCar prototypes effectively. R^2 = 0.7149 which scales this model to be about 71.49% accurate.

### Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils determine that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- The total Summary shows that variance is under 100 which is acceptable (62.2), on the other hand the lot summary depicts that lot 3 is over 100PSI (170) which is NOT acceptable.

*DATA BELOW*

![image](https://github.com/Angel00Michel/MechaCar_Statistical_Analysis/assets/106771574/926df865-c956-436a-b2f8-315ebbec4d84)


![image](https://github.com/Angel00Michel/MechaCar_Statistical_Analysis/assets/106771574/99e2f196-32ad-4456-aeef-89f59f5ac044)

### T-Tests on Suspension Coils
1. Looking at ALL lots - p value = 0.06 therefore we cannot say it's statistically different from the population mean of 1,500 PSI. 
2. (LOT 1) - pvalue = 1 for LOT 1, therefore no proof statistically different from the population mean of 1,500 PSI. 
3. (LOT 2) - pvalue = 0.6 for LOT 2, therefore no proof statistically different from the population mean of 1,500 PSI. 
4. (LOT 3) - pvalue = 0.04 for LOT 3, therefore we can determine it is statistically different from the population mean of 1,500 PSI, Null Hypothesis has been rejected.

- LOT 3 seems to have some issues and are expected to meet the necessary standards.

### Study Design: MechaCar vs Competition
- Here is my description of a statistical study, allowing us to quantify how the MechaCar performs against the competition. 

1. Cost, mpg, city fuel efficiency, highway fuel efficiency, horse power, maintenance cost, and safety rating should all be metrics we are able to test.

2. "Null Hypothesis" : MechaCar performs poorly against the competition against all metrics.

3. We can use t-tests for our hypothesis. We will compare each metric one by one to see if it's different than our competitors. We can can single out those with low P-values and review to see if they are problematic (based on their mean, max, min, median etc...).

4. We need all the metrics mentioned in "1" to run the statustical test. We will also need the same metrics from our competitors, allowing us to determine whether or not the MechaCar will trump its comepetitors. 
