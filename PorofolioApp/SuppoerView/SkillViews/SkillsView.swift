//
//  SkillsView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import SwiftUI

struct SkillsView: View {
    var skills: [Skill]
    var width: CGFloat
    @State var showSkills: Bool = true
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(MontserratFont.bold.font(size: 20))
                    .opacity(0.9)
                Button {
                    showSkills.toggle()
                }label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
                
                
            }
            if showSkills {
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()],alignment: .center, spacing: 20) {
                    ForEach (skills) { skill in
                        SkillView(skill: skill, width: width/3 - 30)
                    }
                }
                .padding(.top, 10)
            }
        }                            .animation(.easeInOut)
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(skills: AppModel().portofolio.skills, width: 400)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
