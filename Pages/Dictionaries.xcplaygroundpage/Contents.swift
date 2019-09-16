//: [Previous](@previous)

import Foundation

print("------ We love dicitonaries -------")

//                  All about Dictionaries


// what's the difference in dicitonary and Array???
// 1) Arrays take Index and Value; Dictionaries take Key and value
//2) Keys can be any type (but all must be the same type) Indexes MUST be Ints
//3) Keys have no order; Indexes MUST be sequential

var emptyDictionary: [String: Int] = [:]  //This is how to create an empty dicitonary NOTE: [String: Int] are labled THIS HAS TO BE DONE!!!


//in the dictionary below, the key is on the left and the value is on the right...
var namesAndPets = [
    "Ron" : "🐁 Mouse",
    "Brian" : "🐕 Dog",
    "Chris" : "🐈 Cat",
    "Josh" : "🦆 Duck"
]

print(namesAndPets) //You will notice the dictionary will not print in the same order...

//to get info from the dictionary you use the key... see below

namesAndPets["Brian"] //this will give you the dog...
namesAndPets["brian"] // if the key doesn't exsist, you will get nil... I lowcase b in Brian to get nil.

// lets use nil coalecing to check the result....

print("------Checking the result using nil coalecing--------")

let brianPet = namesAndPets["brian"] ?? "No pet for brian... 🙁"
print(brianPet)

//dictionary uses .isEmpty and .count just like arrays


//how to update the value in dictionaries...
print("---------Let's change Ron's mouse 🐁 to a 🐢--------")

//1) let use .updateValue(String, forKey: "") first

namesAndPets.updateValue("🐢 Turtle", forKey: "Ron")
print(namesAndPets["Ron"])
print(namesAndPets) //you will see ron now has a turtle...

//2) Here is a faster way to acheive the same thing... Lets change Josh's pet to a fish... see below

namesAndPets["Josh"] = "🐠 Fish"

print(namesAndPets["Josh"])
print(namesAndPets)

// Let's add a pair to a dictionary...

print("-------- Jay now has a pet bear so lets add it to the dictionary! --------")

namesAndPets["Jay"] = "🐻 Bear"
print(namesAndPets)

//                                                      HOW TO REMOVE!!!
// use the .removeValue(forKey: "") to successfully remove a value. This will remove the key and since you can't have a value without a key it will all be deleted..

// a faster way is to set the key to nil --->>> namesAndPets["Jay"] = nil   <-- this will remove Jay from the dictionary




print("_________-----------Let's use a for loop with a dictionary!!!_____________----------")

//                                      USING FOR LOOPS!!!!

for (person, pet) in namesAndPets {
    print("\(person) has a pet \(pet)")
}

//use an underscore to only see one of the pairs... see below

for (name, _) in namesAndPets {
    print(name)
}

// here is another way to show only one of the two... see below

for pet in namesAndPets.values {   //this will print only the value
    print(pet)
}

for name in namesAndPets.keys {  // this will print only the key
    print(name)
}


//                              Challenge Time - Dictionaries!

//Create a dictionary with the following keys: name, profession, country, state, and city. For the values, put your own name, profession, country, state, and city.

var aboutMe = [
    "name": "Josh Kinney",
    "profession": "iOS Developer",
    "country": "USA",
    "state": "Missouri",
    "city": "Winfield"
]

print(aboutMe)

//You suddenly decide to move to Cleveland. Update your city to Cleveland, your state to Ohio, and your country to USA.
aboutMe["city"] = "Cleveland"
aboutMe["state"] = "Ohio"
print(aboutMe)


//Given a dictionary in the above format, write a function that prints a given person's city and state.

func printLocation(ofPerson person: [String: String]) {
    if let state = person["state"],
        let city = person["city"] {
    print("They live in \(city), \(state)")
}
}

printLocation(ofPerson: aboutMe)

