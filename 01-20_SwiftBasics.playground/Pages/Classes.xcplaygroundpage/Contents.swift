//: Playground - noun: a place where people can play

import UIKit

class CarClass {
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


let myCar: CarClass = CarClass(brand: "Audi", model: "A5", chassisNumber: "ABC")
myCar.printCar()
// myCar.chassisNumber = "NEW" // Error (constant)