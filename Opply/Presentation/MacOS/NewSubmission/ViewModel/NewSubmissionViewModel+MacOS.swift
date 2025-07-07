//
//  NewSubmissionViewModel+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import CoreData
import Foundation

class NewSubmissionViewModel_MacOS: ObservableObject {
    let context = PersistenceController.shared.container.viewContext

    @Published var companies: [Company]
    @Published var company: Company?
    @Published var stepIndicator: Int

    init() {
        self.companies = []
        self.company = nil
        self.stepIndicator = 0
    }

    func fetchCompanies() {
        print("NewSubmissionViewModel_MacOS | fetchCompanies()")
        let fetchRequest: NSFetchRequest<Company>
        fetchRequest = Company.fetchRequest()
        do {
            let objects = try context.fetch(fetchRequest)
            print("pre=>", companies)
            companies = objects.filter { company in
                (company.name?.isEmpty) == false
            }
            print("post=>", companies)
        } catch {
            print("Error => []")
            companies = []
        }
        print()
    }

    func saveSubmission() {
        print("Your submission is saved !!")
    }

    func saveCompany() {
        do {
            let company = Company(context: context)

            company.id = UUID()
            company.name = "Inetum"
            company.webSite = URL(string: "google.com")

            try context.save()
            stepIndicator += 1
            print("is saved !")
        } catch {
            print("Une erreur est survenue !")
        }
    }
}
