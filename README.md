# MechaCar Statistical Analysis

## **Overview**
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked us to review the production data for insights that may help the manufacturing team. The following was requested: 
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


## **Resources**

* Data Sources: 
  * https://github.com/ireneshin26/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv
  * https://github.com/ireneshin26/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv
* Languages: R

****

## **Deliverable 1: Linear Regression to Predict MPG**
**Background:** The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. These metrics are the independent variables. MPG is the dependent variable. Utilizing R, a linear model that predicts the mpg of MechaCar prototypes was created.
 
<img width="825" alt="D1_LinearRegression" src="https://user-images.githubusercontent.com/110875578/203673799-2741b2d7-ee0d-4c0b-9d8e-bfdee6e540ef.png">

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** >> *Vehicle Length and Ground Clearance are statistically significant*

**Is the slope of the linear model considered to be zero? Why or why not?** >> *Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. The slope is not considered zero because we have two independent variables that are statistically significant. Based on the legend, the three asterisks next to Vehicle Length and Ground Clearance show Pr(>|t|) of 0.*

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?** >> *This linear model shows an R squared value of 0.7149 which means that this model predicts the mpg of the prototypes only 71.49% of the time.*


## **Deliverable 2: Summary Statistics on Suspension Coils**
**Background:** The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R, a summary statistics table was created showing the following: 

The suspension coil’s PSI continuous variable across all manufacturing lots: 

<img width="335" alt="D2_SuspensionCoilSummary" src="https://user-images.githubusercontent.com/110875578/203673857-a9302ff2-1810-4490-806e-c6d8f11d2a8d.png">

The following PSI metrics for each lot: mean, median, variance, and standard deviation:  
<img width="489" alt="D2_LotSummary" src="https://user-images.githubusercontent.com/110875578/203673844-9254ec4b-5c97-4a4c-beee-f0c3678283fd.png">

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

* *Variance of PSI for all manufacturing lots is 62.29356 which does not exceed 100 PSI.*
* *Variance of Lot 1 and Lot 2 meets the design specifications but Lot 3 has a variance of 170.2861224 which exceeds 100 PSI.*
* *In summary, the suspension coils from Lot 1 and 2 should be utilized.*



## **Deliverable 3: T-Tests on Suspension Coils**
**Background:** T-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

<img width="573" alt="D3_T-Test" src="https://user-images.githubusercontent.com/110875578/203673903-1ef86904-127a-4de6-ae4c-952f4cca19d2.png">

* All Manufacturing Lots: The PSI is not statistically different from the populaton mean of 1500 lbs due to the P-value of 0.06028, which is higher than 0.05 indicating to maintain the null hypothesis. 
* Individual Lots: PSI values for Lots 1 and 2 are not statistically different since both exhibit higher than 0.05 p values -  Lot 1 (p=1), Lot 2 (p=0.6072). The PSI value for Lot 3 (p=0.04168) however is less than the 0.05 p value showing that it is statistially different and indicates strong evidence to reject the null hypothesis.


## **Deliverable 4: Study Design MechaCar vs Competition**
Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Overview: Statistical Study to be completed to compare fuel efficiency of MechaCar vehicles against the competition.

Metrics: 
* Fuel efficiency (Dependent)
* Vehicle Class: convertible, sedan, SUV, van (Independent)
* Vehicle Type: hybrid/not hybrid (Independent)

Hypothesis: 
* Null: MechaCars' vehicles perform equally as vehicles from other manufacturers relative to fuel effiency across vehicle types
* Alternate: MechaCar's vehicles do not perform equally as vehicles from other manufacturers.

Statistical Tests: 
* Two Way ANOVA Test used to test the means of a single dependent variable (fuel efficiency) across a two different independent variables (vehicle class & type). This would allow us to identify whether the differences are statistically signifant. 
* Multiple Linear Regression can be done to determine the factors (vehicle class & vehicle type) with the highest corrrelation to the fuel efficiency. 

Data: 
* Sample size must be greater than 50 for each vehicle type/class so in this case, we would need at least 300 data points. The mpg for each of the cars is needed for city and highways. 
