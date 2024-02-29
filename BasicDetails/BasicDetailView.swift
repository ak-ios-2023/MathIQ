//
//  BasicDetailView.swift
//  MathIQ
//
//  Created by Preeti NK on 14/02/24.
//

import SwiftUI

struct BasicDetailView: View {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    @State var isParent: Bool = false
    @State var isChild: Bool = false
    var body: some View {
        GeometryReader { p in
            let size = p.size
            ZStack{
                Rectangle()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .frame(width: size.width, height: 300)
                
                
                VStack {
                    Text("Welcome to MathIQ")
                        .font(.Sub_Header0)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    Text("Are you a?")
                        .font(.CTA2)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    Image("Card tile1")
                        .frame(width: 327, height: 198)
                        .onTapGesture {
                            withAnimation{isParent = true
                                isChild = false
                            }
                        }
                        .overlay(
                            isParent ? ov(p: 4) : nil
                        )
                        .padding(EdgeInsets(top: 24, leading: 0, bottom: 24, trailing: 0))
                    
                    Image("Card tile2")
                        .frame(width: 327, height: 198)
                        .onTapGesture {
                            withAnimation{ isParent = false
                                isChild = true
                            }
                        }
                        .overlay(
                            //                            /*isChild ? RoundedRectangle(cornerRadius: 20).stroke(Color.green, lineWidth: 1).*/frame(width: 327, height: 194).padding(.top, -7) : nil
                            isChild ? ov(p: 7) : nil
                        )
                        .padding(EdgeInsets(top: 24, leading: 0, bottom: 24, trailing: 0))
                    Button(action: {
                        if isChild || isParent {
                            isOnBoarding = false
                        }
                    }, label: {
                        if isChild || isParent {
                            Image("Button12")
                                .frame(width: 375, height: 75)
                        }else{
                            Image("Button2")
                                .frame(width: 375, height: 75)
                        }
                    })
                }
                .frame(width: size.width, height: size.height)
                
            }
        }
    }
}
struct ov: View {
    let p : CGFloat
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.green, lineWidth: 1)
                .padding(.top, -p)
            VStack {
                HStack{
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.green)
                        Image(systemName: "checkmark")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 9))
                }
                Spacer()
            }
        }.frame(width: 327, height: 198 - p)
        
    }
}
#Preview {
    BasicDetailView()
    //    ov()
}
