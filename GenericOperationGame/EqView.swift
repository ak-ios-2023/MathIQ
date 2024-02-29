//
//  EquationView.swift
//  MathIQ
//
//  Created by Preeti NK on 28/02/24.
//

import SwiftUI

struct EquationView: View {
    @ObservedObject var game: Game
    var operation: Operation

    var body: some View {
        HStack {
            Text("\(game.a)")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .fontDesign(.rounded)
            Text(operationSymbol())
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(Color(hex: 0x864E4E))
                .fontDesign(.rounded)
            Text("\(game.b)")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .fontDesign(.rounded)
            Text(" =  ?")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .fontDesign(.rounded)
        }
    }
    private func operationSymbol() -> String {
            switch operation {
            case .addition:
                return "+"
            case .subtraction:
                return "-"
            case .multiplication:
                return "×"
            case .division:
                return "÷"
            }
        }
}
#Preview {
    EquationView(game: Game(), operation: .addition)
}

