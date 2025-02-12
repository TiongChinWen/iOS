

import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]
    
    @State private var searchText=""
    @Environment(\.modelContext) private var modelContext

    
    var filteredFoodItems: [MenuItem] {
        if searchText.isEmpty {
            return foodItems
        } else {
            return foodItems.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        VStack{
            TextField("Search food...", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            
            List {
                ForEach(foodItems) { item in
                    MenuItemView(item: item)
                }
            }
            .onAppear {
                if foodItems.isEmpty {
                    preloadMenuItems()
                }
            }
        }
        
    }
   
    
    private func preloadMenuItems(){
        let sampleFood: [(name: String, price: Double,image: String)]=[
            ("Nachos Chesse Deluxe Beef",19.9,"NachoBeef"),
            ("Triple Whopper Jr",21.4,"TripleWhopper"),
            ("Steakhouse Whopper",22.4,"Steak"),
            ("Supreme Nachos Tender",20.0,"Nachos"),
            ("Whopper With Cheese",25.9,"Whopper"),
            ("Tendergrill",15.7,"Tendergrill"),
            ("Long Chicken",17.7,"LongChicken"),
            ("Tendercrisp",16.45,"Tendercrisp"),
            ("Mushroom Veggie",12.7,"Veggie"),
            ("Single BBQ Beefacon",14.3,"BBQBeef"),
            ("Double BBQ Beefacon",18.9,"DoubleBBQ"),
            ("Cheese Burger",11.5,"Cheeseburger"),
            ("Double Cheeseburger",16.1,"DoubleCheese"),
            ("Mushroom Swiss Single",14.2,"Swiss"),
            ("Long Cheesy Onion Beed",17.4,"CheesyOnion"),
            ("Fish n Crisp",11.5,"FishN"),
            ("Beefacon Croissanwich",14.5,"BeefaconCroissan"),
            ("Chicken Strip Croissanwich",12.5,"CNCroissanwich"),
            ("Fried Checken Ori",8.5,"Fried Chicken"),
             ("French Fries",18.7,"French Fries"),
        ]
        for food in sampleFood{
            let newItem=MenuItem(name: food.name,type:"Food",price:food.price, image:food.image)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}

#Preview{
    FoodView()
        .modelContainer(for:MenuItem.self, inMemory: true)
}
