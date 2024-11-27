import UIKit
var num = 4
for i in 1...num{
    for _ in 1...i{
        print("*", terminator: "")
    }
    print("")
}


for i in stride(from: num-1, through:1, by: -1){
    for i in 1...i{
        print("*", terminator: "")
    }
    print()
}
