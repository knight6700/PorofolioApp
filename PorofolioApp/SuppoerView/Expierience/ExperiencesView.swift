//
//  ExperiencesView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import SwiftUI

struct ExperiencesView: View {
    var experiences: [Experience]
    @State var isExperiences = false
    @State var isShowApp = false
    @State var id = ""
    var colomus: [GridItem] {
        return Array(repeating: GridItem(), count: experiences.count)
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(MontserratFont.bold.font(size: 20))
                    .opacity(0.9)
                Button {
                    isExperiences.toggle()
                }label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.isExperiences ? .zero : .degrees(180))
                }
                .buttonStyle(PlainButtonStyle())
            }
            if isExperiences {
                    ForEach (experiences) { experience in
                        ExperienceView(experience: experience,isPresentingApp: $isShowApp, id: id)
                            .onTapGesture {
                                debugPrint("Hello")
                                id = experience.id
                                isShowApp.toggle()
                            }
                    }
                }
        }
        
        .animation(.easeInOut)
        }
    }


struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
        ExperiencesView(experiences: AppModel().portofolio.experiences)
        }
    }
}
