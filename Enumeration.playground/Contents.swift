import UIKit

// casic enum initializing

enum someEnum {
    // define enum
}

// example
enum CompasPoint {
    case north
    case west
    case south
    case east
    case never
}

// an other way to write multiple cases

//enum Numbers {
//    case one, two, three, four, five
//}

// like all type enum start with capital letters

// you can get the data from it

var directionToHead = CompasPoint.east

print(directionToHead)

// one it initialized to CompasPoint you can easy change its value
directionToHead = .north

print(directionToHead)

// you can use it on switch case operation
switch directionToHead {
case .north:
    print("long way")
case .south:
    print("need go up")
case .east:
    print("chenge direction")
case .west:
    print("oops wrong way!")
default:
    print("No such a place!")
}

//enum Numbers: CaseIterable {
//    case one, two, three, four, five
//}

// can iterate over the enum

//for (number) in Numbers.allCases {
//    print(number)
//}

// also can check how many values in an enum

//print("there are \(Numbers.allCases.count) numbers in Numbers enum")

//you can make a raw value to each of cases
enum Numbers: Int {
    case one = 1, two, three, four, five
}
// the rest will automaticlly numerated 2, 3, 4 and so on...
print(Numbers.two.rawValue)
// output 2

// also can use any other type
