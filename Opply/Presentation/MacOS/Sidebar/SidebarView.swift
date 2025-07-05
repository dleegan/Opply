//
//  SidebarView.swift
//  Opply
//
//  Created by Leegan DUPROS on 30/06/2025.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: String

    var body: some View {
        List(selection: $selection) {
            VStack {
                Text("Opply")
                    .bold()
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Section("Menu") {
                Label("Mes demandes", systemImage: "doc.text.fill")
                    .tag("list")

                Label("Mes Templates", systemImage: "doc.on.clipboard.fill")
                    .tag("templates")

                Label("Calendrier", systemImage: "calendar")
                    .tag("calendar")

                Label("Plan", systemImage: "map.fill")
                    .tag("map")

                Label("Statistiques", systemImage: "chart.bar.xaxis")
                    .tag("stats")

                Label("Offres sauvegardées", systemImage: "bookmark.fill")
                    .tag("saved")
            }

            Section("Last Submissions") {
                ForEach(Array(Submisssion.examples().prefix(4))) { submission in
                    Label("\(submission.company): \(submission.name) \(submission.id)", systemImage: "doc.text.fill")
                        .tag("\(submission.id)")
//                        .contextMenu {
//                            Button("Supprimer", role: .cancel) {}
//                        }
                }
            }

            Section("Tags") {
                ForEach(Array(Submisssion.examples().prefix(4))) { submission in
                    Label("\(submission.company): \(submission.name)", systemImage: "number.circle.fill")
                        .tag("\(submission.company): \(submission.name)")
//                        .contextMenu {
//                            Button("Supprimer", role: .cancel) {}
//                        }
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button {
                //
            } label: {
                Label("Add", systemImage: "plus.circle")
            }
            .buttonStyle(.borderless)
            .foregroundStyle(.blue)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    SidebarView(selection: .constant("list"))
        .listStyle(.sidebar)
}
