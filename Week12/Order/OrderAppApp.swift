import SwiftUI
import SwiftData

@main
struct OrderAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: MenuItem.self)
    }
}

