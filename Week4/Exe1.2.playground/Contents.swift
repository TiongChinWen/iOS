import UIKit

var num = 2534
let numString = String(num)
var sum = 0
for char in numString{
    if let number = Int(String(char)){
        sum += number
    }
}
print("The sum is \(sum)")
