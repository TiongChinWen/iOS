import UIKit

let year = 2016

if(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)){
    print("\(year) is a Leap Year")

}else{
    print("\(year) is Not a Leap Year")
}
