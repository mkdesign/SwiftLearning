//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var name : String = "Initizlized name"
    init() {
        self.sayCheese()
    }
    
    func sayCheese () {
        print("Cheese!")
    }
}

var firstPerson = Person()
firstPerson.name = "Alice"
firstPerson.name

var secondPerson = Person()
secondPerson.name = "Bob"

firstPerson.name

