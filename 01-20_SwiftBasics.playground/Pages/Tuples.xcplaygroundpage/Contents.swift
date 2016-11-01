//: Playground - noun: a place where people can play

import UIKit

// Tuples
let netPriceAndVatPercentage = (15.00, 0.19)
let netPriceAndVatPercentage2: (Double, Double) = (15.00, 0.19)

print(netPriceAndVatPercentage2.1)

let netPriceAndVatPercentage3: (netPrice: Double, vat: Double) = (15.00, 0.19)
print(netPriceAndVatPercentage3.vat)
let netPriceAndVatPercentage4 = (netPrice: 15.00, vat: 0.19)
print(netPriceAndVatPercentage4.vat)

let test: (String, Int, Double) = ("Text", 9, 5.5)

// Tuples as return value
func calculateNetPrice(gross: Double, vatPercentage: Double) -> (netPrice: Double, vat: Double) {
    let netPriceResult = gross / (1 + vatPercentage)
    let vatResult = gross - netPriceResult
    
    return (netPriceResult, vatResult)
}

var result = calculateNetPrice(gross: 150.0, vatPercentage: 0.19)
result.netPrice
result.vat

// Tuples as parameters
func calculateNetPrice2(grossAndVat:(gross: Double, vatPercentage: Double)) -> (netPrice: Double, vat: Double) {
    let netPriceResult = grossAndVat.gross / (1 + grossAndVat.vatPercentage)
    let vatResult = grossAndVat.gross - netPriceResult
    
    return (netPriceResult, vatResult)
}

var result2 = calculateNetPrice2(grossAndVat: (150.0, 0.19))
result2.netPrice
result2.vat


// Swap
var myInt1: Int = 5
var myInt2: Int = 6

func swapValue(firstValue: inout Int, withSecondValue: inout Int) {
    let swapValue: Int = withSecondValue
    withSecondValue = firstValue
    firstValue = swapValue
}

swapValue(firstValue: &myInt1, withSecondValue: &myInt2)
print(myInt1)
print(myInt2)

(myInt1, myInt2) = (myInt2, myInt1)
print(myInt1)
print(myInt2)
