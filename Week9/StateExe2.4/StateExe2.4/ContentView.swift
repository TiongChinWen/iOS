import SwiftUI

struct ContentView: View {
    @State private var isRed = true

    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                isRed.toggle()
            }) {
                Text(isRed ? "Switch to White" : "Switch to Red")
                    .foregroundColor(.black)
                    .padding()
                    .background(isRed ? Color.white : Color.red)
                    .cornerRadius(10)
            }
            .padding()
            Spacer()
        }
        .background(isRed ? Color.red : Color.white)
    }
}

#Preview {
    ContentView()
}
