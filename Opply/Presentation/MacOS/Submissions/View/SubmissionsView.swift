//
//  SubmissionsView.swift
//  Opply
//
//  Created by Leegan DUPROS on 30/06/2025.
//

import SwiftUI

struct SubmissionsView: View {
    @StateObject private var vm = SubmissionsViewModel()
    @State private var people = Submisssion.examples()

    var body: some View {
        VStack(alignment: .leading) {
            if vm.submissions.isEmpty {
                EmptyView
            } else {
                VStack(alignment: .leading) {
                    HStack {
                        Text("This is a title test")
                            .font(.largeTitle)
                            .bold()
                    }

                    Table(people) {
                        TableColumn("Entreprise", value: \.company)
                        TableColumn("Nom du Poste", value: \.name)
                        TableColumn("Ville", value: \.city)
                        TableColumn("Description", value: \.description)
                        TableColumn("Lien", value: \.link)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding()
            }
        }
        .task {
            vm.fetchSubmissions()
        }
        .navigationTitle("Mes demandes")
        .inspector(isPresented: .constant(false)) {
            VStack {
                Text("this is a test")
            }
        }
    }

    var EmptyView: some View {
        ContentUnavailableView {
            Label("Mes demandes", systemImage: "document.on.clipboard.fill")
        } description: {
            Text("Vous n'avez pas encore effectué de demandes.")
        } actions: {
            Button {
                //
            } label: {
                Label("Ajouter une demande", systemImage: "plus")
            }
        }
    }
}

#Preview {
    SubmissionsView()
}
