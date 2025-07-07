//
//  Company+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//
//

import Foundation
import CoreData


extension Company {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Company> {
        return NSFetchRequest<Company>(entityName: "Company")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var webSite: URL?
    @NSManaged public var contacts: NSSet?
    @NSManaged public var submissions: NSSet?

}

// MARK: Generated accessors for contacts
extension Company {

    @objc(addContactsObject:)
    @NSManaged public func addToContacts(_ value: Contact)

    @objc(removeContactsObject:)
    @NSManaged public func removeFromContacts(_ value: Contact)

    @objc(addContacts:)
    @NSManaged public func addToContacts(_ values: NSSet)

    @objc(removeContacts:)
    @NSManaged public func removeFromContacts(_ values: NSSet)

}

// MARK: Generated accessors for submissions
extension Company {

    @objc(addSubmissionsObject:)
    @NSManaged public func addToSubmissions(_ value: Submission)

    @objc(removeSubmissionsObject:)
    @NSManaged public func removeFromSubmissions(_ value: Submission)

    @objc(addSubmissions:)
    @NSManaged public func addToSubmissions(_ values: NSSet)

    @objc(removeSubmissions:)
    @NSManaged public func removeFromSubmissions(_ values: NSSet)

}

extension Company : Identifiable {

}
