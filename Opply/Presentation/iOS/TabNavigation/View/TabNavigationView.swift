//
//  TabNavigationView.swift
//  Timeon
//
//  Created by dleegan on 11/04/2025.
//

import SwiftUI

struct TabNavigationView: View {
    @State var selection = 1

    var body: some View {
        TabView(selection: $selection) {
            StatisticsView()
                .tabItem {
                    Label("Statistiques", systemImage: "chart.bar.xaxis")
                }.tag(1)

            Text("Sauvegardes")
                .tabItem {
                    Label("Sauvegardes", systemImage: "bookmark.fill")
                }.tag(2)

            Text("Templates")
                .tabItem {
                    Label("Templates", systemImage: "doc.on.clipboard.fill")
                }.tag(3)
        }
    }
}

#Preview {
    TabNavigationView()
}
