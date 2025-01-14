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
                ArticsCart(artistName: "Irene", imageName: "irene", backgroundColor: Color("one"),url: "https://www.quora.com/Is-Red-Velvets-Irene-really-the-prettiest-idol")
                
                                
                ArticsCart(artistName: "Jessica", imageName: "jessica", backgroundColor: Color("two"),url: "https://www.youtube.com/channel/UCpa4TxYY1VnYYIJrIKgbG3g")
                ArticsCart(artistName: "Moonbyul", imageName: "moon", backgroundColor: Color("three"),url: "https://www.pinterest.com/pin/38069559337751935/")
                ArticsCart(artistName: "Krystal", imageName: "krystal", backgroundColor: Color("four"),url: "https://www.nme.com/news/music/krystal-jung-didnt-expect-4-walls-fx-last-album-3508183")
            }
        }
    }
}

        #Preview {
            ContentView()
        }
