//
//  HomePageView.swift
//  MathIQ
//
//  Created by Preeti NK on 20/02/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: 0xFFECD6)
                    .ignoresSafeArea()
                ScrollView {
                    //                    HStack {
                    //                        Text("Hello!")
                    //                            .font(.CTA2)
                    //                            .fontWeight(.bold)
                    //                            .fontDesign(.rounded)
                    //                        Spacer()
                    //                        Image("Avatar")
                    //                    }.padding(.horizontal, 30)
                    Image("Nav_Join test")
                        .frame(width: 327, height: 104)
                        .padding(.top, 24)
                    HStack (alignment: .center, spacing: 8){
                        Image("Group 239006")
                            .frame(width: 50,height: 50)
                        Image("Group 239007")
                            .frame(width: 50,height: 50)
                        Image("Game")
                            .frame(width: 50,height: 50)
                    }.padding(.top, 15)
                    HStack {
                        Text("Let’s Start Learning")
                            .font(.CTA2)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .padding(.leading, 30)
                        Spacer()
                    }.padding(.top, 20)
                    NavigationLink(destination: GameView(selectedOperation: .addition), label: {
                        Image("Addition")
                            .frame(width: 327, height: 104)
                            .padding(.top)
                    })
                    NavigationLink(destination: GameView(selectedOperation: .subtraction), label: {
                        Image("Subtraction")
                            .frame(width: 327, height: 104)
                            .padding(.top)
                    })
                    NavigationLink(destination: GameView(selectedOperation: .multiplication), label: {
                        Image("Multiplication")
                            .frame(width: 327, height: 104)
                            .padding(.top)
                    })
                    NavigationLink(destination: GameView(selectedOperation: .division), label: {
                        Image("Division")
                            .frame(width: 327, height: 104)
                            .padding(.top)
                    })
                }.padding(.all, 0)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Hello!")
                            .font(.CTA2)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                        Spacer()
                        Image("Avatar")
                    }.padding(.horizontal, 30)
                }
            }
            
        }
    }
}

#Preview {
    HomePageView()
}
