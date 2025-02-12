//
//  MenuItemView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//

import SwiftUI

struct MenuItemView: View{
    @Bindable var item: MenuItem
    var body: some View{
        VStack(alignment: .leading){
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            
           
            Text(item.name)
                .font(.subheadline)
            
            Text("RM\(item.price,specifier: "%.2f")")
                .font(.subheadline)
                .onAppear {
                    print("MenuItemView for \(item.name)")
                }
                
            Button(action:{
                item.isAddedToOrder.toggle()
            }){
                Text(item.isAddedToOrder ? "Remove": "Add To Order")
                    .font(.caption)
                    .padding(6)
                    .background(item.isAddedToOrder ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}
#Preview {
    let newItem = MenuItem(name: "Nachos Chesse Deluxe Beef", type: "Food", price: 19.9, image: "NachosBeef")
    MenuItemView(item: newItem)
}
