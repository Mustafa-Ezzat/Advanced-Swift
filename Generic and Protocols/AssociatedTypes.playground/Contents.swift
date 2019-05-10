import Foundation

protocol AddProtocol {
    associatedtype Value: Numeric
    mutating func add(_ a: Value, _ b: Value) -> Value
}

struct AddInteger: AddProtocol {
    typealias Value = Int
    mutating func add(_ a: Value, _ b: Value) -> Value {
        return a + b
    }
}

//Test case
var intAdder = AddInteger()
intAdder.add(20, 5)
