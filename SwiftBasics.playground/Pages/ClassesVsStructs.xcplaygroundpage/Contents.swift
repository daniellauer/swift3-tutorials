//: Playground - noun: a place where people can play

import UIKit

class Place {
    let description: String
    let latitude: Double
    let longitude: Double
    
    init(description: String, latitude: Double, longitude: Double) {
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
    }
}

let somePlace: Place = Place(description: "Some place", latitude: 0.0, longitude: 0.0)


// ------------------

struct GeoLocation {
    let latitude: Double
    let longitude: Double
}

class Place2 {
    let description: String
    let location: GeoLocation
    
    init(description: String, location: GeoLocation) {
        self.description = description
        self.location = location
    }
}

let location: GeoLocation = GeoLocation(latitude: 1.0, longitude: 2.0)
let somePlace2: Place2 = Place2(description: "Some place", location: location)


// ------------------

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
}

let somePlace3: Place3 = Place3(description: "Some place", latitude: 0.0, longitude: 0.0)
