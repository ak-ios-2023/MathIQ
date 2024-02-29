//import Foundation
//
//enum Difficulty {
//    case easy
//    case medium
//    case hard
//
//    var range: ClosedRange<Int> {
//        switch self {
//        case .easy:
//            return 0...100
//        case .medium:
//            return 0...200
//        case .hard:
//            return 0...500
//        }
//    }
//}
//
//class Game: ObservableObject {
//    @Published var score: CGFloat = 0
//    @Published var a: Int = 0
//    @Published var b: Int = 0
//    @Published var o1: Int = 0
//    @Published var o2: Int = 0
//    @Published var o3: Int = 0
//
//    private var answer: Int = 0
//
//    func randomNo(difficulty: Difficulty) {
//        a = Int.random(in: difficulty.range)
//        b = Int.random(in: difficulty.range)
//        answer = a + b
//        let options = generateOptions(difficulty: difficulty)
//        o1 = options[0]
//        o2 = options[1]
//        o3 = options[2]
//    }
//
//    private func generateOptions(difficulty: Difficulty) -> [Int] {
//        var options = [answer]
//        while options.count < 3 {
//            let option = Int.random(in: difficulty.range)
//            if option != answer && !options.contains(option) {
//                options.append(option)
//            }
//        }
//        return options.shuffled()
//    }
//}
