//
//  Skill.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import Foundation
struct Skill: Identifiable {
    var id: String = UUID().uuidString
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String = UUID().uuidString
    let companyName: String
    let role: String
    let duration: String
    var showApps: Bool = false
}

struct Portofolio {
    let name: String
    let role: String
    let description: String
    let location: String
    let skills: [Skill]
    let experiences: [Experience]
}

struct Applications: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var image: String
    var link: String
}
