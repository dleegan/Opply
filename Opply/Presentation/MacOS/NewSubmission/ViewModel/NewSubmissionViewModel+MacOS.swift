//
//  NewSubmissionViewModel+MacOS.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//

import CoreData
import Foundation

struct CompanyField {
    var name: String
    var webSite: String
}

struct SubmissionField {
    var city: String
    var description: String
    var country: String
    var createdAt: Date
    var link: String
    var title: String
}

class NewSubmissionViewModel_MacOS: ObservableObject {
    let context = PersistenceController.shared.container.viewContext

    @Published var companies: [Company]
    @Published var company: Company?
    @Published var newCompany: CompanyField
    @Published var newSubmission: SubmissionField
    @Published var stepIndicator: Int

    init() {
        self.companies = []
        self.company = nil
        self.stepIndicator = 0
        self.newCompany = .init(name: "", webSite: "")
        self.newSubmission = .init(city: "", description: "", country: "", createdAt: .now, link: "", title: "")
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

    func saveCompany() {
        do {
            let company = Company(context: context)

            company.id = UUID()
            company.name = newCompany.name
            company.webSite = URL(string: newCompany.webSite)

            try context.save()
            stepIndicator += 1
            print("is saved !")
        } catch {
            print("Une erreur est survenue !")
        }
    }

    func saveSubmission() {
        do {
            let submission = Submission(context: context)

            submission.id = UUID()
            submission.city = newSubmission.city
            submission.content = newSubmission.description
            submission.country = newSubmission.country
            submission.createdAt = newSubmission.createdAt
            submission.link = URL(string: newSubmission.link)
            submission.title = newSubmission.title

            company?.addToSubmissions(submission)

            try context.save()
            stepIndicator += 1
            print("is saved !")
        } catch {
            print("Une erreur est survenue !")
        }
    }
}
