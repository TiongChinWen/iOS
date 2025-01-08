import SwiftUI

struct ArticsCart: View {
    var artistName: String
    var imageName: String
    var backgroundColor: Color
    
    var body: some View {
        HStack {
            Text(artistName)
                .foregroundColor(Color("first"))
                .font(.headline)
            
            Spacer()
            
            ZStack(alignment: .bottomTrailing) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 220.0, height: 140.0)
                    .cornerRadius(10)
                    .padding(.leading, 10)
                
                Button(action: {}) {
                    Text("View")
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                }
                .padding(.trailing, 5)
                .padding(.bottom, 5)
            }
        }
        .padding()
        .background(backgroundColor) 
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.white, lineWidth: 20)
        )
    }
}


#Preview {
    ArticsCart(
        artistName: "Irene",
        imageName: "irene",
        backgroundColor: Color("one")
    )
}
