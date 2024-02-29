//// AdditionView.swift
//
//import SwiftUI
//
//struct AdditionView: View {
//    @ObservedObject var game = Game()
//    @State private var isSelected1 = false
//    @State private var isButtonPressed = false
//    @State private var isButtonPressed2 = true
//    @State private var isSelected2 = false
//    @State private var isSelected3 = false
//    @State private var isAnswerCorrect1: Bool? = nil
//    @State private var isAnswerCorrect2: Bool? = nil
//    @State private var isAnswerCorrect3: Bool? = nil
//    @State private var showDifficultyOverlay = false
//    @State private var selectedDifficulty: Difficulty = .easy
//    @State var counter = 0
//    var body: some View {
//        if counter == 4 {
//            ScoreView(score: game.score)
//        }else {
//            ZStack {
//                ZStack {
//                    Color(hex: 0xFFECD6)
//                        .ignoresSafeArea()
//                    VStack {
//                        CustomProgressView(progress: game.score)
//                            .padding(EdgeInsets(.init(top: 15, leading: 15, bottom: 0, trailing: 15)))
//                            .frame(height: 30)
//                        EquationView(game: game)
//                            .padding(.top, 60)
//                        OptionView(number: game.o1, correctAnswer: game.a + game.b, isSelected: $isSelected1,isSelected2: $isSelected2,isSelected3: $isSelected3, isButtonPressed: $isButtonPressed, isAnswerCorrect: $isAnswerCorrect1, score: $game.score)
//                            .frame(width: 280, height: 65)
//                            .padding(.top, 50)
//                        OptionView(number: game.o2, correctAnswer: game.a + game.b, isSelected: $isSelected2,isSelected2: $isSelected1, isSelected3: $isSelected3, isButtonPressed: $isButtonPressed, isAnswerCorrect: $isAnswerCorrect2, score: $game.score)
//                            .frame(width: 280, height: 65)
//                            .padding(.top, 20)
//                        OptionView(number: game.o3, correctAnswer: game.a + game.b, isSelected: $isSelected3, isSelected2: $isSelected2, isSelected3: $isSelected1, isButtonPressed: $isButtonPressed, isAnswerCorrect: $isAnswerCorrect3, score: $game.score)
//                            .frame(width: 280, height: 65)
//                            .padding(.top, 20)
//                        
//                        Spacer()
//                        ZStack {
//                            // Existing button
//                            Button(action: {
//                                if isSelected1 || isSelected2 || isSelected3 {
//                                    withAnimation {
//                                        isButtonPressed.toggle()
//                                    }
//                                }
//                            }) {
//                                
//                                Image("Button")
//                                    .frame(width: 327, height: 55)
//                                    .padding(.bottom)
//                                //                        }
//                            }
//                            
//                            // New button
//                            if isButtonPressed {
//                                Button(action: {
//                                    game.randomNo(difficulty: selectedDifficulty)
//                                    isSelected1 = false
//                                    isSelected2 = false
//                                    isSelected3 = false
//                                    isAnswerCorrect1 = nil
//                                    isAnswerCorrect2 = nil
//                                    isAnswerCorrect3 = nil
//                                    counter = counter + 1
//                                    withAnimation {
//                                        isButtonPressed.toggle()
//                                    }
//                                    print("Second button pressed")
//                                }) {
//                                    Image("Button (1)")
//                                        .frame(width: 327, height: 55)
//                                        .padding(.bottom)
//                                }
//                            }
//                        }
//                        
//                        
//                    }
//                    
//                }
//                
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbar {
//                    ToolbarItem(placement: .principal) {
//                        Text("Addition")
//                            .font(.CTA3)
//                            .fontWeight(.bold)
//                    }
//                }
//                .blur(radius: showDifficultyOverlay ? 20 : 0)
//                .onAppear {
//                    //                game.randomNo()
//                    counter = 0
//                    game.score = 0
//                    showDifficultyOverlay = true
//                    
//                }
//                if showDifficultyOverlay {
//                    DifficultySelectionView(selectedDifficulty: $selectedDifficulty, onDismiss: {
//                        game.randomNo(difficulty: selectedDifficulty)
//                        showDifficultyOverlay = false
//                    })
//    
//                }
//            }
//        }
//    }
//}
//
//
//
//
//
//struct AdditionView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdditionView()
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////                Button(action: {
////
////                    if isSelected1 || isSelected2 || isSelected3 {
////                        isButtonPressed.toggle()
//////                        if isButtonPressed {
//////                            isButtonPressed2.toggle()
//////                        }
//////                        if isButtonPressed == false && isButtonPressed2 == false {
//////
//////                                game.randomNo()
//////                                isSelected1 = false
//////                                isSelected2 = false
//////                                isSelected3 = false
//////                            }
////                    }
////                }) {
//////                    if isButtonPressed {
//////                        Image("Button (1)")
//////                            .frame(width: 327, height: 55)
//////                            .padding(.bottom)
//////                    } else {
////                        Image("Button")
////                            .frame(width: 327, height: 55)
////                            .padding(.bottom)
//////                    }
////                }
//
//
