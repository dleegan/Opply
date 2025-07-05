//
//  SubmissionStep+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 05/07/2025.
//
//

import Foundation
import CoreData


extension SubmissionStep {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SubmissionStep> {
        return NSFetchRequest<SubmissionStep>(entityName: "SubmissionStep")
    }

    @NSManaged public var date: Date?
    @NSManaged public var name: String?
    @NSManaged public var note: String?
    @NSManaged public var submission: Submission?

}

extension SubmissionStep : Identifiable {

}
