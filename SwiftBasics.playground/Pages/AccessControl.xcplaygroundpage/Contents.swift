//: Playground - noun: a place where people can play

import UIKit

// open
// public
// internal
// fileprivate
// private

struct GeoLocation {
    let latitude: Double
    let longitude: Double
}

fileprivate class Place3 {
    fileprivate let description: String
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

fileprivate class Headquarter: Place3 {
    let ceo: String
    
    init(description: String, location: GeoLocation, ceo: String) {
        self.ceo = ceo
        super.init(description: description, location: location)
    }
    
    override func objectDescription() -> String {
        return "Headquarter object: \(self.description). \(self.ceo)"
    }
}

fileprivate let headquarterObject: Headquarter = Headquarter(description: "SAP", location: GeoLocation(latitude: 49.29394, longitude: 8.63708), ceo: "Some CEO")

