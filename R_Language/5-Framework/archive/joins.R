#Sample Data
customers <- tibble(
  id = c(1, 2, 3, 4),
  name = c("A", "B", "C", "D")
)

orders <- tibble(
  id = c(1, 2, 2, 5),
  amount = c(100, 200, 150, 300)
)
#inner_join()
# Returns only rows that have matching keys in both tables.
inner_join(customers, orders, by = "id")
#Only ids 1 and 2 appear because they exist in both tables.

#left_join()
# Keeps all rows from left table and adds matches from right (NULL if no match).
left_join(customers, orders, by = "id")
#All customers remain; customer 3 and 4 get NA for amount.

#right_join()
#Keeps all rows from right table and adds matches from left.
right_join(customers, orders, by = "id")
#All orders remain; order with id 5 gets NA for name.

#full_join()
#Keeps all rows from both tables, matching where possible.
#Everyone appears: unmatched rows from both sides get NA.
full_join(customers, orders, by = "id")

#nest_join()
#Performs a join but keeps matching rows as a nested dataframe column.
#Adds a list-column containing matching orders per customer.
customers
orders
nest_join(customers, orders, by = "id")
#Useful when you want grouped related data without flattening.

#semi_join()
#Returns rows from left table that have matches in right (no columns added).
#Only customers 1 and 2.
#No order columns added.
semi_join(customers, orders, by = "id")

#anti_join()
#Returns rows from left table that DO NOT have matches in right.
#Customers 3 and 4.
anti_join(customers, orders, by = "id")
##Very useful for data validation.

#cross_join()
#Returns all possible combinations of rows (Cartesian product).
#If 4 customers × 4 orders → 16 rows.
cross_join(customers, orders)
#Be careful — can explode in size.

#join_by()
#Defines advanced join conditions (including inequality joins).
#Example: Join where id is equal.
left_join(customers, orders, join_by(id))
#Example: Inequality join
left_join(customers, orders, join_by(id >= id))
#Enables non-equi joins (very powerful in dplyr 1.1+).

#Function->Keeps
#inner_join->Only matching rows
#left_join->All left + matches
#right_join->All right + matches
#full_join->All from both
#nest_join->Nested matches
#semi_join->Left rows with match only
#anti_join->Left rows without match
#cross_join->All combinations
#join_by->Defines join condition