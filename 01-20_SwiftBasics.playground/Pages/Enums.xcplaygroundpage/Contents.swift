//: Playground - noun: a place where people can play

import UIKit


enum HotelRating {
    case oneStar
    case twoStars
    case threeStars
    case fourStars
    case fiveStars
}

class Hotel {
    let name: String
    let address: String
    let rating: HotelRating
    
    init(name: String, address: String, rating: HotelRating) {
        self.name = name
        self.address = address
        self.rating = rating
    }
}

let myHotel: Hotel = Hotel(name: "Marina Bay Sands", address: "Somewhere in Singapore", rating: .fiveStars)


// --------

enum HotelRating2: Int {
    case oneStar = 1
    case twoStars = 2
    case threeStars = 3
    case fourStars = 4
    case fiveStars = 5
}

class Hotel2 {
    let name: String
    let address: String
    let rating: HotelRating2
    
    init(name: String, address: String, rating: HotelRating2) {
        self.name = name
        self.address = address
        self.rating = rating
    }
}

let myHotel2: Hotel2 = Hotel2(name: "Marina Bay Sands", address: "Somewhere in Singapore", rating: .fiveStars)
myHotel2.rating.rawValue


// --------

enum HotelRating3: String {
    case oneStar = "*"
    case twoStars = "**"
    case threeStars = "***"
    case fourStars = "****"
    case fiveStars = "*****"
}

class Hotel3 {
    let name: String
    let address: String
    let rating: HotelRating3
    
    init(name: String, address: String, rating: HotelRating3) {
        self.name = name
        self.address = address
        self.rating = rating
    }
}

let myHotel3: Hotel3 = Hotel3(name: "Marina Bay Sands", address: "Somewhere in Singapore", rating: .fiveStars)
myHotel3.rating.rawValue

