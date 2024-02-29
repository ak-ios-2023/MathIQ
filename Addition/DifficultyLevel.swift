//
//  DifficultyLevel.swift
//  MathIQ
//
//  Created by Preeti NK on 27/02/24.
//

import SwiftUI

struct DifficultySelectionView: View {
    @Binding var selectedDifficulty: Difficulty
    var onDismiss: () -> Void
    
    var body: some View {
        VStack {
            Text("Select Difficulty Level")
                .font(.title2)
                .fontWeight(.semibold)

            Button(action: {
                selectedDifficulty = .easy
                onDismiss()
            }) {
                Text("Easy")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.top, 15)

            Button(action: {
                selectedDifficulty = .medium
                onDismiss()
            }) {
                Text("Medium")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .padding(.top, 10)

            Button(action: {
                selectedDifficulty = .hard
                onDismiss()
            }) {
                Text("Hard")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)
            }
            .padding(.top, 10)

        }.frame(width: 300, height: 300)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)

    }
}

#Preview {
    DifficultySelectionView(selectedDifficulty: .constant(.easy), onDismiss: {})
}
