#Scenario
#A hospital wants to understand patient flow, severity, and outcomes.

#Variables (mixed types)
#Variable->	Meaning->	Expected Distribution
#age->	Patient age	->Normal / Slightly skewed
#waiting_time->	Minutes waited before consultation->	Right-skewed
#visits_per_year->	ER visits per patient per year->	Poisson
#critical->	Critical condition (0/1)->	Binomial
#random_id_check->	Random audit score->	Uniform

#Real world example
set.seed(123)

hospital_df <- data.frame(
  age = round(rnorm(500, mean = 45, sd = 15)),
  waiting_time = round(rexp(500, rate = 0.05)),
  visits_per_year = rpois(500, lambda = 2),
  critical = rbinom(500, size = 1, prob = 0.25),
  random_id_check = runif(500, min = 0, max = 100)
)
#2️⃣ Descriptive Statistics (First Look)
summary(hospital_df)

#Distribution-wise Analysis (WITH PLOTS)
#A. Normal Distribution → Age
#Descriptive Stats
mean(hospital_df$age)
median(hospital_df$age)
sd(hospital_df$age)

#Plot
hist(hospital_df$age,
     probability = TRUE,
     main = "Age Distribution",
     xlab = "Age")

curve(dnorm(x,
            mean(hospital_df$age),
            sd(hospital_df$age)),
      add = TRUE, lwd = 2)


#Conclusion
#Bell-shaped
#Mean ≈ Median
#Normal distribution assumption valid

#B. Right-Skewed Distribution → Waiting Time
#Descriptive Stats
mean(hospital_df$waiting_time)
median(hospital_df$waiting_time)

#Plot
hist(hospital_df$waiting_time,
     main = "Waiting Time Distribution",
     xlab = "Minutes")


#Conclusion
#Mean > Median
#Long right tail
#Typical for service delays

#C. Poisson Distribution → Visits per Year
#Descriptive Stats
table(hospital_df$visits_per_year)
mean(hospital_df$visits_per_year)

#Plot
barplot(table(hospital_df$visits_per_year),
        main = "ER Visits per Year",
        xlab = "Number of Visits",
        ylab = "Frequency")


#Conclusion
#Discrete counts
#Most patients visit 1–3 times
#Poisson assumption reasonable

#D. Binomial Distribution → Critical Condition
#Descriptive Stats
table(hospital_df$critical)
prop.table(table(hospital_df$critical))

#Plot
barplot(table(hospital_df$critical),
        names.arg = c("Not Critical", "Critical"),
        main = "Patient Critical Status")


#Conclusion
#Binary outcome
#Probability of critical ≈ 25%
#Binomial model applies

#E. Uniform Distribution → Random Audit Check
#Descriptive Stats
summary(hospital_df$random_id_check)

#Plot
hist(hospital_df$random_id_check,
     main = "Uniform Distribution",
     xlab = "Score")


#Conclusion
#Flat distribution
#No clustering
#Uniform assumption valid

#Boxplots – Compare All Numeric Variables
boxplot(hospital_df[, c("age", "waiting_time",
                        "visits_per_year", "random_id_check")],
        main = "Boxplot Comparison",
        las = 2)


#Insights
#Waiting time shows strong outliers
#Visits per year tightly clustered
#Uniform data shows even spread

#I first used descriptive statistics to understand central tendency and spread.
#Then I visually inspected distributions using histograms and bar plots.
#Based on symmetry, skewness, and data type, I mapped each variable to its statistical distribution