import UIKit

var str = "Hello, playground"

//var 😸 = "cat"
//
//var 🐈 = "my cat"
//
//print("i have a " + 😸 + " and he is " + 🐈)
//
//let _ = "dfs"
//
//let funcu = 50.0
//
//print( )

// Arrays
//// creating an empty array
//var someInts = [Int] ()
//print("someInt is an array with \(someInts.count) items in it")
//
//someInts.append(3)
//
//print("someInt is an array with \(someInts.count) items in it")
//
//someInts = []
//
//print("someInt is an array with \(someInts.count) items in it")

////one way to create an array
////creating an array with initializing
//// new array with Doubles
//var threeValues = Array(repeating: 0.0, count: 3)
//
//print("this new array has \(threeValues.count) values that 0.0")
//
//// an other new array initialized with Doubles
//var moreArray = Array(repeating: 2.5, count: 2)
//
////summing together 2 array's
//var sumArray = threeValues + moreArray
//
//print("the sum of 2 array's: \(sumArray)")

//second way to create an array
//creating array with array literal
//var shoppingList: [String] = ["Eggs", "Milk", "Sugar", "Salt"]
//
////also can not be declared the type of the array
//var shopList = ["Eggs", "Milk", "Sugar", "Salt"]
//
//// we can create an array with different type only if we declare it as [Any]
//var difTypes: [Any] = ["string", 3, 3.5]
//
//print(difTypes)

//// check if array id empty
//print("id array empty : \(difTypes.isEmpty)")
//
//// adding values to array
//difTypes.append("added value")
//
//print(difTypes)
//
//// an other way to add values
//difTypes += ["second way", "for more"]
//
//print(difTypes)
//
////accessing to the data can be with index difValues[index]
//
////changing values
//difTypes[0] = "changed"
//
//print(difTypes)
//
////difTypes[difTypes.count] = "added great" //out of bounce
//
//// we can change the value of the data by taking index from and index to
//// and change the values to what we want, also can delete the missing values like here
//// array contains 6 values
//difTypes[3...5] = ["value-3", "value-4"]
//// now contains 5 values
//print(difTypes)
//
////we can add values to any index we want
//difTypes.insert(555, at: 1)
//// now sontains 6 values
//
//print(difTypes)
//
////we can remove items from the array using remove func
//print("the value from index 1 removes is : \(difTypes.remove(at: 1))")
//// remove func is also returning the removed item
//// we can ignor it if we dont need it
//
////iterating over an array
//for item in difTypes{
//    // like for each loop
//    // item is the item on each index of the array
//    print(item)
//}
//
//// if we need the index in loop we can use enumerated
//for (index, item) in difTypes.enumerated(){
//    print("item in \(index + 1) : \(item)")
//}

// Sets
//// initializing an empty Set
//var letter = Set<Character>()
//
//print("letter is an empty Set with \(letter.count) Characters")

//// we can add values to the set
//// contains 1 value
//letter.insert("a")
//
//print(letter)
//
//// empty again
//letter = []
//
//print(letter)

//// also can create a set with array literal
//var favoriteGanre: Set<String> = ["Rock", "Punk", "Alternative"]
//
//print(favoriteGanre)
//
//// these functions working pretty the same here
//
//print("is this set empty : \(favoriteGanre.isEmpty)")
//
//favoriteGanre.insert("Jazz")
//
//print(favoriteGanre)
//
//favoriteGanre.remove("Jazz")
//
//print(favoriteGanre)
//
//// we can check if some value is exsist in our set
//
//print("does Rock exsist in our set : \(favoriteGanre.contains("Rock"))")
//
//// iterate over a set is pretty the same

//for genre in favoriteGanre {
//    print(genre)
//}

// we can also sort the set by a-z
// is does metters if its small litteral letter or capital!
//for genre in favoriteGanre.sorted() {
//    print(genre)
//}

var evenNumber: Set = [0,2,4,6,8]
var oddNumber: Set = [1,3,5,7,9]

var justSomeDigits: Set = [3,6,4,1]

// performing Set operations
// we got 4 type of sets comparing
// intersection

// take all the common values the set arrays contain together only
print("the common digits for who set arrays are : \(evenNumber.intersection(justSomeDigits).sorted())")
// output [4, 6]


// symmetricDifference

// gives all values witch set arrays dont have in common
print("These digits are not common in the set arrays : \(oddNumber.symmetricDifference(justSomeDigits).sorted())")
// output [4, 5, 6, 7, 9]

// union

// gives all the values the set arrays contain
print("onuin set arrays are : \(evenNumber.union(oddNumber).sorted())")
// output [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// subtracting

// gives all the values that 1 set array contains without the values in common to other set array
print("all the subtracting digits are : \(oddNumber.subtracting(justSomeDigits).sorted())")


// Set membership and equality

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

// isSubset(of:)
// tells if a set part of an other set
print("is houseAnumals a sub set of fastAnimals : \(houseAnimals.isSubset(of: farmAnimals))")

// isSuperset(of:)
// tell if a set contains some of the values of all values of an other set
print("is fastAnimal a super set of houseAnimal : \(farmAnimals.isSuperset(of: houseAnimals))")

// idDisjoint
// tells if a set has completley different values of an other array
print("is cityAnimal a Disjoint set of farmAnimal : \(cityAnimals.isDisjoint(with: farmAnimals))")

