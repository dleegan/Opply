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
    @State private var showModal: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            if vm.submissions.isEmpty {
                EmptyView
            } else {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Home")
                            .font(.largeTitle)
                            .bold()
                    }

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Les entrerpises")
                            .font(.title)
                            .bold()

                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(1 ..< 5) { _ in
                                    HStack {
                                        Circle()
                                            .frame(width: 50, height: 50)

                                        VStack(alignment: .leading) {
                                            Text("Entreprise")
                                                .font(.title3)
                                                .bold()
                                            Text("Voir le site")
                                                .font(.caption2)
                                                .bold()
                                        }
                                    }
                                    .frame(width: 200, alignment: .leading)
                                    .padding()
                                    .background(
                                        .gray.opacity(0.2),
                                        in: RoundedRectangle(cornerRadius: 10)
                                    )
                                }
                            }
                        }
                        .scrollIndicators(.hidden)
                    }

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Mes demandes")
                            .font(.title)
                            .bold()

                        Table(people) {
                            TableColumn("Entreprise", value: \.company)
                            TableColumn("Nom du Poste", value: \.name)
                            TableColumn("Ville", value: \.city)
                            TableColumn("Description", value: \.description)
                            TableColumn("Lien", value: \.link)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
        .task {
            print("Task | vm.fetchSubmissions()")
            vm.fetchSubmissions()
        }
        .navigationTitle("Mes demandes")
        .toolbarItemHidden(true)
        .inspector(isPresented: .constant(false)) {
            VStack {
                Text("this is a test")
            }
        }
        .sheet(isPresented: $showModal) {
            NewSubmissionView_MacOS()
        }
    }

    var EmptyView: some View {
        ContentUnavailableView {
            Label("Mes demandes", systemImage: "document.on.clipboard.fill")
        } description: {
            Text("Vous n'avez pas encore effectué de demandes.")
        } actions: {
            Button {
                showModal = true
            } label: {
                Label("Ajouter une demande", systemImage: "plus")
            }
        }
    }
}

#Preview {
    SubmissionsView()
}
