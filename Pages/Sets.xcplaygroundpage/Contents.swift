//: [Previous](@previous)

import Foundation

print("-----------------We Love Sets!!!---------------------")


//                              All about sets


//how to create a set in Swift!!!

var someSet: Set<Int> = [1, 2, 3, 4, 5]

let someArray: Array<Int> // this is just showing arrays can be set like this too <>
let someDictionary: Dictionary<String, Int> // same as above but for dictionaries <>

//see if the set contains an element

someSet.contains(3)  // this will be true because there is a 3
someSet.contains(10) // this will be false because 10 does not exsist in the set ... YET

//to add elements to a set use .insert()

someSet.insert(10)
print(someSet)  //you will see 10


//remove elements with .remove()

someSet.remove(10)
print(someSet)  // 10 is not removed

//create a new set called anotherSet

var anotherSet: Set<Int> = [1, 4, 8, 10, 13]

// .intersection creates a new set with only elements that are the same in both sets.

let intersection = someSet.intersection(anotherSet)
print(intersection) //only 1 and 4 are in both sets so the new set only contains these two

// .symmetricDifference creates a new with only elements that are different in both sets.

let difference = someSet.symmetricDifference(anotherSet)
print(difference) // all elements but 4 and 1 will be in the newly created set.

// .union creates a new set with ALL elements im both sets.

let union = someSet.union(anotherSet)
print(union) //ALL ELEMENTS GET PRINTED




