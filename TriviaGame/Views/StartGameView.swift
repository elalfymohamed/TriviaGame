//
//  StartGameView.swift
//  TriviaGame
//
//  Created by Alfy on 17/08/2025.
//

import SwiftUI

struct StartGameView: View {
    @StateObject var triviaManager = TriviaManager()
    var playerName: String

    var body: some View {
        NavigationView{

            VStack {
                Text("Trivia Game")
                    .customLilacTitle(size: 20)
                    .padding()
                    .monospaced(true)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            
                Spacer()
                
                VStack(spacing: 30){
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
                
                Spacer()
                
            }
            
            .customVStackStyle()
           
        }
        .padding(.vertical, 1)
        .navigationBarBackButtonHidden(true)
        
    }
    
}

#Preview {
    StartGameView(playerName: "Player")
}
