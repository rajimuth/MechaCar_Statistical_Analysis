# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The "MechaCar_mpg.CSV data file was read in R and converted to dataframe

<img width="323" alt="image" src="https://user-images.githubusercontent.com/94877067/165657972-99a15b41-6059-4745-b858-0a38476bcec4.png">

Mulitple Linear aggression of all the 6 variable vs mpg was performed usin lm() function

<img width="407" alt="image" src="https://user-images.githubusercontent.com/94877067/165658187-f63d781e-8902-47e0-9f36-56adb73dd1be.png">

<img width="418" alt="image" src="https://user-images.githubusercontent.com/94877067/165658227-c8bc59dc-1b57-49b1-9a86-c07917726c6c.png">

The Pvalue and r-squared value was  determined by applying the summary() function

<img width="461" alt="image" src="https://user-images.githubusercontent.com/94877067/165658349-4e7e0613-7635-44d6-8278-db62fcf259b1.png">

<img width="474" alt="image" src="https://user-images.githubusercontent.com/94877067/165658395-105cf9f1-5b28-4152-88c3-4a77006c59e3.png">

Results:
- Variables vehicle length and ground_clerance provided a non-random amount of variance to the mpg values in the dataset.
- The Intercept is statistically significant. This means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. 
-  The r-squared value is 0.72, which means that roughly 72% of the variablilty of our dependent variable (mpg) is explained using this linear model. 
-  The P-value of the linear regression analysis is 5.35e-11, which is much smaller than the assumed significance level of 0.05%. 
-  The slope of the linear model is not zero as the P value is smaller than the significance level.
- Though the P value is very small, only 2 of the the variables from the dataset are significant.
-  The lack of enough significant variable can be evedence of overfitting. So there is a possibility that the current data set may not be efficient in predicting future data correctly.


## Summary Statistics on Suspension Coils
- A total summary of the mean, median, variance and standard deviation of the Suspension coils PSI columns was created from the second dataset Suspension_Coil.csv

<img width="403" alt="image" src="https://user-images.githubusercontent.com/94877067/165663391-40e2cfe0-727c-41c9-b6a4-93d10f8b4462.png">

<img width="231" alt="image" src="https://user-images.githubusercontent.com/94877067/165663473-6613cd26-35ed-43f2-8c4c-4a7448e45bc2.png">

- A lot summary was then generated to group each manufacturing lot by mean,median, variance and standard deviation of the suspension coil's PSI column

<img width="366" alt="image" src="https://user-images.githubusercontent.com/94877067/165663665-cf65d7cc-97b5-4e06-a35c-c057dde585c0.png">

<img width="271" alt="image" src="https://user-images.githubusercontent.com/94877067/165663711-c8aeecf2-5d78-4c83-ada3-405c661c8b8b.png">

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
The design specification for all the manufacturing lots in total meet this design specification.
But looking at the variance of design specification for each lot individually showed that Lot1 and Lot2 meet the design specification but Lot3 exceeded the limit as the variance was shown to be 170.29.

## T-Tests on Suspension Coils

- t-test on the total summary of PSI from all manufacturing lots showed that the P value is above the significance level of 0.05.

<img width="248" alt="image" src="https://user-images.githubusercontent.com/94877067/165665227-69652014-6acf-44b6-85d3-a73c35989643.png">

- Therefore, there is no sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
-  t-test on the total summary of PSI from each lot showed that the P value of Lot1 and Lot2 is above the significance level of 0.05 and the P-value of Lot3 to be significant.

<img width="308" alt="image" src="https://user-images.githubusercontent.com/94877067/165665331-4c00b964-0064-42d3-a51f-2beea0f65d32.png">


## Study Design: MechaCar vs Competition.

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
- Key metrics to be tested for comparison of MechaCar with Competeitors would be Cost of the car, city and highway fuel efficiency, saftey rating, maintenance cost
- null hypothesis will be that there is no statisical difference between MechaCar performance vs other competitors
- Alternatice hyposthesis is that mechaCar performs exceptionally well against all its competitors.
- ANOVA test can be used to test the hypothesis
- ANOVA) test is used to compare the means of a continuous numerical variable across a number of groups. As our hypothetical data set has several metrics with numerical variable, ANOVA test can be a better test to quantify performance of MechaCar vs other cars.
- ANOVA test can be performed using the aov() function
- Recorded values for all the jey metrics mentioned above for MechaCar and competitors will be required in the data set.



