import UIKit

var shippingAddress : String? = "no.10 jalan tks 10"
let message = shippingAddress != nil ? "shipping to \(shippingAddress!)" : "No shipping address provided"
print(message)
