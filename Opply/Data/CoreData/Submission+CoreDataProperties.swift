//
//  Submission+CoreDataProperties.swift
//  Opply
//
//  Created by Leegan DUPROS on 07/07/2025.
//
//

import Foundation
import CoreData


extension Submission {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Submission> {
        return NSFetchRequest<Submission>(entityName: "Submission")
    }

    @NSManaged public var city: String?
    @NSManaged public var content: String?
    @NSManaged public var country: String?
    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var link: URL?
    @NSManaged public var title: String?
    @NSManaged public var company: Company?
    @NSManaged public var interviews: NSSet?
    @NSManaged public var steps: NSSet?

}

// MARK: Generated accessors for interviews
extension Submission {

    @objc(addInterviewsObject:)
    @NSManaged public func addToInterviews(_ value: Interview)

    @objc(removeInterviewsObject:)
    @NSManaged public func removeFromInterviews(_ value: Interview)

    @objc(addInterviews:)
    @NSManaged public func addToInterviews(_ values: NSSet)

    @objc(removeInterviews:)
    @NSManaged public func removeFromInterviews(_ values: NSSet)

}

// MARK: Generated accessors for steps
extension Submission {

    @objc(addStepsObject:)
    @NSManaged public func addToSteps(_ value: SubmissionStep)

    @objc(removeStepsObject:)
    @NSManaged public func removeFromSteps(_ value: SubmissionStep)

    @objc(addSteps:)
    @NSManaged public func addToSteps(_ values: NSSet)

    @objc(removeSteps:)
    @NSManaged public func removeFromSteps(_ values: NSSet)

}

extension Submission : Identifiable {

}
