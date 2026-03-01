customers <- tibble(
  id = c(1, 2, 3, 4),
  name = c("A", "B", "C", "D")
)
customers
orders <- tibble(
  id = c(1, 2, 2, 5),
  amount = c(100, 200, 150, 300)
)
orders
#rows_insert()-adds new rows (like INSERT). By default, key values in y must not exist in x.
rows_insert(customers,tibble(id=5,name="A")) #add rows but same keys
rows_insert(customers,tibble(id=6,name=NA)) #add rows but same keys
#rows_append()-works like rows_insert() but ignores keys.
rows_append(customers,tibble(id=4,name="A")) 
#rows_update()-modifies existing rows (like UPDATE). Key values in y must be unique, and, by default, key values in y must exist in x
rows_update(customers,tibble(id=3,name="CC"))
#rows_patch()-works like rows_update() but only overwrites NA values.
rows_patch(customers,tibble(id=6,name="CC"))
#rows_upsert()- inserts or updates depending on whether or not the key value in y already exists in x. 
#Key values in y must be unique
rows_upsert(customers,tibble(id=6,name="CD"))
rows_upsert(customers,tibble(id=7,name="EE")) #add new value
#rows_delete()-deletes rows (like DELETE). By default, key values in y must exist in x.
rows_delete(customers,tibble(id=3))
