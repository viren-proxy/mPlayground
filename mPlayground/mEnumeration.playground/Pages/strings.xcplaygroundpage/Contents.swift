//: [Previous](@previous)

import Foundation

enum CompassPoint: String {
  case North
  case South
  case East
  case West
  
  var reverse: CompassPoint {
    switch self {
    case .North: return .South
    case .South: return .North
    case .East: return .West
    case .West: return .East
    }
  }
  
}

var value: CompassPoint = .North
print(value.reverse)

var optionalValue: CompassPoint? = .North
print(optionalValue?.reverse)

var reverseValue = optionalValue?.reverse
print(reverseValue)
print(reverseValue?.rawValue)

let compass = CompassPoint(rawValue: "North")
print(compass)


//: Iteration foo - iterate through the Enum, getting each of the string values!

func iterateEnum<T: Hashable>(_: T.Type) -> AnyGenerator<T> {
  var i = 0
  return anyGenerator {
    let next = withUnsafePointer(&i) { UnsafePointer<T>($0).memory }
    return next.hashValue == i++ ? next : nil
  }
}

for f in iterateEnum(CompassPoint) {
  print(f)
  print(f.hashValue)
}

//: [Next](@next)
