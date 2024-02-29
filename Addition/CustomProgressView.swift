//
//  CustomProgressView.swift
//  MathIQ
//
//  Created by Preeti NK on 21/02/24.
//
import SwiftUI

struct CustomProgressView: View {
  let progress: CGFloat

  var body: some View {
      HStack(alignment: .top ){
    GeometryReader { geometry in
 
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: 15)
                    .opacity(0.1)
                    .foregroundColor(.gray)
                    .cornerRadius(5)
                
                Rectangle()
                    .frame(
                        width: min(progress * geometry.size.width,
                                   geometry.size.width),
                        height: 15
                    )
                    .foregroundColor(.green)
                    .cornerRadius(5)
                
            }
            
        }
        Text("\(progress  * 4, specifier: "%.f")/4")
            .font(.footnote)
    }
  }
}


#Preview {
    CustomProgressView(progress: 0.5)
}
