//: Playground - noun: a place where people can play

import UIKit

struct GeoLocation {
    let latitude: Double
    let longitude: Double
}

class Place3 {
    let description: String
    let location: GeoLocation
    
    init(description: String, location: GeoLocation) {
        self.description = description
        self.location = location
    }
    
    convenience init(description: String, latitude: Double, longitude: Double) {
        let location = GeoLocation(latitude: latitude, longitude: longitude)
        self.init(description: description, location: location)
    }
    
    func objectDescription() -> String {
        return "Place object: \(description)."
    }
    
    func objectDescription(text: String) -> String {
        return "Place object: \(description). Additional text: \(text)"
    }
    
    func objectDescription(number: Int) -> String {
        return "Place object: \(description). Additional number: \(number)"
    }
}

let somePlace3: Place3 = Place3(description: "Some place", latitude: 0.0, longitude: 0.0)
print(somePlace3.objectDescription())
print(somePlace3.objectDescription(text: "Hi!"))
print(somePlace3.objectDescription(number: 42))

