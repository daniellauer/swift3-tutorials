//: Playground - noun: a place where people can play

import UIKit

var capitals = ["Germany":"Berlin", "France":"Paris", "Italy":"Rome"]
var capitals2: [String:String] = ["Germany":"Berlin", "France":"Paris", "Italy":"Rome"]
var capitals3: [String:String] = [:]
var capitals4: [String:Any] = ["Germany":9, "France":"Paris"]


// Add objects
capitals["Spain"] = "Madrid"
print(capitals)
capitals.updateValue("Athens", forKey: "Greece")
print(capitals)


// Modify objects
capitals["Spain"] = "MADRID"
print(capitals)
capitals.updateValue("ATHENS", forKey: "Greece")
print(capitals)


// Delete objects
capitals["Germany"] = nil
print(capitals)
capitals.removeValue(forKey: "France")
print(capitals)
capitals.removeAll()
print(capitals)


// Count objects
capitals = ["Germany":"Berlin", "France":"Paris", "Italy":"Rome"]
print(capitals.count)
print(capitals.isEmpty)


// Access objects
let city: String? = capitals["Germany"]
if city != nil {
    print("\(city!) is the capital of Germany")
}


// Copy dictionaries
var myCopiedDictionary = capitals
capitals["Italy"] = nil
print(capitals)
print(myCopiedDictionary)