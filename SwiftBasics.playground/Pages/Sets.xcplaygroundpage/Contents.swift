//: Playground - noun: a place where people can play

import UIKit

var mySet: Set<String> = ["London", "Berlin", "Paris"]
var mySet2 = ["London", "Berlin", "Paris"] // Array
var mySet3: Set = ["London", "Berlin", "Paris"]
var mySet4: Set<String> = []

// Add objects
mySet.insert("New York")
print(mySet)
mySet.insert("London")
print(mySet)

// Delete objects
mySet.remove("Paris")
print(mySet)
mySet.removeAll()
print(mySet)

// Count objects
mySet.count
mySet.isEmpty

// Set operations
var mySet5: Set<String> = ["London", "Berlin", "Paris", "New York"]
var mySet6: Set<String> = ["Madrid", "Berlin", "Rom", "New York"]

let intersectionSet: Set<String> = mySet5.intersection(mySet6)
print(intersectionSet)
let symmetricDifference: Set <String> = mySet5.symmetricDifference(mySet6)
print(symmetricDifference)
let unionSet: Set<String> = mySet5.union(mySet6)
print(unionSet)
let substractSet1: Set<String> = mySet5.subtracting(mySet6)
print(substractSet1)
let substractSet2: Set<String> = mySet6.subtracting(mySet5)
print(substractSet2)

var mySet7: Set<String> = ["Berlin", "New York"]
var mySet8: Set<String> = ["Berlin", "New York"]

let superset: Bool = mySet7.isSuperset(of: mySet8)
let strictSuperset: Bool = mySet7.isStrictSuperset(of: mySet8)
let subset: Bool = mySet7.isSubset(of: mySet8)
let strictSubset: Bool = mySet7.isStrictSubset(of: mySet8)

if mySet7 == mySet8 {
    print("Equal!")
}


