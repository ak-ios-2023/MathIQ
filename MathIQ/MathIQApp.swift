//
//  MathIQApp.swift
//  MathIQ
//
//  Created by Preeti NK on 12/02/24.
//

import SwiftUI

@main
struct MathIQApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    var body: some Scene {
        
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            }else {
                ContentView().onAppear(perform: {
                    Thread.sleep(forTimeInterval: 0.01)
                })
            }
        }
    }
    
}


