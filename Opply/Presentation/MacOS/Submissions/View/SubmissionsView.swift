//
//  SubmissionsView.swift
//  ApplyTo
//
//  Created by Leegan DUPROS on 30/06/2025.
//

import SwiftUI

struct SubmissionsView: View {
    @State private var people = Submission.examples()

    var body: some View {
        VStack {
            Table(people) {
                TableColumn("Entreprise", value: \.company)
                TableColumn("Nom du Poste", value: \.name)
                TableColumn("Ville", value: \.city)
                TableColumn("Description", value: \.description)
                TableColumn("Lien", value: \.link)
            }
        }
        .navigationTitle("Mes demandes")
        .inspector(isPresented: .constant(false)) {
            VStack {
                Text("this is a test")
            }
        }
    }
}

#Preview {
    SubmissionsView()
}
