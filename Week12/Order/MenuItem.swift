import SwiftData
import Foundation

@Model
class MenuItem: Identifiable {
    var id: UUID
    var name: String
    var type: String 
    var price: Double
    var image: String
    var isAddedToOrder: Bool

    init(id: UUID = UUID(), name: String, type: String, price: Double, image: String, isAddedToOrder: Bool = false) {
        self.id = id
        self.name = name
        self.type = type
        self.price = price
        self.image = image
        self.isAddedToOrder = isAddedToOrder
    }
}

