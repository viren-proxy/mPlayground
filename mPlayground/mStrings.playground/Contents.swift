// Playground - Strings

import UIKit

let version = 33.333333333

// ---------------------------------------- Strings
var name: String
name = "Ruffus"

var mString = "Hello, world"
mString += " cow"
mString = name
mString += " \(version)"
mString = NSString(format: "%.2f", version) as String

println("hello " + mString)
println("Welcome \(mString)")
println("String length \(count(mString))")


// ---------------------------------------- using strings
var animal = "dog"
var pet = "dog"
if pet == animal {
  println("Woof")
}

if pet.hasPrefix("do") {
  println("Nike")
}

var emptyString = ""
var alsoEmpty = String()
if emptyString == alsoEmpty {
  println("Empty")
}

if emptyString.isEmpty {
  println("Empty")
}


var wildAnimal = "elephant"
var zooAnimal = wildAnimal
zooAnimal += " (endangered)"
wildAnimal

