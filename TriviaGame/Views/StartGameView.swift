//
//  StartGameView.swift
//  TriviaGame
//
//  Created by Alfy on 17/08/2025.
//

import SwiftUI

struct StartGameView: View {
    @StateObject var triviaManager = TriviaManager()
    private let playerName:String = UserDefaults.standard.string(forKey: "playerName") ?? "player"

    var body: some View {
        NavigationView{
            VStack(spacing: 40) {
              
                    Text("Trivia Game")
                        .customLilacTitle(size: 20)
                        .padding()
                        .monospaced(true)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                
               
                
                VStack(spacing: 20) {
                    Text("Hi \(playerName) 👋🏻")
                        .customLilacTitle()
                    
                   
                    
                    Text("Are you ready to test out your trivia skills?")
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .foregroundColor(Color("AccentColor"))
                        .padding(.vertical, 0)
                    
                }
                
                NavigationLink{
                    TriviaView()
                        .environmentObject(triviaManager)
                }label:{
                    PrimaryButton(text: "Let's Go!")
                }
                
            }
            .customVStackStyle()
           
        }
        .navigationBarHidden(true)
    }
    
}

#Preview {
    StartGameView()
}
