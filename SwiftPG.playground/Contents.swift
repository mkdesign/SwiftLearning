//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class person {
    
    var name : String = "initial Name"
    
    init (){
        
    }
    
    func walk (){
        print ("I'm walking")
    }
}

var a = person()
a.name = "Alice"
a.walk()

class superhuman : person {
    var egoName : String = "Clark"
    
    override init(){
        super.init()
        super.name = "mehrad"
        
    }
    
    func fly (){
        print("i'm flying")
    }
    
    override func walk(){
        print("I'm walking really fast")
        
        super.walk()
    }
}

var b = superhuman()
b.walk()







