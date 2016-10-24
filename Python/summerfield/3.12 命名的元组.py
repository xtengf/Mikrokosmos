Python 3.5.2 (v3.5.2:4def2a2901a5, Jun 26 2016, 10:47:25) 
[GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
Type "copyright", "credits" or "license()" for more information.
>>> import collections
>>> Sale = collections.namedtuple("Sale", "productid customerid data quantity price")
>>> Sale
<class '__main__.Sale'>
>>> type(Sale)
<class 'type'>
>>> sales = []
>>> sales
[]
>>> sales.append(Sale(432, 921, "2008-08-14", 3, 7.99))
>>> sales
[Sale(productid=432, customerid=921, data='2008-08-14', quantity=3, price=7.99)]
>>> sales.append(Sale(419, 874, "2008-09-15", 1, 18.49))
>>> sales
[Sale(productid=432, customerid=921, data='2008-08-14', quantity=3, price=7.99), Sale(productid=419, customerid=874, data='2008-09-15', quantity=1, price=18.49)]
>>> type(sales)
<class 'list'>
>>> type(sales(1))
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    type(sales(1))
TypeError: 'list' object is not callable
>>> sales(1)
Traceback (most recent call last):
  File "<pyshell#12>", line 1, in <module>
    sales(1)
TypeError: 'list' object is not callable
>>> type(sales[1])
<class '__main__.Sale'>
>>> sales[1]
Sale(productid=419, customerid=874, data='2008-09-15', quantity=1, price=18.49)
>>> total = 0
>>> type(total)
<class 'int'>
>>> for sale in sales:
	total += sale.quantity * sale.price

	
>>> total
42.459999999999994
>>> print("Toal ${0:.2f}".format(total))
Toal $42.46
>>> 
