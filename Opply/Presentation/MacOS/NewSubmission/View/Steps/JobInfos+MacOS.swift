//
//  JobInfos+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//

import SwiftUI

struct JobInfos_MacOS: View {
    @ObservedObject var vm: NewSubmissionViewModel_MacOS

    var body: some View {
        VStack(alignment: .leading) {
            Text("Information sur le poste")
                .font(.title2)
                .bold()

            HStack {
                TextField("Nom du poste...", text: $vm.newSubmission.title)
                    .textFieldStyle(.roundedBorder)
                DatePicker(selection: $vm.newSubmission.createdAt) {}
            }

            HStack {
                TextField("Ville", text: $vm.newSubmission.city)
                    .textFieldStyle(.roundedBorder)

                TextField("Pays", text: $vm.newSubmission.country)
                    .textFieldStyle(.roundedBorder)
            }

            TextEditor(text: $vm.newSubmission.description)
                .frame(height: 100)
                .textEditorStyle(.plain)
                .padding(.horizontal, 5)
                .padding(.vertical, 10)
                .background(
                    Color.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 5)
                )

            TextField("Lien vers l'offre...", text: $vm.newSubmission.link)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

#Preview {
    @Previewable @StateObject var vm = NewSubmissionViewModel_MacOS()
    JobInfos_MacOS(vm: vm)
}
