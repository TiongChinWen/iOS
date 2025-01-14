import SwiftUI
import CoreData

struct ContentView: View {
    @State private var counter: Int = 0

    var body: some View {
        VStack {
            Text("Counter App")
                .font(.largeTitle.bold())
                .padding(.bottom, 20)
            
            Text("\(counter)")
                .font(.largeTitle.bold())
                .padding(.bottom, 30)
            
            HStack {
                Button("-") {
                    counter -= 1
                }
                .frame(width: 100, height: 100)
                .background(Circle().fill(Color.red))
                       .foregroundColor(.white)
                .padding(10)
                
                Button("+") {
                    counter += 1
                }
                .frame(width: 100, height: 100)
                .background(Circle().fill(Color.green))
                       .foregroundColor(.white)
                .padding(20)
            }
            .padding(.bottom, 30)
            
            Button("Reset") {
                counter = 0
            }
            .frame(width: 150, height: 80)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
            .font(.title2)
            .padding(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
