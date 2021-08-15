//
//  HeaderView.swift
//  PorofolioApp
//
//  Created by Mahmoud Fares on 11/08/2021.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel:AppModel
    @State var isShowingSafari = false
    var body: some View {
        VStack {
            Image("myImage")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(5)
                .background(Circle()
                                .opacity(0.7)
                                .shadow(radius: 5)
                )
            Text(appModel.portofolio.name)
                .font(MontserratFont.bold.font(size: 15))
                .padding(.top, 8)
            Text(appModel.portofolio.role)
                .font(MontserratFont.mediumItalic.font(size: 18))
                .foregroundColor(.gray)
                .padding(.top, -3)
            VStack (alignment: .leading, spacing: 20){
                HStack {
                    Image(systemName: "location.fill")
                        .font(.system(size: 18,weight: .semibold))
                    Text(appModel.portofolio.location)
                        .font(MontserratFont.medium.font(size: 15))
                    Image(systemName: "phone.fill")
                    Text("201555929770")
                        .font(MontserratFont.medium.font(size: 15))

                }
                .padding(.top, 10)
                .opacity(0.45)
                
                HStack {
                    Button {
                        isShowingSafari.toggle()
                    }label: {
                        Label(
                            title: { Text("LinkedIn") },
                            icon: { Image(systemName: "link") })
                            .foregroundColor(.secondary)
                    }
                    .sheet(isPresented: $isShowingSafari, content: {
                        let url = URL(string: "https://www.linkedin.com/in/mahmoud-fariss-712667154/")
                        SafariView(url: url!)
                    })
                }
            }
            
            Text(appModel.portofolio.description)
//                .font(Montserrat.italic.font(size: 16))
                .opacity(0.7)
                .padding(.top)
                .lineSpacing(5)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
