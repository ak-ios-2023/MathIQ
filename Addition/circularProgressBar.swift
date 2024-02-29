//
//  circularProgressBar.swift
//  MathIQ
//
//  Created by Preeti NK on 26/02/24.
//
import SwiftUI

struct ProgressCircle: View {
    var progress: CGFloat
    var lineWidth: CGFloat
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
            let radius = (size - lineWidth) / 2
            
            ZStack {
                // Gray arc limited to match start and end angles of blue progress arc
                Path { path in
                    path.addArc(center: center,
                                radius: radius,
                                startAngle: Angle(degrees: 140),
                                endAngle: Angle(degrees: 140 + Double(1) * 260),
                                clockwise: false)
                }
                .stroke(Color.gray.opacity(0.2), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                
                // Blue progress arc
                Path { path in
                    path.addArc(center: center,
                                radius: radius,
                                startAngle: Angle(degrees: 140),
                                endAngle: Angle(degrees: 140 + Double(progress) * 260),
                                clockwise: false)
                }
                .stroke(color, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            }
            .frame(width: size, height: size)
        }
    }
}


struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle(progress: 0.5, lineWidth: 20, color: .blue)
            .frame(width: 150, height: 150)
    }
}
