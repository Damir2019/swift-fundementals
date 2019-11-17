import UIKit

var optionalNumber: Int?
optionalNumber = 23

// IF LET

if let number = optionalNumber {
    print("i have a number and its : \(number)")
} else {
    print("i have a nil value")
}

// GUARD

// uses in function and allows us to quit a function fast if we have nil value accepted
func tripleNumber(number: Int?) {
    // if the value past is nil than first number variable connot be nil so its not equal to second number
    // so it goes to the else block
    guard let number = number
        else {
            print("Exiting function")
            return
    }
    
    print("the number is : \(number * 3)")
}

tripleNumber(number: optionalNumber)

// FORCE UNWRAPPING

// must be use only if we 100% SURE THAT THERE IS A VALUE in it
// else it will 100% crash the app
let forcedNumber = optionalNumber!

// OPTIONAL CHAINING

struct Device {
    let type: String
    let price: Float
    let color: String
}

// can be nil
var myPhone: Device?

// couse myPhone is nil if i try to get to the price i will get nil
// as long as the object is nil its fields will also be nil witch is a CHAIN REACTION
// as long the object be innitiated well with its properties, they will not be nil
var devicePrice = myPhone?.price // it will be nil

//let total = devicePrice + 8.99 // it will give an error couse of optional instance
// and if we will try to force it to be a value i will crash

// this time lats initiate myPhone
myPhone = Device(type: "Phone", price: 699.0, color: "Space Grey")

devicePrice = myPhone?.price // it will be a value

// to go safly with this option we so the IF LET check
if let devicePrice = devicePrice {
    print("my total price is \(devicePrice + 8.99)")
}




