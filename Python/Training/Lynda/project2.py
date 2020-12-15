from random import randint
done = False
class ShoppingCart:
    def __init__(self):
        self.items = []
    def addtocart(self,item):
        self.items.append(item)
    def removefromcart(self,itemindex):
        self.items.pop(itemindex)
    def pricecart(self):
        price = 0
        for x in self.items:
            price = price+x.price
        return price
    def listcart(self):
        cid = 0
        print "Cart Items:"
        for x in self.items:
            print x.name,x.price,cid
            cid = cid+1
        print ""
class Item:
    def __init__(self,price,name):
        self.price = price
        self.name = name


store = []
itemNames = ["HDMI Cable","Keyboard","Headphones","RAM"]

def makeStoreItems(amt):
    storeitems = 0
    while storeitems <= amt:
        nItem = Item(randint(1,50),itemNames[randint(0,len(itemNames)-1)])
        store.append(nItem)
        storeitems = storeitems+1
        
def CreateStore(storefile):
    try:
        fx = open(storefile,"r")
        str1 = ""
        str1 = fx.read()
    except IOError:
        print "No Existing Store... generating items"
        makeStoreItems(4)


def liststore():
    iid = 0
    for x in store:
        print iid,x.price,x.name
        iid = iid+1
def printInstructions():
    print "Type C to view your cart items"
    print "Type R to remove a cart item"
    print "Type an item number to buy it"
    print "Type P to get the total cart price"
    print "Type X to exit the program"

def removeItem(cart):
    input1 = input("Type a cart object ID to remove")
    cart.removefromcart(input1)

def handleInput(in_var,cart):
    char_inputs = ["C","R","P","X"]
    if (in_var == "C"):
        cart.listcart()
    if (in_var == "R"):
        removeItem(cart)
    if (in_var == "P"):
        print "The items in your cart currently cost"
        print cart.pricecart()
    if (in_var =="X"):
        global done
        done = True
    if in_var not in char_inputs:
        try:
            cart.addtocart(store[int(in_var)])
        except:
            print "You have entered an illegal character!"
            
    
        


cart1 = ShoppingCart()
CreateStore("cart1.cartfile")
while (done == False):
    liststore()
    printInstructions()
    input_var = raw_input("Choose an item to buy (type the id)")
    handleInput(input_var,cart1)
    
        

    

