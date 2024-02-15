//
//  OnBoardingView.swift
//  MathIQ
//
//  Created by Preeti NK on 13/02/24.
//

import SwiftUI

struct OnBoardingView: View {
    var onBoardings = onBoardingData
    @State var selected = 0
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ZStack {
                Image("onboardingb")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: size.width, height: size.height)
                LinearGradient(gradient: Gradient(colors: [Color(hex: "7FAA3E") , Color(hex: "316508")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .opacity(0.85)
                    
                TabView(selection: $selected){
                    ForEach(Array(onBoardings.enumerated()), id: \.element.id){ index, boarding in
                        OnBoardingCardView(onbarding: boarding, selected: $selected)
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .ignoresSafeArea()
            }                    .frame(width: size.width, height: size.height)

        }
    }
}

#Preview {
    OnBoardingView()
}
