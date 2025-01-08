//
//  ArticsViewApp.swift
//  ArticsView
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

@main
struct ArticsViewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
