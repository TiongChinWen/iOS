import SwiftUI

struct ArticsCart: View {
    var artistName: String
    var imageName: String
    var backgroundColor: Color
    let url: String
    
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
                
                HStack {
                    Button(action: {
                        if let validURL = URL(string: url) {
                            UIApplication.shared.open(validURL)
                        }
                    }) {
                        Text("View")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.black)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
                }
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
        backgroundColor: Color("one"),
        url: "https://www.quora.com/Is-Red-Velvets-Irene-really-the-prettiest-idol"
    )
}
