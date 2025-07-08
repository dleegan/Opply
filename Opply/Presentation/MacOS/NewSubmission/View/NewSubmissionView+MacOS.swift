//
//  NewSubmissionView+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import SwiftUI

struct NewSubmissionView_MacOS: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var vm = NewSubmissionViewModel_MacOS()

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Nouvelle demande")
                    .font(.largeTitle)
                    .bold()

                Spacer()

                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
                .buttonStyle(.plain)
            }

            .padding()

            Divider()

            VStack {
                switch vm.stepIndicator {
                    case 0:
                        Step1_MacOS(vm: vm)
                    case 1:
                        JobInfos_MacOS(vm: vm)
                    case 2:
                        VStack {
                            Button {
                                dismiss()
                            } label: {
                                Text("Dismiss")
                            }
                        }
                    default:
                        VStack {}
                }
            }

            Spacer()

            Divider()

            HStack {
                Spacer()
                Button {
                    switch vm.stepIndicator {
                        case 0:
                            vm.saveCompany()

                        case 1:
                            vm.saveSubmission()

                        default:
                            vm.stepIndicator = 0
                    }

                } label: {
                    Label("go to new screen", systemImage: "plus")
                }
            }
            .padding()
        }
        .task {
            vm.fetchCompanies()
        }
    }
}

#Preview {
    NewSubmissionView_MacOS()
        .frame(width: 700, height: 500)
}
