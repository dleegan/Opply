//
//  Submission.swift
//  Opply
//
//  Created by Leegan DUPROS on 30/06/2025.
//

import Foundation

struct Submisssion: Identifiable {
    let id = UUID()
    var name: String
    var company: String
    var city: String
    var country: String
    var date: Date
    var description: String
    var link: String

    init(name: String, company: String, city: String, country: String, date: Date, description: String, link: String) {
        self.name = name
        self.company = company
        self.city = city
        self.country = country
        self.date = date
        self.description = description
        self.link = link
    }

    static func example() -> Submisssion {
        Submisssion(name: "Dev Full-Stack", company: "Listen Too", city: "Lille", country: "France", date: Date.now, description: "Un poste de developpeur full-stack js", link: "google.com")
    }

    static func examples() -> [Submisssion] {
        [
            Submisssion(name: "Dev Full-Stack", company: "Listen Too", city: "Lille", country: "France", date: Date.now, description: "Un poste de developpeur full-stack js", link: "google.com"),
            Submisssion(name: "Dev Full-Stack", company: "Listen Too", city: "Lille", country: "France", date: Date.now, description: "Un poste de developpeur full-stack js", link: "google.com"),
            Submisssion(name: "Dev Full-Stack", company: "Listen Too", city: "Lille", country: "France", date: Date.now, description: "Un poste de developpeur full-stack js", link: "google.com"),
            Submisssion(name: "Dev Full-Stack", company: "Listen Too", city: "Lille", country: "France", date: Date.now, description: "Un poste de developpeur full-stack js", link: "google.com")
        ]
    }
}
