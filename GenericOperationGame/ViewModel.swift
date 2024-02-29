//
//  ViewModel.swift
//  MathIQ
//
//  Created by Preeti NK on 28/02/24.
//

import Foundation

enum Operation {
    case addition
    case subtraction
    case multiplication
    case division
    
    func performOperation(lhs: Int, rhs: Int) -> Int {
        switch self {
        case .addition:
            return lhs + rhs
        case .subtraction:
            return lhs - rhs
        case .multiplication:
            return lhs * rhs
        case .division:
            return lhs / rhs
        }
    }
}

enum Difficulty {
    case easy
    case medium
    case hard
    
    var range: ClosedRange<Int> {
        switch self {
        case .easy:
            return 1...100
        case .medium:
            return 100...200
        case .hard:
            return 200...500
        }
    }
}

class Game: ObservableObject {
    
    @Published var score: CGFloat = 0
    @Published var a: Int = 0
    @Published var b: Int = 0
    @Published var o1: Int = 0
    @Published var o2: Int = 0
    @Published var o3: Int = 0
    @Published var answer: Int = 0
    
    func randomNo(difficulty: Difficulty, operation: Operation) {
        a = Int.random(in: difficulty.range)
        switch operation {
        case .subtraction:
            b = Int.random(in: 1...a)
        case .division:
            var factorsOfA: [Int] = []
            for factor in 1...a {
                if a % factor == 0 {
                    factorsOfA.append(factor)
                }
            }
            b = factorsOfA.randomElement() ?? 1
        default:
            b = Int.random(in: difficulty.range)
        }
        
        answer = operation.performOperation(lhs: a, rhs: b)
        let options = generateOptions(difficulty: difficulty, operation: operation)
        o1 = options[0]
        o2 = options[1]
        o3 = options[2]
    }
    
    private func generateOptions(difficulty: Difficulty, operation: Operation) -> [Int] {
        var options: [Int] = []
        options.append(answer)
        while options.count < 3 {
            
            let option =  answer - Int.random(in: 0...answer)
            let option1 =  answer + Int.random(in: 0...answer)
            if !options.contains(option) {
                options.append(option)
            }
            if !options.contains(option1) && options.count < 4{
                options.append(option1)
            }
        }
        return options.shuffled()
    }
}
