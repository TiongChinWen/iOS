import SwiftUI

struct ContentView: View {
    @State private var username = ""  
    var body: some View {
        VStack {

            TextField("Enter username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300)

            Text(username.count >= 5 ? "Valid" : "Too short")
                .foregroundColor(username.count >= 5 ? .green : .red)
                .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
