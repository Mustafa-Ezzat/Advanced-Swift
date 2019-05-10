import Foundation

protocol ItemStoring {
    associatedtype DataType
    var items: [DataType] {get set}
    mutating func add(_ item: DataType)
}

extension ItemStoring {
    mutating func add(_ item: DataType) {
        items.append(item)
    }
}

struct NameDatabase: ItemStoring {
    var items: [String]
}

var names = NameDatabase(items: [])
names.add("James")
names.add("Jess")
