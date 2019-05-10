import Foundation

struct Stack<Element> {
    private(set) var list: [Element]
    
    mutating func push(_ value: Element) {
        list.append(value)
    }
    
    mutating func pop() -> Element? {
        return list.popLast()
    }
    
    var top: Element? {
        return list.last
    }
    
    var isEmpty: Bool {
        return top == nil
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        list = elements
    }
}

var stack: Stack = [1, 5, 3]
stack.pop()
stack.push(4)
stack.top
stack.isEmpty
