//
//  File.swift
//  Weather
//
//  Created by labuser on 22/01/2025.
//

import Foundation

struct CityWeather{
    let city: String
    let weather:[Weather]
}

struct Weather: Identifiable{
    let id = UUID()
    let day: String
    let temperature: Int
    let icon: String
}

let AsiaWeatherData:[CityWeather]=[
    CityWeather(
        city: "Kuala Lumpur",
            weather:[
                Weather(day:"Monday",temperature:20,icon:"cloudy"),
                Weather(day:"Tuesday",temperature:32,icon:"sunny"),
                Weather(day:"Wednesday",temperature:18,icon:"cloudy")
                
            ]),
    CityWeather(
    city: "Beijing",
        weather:[
            Weather(day:"Monday",temperature:33,icon:"sunny"),
            Weather(day:"Tuesday",temperature:30,icon:"sunny"),
            Weather(day:"Wednesday",temperature:16,icon:"cloudy"),
            
            
        ]),
    CityWeather(
    city: "Seoul",
        weather:[
            Weather(day:"Monday",temperature:35,icon:"sunny"),
            Weather(day:"Tuesday",temperature:19,icon:"cloudy"),
            Weather(day:"Wednesday",temperature:17,icon:"cloudy"),
            
            
        ])
   
]

let EuropeWeatherData:[CityWeather]=[
    CityWeather(
        city: "London",
            weather:[
                Weather(day:"Monday",temperature:20,icon:"cloudy"),
                Weather(day:"Tuesday",temperature:32,icon:"sunny"),
                Weather(day:"Wednesday",temperature:18,icon:"cloudy")
                
            ]),
    CityWeather(
    city: "Oslo",
        weather:[
            Weather(day:"Monday",temperature:33,icon:"sunny"),
            Weather(day:"Tuesday",temperature:30,icon:"sunny"),
            Weather(day:"Wednesday",temperature:16,icon:"cloudy"),
            
            
        ]),
    CityWeather(
    city: "Seoul",
        weather:[
            Weather(day:"Monday",temperature:35,icon:"sunny"),
            Weather(day:"Tuesday",temperature:19,icon:"cloudy"),
            Weather(day:"Wednesday",temperature:17,icon:"cloudy"),
            
            
        ])
   
]
