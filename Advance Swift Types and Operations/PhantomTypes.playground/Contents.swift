import UIKit

struct Named<T>: Hashable, ExpressibleByStringLiteral, CustomStringConvertible {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    init(stringLiteral value: String) {
        self.name = value
    }
    var description: String {
        return name
    }
}

enum StateTag{}
enum CapitalTag{}

typealias State = Named<StateTag>
typealias Capital = Named<CapitalTag>

var lookup: [State: Capital] = ["Alabama": "Montgomry", "Alaska": "Juneaua", "Arizona": "Phoenix"]

func printStateAndCapital(_ state: State, _ capital: Capital) {
    print("The capital of \(state) is \(capital)")
}

func test() {
    let state = State("Alaska")
    guard let capital = lookup[state] else {
        return
    }
    printStateAndCapital(state, capital)
}

test()
