//
//  StateExe2_3App.swift
//  StateExe2.3
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

@main
struct StateExe2_3App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
