
#####################
# PLOTTING A SCATTERPLOT
#####################

### the scatterplot chart (or dot chart) is used to examine the
### relationship between two numeric variables

### suppose we have to study the relationship between
### advertising expenses and sales, on a sample of 30 companies

### we will simulate the data with normal distributions

adv <- rnorm(30, 400, 200)

sales <- rnorm(30, 4000, 1000)

### build the chart with the plot() function

plot(sales~adv)

### the default chart type in the plot() function is dot,
### so we didn't have to specify the type

### however, we can specify it explicitely

plot(sales~adv, type = "p")

### an alternative syntax for the plot function is:

plot(adv, sales)

##########################################################



############################
# SET GRAPHICAL PARAMETERS (1)
############################

### add a title to the chart

plot(sales~adv, main = "Sales vs. Advertising Expenses")

### add labels to the axes

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands")

### set limits to the axes values (if necessary)

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     xlim = c(200,600))

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     ylim = c(3000,4000))

### set the font type for the title

### 1 - normal, 2 -bold (default), 3 - italic, 4 - bold italic
### 5 -symbol

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 1)

### set the font size for the title,
### for the axes labels
### and for the axes values (default is 1)

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 0.8,
     cex.lab = 0.8, cex.axis = 0.8)

### add a subtitle

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 0.8,
     cex.lab = 0.8, cex.axis = 0.8,
     sub = "Data for 30 Companies")

### set the font size for the subtitle

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 0.8,
     cex.lab = 0.8, cex.axis = 0.8,
     sub = "Data for 30 Companies", cex.sub = 0.7)

### change the font type for the axes labels

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 0.8,
     cex.lab = 0.8, cex.axis = 0.8,
     sub = "Data for 30 Companies", cex.sub = 0.7,
     font.lab = 3)

######################################################################










###########################
# SET GRAPHICAL PARAMETERS (2)
###########################

### re-draw the plot

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 1, cex.main = 1,
     cex.lab = 1, cex.axis = 1)

### change the dots color

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 1, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red")

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "darkblue")

### to see the available color names we can use 
### the colors() command

colors()

### to download a PDF file with the available colors go here

### http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

### we can also use a hex code to specify the dot color

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 1, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "#004A33")

### change the dots shape to a plus sign

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red",
     pch = 3)

### you can find the available point shapes here

### http://www.cookbook-r.com/Graphs/Shapes_and_line_types/

### change the dots size

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red",
     pch = 3, cex = 2)

### come back to the default size

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red",
     pch = 3)

### to change the background color we must first
### use the par() function

### set the bg parameter to the desired color

par(bg = "yellow")

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red",
     pch = 3)


### add a grid to the chart

### specify the number of grid lines on the x axis (nx)
### and on the y axis (ny) in the grid() function

### col represent the lines color and lty the lines type
### (more on that later)

grid(nx=10, ny=10, col = "gray", lty = "solid")

### come back to the white background

par(bg="white")

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "red",
     pch = 3)

######################################################################












###################################
# ADDING A TREND LINE TO A SCATTERPLOT
###################################

plot(sales~adv, main = "Sales vs. Advertising Expenses",
     xlab = "Advertising Expenses",
     ylab = "Sales in Thousands",
     font.main = 2, cex.main = 1,
     cex.lab = 1, cex.axis = 1,
     col = "darkred",
     pch = 1)

### to add a trend line we must first fit the data
### using the lm() function

### (in other words, get the regression equation that shows
### how sales depend on the advertising expenses)

fit <- lm(sales~adv)

### apply the abline() function to the object fit

abline(fit)

######################################################################










###############################
# PLOTTING A CLUSTERED SCATTERPLOT
###############################

### suppose we have to study the relationshp between sales and
### advertising expenses on companies in three sectors:
### manufacturing, services and retail

### the sectors will be coded this way:
### 1 - manufacturing
### 2 - services
### 3 - retail

### simulate the data again

adv <- rnorm(30, 400, 200)

sales <- rnorm(30, 4000, 1000)

### create a factor that represents the sector

sector <- sample(1:3, 30, replace = TRUE)

sector2 <- factor(sector, levels = c(1, 2, 3), 
                  labels = c("Manufacturing", "Services", "Retail"))

sector2

### draw the clustered dot chart

plot(sales~adv, col = sector2, pch = 16)
  
### add a legend to the chart

### in the legend() command we can specify:
### the legend position (x and y)
### the legend text content, with the legend parameter
### the color and shape of the points (the same as in the chart)
### the text size

legend(x=850, y=4200, legend = levels(sector2), col = 1:3, 
       pch=16, cex=0.5)

### we can also display a line in the legend by using the
### parameter lty instead of pch

plot(sales~adv, col = sector2, pch = 16)

legend(x=850, y=4200, legend = levels(sector2), col = 1:3, 
       lty = "solid", cex=0.5)


######################################################################















####################
# PLOTTING A LINE CHART
####################

### a line chart is used to display data that
### change continously over time

### suppose we have to represent the evolution of
## a company profits in the 2007-2016 period

years <- 2007:2016

profit <- c(73, 100, 85, 115, 140, 165, 120, 150, 195, 190)

### to plot a line we must set the type parameter to l

### there are two possible syntaxes

plot(profit~years, type = "l")

plot(years, profit, type = "l")

### add a title and axes labels

plot(profit~years, type = "l",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands")

######################################################################
















##########################
# SETTING THE LINE PARAMETERS
##########################

years <- 2007:2016

profit <- c(73, 100, 85, 115, 140, 165, 120, 150, 195, 190)

### change the line color

plot(profit~years, type = "l",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands",
     col = "red")

### to get the list of colors use the colors() command

### change the line type

plot(profit~years, type = "l",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands",
     col = "red", lty = 5)

### there are six line types:

### 1 solid
### 2 dashed
### 3 dotted
### 4 dotdash
### 5 longdash
### 6 twodash

### you can see them at this address

### http://www.cookbook-r.com/Graphs/Shapes_and_line_types/

### change the line width
### default is 1

plot(profit~years, type = "l",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands",
     col = "red", lty = 1, lwd = 2)

### add a trend line to the chart

fit <- lm(profit~years)

abline(fit)

### plot a stair steps line
### first line is horizontal

plot(profit~years, type="s")

### plot a stair steps line
### first line is vertical

plot(profit~years, type="S")


######################################################################



















##########################
# OVERPLOTTING LINES AND DOTS
##########################

years <- 2007:2016

profit <- c(73, 100, 85, 115, 140, 165, 120, 150, 195, 190)

### to create a chart with both line and dots
### we set the type parameter to b (both)

plot(profit~years, type = "b",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands",
     col = "red", lty = 1, lwd = 2)

### to make the line continuous
### we set the type to "o" (override)

plot(profit~years, type = "o",
     main = "Profit Chart",
     xlab = "Year", ylab = "Profit in Thousands",
     col = "red", lty = 1, lwd = 2)

### we can play around with both 
### line type and dot type

plot(profit~years, type="o", pch=8, 
     cex=1.5, lty=3, lwd=2, col="darkblue")


######################################################################
















##################
# PLOTTING TWO LINES
##################

### we will make a chart that represents the evolution of profits
### for two companies, A and B, on the same period (2007-2016)

years <- 2007:2016

profitA <- c(73, 100, 85, 115, 140, 165, 120, 150, 195, 190)

profitB <- c(60, 95, 125, 170, 120, 140, 165, 180, 170, 185)

### first we plot the first line using the plot() function

plot(profitA~years, type="l", col = "red", lwd = 2)

### the we plot the second line on the same chart
### using the lines() function

lines(profitB~years, type="l", col = "blue", lwd = 2)

### add a legend to the chart

legend(x=2012, y=115, legend = c("Company A", "Company B"),
       col = c("red", "blue"), lty = 1, cex = 0.6, title = "Profit")



######################################################################










##################
# PLOTTING BAR CHARTS
##################

### a bar chart is used to compare values accross categories
### using vertical or horizontal bars

### take the following data about the average wage
### in four European countries

country <- c("Germany", "Switzerland", "Italy", "Portugal")

wage <- c(44900, 58300, 34100, 24100)

### to plot the average wage by contry as a bar chart
### we use the barplot() function

barplot(wage, names = country)

### adding a title, axes labels and limits to the y axis

barplot(wage, names = country, main = "Average Wage by Country",
        xlab = "Countries", ylab = "Average Wage",
        cex.main = 1.1, ylim = c(0, 58300))

######################################################################











######################
# SETTING BAR PARAMETERS
######################


### set the bar colors

### unique color

barplot(wage, names = country, col = "red")

### alternate color

barplot(wage, names = country, col = c("red", "green"))

### different colors for each bar 

barplot(wage, names = country, 
        col = c("red", "green", "violet", "orange"))

### change the bar border

barplot(wage, names = country, 
        col = "red", 
        border = "darkgreen")

### change the space between bars
### default space value is 0.2

barplot(wage, names = country, 
        col = "red",
        space = 0)

barplot(wage, names = country, 
        col = "red",
        space = 0.5)

barplot(wage, names = country, 
        col = "red",
        space = 10)


######################################################################












###################
# PLOTTING HISTOGRAMS
###################

### a histogram visually represents the distribution
### of a random variable

### we plot a histogram using the hist() function

### the histogram of a discrete distribution

x <- sample(500, 200, replace = TRUE)

hist(x)

### the histogram of a normal distribution (continuous)

y <- rnorm(200)

hist(y)

### add a custom title

hist(y, main = "Histogram Example")

### change the bar and border color

hist(y, main = "Histogram Example",
     col = "red")

hist(y, main = "Histogram Example",
     col = "red", border = "darkgreen")

### change the number of bars

hist(y, main = "Histogram Example",
     col = "red", breaks = 50)

hist(y, main = "Histogram Example",
     col = "red", breaks = 5)

### represent the relative frequencies
### (percentages) on the y axes

hist(y, main = "Histogram Example",
     col = "red", border = "darkgreen",
     freq = FALSE)

######################################################################








#####################
# PLOTTING DENSITY LINES
#####################

### a density line represents 
### the distribution of a continuous variable

x <- rnorm(200)

### get the probability density of our variable

dx <- density(x)

plot(dx)

### add custom title and labels
### and change the line color

plot(dx, main = "Density Line",
     xlab = "x", ylab = "Frequency",
     col = "red")

### make the line thicker

plot(dx, main = "Density Line",
     xlab = "x", ylab = "Frequency",
     col = "red", lwd = 2)

### change the line format

plot(dx, main = "Density Line",
     xlab = "x", ylab = "Frequency",
     col = "red", lwd = 2, lty = 2)

### add a new density line on the same chart

### create a new variable and compute the
### probability density

y <- rnorm(200)

dy <- density(y)

### plot the first line

plot(dx, main = "Density Lines",
     xlab = "x", ylab = "Frequency",
     col = "red")

### plot the second line using the lines() function

lines(dy, col = "darkgreen")

######################################################################














##################
# PLOTTING PIE CHARTS
##################

### let's represent the average wage by country
### using a pie chart

country <- c("Germany", "Switzerland", "Italy", "Portugal")

wage <- c(44900, 58300, 34100, 24100)

### we use the pie() function for this

pie(wage)

### add labels to the chart

pie(wage, labels = country)

### change the sector colors

pie(wage, labels = country,
    col = c("red", "green", "blue", "orange"))

### add a custom title

pie(wage, labels = country,
    col = c("red", "green", "blue", "orange"),
    main = "Average Wages per Country")

### change the font size

pie(wage, labels = country,
    col = c("red", "green", "blue", "orange"),
    main = "Average Wages per Country",
    cex.main = 0.9, cex = 0.8)

### add the percentages to the labels

perc <- 100 * (wage/sum(wage))

perc <- round(perc, 0)

perc

labels <- paste(country, perc)

labels

labels <- paste0(labels, "%")

labels

pie(wage, labels = labels)

### we can get a polygon instead of a pie
### setting the edges option to TRUE

pie(wage, labels = country,
    col = c("red", "green", "blue", "orange"),
    main = "Average Wages per Country", edges = TRUE)

######################################################################








#################
# PLOTTING BOXPLOTS
################

### a boxplot is a standardized way to display
### a variable distribution by using five summary indicators:
### minimum, first quartile, median, third quartile, maximum

### to create a boxplot we use the boxplot() function

x <- rnorm(100)

boxplot(x)

### change the color of the box

boxplot(x, col = "red")

### add title and axis labels

boxplot(x, col = "red",
        main = "Boxplot",
        xlab = "x", ylab = "Values")

### plot two boxplots in the same chart

### simulate a categorical variable (dichotomous)

category <- sample(1:2, 100, replace = TRUE)

category

### draw the boxplot for the variable x
### in each category

boxplot(x~category, col = "red")

### make the boxes of different colors

boxplot(x~category, col = c("red", "green"))

### we can create a violin chart
### by setting the notch option to TRUE

boxplot(x, col = "red", notch = TRUE)

boxplot(x~category, col = c("red", "green"), notch = TRUE)

##########################################################











##################
# PLOTTING FUNCTIONS
##################

### the R program can plot functions of one variable

### suppose we have to plot the following function

f <- function (x) { x^2 + x + 1 }

### to plot it, we use the plot() function

plot(f)

### the default domain is 0-1
### but we can change that using the xlim parameter

plot(f, xlim = c(-100, 100))

### change the line color and thickness

plot(f, xlim = c(-100, 100),
     col = "red", lwd = 2)

### plot another function

f2 <- function (x) { (exp(x) + 1)/(x - 1) }

### we set the domain to (-5, 5)
 
plot(f2, xlim = c(-5, 5))

##########################################################################


