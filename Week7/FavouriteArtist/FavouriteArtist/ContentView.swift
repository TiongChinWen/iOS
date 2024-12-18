//
//  ContentView.swift
//  FavouriteArtist
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "bell")
                .foregroundColor(Color("first"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image(systemName: "person.crop.circle.fill")
                .imageScale(.large)
                .foregroundColor(Color("first"))
                .padding()
        }
        HStack{
            Text("FavouriteArtist")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("title"))
            Spacer()
        }
        
        VStack{
            
            HStack{
                
                Text("Irene")
                    .foregroundColor(Color("first"))
                    .font(.headline)
                
                Spacer()
                
                Image("irene")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    .frame(width:250.0, height:100.0)
                
                    .cornerRadius(20)
                    .padding()
                
                
            }
            .padding().background(Color("one"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 5)
            )
            
            HStack{
                
                Text("Jessica")
                    .foregroundColor(Color("first"))
                    .font(.headline)
                
                Spacer()
                
                Image("jessica")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    .frame(width:250.0, height:100.0)
                
                    .cornerRadius(20)
                    .padding()
                
                
            }
            .padding().background(Color("two"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 5)
            )
            HStack{
                
                Text("Moonbyul")
                    .foregroundColor(Color("first"))
                    .font(.headline)
                
                Spacer()
                
                Image("moon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    .frame(width:250.0, height:100.0)
                
                    .cornerRadius(20)
                    .padding()
                
                
            }
            .padding().background(Color("three"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 5)
            )
            HStack{
                
                Text("Krystal")
                    .foregroundColor(Color("first"))
                    .font(.headline)
                
                Spacer()
                
                Image("krystal")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                    .frame(width:250.0, height:100.0)
                
                    .cornerRadius(20)
                    .padding()
                
                
            }
            .padding().background(Color("four"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 5)
            )
            }
        }
    }
    

#Preview {
    ContentView()
}
