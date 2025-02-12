//
//  ProfileView.swift
//  OrderApp
//
//  Created by labuser on 05/02/2025.
//
import SwiftUI
import SwiftData

struct ProfileView: View{
    @Query var allItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext
    
    @State var email=""
    @State var password=""
    @State var isRegistered=false
    
    var body: some View{
        
        VStack{
            Text("Burger King")
                .font(.title)
                .padding()
         
            
            VStack{
                Text("Register")
                    .fontWeight(.bold)
                
                TextField("Email",text: $email)
                    .padding()
                    .cornerRadius(8)
                
                TextField("Password",text: $password)
                    .padding()
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: registerUser){
                Text("Register")
                    .padding()
            }
            Button(action: {clearAllMenuItems()}){
                Text("Clear All Menu Items")
            }
        }
    }
    private func clearAllMenuItems(){
        for item in allItems{
            modelContext.delete(item)
        }
        
    }
    private func registerUser(){
        print("Register with: \(email)")
    }
}
