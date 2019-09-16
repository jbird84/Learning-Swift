//: [Previous](@previous)

import Foundation

//                                              ***All About Optionals**

print("--------------- I LOVE OPTIONALS!!! -----------------")

var catName: String?
catName = "Cool KAT"
//print(catName)  notice when you print it says "optional" before the name...this is showing that is it still "wrapped" in the optional...
catName = nil
//print(catName)


print("--------------Challenge Time - Intro to Optionals!---------------")

//Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.

var myFavoriteSong: String?
myFavoriteSong = "What's my age again"

//Create a constant called parsedInt and set it equal to Int("10") which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option-Click. Why is it an optional?

let parsedInt = Int("cat")
//print(parsedInt)

//The number 10 could be a Int instead of a string which is why it is an optional.

//Change the string being parsed in the above exercise to a non-integer (try "cat" for example). What does parsedInt equal now?


// it equals nil. This is because if it is not able to convert to a number than it is nil. That is also why it needs to be an optional


print("-------------------More About Optionals!!!------------------------")


var result: Int? = 30
//print(result)

//      force Unwrapping!!!

var katName: String? = "The King"
var katAge: Int? = 7

var unwrappedKatName = katName!
print("The cat's name is \(unwrappedKatName)")

//Force unwrapping like the example above is the easiest but also the most dangerous... You will see that the print statement works just fine. However, if the katName was empty/nil then it would error out and your app would crash. So be very careful when using this solution. You have to be 100% what you are unwrapping is going to be there.



//        optional binding!!!

print("------OPTIONAL BINDING-------")

//this is the long way of what the below optional binding is saying --> if katName != nil {
//                                                                      let unwrappedName = katName
//                                                                      }

if let katNamee = katName,
    let catAgee = katAge {
print("The cat's name is \(katNamee) and is \(catAgee) years old.")
} else {
    print("Cat name or cat age is nil.")
}

//    Guard Statement!!!

print("-------------The Guard Statement---------------")

func printCatInfo(cattName: String?, cattAge: Int?) {
    guard let kattName = cattName,
        let kattAge = cattAge else{
            print("Cat Name or Cat Age is nil.")
            return
    }
    print("The cat's name is \(kattName) and is \(kattAge) years old.")
}
printCatInfo(cattName: "Skittles", cattAge: 10)
printCatInfo(cattName: nil, cattAge: 10)

//              nil coalescing

print("------------- nil coalescing ---------------")


// if you have an optional like below,

var optionalInt: Int? = 60

//you can use the "nil coalescing" to unwrap or provide a default value... see below

var requiredResult = optionalInt ?? 100

//You see above it will print 60 because that is what it is set to but if you change 60 to nil, it will print out 100.



print("----------Optional Challenge-----------")

//Challenge Time - More Optionals!

//Using your myFavoriteSong variable from the previous challenge, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."

var myFavoriteSongs: String?
//myFavoriteSongs = "What's My Age Again"

if let myFavoriteSong = myFavoriteSongs {
    print("My favorite song is \(myFavoriteSong).")
} else {
    print("You don't have a favorite song.")
}

func seeMySong(myFavoriteSongs: String?) {
guard let myFavoriteSong = myFavoriteSongs else {
print("You don't have a favorite song.")
return
}
print("My favorite song is \(myFavoriteSong).")
}

seeMySong(myFavoriteSongs: "Shut Up and Drive")
//Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.


//it printed out the error/nil statement I created



//Write a function called printNickname that takes an optional String as a parameter. Use the guard statement to try to unwrap the nickname, and if it fails print an error and return. Otherwise, print the unwrapped nickname.


func printNickname(_ name: String?) {
    guard let name = name else {
        print("No name given, nil is returned")
        return
    }
    print("My nickname is \(name)")
}

printNickname(nil)
