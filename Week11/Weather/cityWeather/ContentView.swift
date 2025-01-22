//
//  ContentView.swift
//  Weather
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI
import CoreData

struct ContentView:View{
    @State private var searchText=""
    let asia=["Kuala Lumpur","Beijing","Seoul"]
    let europe=["London","Oslo","Berlin"]

    
    var asiaResults:[CityWeather]{
        if searchText.isEmpty{
            return AsiaWeatherData
        }
        else{
            return AsiaWeatherData.filter{ $0.city.contains(searchText)}
        }
    }
    var europesults:[CityWeather]{
        if searchText.isEmpty{
            return EuropeWeatherData
        }
        else{
            return EuropeWeatherData.filter{ $0.city.contains(searchText)}
        }
    }
    
    
    var body:some View{
        NavigationStack{
            List{
                Section(header:Text("ASIA")){
                    ForEach(asia,id:\.self){
                        asia in NavigationLink{
                            Text(asia)
                        }label:{
                            Text(asia)
                        }
                    }
                }
                
                
                Section(header:Text("EUROPE")){
                    ForEach(europe,id:\.self){
                        europe in NavigationLink{
                            Text(europe)
                        }label:{
                            Text(europe)
                        }
                    }
                }
            }
                    .navigationTitle("Cities")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button(action:{
                                
                            }){
                                Image(systemName: "info.circle")
                                
                            }
                        }
                    }
                    .searchable(text:$searchText)
                    
                }
            }
        }
    

#Preview {
    ContentView()
}
