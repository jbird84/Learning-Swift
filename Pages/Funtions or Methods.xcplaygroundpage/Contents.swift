//: [Previous](@previous)

import Foundation

// Function Syntax:      func functionName(parameterList) -> ReturnType {
//                        return returnValue
//                          }

//                                      Intro to funtions
print("----------This func uses a no parameters--------")
func printMeow() {
    print("Meow!")
}

printMeow()

//the above function is NOT a method... WHY? because methods belong to an obeject (Example: if you were to write a funciton in a class, it would be called a label) since the function above is not part of any object, it is called a free-function (it is free because it is not owned by an object) or a FUNCTION!!!

print("----------This func uses a single parameter--------")
func  multipleOfFives(num: Int) {
    print("5 * \(num) = \(5 * num)")
}

multipleOfFives(num: 10)



print("----------This func uses two parameters--------")
func printMultipleOF(num: Int, multiplier: Int) {
    print("\(num) * \(multiplier) = \(num * multiplier)")
}

printMultipleOF(num: 5, multiplier: 10)


print("----------This func uses a return--------")
func multiply(_ factor1: Int, _ factor2: Int) -> Int {  // NOTE: -> means return and then whatever follows. in this case, we are returning an Int.
    return factor1 * factor2
}
let result = multiply(5, 10)
print(result)



print("----------This func uses a tuple--------")
func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) { // this returns a tuple of Product and quotient.
return (number * factor, number / factor)
}
let results = multiplyAndDivide(10, by: 5)
let (product, quotient) = results
product
quotient
print(results)


//                                                  ***FUNCTION CHALLENGE***

//INTRODUCTION TO FUNCTIONS

//Write a function named printFullName that takes two strings called firstName and lastName.  The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.
print("----------Full Name Challenge-------------")
func printFullName(_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}
printFullName("Joshua", "Kinney")

//Change the declaration of printFullName to have no argument label for either parameter.


//Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant.
print("----------Full Name Challenge with a return statement-------------")
func calculateFullName(_ firstNames: String, _ lastNames: String) -> String {
return firstNames + " " + lastNames
}
let myFullName = calculateFullName("Josh", "Kinney")
print(myFullName)



//Change calculateFullNames to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name.


print("----------Full Name Challenge with a return statement and tuple-------------")
func calculateFullNames(_ firstNamed: String, _ lastNamed: String) -> (theFullName: String, lengthOfName: Int) {
   let theName = firstNamed + " " + lastNamed
    return (theName, theName.count)
}
let theRealResults = calculateFullNames("Josh", "Kinney")
let (theFullName, lengthOfName) = theRealResults
theFullName
lengthOfName

print(theRealResults)



