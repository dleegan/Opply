//
//  Navigation+MacOS.swift
//  ApplyTo
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import SwiftUI

struct Navigation_MacOS: View {
    @State private var selection: String = "list"

    var body: some View {
        NavigationSplitView {
            SidebarView(selection: $selection)
        } detail: {
            switch selection {
                case "list":
                    SubmissionsView()
                case "templates":
                    TemplatesView_MacOS()
                case "calendar":
                    CalendarView()
                case "map":
                    MapView()
                case "stats":
                    StatisticsView_MacOS()
                default:
                    VStack {}
            }
        }
    }
}

#Preview {
    Navigation_MacOS()
}
