# What we want to achieve
# 1. View the total sales made between the 3 branches and determine the branch performing well
# 2. Find out the product line selling the most in all 3 branches, with customer type and gender
# 3. Find out preferred method of payment and time period when the most sales are recorded in the three branches. 


# Load necessary libraries
library(dplyr)
library(ggplot2)
library(caret)

# Load the dataset
supermarket_sales <- read.csv("C:/Users/DELL/Desktop/MONROE/2nd Semester/Statistical Computing/Project/supermarket_sales - Sheet1.csv")

# View the first few rows and structure of the dataset
head(supermarket_sales)
str(supermarket_sales)


# Dropping unnecessary columns (e.g., 'Date' and 'Time' columns)
supermarket_sales <- supermarket_sales %>% select(-Invoice.ID, -Tax.5., -Unit.price, -cogs, -gross.margin.percentage, -gross.income, -Rating, -Quantity)



# 1. TOTAL SALES 


# Calculate total sales per branch
branchsales <- supermarket_sales %>%
  group_by(Branch, City) %>%
  summarise(Total_Sales = sum(Total, na.rm = TRUE)) %>%
  arrange(desc(Total_Sales))

print(branchsales)

# Visualize sales by branch
ggplot(branchsales, aes(x = Branch, y = Total_Sales, fill = City)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Branch", x = "Branch", y = "Total Sales") +
  theme_minimal() 



# 2. PRODUCT LINE SELLING IN ALL 3 BRANCHES


# Sum of sales data by product line, branch, customer type, and gender
product_sales <- supermarket_sales %>%
  group_by(Product.line, Branch, Customer.type, Gender) %>%
  summarise(Total_Sales = sum(Total, na.rm = TRUE)) %>%
  arrange(desc(Total_Sales))

print(product_sales)

# Visualize product line sales
ggplot(product_sales, aes(x = Product.line, y = Total_Sales, fill = Branch)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~Customer.type + Gender) +
  labs(title = "Product Line Sales by Branch, Customer Type, and Gender",
       x = "Product Line", y = "Total Sales") +
  theme_minimal()



# 3. PREFERRED PAYMENT METHOD vs PEAK PERIOD

# I. Preferred payment method across all branches
paymenttype <- supermarket_sales %>%
  group_by(Payment, Branch) %>%
  summarise(Total_Sales = sum(Total, na.rm = TRUE)) %>%
  arrange(desc(Branch), desc(Total_Sales))

print(paymenttype)



# Visualization of preferred payment method in the branches
ggplot(paymenttype, aes(x = Branch, y = Total_Sales, fill = Payment)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Preferred Payment Method", x = "Branch", y = "Total Sales") +
  theme_minimal()

summary(supermarket_sales)


# ii. PEAK PERIOD


# Convert Time to POSIXct format (24-hour format "HH:MM") and extract the Hour
supermarket_sales$Time <- as.POSIXct(supermarket_sales$Time, format = "%H:%M")

supermarket_sales$Hour <- as.integer(format(supermarket_sales$Time, "%H"))



# Group hours into time ranges
supermarket_sales$Time_Range <- cut(
  supermarket_sales$Hour,
  breaks = c(1:4, 5:8, 9:12, 13:16, 17:20, 21:24),
  right = FALSE, # This includes the lower bound in each range
  include.lowest = TRUE # Include the lowest value
)


# Display the time range
head(supermarket_sales$Time_Range)




# Find sales by hour to detect peak periods
peakperiod <- supermarket_sales %>%
  group_by(Time_Range, Branch) %>%
  summarise(Total_Sales = sum(Total, na.rm = TRUE)) %>%
  arrange(desc(Total_Sales))

print(peakperiod)


# Visualize peak periods vs total sales
ggplot(peakperiod, aes(x = Time_Range, y = Total_Sales, fill = Branch))  +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Peak Periods per Branch", x = "Hour of the Day", y = "Total Sales") +
  theme_minimal()





