//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class person {
    
    var age = 15
    var name = "Tom"
    
    func updateAgeandName (updatedAge :Int , updatedName:String){
        age=updatedAge
        name = updatedName
    }
    
    func increaseAge (increaseBy: Int) -> Int{
       age += increaseBy
        
        return age
    }
    
    class func averageAge () -> Int {
        return 50
    }
}

var a  = person()
a.age
a.name
a.updateAgeandName(updatedAge: 25, updatedName: "Tim")
a.age
a.name

var b = a.increaseAge(increaseBy: 5)

person.averageAge()




