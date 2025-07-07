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
                .environment(
                    \.managedObjectContext,
                    persistenceController.container.viewContext
                )
            #if os(macOS)
                .containerBackground(
                    .thinMaterial, for: .window
                )
            #endif
        }
        #if os(macOS)
        .defaultPosition(.center)
        .defaultSize(width: 1000, height: 600)
        .windowStyle(.hiddenTitleBar)
        #endif

        #if os(macOS)
        MenuBarExtra("LocalizedStringKey", systemImage: "plus") {
            VStack {
                Text("This is a test")
            }
            .frame(width: 500, height: 300)
        }
        .menuBarExtraStyle(.window)

        Settings {
            VStack {
                Button {
                    //
                    let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Company")
                    let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

                    do {
                        try persistenceController.container.viewContext.execute(deleteRequest)
                    } catch let error as NSError {
                        // TODO: handle the error
                        print("\(error.description)")
                    }
                } label: {
                    Text("Clean CoreData")
                }
            }
            .frame(width: 500, height: 500)
        }
        #endif
    }
}
