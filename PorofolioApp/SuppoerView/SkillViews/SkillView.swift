//
//  SkillView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import SwiftUI
struct SkillView: View {
    var skill: Skill
    var width: CGFloat = 120
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 35, weight: .medium))
            Text(skill.skillName)
                .font(MontserratFont.semibold.font(size: 13.5))
                .padding(.top, 10)
        }
        .padding()
        .frame(width: width)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
                
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portofolio.skills[0])
    }
}
