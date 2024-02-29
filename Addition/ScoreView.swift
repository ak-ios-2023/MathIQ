//
//  ScoreView.swift
//  MathIQ
//
//  Created by Preeti NK on 26/02/24.
//

import SwiftUI

struct ScoreView: View {
    var score: CGFloat
    var body: some View {
        ZStack {
            Color(hex: 0xFFECD6)
                .ignoresSafeArea()
            VStack{
                ZStack(alignment: .top) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.white )
                        
                        VStack {
                            Text("Your Score")
                                .font(.CTA2)
                                .padding(.top, 54)
                            ZStack(alignment: .center){
                                ProgressCircle(progress: score, lineWidth: 20, color: .green)
                                Text("\(score * 100, specifier: "%.f")%")
                                    .font(.Header)
                                    .fontWeight(.heavy)
                                    .fontDesign(.rounded)
                                    .foregroundStyle(.green)
                                
                            }
                            .frame(width: 177, height: 177)
                            .padding(.top, 15)
                       
                            Text("You're performance is very good, you are scored \(score * 100, specifier: "%.f")% in addition subject. Keep doing the good work. All the best for your next chapter")
                                .padding()
                                .font(.body1)
                            Spacer()
                            Image("Buttonok")
                                .frame(width: 327, height: 55)
                                .padding(.bottom, 35)
                        }
                    }.padding(EdgeInsets(top: 205, leading: 20, bottom: 20, trailing: 20))
                    
                    ZStack(alignment: .top) {
                        Image("Star")
                            .frame(width: 363, height: 227)
                            .padding(.top, 33)
                        Image("2star")
                            .frame(width: 278, height: 109 )
                            .padding(.top, 57)
                    }
                    Spacer()
                    
                }
            }
        }
    }
}

#Preview {
    ScoreView(score: 0.50)
}
