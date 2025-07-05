//
//  NewSubmissionViewModel+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import Foundation

class NewSubmissionViewModel_MacOS: ObservableObject {
    @Published var company: Company

    init() {
        let context = PersistenceController.shared.container.viewContext

        self.company = Company(context: context)
    }
}
