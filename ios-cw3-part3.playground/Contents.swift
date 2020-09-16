import UIKit
import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}
 isValidPassword(password:"bcd13")

func checkPassword(a: String) -> String {
    if a.count >= 8 {
        return "password is Valid"
    } else {
      return "password isnt Valid"
}
}
 var testPassword = checkPassword(a: "1928")
     checkPassword(a: "Abdfsjhe983")

