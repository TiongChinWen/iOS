import UIKit

let numbers = [3,5,1,4]

for i in 0..<numbers.count{
    let number = numbers[i]
    var histogram = ""
    
    for _ in 0..<number{
        histogram += "*"
    }
    print(histogram)
}
