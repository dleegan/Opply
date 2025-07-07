//
//  Company+CoreDataClass.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//
//

import CoreData
import Foundation

@objc(Company)
public class Company: NSManagedObject {
    static let preview: Company = {
        let company = Company(context: PersistenceController().container.viewContext)

        company.id = UUID()
        company.name = "Inetum"
        company.webSite = URL(string: "google.com")
        return company
    }()
}
