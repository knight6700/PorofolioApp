//
//  AppModel.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import Foundation
class AppModel: ObservableObject {
    var portofolio: Portofolio = Portofolio(name: "Mahmoud Fares", role: "iOS Developer", description:
"iOS developer by profession. Loves iOS development, traveling, and solving problems. Also a UI / UX enthusiast.",
                                            location: "Cairo, Egypt", skills: [Skill(skillName: "iOS", image: "iphone.homebutton"),
                                                                               Skill(skillName: "Swift", image: "swift"),
                                                                               Skill(skillName: "WatchOS", image: "applewatch"),
                                                                               Skill(skillName: "UI / UX", image: "hand.tap.fill"),
                                                                               Skill(skillName: "Editing", image: "wand.and.rays")],
                                            experiences: [
                                                Experience(companyName: "Asset Technology Group", role: "iOS Developer", duration: "March 2020 - Present"),
                                                Experience(companyName: "KADABRA", role: "iOS Developer", duration: "Jan 2020 - March 2020"),
                                                Experience(companyName: "Zedix", role: "iOS Developer", duration: "Nov 2019 - Dec 2020")])
}

