//
//  SubmissionsViewModel.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import CoreData
import Foundation

class SubmissionsViewModel: ObservableObject {
    @Published var submissions: [Submission]

    init() {
        self.submissions = []
    }

    func fetchSubmissions() {
        let fetchRequest: NSFetchRequest<Submission>
        fetchRequest = Submission.fetchRequest()

        // Get a reference to a NSManagedObjectContext
        let context = PersistenceController.shared.container.viewContext

        // Fetch all objects of one Entity type
        do {
            let objects = try context.fetch(fetchRequest)
            submissions = objects
        } catch {
            print("Error")
            submissions = []
        }
    }
}
