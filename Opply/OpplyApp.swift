//
//  OpplyApp.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import SwiftUI

@main
struct OpplyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
