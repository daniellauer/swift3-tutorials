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
        return "Place object: \(self.description)."
    }
    
    func objectDescription(text: String) -> String {
        return "Place object: \(self.description). Additional text: \(text)"
    }
    
    func objectDescription(number: Int) -> String {
        return "Place object: \(self.description). Additional number: \(number)"
    }
}

let somePlace3: Place3 = Place3(description: "Some place", latitude: 0.0, longitude: 0.0)
print(somePlace3.objectDescription())
print(somePlace3.objectDescription(text: "Hi!"))
print(somePlace3.objectDescription(number: 42))


class Sight: Place3 {
    let additionalInfo: String
    
    init(description: String, location: GeoLocation, additionalInfo: String) {
        self.additionalInfo = additionalInfo
        super.init(description: description, location: location)
    }
    
    override func objectDescription() -> String {
        return "Sight object: \(self.description). \(self.additionalInfo)"
    }
}

let sightObject: Sight = Sight(description: "Brandenburg Gate", location: GeoLocation(latitude: 52.81627, longitude: 13.37770), additionalInfo: "Some additional info")
print(sightObject.objectDescription())


class Headquarter: Place3 {
    let ceo: String
    
    init(description: String, location: GeoLocation, ceo: String) {
        self.ceo = ceo
        super.init(description: description, location: location)
    }
    
    override func objectDescription() -> String {
        return "Headquarter object: \(self.description). \(self.ceo)"
    }
}

let headquarterObject: Headquarter = Headquarter(description: "SAP", location: GeoLocation(latitude: 49.29394, longitude: 8.63708), ceo: "Some CEO")
print(headquarterObject.objectDescription())
print(headquarterObject.objectDescription(text: "Hi!"))




