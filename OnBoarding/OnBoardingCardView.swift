//
//  OnBoardingView.swift
//  MathIQ
//
//  Created by Preeti NK on 13/02/24.
//

import SwiftUI

struct OnBoardingCardView: View {
    var onbarding: OnboardingModel
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    @Binding var selected: Int
    @State var selectUserType: Bool = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    selected = onBoardingData.count - 1
                }, label: {
                    Text("skip")
                    
                        .font(.CTA3)
                        .foregroundColor(.white)
                }) .padding(EdgeInsets(.init(top: 30, leading: 0, bottom: 0, trailing: 10)))
            }
            Spacer()
            Image("\(onbarding.cImage)")
                .resizable()
                .frame(width: 215.54, height: 275)
            Text("\(onbarding.title)")
                .font(.Header)
                .fontDesign(.rounded)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            Text("\(onbarding.headline)")
                .font(.CTA1)
                .fontDesign(.rounded)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Button(action: {
                if selected < onBoardingData.count - 1 {
                    selected = selected + 1
                    //                            print(selected)
                }else if selected == onBoardingData.count - 1 {
                    //                    isOnBoarding = false
                    //                        print("DD")
                    selectUserType = true
                }
            }, label: {
                if selected == onBoardingData.count - 1 {
                    ZStack {
                        Color(hex: 0xEC7B29)
                            .frame( width: 327, height: 55)
                            .cornerRadius(10)
                        Text("Start")
                            .font(.CTA2)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                    }
                }else {
                    Image("Button1")
                        .frame( width: 327, height: 55)
                }
            })
        }.padding()
            .padding(.bottom, 20)
            .edgesIgnoringSafeArea(.top)
            .fullScreenCover(isPresented: $selectUserType, content: {
                BasicDetailView()
            })
    }
}

//#Preview {
//    OnBoardingCardView(onbarding: OnboardingModel(bImage: "onboardingb", cImage: "onboarding1.2", title: "fdnfkjnsk", headline: "vsnfjnsd"), selected: .constant(1))
//}
//
