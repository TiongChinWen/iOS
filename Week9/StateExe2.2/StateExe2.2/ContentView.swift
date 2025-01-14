import SwiftUI

struct ContentView: View {
    @State private var soundOn = true

    var body: some View {
        VStack {
    
            Toggle(isOn: $soundOn) {}
                .toggleStyle(SwitchToggleStyle(tint: .green))
                .padding(.bottom, 50)
            
           
            Image(systemName: soundOn ? "speaker.wave.2.fill" : "speaker.slash.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(soundOn ? .black : .black)
                .padding(.bottom, 550)
        }
        .frame(width:10,alignment: .center)
    }
}

#Preview {
    ContentView()
}
