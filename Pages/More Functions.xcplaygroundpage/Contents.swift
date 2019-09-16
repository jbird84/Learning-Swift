//: [Previous](@previous)

import Foundation

//                                          ***MORE FUNCTIONS***


//    Function overloading

func printMultipleOf(number: Int, multiplier: Int) {
    print("\(number) * \(multiplier) = \(number * multiplier)")
}


func printMultipleOf(_ number: Int, multiplier: Int = 1) {   // 1 is called the default value
 print("\(number) * \(multiplier) = \(number * multiplier)")
}

func printMultipleOf(number: Double, multiplier: Double) {
    print("\(number) * \(multiplier) = \(number * multiplier)")
}

printMultipleOf(number: 7.5, multiplier: 7.5)
printMultipleOf(17)

func getValue() -> Int {
    return 31
}

func getValue() -> String {
    return "ThirtyOne"
}

// NOTE: just calling the "getValue()" funtion we will get an error becouse the complier doesn't know which one to use. You have to define it. See below...

let valueInt: Int = getValue()

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var function = add
function(4, 2)

func subtract(number1: Int, number2: Int) -> Int {
    return number1 - number2
}
function = subtract
subtract(number1: 5, number2: 7)


// Pass a function inside another function

//use a type alias to shorten your function... See below
typealias Operate = (Int, Int) -> Int

//see in the function we only have to call "Operate" now... 
func printResult(_ operation: Operate, _ a: Int, _ b: Int) {
 let result = operation(a, b)
    print(result)
}

printResult(add, 4, 6)
printResult(subtract, 10, 4)
