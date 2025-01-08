import SwiftUI

struct ContentView: View {

    let forecast: [WeatherDay] = [
        WeatherDay(date: "Thu", temperature: 34, icon: "cloud.sun.fill"),
        WeatherDay(date: "Fri", temperature: 33, icon: "cloud.rain.fill"),
        WeatherDay(date: "Sat", temperature: 29, icon: "cloud.fill"),
        WeatherDay(date: "Sun", temperature: 30, icon: "cloud.fill"),
        WeatherDay(date: "Mon", temperature: 31, icon: "cloud.rain.fill"),
        WeatherDay(date: "Tue", temperature: 33, icon: "cloud.sun.fill"),
        WeatherDay(date: "Wed", temperature: 32, icon: "cloud.bolt.rain.fill")
    ]
    
    var body: some View {
        VStack {
            Text("Kuala Lumpur")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
 
            ScrollView {
                ForEach(forecast) { day in
                    Weather(day: day)
                        .padding(.bottom, 5)
                }
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview {
    ContentView()
}
