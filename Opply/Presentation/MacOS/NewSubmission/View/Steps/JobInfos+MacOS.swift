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
                TextField("Nom du poste...", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                DatePicker(selection: .constant(.now)) {}
            }

            HStack {
                TextField("Ville", text: .constant(""))
                    .textFieldStyle(.roundedBorder)

                TextField("Pays", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
            }

            TextEditor(text: .constant(""))
                .frame(height: 100)
                .textEditorStyle(.plain)
                .padding(.horizontal, 5)
                .padding(.vertical, 10)
                .background(
                    Color.gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 5)
                )

            TextField("Lien vers l'offre...", text: .constant(""))
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

#Preview {
    @Previewable @StateObject var vm = NewSubmissionViewModel_MacOS()
    JobInfos_MacOS(vm: vm)
}
