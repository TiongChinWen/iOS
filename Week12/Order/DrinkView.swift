//
//  DrinkView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI
import SwiftData

struct DrinkView: View{
    @Query(filter: #Predicate<MenuItem> {item in
        item.type == "Drink"
    },sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @State private var searchText = ""
    @Environment(\.modelContext) private var modelContext
    
    
    var filteredDrinkItems: [MenuItem] {
        if searchText.isEmpty {
            return drinkItems
        } else {
            return drinkItems.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
    var body: some View{
        VStack{
            TextField("Search drinks...", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing])
            
            List{
                ForEach(drinkItems){item in
                    MenuItemView(item: item)
                }
            }
            .onAppear{
                if drinkItems.isEmpty{
                    preloadMenuItems()
                }
            }
        }
    }
    
    private func preloadMenuItems(){
        let sampleDrinks: [(name: String, price: Double,image: String)]=[
            ("Cola",4.9,"cola"),
            ("lime Fizz",5.9,"lime fizz"),
            ("Sprite",4.9,"sprite"),
            ("Pomegranate Fizz",5.9,"pomegranate"),
            ("Orange Juice",5.9,"orange"),
            ("Iced Lemon Tea",5.9,"lemon"),
            ("Fanta Grape",5.9,"grape"),
            ("Coke Zero",4.5,"zero"),
            ("Hot Americano",6.5,"americano"),
            ("Iced Americano",6.5,"ice a"),
            
        ]
        for drink in sampleDrinks{
            let newItem=MenuItem(name: drink.name,type:"Drink",price:drink.price, image: drink.image)
            modelContext.insert(newItem)
        }
        try? modelContext.save()
    }
}

#Preview{
    DrinkView()
        .modelContainer(for:MenuItem.self, inMemory: true)
}
