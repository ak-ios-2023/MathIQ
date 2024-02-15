//
//  FontExtension.swift
//  MathIQ
//
//  Created by Preeti NK on 13/02/24.
//

import Foundation
import SwiftUI

extension Font {
    static let Header  = Font.system(size: 36, weight: .heavy)
    static let Sub_Header0  = Font.system(size: 32, weight: .medium)
    static let Sub_Header1 = Font.system(size: 20, weight: .regular)
    static let body1 = Font.system(size: 16, weight: .regular)
    static let body2 = Font.system(size: 14, weight: .regular)
    static let CTA1 = Font.system(size: 28, weight: .light)
    static let CTA2 = Font.system(size: 22, weight: .regular)
    static let CTA3 = Font.system(size: 20, weight: .regular)
    static let Label = Font.system(size: 12, weight: .regular)
    static let inputText = Font.system(size: 14, weight: .regular)

}

import SwiftUI

extension Color {
    init(hex: UInt32, alpha: Double = 1) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
