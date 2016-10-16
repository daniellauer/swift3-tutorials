//: Playground - noun: a place where people can play

import UIKit

// While
var myInteger: Int = 123456

while myInteger <= 1_000_000 {
    myInteger += myInteger
    print(myInteger)
}


// Repeat-while
var lastRandomNumber = 5
var currentRandomNumber = 5

repeat {
    currentRandomNumber = Int(arc4random_uniform(10))
    print(currentRandomNumber)
} while currentRandomNumber == lastRandomNumber


// For
for i in 0 ..< 10 {
    print(i)
}

for i in 0 ... 10 {
    print(i)
}

// Array
let myArray: [String] = ["London", "Berlin", "Rom"]

for i in 0 ..< myArray.count {
    print("\(i+1). \(myArray[i])")
}

for city in myArray {
    print(city)
}

// Dictionary
var capitals = ["Germany":"Berlin", "France":"Paris", "Italy":"Rome"]
for (key, value) in capitals {
    print("\(value) is the captial of \(key)")
}

for (key, _) in capitals {
    print(key)
}

for (_, value) in capitals {
    print(value)
}

// Sets
var mySet: Set<String> = ["London", "Berlin", "Paris"]
for city in mySet {
    print(city)
}


