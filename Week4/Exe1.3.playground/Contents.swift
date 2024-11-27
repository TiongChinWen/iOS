import UIKit

let numbers = [12,33,56,78,99,23,49,10]

if let first = numbers.first{
    var smallest = first
    var larger = first
    
    for number in numbers{
        if number < smallest{
            smallest = number
        }
        if number > larger{
            larger = number
        }
    }
    
    print("The smallest number is \(smallest)")
    print("The larger number is \(larger)")
}
