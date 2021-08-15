//
//  ContentView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 10/08/2021.
//

import SwiftUI

struct PortfolioView: View {
    var appModel = AppModel()
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            ScrollView (.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    HeaderView(appModel: appModel)
                    SkillsView(skills: appModel.portofolio.skills, width: 400)
                    ExperiencesView(experiences: appModel.portofolio.experiences)
                }
                .padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
