# Real-World Dataset #2: E-Commerce Order Analytics
## Business Scenario
#An e-commerce company wants to understand **customer behavior, sales patterns, and system performance**.
  # ## Variables in the Dataset
  # 
  # | Variable          | Meaning                | Expected Distribution |
  # | ----------------- | ---------------------- | --------------------- |
  # | `order_value`     | Order amount (₹)       | Right-skewed          |
  # | `delivery_days`   | Days taken to deliver  | Normal                |
  # | `items_per_order` | Items bought per order | Poisson               |
  # | `returned`        | Order returned (0/1)   | Binomial              |
  # | `discount_pct`    | Discount percentage    | Uniform               |
  # 
#Create the Dataset (Realistic Simulation)
set.seed(2026)

ecom_df <- data.frame(
  order_value = round(rlnorm(600, meanlog = 7.5, sdlog = 0.6)),
  delivery_days = round(rnorm(600, mean = 5, sd = 1.2)),
  items_per_order = rpois(600, lambda = 3),
  returned = rbinom(600, size = 1, prob = 0.18),
  discount_pct = runif(600, min = 0, max = 50)
)
# First Look: Descriptive Statistics
summary(ecom_df)
### What you immediately notice
# 
# * `order_value`: Mean ≫ Median → skewed
# * `delivery_days`: Mean ≈ Median → symmetric
# * `items_per_order`: small integers
# * `returned`: binary
# * `discount_pct`: evenly spread

#Distribution-wise Analysis (With Interpretation)

##A. Right-Skewed Distribution → **Order Value**
### Descriptive Stats
mean(ecom_df$order_value)
median(ecom_df$order_value)
sd(ecom_df$order_value)
### Plot
hist(ecom_df$order_value,
     main = "Order Value Distribution",
     xlab = "Order Amount (₹)")
##*Conclusion**
#* Many small orders
#* Few very large orders
#* Typical revenue distribution in e-commerce

#*Business Insight**
#High-value customers drive disproportionate revenue.

##B. Normal Distribution → **Delivery Days**
### Descriptive Stats
mean(ecom_df$delivery_days)
median(ecom_df$delivery_days)
sd(ecom_df$delivery_days)

### Plot
hist(ecom_df$delivery_days,
     probability = TRUE,
     main = "Delivery Time Distribution",
     xlab = "Days")

curve(dnorm(x,
            mean(ecom_df$delivery_days),
            sd(ecom_df$delivery_days)),
      add = TRUE, lwd = 2)
##Conclusion**
#* Symmetric
#* Most deliveries around 5 days
#* Normal assumption valid

##C. Poisson Distribution → **Items per Order**
### Descriptive Stats
table(ecom_df$items_per_order)
mean(ecom_df$items_per_order)
### Plot
barplot(table(ecom_df$items_per_order),
        main = "Items per Order",
        xlab = "Number of Items",
        ylab = "Frequency")
##Conclusion**
#* Discrete count data
#* Most customers buy 2–4 items
#* Poisson fits well
 
##D. Binomial Distribution → **Order Returned**
### Descriptive Stats
table(ecom_df$returned)
prop.table(table(ecom_df$returned))
### Plot
barplot(table(ecom_df$returned),
        names.arg = c("Not Returned", "Returned"),
        main = "Order Return Status")
##*Conclusion**
#* Yes / No outcome
#* ~18% return rate
#* Binomial model applies
###*Business Insight**
#High return rate may indicate product quality or sizing issues.
 
### E. Uniform Distribution → **Discount Percentage**
### Descriptive Stats
summary(ecom_df$discount_pct)
### Plot
hist(ecom_df$discount_pct,
     main = "Discount Percentage Distribution",
     xlab = "Discount (%)")

##*Conclusion**
#* Flat histogram
#* No clustering
#* Uniform distribution confirmed

# Boxplot Comparison (Outliers & Spread)
boxplot(ecom_df[, c("order_value",
                    "delivery_days",
                    "items_per_order",
                    "discount_pct")],
        main = "E-Commerce Metrics Comparison",
        las = 2)
#*Insights**
#* Order value has extreme outliers
#* Delivery days tightly clustered
#* Items per order compact
#* Discounts evenly spread

#Distribution Mapping Summary
# 
# | Variable        | Distribution | Reason                 |
# | --------------- | ------------ | ---------------------- |
# | Order Value     | Right-skewed | Few large orders       |
# | Delivery Days   | Normal       | Symmetric service time |
# | Items per Order | Poisson      | Count data             |
# | Returned        | Binomial     | Binary outcome         |
# | Discount %      | Uniform      | Even assignment        |

## Interview-Grade Explanation (Short & Sharp)
#“I identified the distribution by combining data type, summary statistics, and visual inspection.
#Right-skewed for revenue, normal for operational time, Poisson for counts, binomial for outcomes, and uniform for random assignments.”
