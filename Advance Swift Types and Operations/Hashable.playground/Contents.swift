import Foundation
struct Email: Hashable {
    private(set) var address: String
    init?(_ row: String) {
        guard row.contains("@") else {
            return nil
        }
        address = row
    }
}

class User: Hashable {
    var id: Int?
    var email: Email
    var name: String
    
    init(id: Int?, email: Email, name: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id && lhs.email == rhs.email && lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
        hasher.combine(self.email)
        hasher.combine(self.name)
    }
}

guard let email = Email("ray@example.com") else {
    fatalError("invalid email")
}

let user1 = User(id: nil, email: email, name: "Ray")
let user2 = User(id: nil, email: email, name: "Ray")

user1 == user2
user1 === user2

let user3 = user1
user3 === user1


