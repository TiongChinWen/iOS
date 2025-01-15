import SwiftUI

struct ArtistDetailsView: View {
    var artist: Artist
    
    var body: some View {
        VStack {
            Text(artist.name)
                .font(.largeTitle)
                .fontWeight(.bold)
      
            
            Image(artist.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(20)

 
            Text(artist.description)
                .font(.body)
                .padding([.leading, .trailing])
        
            Button(action: {
                if let validURL = URL(string: artist.url) {
                    UIApplication.shared.open(validURL)
                }
            }) {
                Text("Visit Artist Page")
                    .foregroundColor(.white)
                    .padding() 
                    .background(Color.blue)
                    .frame(height: 50)
                    .frame(maxWidth: 300)
                    .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}
