//
//  Step1+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//

import SwiftUI

struct Step1_MacOS: View {
    @ObservedObject var vm: NewSubmissionViewModel_MacOS

    var body: some View {
        VStack(alignment: .leading) {
            Text("Information sur l'entreprise")
                .font(.title2)
                .bold()

            VStack(alignment: .leading) {
                if !vm.companies.isEmpty {
                    Text("Choisir une entreprise")
                    Picker(selection: $vm.company) {
                        ForEach(vm.companies) { company in
                            Text(company.name ?? "default value")
                                .tag(company)
                        }
                    } label: {}

                    HStack(alignment: .center) {
                        Spacer()
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(.gray.opacity(0.2))

                        Text("ou")
                            .bold()

                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(.gray.opacity(0.2))

                        Spacer()
                    }
                    .frame(height: 40)
                }

                VStack(alignment: .leading) {
                    Text("Créer une fiche entreprise")
                    TextField("Nom de l'entreprise", text: $vm.company.name)
                        .textFieldStyle(.roundedBorder)

                    TextField("Lien de l'entreprise", text: Binding(get: {
                        vm.company?.name ?? ""
                    }, set: { value in
                        vm.company?.name = value
                    }))
                    .textFieldStyle(.roundedBorder)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
    }
}

#Preview {
    @Previewable @StateObject var vm = NewSubmissionViewModel_MacOS()
    Step1_MacOS(vm: vm)
}
