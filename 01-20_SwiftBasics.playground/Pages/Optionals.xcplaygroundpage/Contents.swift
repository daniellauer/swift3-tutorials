//: Playground - noun: a place where people can play

import UIKit

let myValue: Int = 3

if myValue == 3 {
    print("ok")
}

let myString: String = "hello!"
let myConvertedValue = Int(myString)
//myConvertedValue!

if myConvertedValue != nil {
    print(myConvertedValue!)
}
else {
    print("nil!")
}


if let value = myConvertedValue {
    print(value)
}
else {
    print("nil!")
}