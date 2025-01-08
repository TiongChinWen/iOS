//
//  Exe1_2App.swift
//  Exe1.2
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

@main
struct Exe1_2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
