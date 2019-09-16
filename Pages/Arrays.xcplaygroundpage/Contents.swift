//: [Previous](@previous)

import Foundation

print("----------  ALL ABOUT THOSE ARRAYS!!! ------------")


//                                                  Arrays

let pastries = ["cookie", "cupcake", "donut", "pie"]
print(pastries)



print("*****  Print an array with the append method.  *****")

var thisArray: [String] = []   // this is an empty array of strings

//use the append method to add to the above array

thisArray.append("cool")
thisArray.append("not cool")
thisArray.append("hard")
thisArray.append("easy")
print(thisArray)


print("*****  Print an array with the += method.  *****")

//use += to add to the array

thisArray += ["Easier", "Cooler", "Faster", "Better"]
print(thisArray)


var thatArray: [String] = []

// How to check to see if an arrya is empty??? See below

thisArray.isEmpty  // this is false because we just added to it
thatArray.isEmpty //This is true because we set it as an empty array of String type.

//use ---> .removeAll() after the array to remove everything in it.

thisArray.count  // this will tell you how many items are in the array (right now we have 8 strings)

//you can also display the first item in the arr with .first however this is an optional because the array could be empty.. use optional binding to saftly unwrap

print("-----------Here is an array with a FIRST item in it.-----------")

//since there is a first item, it will print.
if let first = thisArray.first {
    print("This first item in this array is \(first).")
} else {
    print("this array is EMPTY!!!")
}


print("-----------Here is an array without a FIRST item in it.-----------")

//since this is an empty array there is no "first item" but because we safly unwrapped, it won't crash or error out but instead, it will print.
if let first = thatArray.first {
    print("This first item in this array is \(first).")
} else {
    print("This array is EMPTY!!!")
}


//what is the difference in .last and . max ??? see below

thisArray.last //this will print the last item in the array
thisArray.max() //this will print the item that is the longest or with the gratest INT value.


//check to see if an array contains a certain item

thisArray.contains("Better")  //this will be true
thisArray.contains("Greatness")  //this will be false because the array doesn't contain String callled "Greatness"


//to insert an element at a certain spot, user .insert(newElement: String, at: Int)  ... see below

print("-------- Using .insert to add Coolio to the 3rd Int in the array!! ---------")
thisArray.insert("Coolio", at: 3)  //0,1,2,3  <--- technically the 4th one will now show "Coolio"  print out to see...
print(thisArray)

//lets remove "Coolio" using the .remove(at: Int) see below
print("---------We will now remove Coolio using the .remove(at: Int) method----------")

thisArray.remove(at: 3)  // coolio has been removed
print(thisArray)

//using for loops with arrays

//to print just the elements in the array with a for loop see below...

print("---------- LETS USE A FOR LOOP WITH OUR ARRAY -----------")

for this in thisArray {
    print(this)
}

//to see the element and index, see below
print("---------- Now lets print the array with the index value too -----------")
for (index, this) in thisArray.enumerated() {  //notice we added (index, ) and .enumerated
print(index, this)
}

print("-----Challenge Time --> Arrays!!!------")

//Use firstIndex(of:) to determine the position of the element "Dan" in players.


var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]

players.firstIndex(of: "Dan")

//Write a for-in loop that prints the players' names and scores.


players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
let scores = [2, 2, 8, 6, 1, 2, 1]

for (index, player) in players.enumerated() {
    print(player, scores[index])
}
