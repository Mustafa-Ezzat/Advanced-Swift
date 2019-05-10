import Foundation
class CustomMath {
    func add<T: Numeric>(_ a: T, _ b: T) -> T {
        return a + b
    }
}

//Test case
var math = CustomMath()
math.add(10, 2.3)
