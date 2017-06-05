//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func intAdder(number: Int) -> Int {
    return number + 1
}

intAdder(number: 15)

func doubleAdder(number: Double) -> Double {
    return number + 1.0
}


// making a generic: want to be able to add one to a number no matter if the inputs are of type Int or double - how do we do this?
// - T is a placeholder for what is to be passed in the fucntion, genericAdder
// - Stridable is a protocol
func genericAdder<T: Strideable>(number: T) -> T {
    return number + 1
}


genericAdder(number: 15)
genericAdder(number: 15.0)


func intMultiplier(lhs: Int, rhs: Int) -> Int {
    return lhs * rhs
}

intMultiplier(lhs: 7, rhs: 4)

func doubleMultiplier(lhs: Double, rhs: Double) -> Double {
    return lhs * rhs
}

doubleMultiplier(lhs: 19.0, rhs: 32.1)

// Create a generic that does the same as above as the genericAdder but does so for multiplication.

protocol Numeric {
    // create a function that multiplies to values together:
    func *(lhs: Self, rhs: Self) -> Self
}

// lets decide the typoes that can use our protocol above:
extension Int: Numeric { }
extension Double: Numeric { }
extension Float: Numeric { }

// using the Numeric protocol above.
func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs * rhs
}


genericMultiplier(lhs: 17, rhs: 12)
genericMultiplier(lhs: 19.0, rhs: 23.8)
genericMultiplier(lhs: 1.2113, rhs: 98)

