//
//  TemplatesView+MacOS.swift
//  ApplyToMacOS
//
//  Created by Leegan DUPROS on 04/07/2025.
//

import SwiftUI

struct TemplatesView_MacOS: View {
    var body: some View {
        ContentUnavailableView {
            Label("Mes templates", systemImage: "document.on.clipboard.fill")
        } description: {
            Text("Vous n'avez pas encore ajouté de templates.")
        } actions: {
            Button {
                //
            } label: {
                Label("Ajouter un template", systemImage: "plus")
            }
        }
    }
}

#Preview {
    TemplatesView_MacOS()
}
