//
//  ContentView.swift
//  Profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top){
            
            
            Image("sun")
                .resizable()
                .frame(width:
                UIScreen.main.bounds.height/2,height:
                UIScreen.main.bounds.height/4)
                .aspectRatio(contentMode: .fit
                    )
                .ignoresSafeArea()

            VStack{
               
                Image("TCW")
                    .resizable()
                    .frame(width:170.0, height:170.0)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    . overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                    .shadow(radius: 10)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                Text("TiongChinWen")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Software Engineering")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                    
                
                Text("SECEF is a E-Commerce, business based software development company that have 10 years experience and famous in IT area.")
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .frame(width:300, height: 100.0)
                    .foregroundColor(Color("first"))
                    
                Spacer()
                HStack{
                    Image("fb")
                        .resizable()
                        .frame(width:50.0, height:50.0)
                    Image("x")
                        .resizable()
                        .frame(width:50.0, height:50.0)
                    Image("ig")
                        .resizable()
                        .frame(width:50.0, height:50.0)
                    Image("tiktok")
                        .resizable()
                        .frame(width:50.0, height:50.0)
                }
                }
            }
            
        }
    }


#Preview {
    ContentView()
}
