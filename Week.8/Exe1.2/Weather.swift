import SwiftUI


struct WeatherDay: Identifiable {
    let id = UUID()
    let date: String
    let temperature: Int
    let icon: String
}


struct Weather: View {
    let day: WeatherDay
    
    var body: some View {
        HStack {
            Text(day.date)
                .font(.title2)
                .foregroundColor(.white)
                .frame(width: 50, alignment: .leading)
            
            Spacer()
            
    
            Image(systemName: day.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)
            
            Spacer()
            
            Text("\(day.temperature)°C")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 100, alignment: .trailing)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white.opacity(0.2))
        )
    }
}

#Preview {

    Weather(day: WeatherDay(date: "Mon", temperature: 22, icon: "sun.max.fill"))
       
}
