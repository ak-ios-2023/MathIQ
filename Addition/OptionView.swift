//
//  OptionView.swift
//  MathIQ
//
//  Created by Preeti NK on 21/02/24.
//

import SwiftUI

struct OptionView: View {
    var number: Int
    var correctAnswer: Int
    @Binding var isSelected: Bool
    @Binding var isSelected2: Bool
    @Binding var isSelected3: Bool
    
    @Binding var isButtonPressed: Bool
    @Binding var isAnswerCorrect: Bool?
    
    @Binding var score: CGFloat
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 280, height: 65)
                    .foregroundColor(colorForOption)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(strokeColor, lineWidth: 4)
                    )
                
                Text("\(number)")
                    .font(.CTA1)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        .frame(height: 65)
        .onTapGesture {
            if isSelected {
                // Deselect if already selected
                isSelected.toggle()
            } else {
                // Select if not selected
                isSelected = true
                isSelected2 = false
                isSelected3 = false
                
            }
            
        }
        .onChange(of: isButtonPressed) {
            // Reset button state when it's toggled
            if isSelected {
                isAnswerCorrect = (number == correctAnswer)
                if number == correctAnswer {
                    score += 0.25
                }
                print(number, correctAnswer)
            }
            
            
        }
    }
    
    private var colorForOption: Color {
        if isSelected {
            guard let isChecked = isAnswerCorrect else {
                return Color(hex: 0x3396F2)
            }
            return isChecked ? Color.green : Color.red
        } else {
            return Color(hex: 0x864E4E)
        }
    }
    
    private var strokeColor: Color {
        if isSelected {
            guard let isChecked = isAnswerCorrect else {
                return Color(hex: 0x6AB2F5)
            }
            return isChecked ? Color.green : Color.red
        } else {
            return Color(hex: 0x9E5959)
        }
    }
}

//#Preview {
//    OptionView(number: 5, isButtonPressed: .constant(true))
//}
