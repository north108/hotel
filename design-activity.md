What classes does each implementation include? Are the lists the same?
A: Classes include CartEntry, Shopping Cart, and Order.
B: Classes include CartEntry, Shopping Cart, and Order.
The list of classes are the same.

Write down a sentence to describe each class.
CartEntry creates an object (CartEntry) that includes the price of the item and the quantity of the item.
ShoppingCart creates an object (ShoppingCart) which is an array of entries.
Order creates an object (Order) which returns the total cost of the shopping cart items.


How do the classes relate to each other? It might be helpful to draw a diagram on a whiteboard or piece of paper.
Order has a composition relationship with both ShoppingCart and CartEntry. It uses information collected from each of those classes to perform its method.

What data does each class store? How (if at all) does this differ between the two implementations?
CartEntry stores two instance variables and in B also stores the price of each grocery item.
ShoppingCart stores an array and in B also stores the sum of the cart.
Order stores a ShoppingCart object and the total price of the cart plus tax.

What methods does each class have? How (if at all) does this differ between the two implementations?
CartEntry: initialize and in B price.
ShoppingCart: initialize and in B price.
Order: initialize and total_price.

Consider the Order#total_price method. In each implementation:
Is logic to compute the price delegated to "lower level" classes like ShoppingCart and CartEntry, or is it retained in Order?
Does total_price directly manipulate the instance variables of other classes?
A: the logic to figure out price is all in Order. 
B: the logic to figure out price is spread between all of the classes.
total_price does not directly manipulate the instance variables of other classes.

If we decide items are cheaper if bought in bulk, how would this change the code? Which implementation is easier to modify?
I would modify implementation B and add some logic into the CartEntry that if quanity was enough to be considered bulk, then I would get a discount.

Which implementation better adheres to the single responsibility principle?
B

I realize now that there are many places where my Hotel class takes on multiple roles but one place that I noticed is that it calculates the price of the stay when in reality that should be occuring in the Reservation class. I need to move that to its own method within Reservation. This will make hotel slightly more single responsibility.  