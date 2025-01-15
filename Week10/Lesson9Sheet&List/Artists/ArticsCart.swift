import SwiftUI

struct Artist: Identifiable {
    var id = UUID() 
    var name: String
    var imageName: String
    var description: String
    var url: String
}
