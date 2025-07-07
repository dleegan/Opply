//
//  ContentView.swift
//  Opply
//
//  Created by Leegan DUPROS on 30/06/2025.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default
    )
    private var items: FetchedResults<Item>

    var body: some View {
        #if os(iOS)
            TabNavigationView()
        #endif
        #if os(macOS)
            Navigation_MacOS()
        #endif
    }
}

#Preview {
    ContentView()
        .environment(
            \.managedObjectContext,
            PersistenceController.preview.container.viewContext
        )
    #if os(macOS)
        .frame(width: 1000, height: 600)
    #endif
}
