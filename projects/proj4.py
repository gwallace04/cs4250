"""
program: proj4.py
author: Gabriel Wallace
description: This is a simple program to demonstrate inheritance
"""

class Product:
    def __init__(self, name, price, discountPercent):
        self.name = name 
        self.price = price
        self.discountPercent  = discountPercent

    def getDiscountPrice(self):
        return self.discountPercent

    def getDiscountAmount(self):
        return round(self.price * (1 - self.discountPercent / 100), 2)

    def printDescription(self):
        msg = (
            'This is a PRODUCT with the following attributes:\n'
            ' Name: {}\n Price: ${}\n Discount Percent: {}% '.format(
                self.name, 
                self.price,
                self.discountPercent))
        print(msg)

class Book(Product):
    def __init__(self, name, price, discountPercent, author):
        super().__init__(name, price, discountPercent)
        self.author = author

    def printDescription(self):
        msg = (
            'This is a BOOK with the following attributes:\n'
            ' Name: {}\n Price: ${}\n Discount Percent: {}%\n Author: {}'.format(
                self.name, 
                self.price,
                self.discountPercent,
                self.author))
        print(msg)

def main():
    product = Product('product', 7, 3)
    print(product.getDiscountAmount())
    product.printDescription()
    a_book = Book('White Noise', 10, 5, 'Don Delillo')
    a_book.printDescription()

if __name__ == "__main__":
    main()
