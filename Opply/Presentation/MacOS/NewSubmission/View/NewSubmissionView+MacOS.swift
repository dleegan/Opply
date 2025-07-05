//
//  NewSubmissionView+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import SwiftUI

struct NewSubmissionView_MacOS: View {
    @StateObject private var vm = NewSubmissionViewModel_MacOS()

    var body: some View {
        Form {
            Section("L'entreprise") {
                TextField("Nom de l'entreprise", text: .constant("zert"))
            }
        }
        .padding()
    }
}

#Preview {
    NewSubmissionView_MacOS()
        .frame(width: 1100, height: 900)
}
