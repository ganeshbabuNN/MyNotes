item_catalog = {"Blank CD's":7.99,"USB Drives":12.50,"Keyboards":18.00}
for x in item_catalog:
    print x

def exists_in(A,name):
    result = False
    for x in A:
        if x == name:
            result = True
    return result
exit_var = False
while exit_var == False:
    in_var = raw_input("Enter a product to look up its price (or press x to quit)")
    if exists_in(item_catalog,in_var):
        print "The price of that item is:"
        print item_catalog[in_var]
    if exists_in(item_catalog,in_var) == False and in_var != "x":
        print "That item does not exist!"
    if in_var == "x":
        exit_var = True

        
        
