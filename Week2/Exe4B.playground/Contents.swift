import UIKit

let numString = "15.89"
if let number = Double(numString){
    print("The number is \(number)")
    
    let t = type(of: number)
    
    print(t)
}
