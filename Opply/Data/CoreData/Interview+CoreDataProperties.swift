//
//  Interview+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//
//

import Foundation
import CoreData


extension Interview {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Interview> {
        return NSFetchRequest<Interview>(entityName: "Interview")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var note: String?
    @NSManaged public var submission: Submission?

}

extension Interview : Identifiable {

}
