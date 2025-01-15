import SwiftUI

struct ContentView: View {
    @State private var isSheetPresented = false
    @State private var selectedArtist: Artist?
    

    let artists = [
        Artist(name: "Irene", imageName: "irene", description: "Irene is the leader of Red Velvet.", url: "https://open.spotify.com/artist/1FCug8HMxqearaZB5qwWQj"),
        Artist(name: "Jessica", imageName: "jessica", description: "Jessica Jung is a singer, actress, author.", url: "https://www.youtube.com/channel/UCpa4TxYY1VnYYIJrIKgbG3g"),
        Artist(name: "Moonbyul", imageName: "moon", description: "Moonbyul is a rapper and vocalist member of the girl group Mamamoo", url: "https://www.pinterest.com/pin/38069559337751935/"),
        Artist(name: "Krystal", imageName: "krystal", description: "Krystal is a singer, a member of f(x).", url: "https://en.wikipedia.org/wiki/Krystal_Jung"),
        Artist(name: "Taeyeon", imageName: "taeyeon", description: "Taeyeon is a singer form member of girl group Girls' Generation. ", url: "https://en.wikipedia.org/wiki/Taeyeon")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
          
                HStack {
                    Spacer()
                    Image(systemName: "bell")
                        .foregroundColor(Color("first"))
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                }
                
           
                HStack {
                    Text("Favourite Artist")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color("first"))
                    Spacer()
                }
          
                List(artists) { artist in
                    Button(action: {
                        selectedArtist = artist
                        isSheetPresented = true
                    }) {
                        Text(artist.name)
                            .font(.headline)
                            .padding()
                    }
                }
                .listStyle(.insetGrouped)
                
            }
            .sheet(isPresented: $isSheetPresented) {
                            if let selectedArtist = selectedArtist {
                                ArtistDetailsView(artist: selectedArtist)
                                    .presentationDetents([.height(350), .large])
                }
            }
        }
    }
}
struct ArtistView: View {
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

         
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
