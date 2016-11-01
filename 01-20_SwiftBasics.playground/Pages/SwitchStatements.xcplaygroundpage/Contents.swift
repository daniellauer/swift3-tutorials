//: Playground - noun: a place where people can play

import UIKit

let person: String = "Angela Merkel"

switch person {
    case "Angela Merkel":
        print("\(person) is the German chancellor")
        //fallthrough;
    case "Spiderman", "Batman", "Superman":
        print("\(person) is a superhero")
        //fallthrough;
    default:
        print("\(person) is boring!")
}

