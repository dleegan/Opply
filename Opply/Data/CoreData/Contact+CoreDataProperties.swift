//
//  Contact+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var id: UUID?
    @NSManaged public var job: String?
    @NSManaged public var lastName: String?
    @NSManaged public var linkedInUrl: URL?
    @NSManaged public var phone: String?
    @NSManaged public var company: Company?

}

extension Contact : Identifiable {

}
