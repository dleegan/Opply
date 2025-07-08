//
//  Company+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//
//

import CoreData
import Foundation

public extension Company {
    @nonobjc class func fetchRequest() -> NSFetchRequest<Company> {
        return NSFetchRequest<Company>(entityName: "Company")
    }

    @NSManaged var id: UUID?
    @NSManaged var name: String?
    @NSManaged var webSite: URL?
    @NSManaged var contacts: NSSet?
    @NSManaged var submissions: NSSet?
}

// MARK: Generated accessors for contacts

public extension Company {
    @objc(addContactsObject:)
    @NSManaged func addToContacts(_ value: Contact)

    @objc(removeContactsObject:)
    @NSManaged func removeFromContacts(_ value: Contact)

    @objc(addContacts:)
    @NSManaged func addToContacts(_ values: NSSet)

    @objc(removeContacts:)
    @NSManaged func removeFromContacts(_ values: NSSet)
}

// MARK: Generated accessors for submissions

public extension Company {
    @objc(addSubmissionsObject:)
    @NSManaged func addToSubmissions(_ value: Submission)

    @objc(removeSubmissionsObject:)
    @NSManaged func removeFromSubmissions(_ value: Submission)

    @objc(addSubmissions:)
    @NSManaged func addToSubmissions(_ values: NSSet)

    @objc(removeSubmissions:)
    @NSManaged func removeFromSubmissions(_ values: NSSet)
}

extension Company: Identifiable {}
