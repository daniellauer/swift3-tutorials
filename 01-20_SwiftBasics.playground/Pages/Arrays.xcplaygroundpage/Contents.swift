//: Playground - noun: a place where people can play

import UIKit

var myArray = ["London", "Berlin", "Paris"]
var myArray2: [String] = ["London", "Berlin", "Paris"]
var myArray3: [String]
var myArray4: [Any] = ["London", 9]


// Add/insert objects
myArray.append("New York")
print(myArray)
myArray += ["Madrid"]
print(myArray)
myArray += ["Rom", "Seattle"]
print(myArray)
myArray += myArray2
print(myArray)
myArray.insert("Frankfurt", at: 2)
print(myArray)


// Modify objects
myArray[2] = "Stuttgart"
print(myArray)
myArray[0...2] = ["Las Vegas", "Los Angeles", "Manchester"]
print(myArray)


// Delete objects
myArray.remove(at: 2)
print(myArray)
myArray.removeFirst()
print(myArray)
myArray.removeLast()
print(myArray)
myArray.removeAll() // myArray = []
print(myArray)


// Access objects
myArray = ["London", "Berlin", "Paris"]
print(myArray[1])
print(myArray[myArray.count - 1])
let berlin = myArray.index(of: "Berlin")
if berlin != nil {
    print(berlin!)
}


// Count objects
print(myArray.count)
print(myArray.isEmpty)


// Copy array
var copyMyArray = myArray
myArray[0] = "XYZ"
print(myArray)
print(copyMyArray)

