import Foundation
// ExpressibleByStringLiteral: Any type adopt to this protocol can intialized with a string literal
class Email: ExpressibleByStringLiteral {
    var value: String
    
    //associatedtype StringLiteralType, A type that represents a string literal. Required.
    required init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}
//Test case:
let email: Email = "literal@example.com"
print(email.value)

/* Relationships
 Conforming Types:
 CSLocalizedString
 NSMutableString
 NSString
 NWEndpoint.Host
 Selector
 StaticString
 String
 Substring
 */
