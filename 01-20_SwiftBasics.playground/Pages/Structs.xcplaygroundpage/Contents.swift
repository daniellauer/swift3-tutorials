//: Playground - noun: a place where people can play

import UIKit

struct CarStruct {
    var brand: String
    var model: String
    let chassisNumber: String
    
    init() {
        self.brand = "BMW"
        self.model = "1er"
        self.chassisNumber = "XYZ"
    }
    
    init(brand: String, model: String, chassisNumber: String) {
        self.brand = brand
        self.model = model
        self.chassisNumber = chassisNumber
    }
    
    func printCar() {
        print("\(self.brand) \(self.model) (Chassis number: \(self.chassisNumber))")
    }
}


let myCar: CarStruct = CarStruct(brand: "Audi", model: "A5", chassisNumber: "ABC")
myCar.printCar()
// myCar.chassisNumber = "NEW" // Error (constant)



// -----------------

struct MyStruct {
    var x: Int = 1
    let y: Int = 2
}

class MyClass {
    var x: Int = 1
    let y: Int = 2
}

let structA: MyStruct = MyStruct()
var structB: MyStruct = structA

let classA: MyClass = MyClass()
let classB: MyClass = classA
// classB = MyClass() // constant (reference)

structB.x = 10
print(structA.x)
print(structB.x)

classB.x = 10
print(classA.x)
print(classB.x)



