//
//  ExperienceView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import SwiftUI

struct ExperienceView: View {
     var experience: Experience
   @Binding var isPresentingApp: Bool
     var id: String
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                VStack(alignment: .leading) {
                    Text(experience.role)
                        .font(MontserratFont.semibold.font(size: 18.5))
                    Text(experience.companyName)
                        .font(MontserratFont.medium.font(size: 16.5))
                        .opacity(0.75)
                        .padding(.top, 4)
                    Text(experience.duration)
                        .font(MontserratFont.mediumItalic.font(size: 16))
                        .opacity(0.45)
                        .padding(.top, 14)
                    if isPresentingApp && id == experience.id {
                        Text("Banque Misr Application")
                            .font(MontserratFont.mediumItalic.font(size: 16))
                            .opacity(0.45)
                            .padding(.top, 14)
                            .animation(.linear)
                    }
                }
            }.padding(.top, 8)
        }
        .onAppear {
        }
        .fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperienceView(experience: AppModel().portofolio.experiences[0], isPresentingApp: .constant(false), id: "")
        }
    }
}
