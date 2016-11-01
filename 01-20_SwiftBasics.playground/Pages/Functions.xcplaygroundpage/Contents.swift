//: Playground - noun: a place where people can play

import UIKit

func sayHello() {
    print("Hello!")
}

sayHello()
sayHello()


// with return value
func sayHelloWithReturnValue() -> String {
    return "Hello!"
}

print(sayHelloWithReturnValue())


// with parameters
func add(number: Int, and: Int) {
    print(number + and)
}

add(number: 3, and: 4)

// with parameters and return value
func add2(number: Int, and: Int) -> Int {
    return number + and
}

print(add2(number: 5, and: 4))


// parameters with default values
func price(netPrice: Double, vatPercentage: Double = 0.19) -> Double {
    return (netPrice * vatPercentage) + netPrice
}

print(price(netPrice: 10.0))
print(price(netPrice: 10.0, vatPercentage: 0.16))

// with a variadic parameter
func add3(numbers: Int...) -> Int {
    var sum: Int = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

print(add3(numbers: 1,2,3,4,5,6))


// let
func modifyString(text: String) {
    //text += " World!"
}


// var
func modifyString2(text: String) -> String {
    var text = text
    text += " World!"
    
    return text
}

var inputString: String = "Hello"
let outputString: String = modifyString2(text: inputString)
print(inputString)

// inout
func modifyString3(text: inout String) -> String {
    text += " World!"
    return text
}

var inputString2: String = "Hello"
let outputString2: String = modifyString3(text: &inputString2)
print(inputString2)





