//
//  ArtistsApp.swift
//  Artists
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

@main
struct ArtistsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
