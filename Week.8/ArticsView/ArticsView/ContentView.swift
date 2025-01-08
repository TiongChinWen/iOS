//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            HStack {
                Spacer()
                Image(systemName: "bell")
                    .foregroundColor(Color("first"))
                    .imageScale(.large)
                    .foregroundStyle(.tint)
               
            }
            HStack{
                Text("FavouriteArtist")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("first"))
                Spacer()
            }
            
            
            VStack {
                ArticsCart(artistName: "Irene", imageName: "irene", backgroundColor: Color("one"))
                ArticsCart(artistName: "Jessica", imageName: "jessica", backgroundColor: Color("two"))
                ArticsCart(artistName: "Moonbyul", imageName: "moon", backgroundColor: Color("three"))
                ArticsCart(artistName: "Krystal", imageName: "krystal", backgroundColor: Color("four"))
            }
        }
    }
}

        #Preview {
            ContentView()
        }
