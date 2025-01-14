//
//  StateExeApp.swift
//  StateExe
//
//  Created by labuser on 14/01/2025.
//

import SwiftUI

@main
struct StateExeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
