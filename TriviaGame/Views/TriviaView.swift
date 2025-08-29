//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Alfy on 16/08/2025.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            NavigationView{
                
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .customLilacTitle()
                    
                    Text("Congratulations, you completed the game! ")
                    Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    
                    
                    NavigationLink{
                        ContentView()
                    }label:{
                        PrimaryButton(text: "Play again")
                    }
                }
                .foregroundColor(Color("AccentColor"))
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("#F7F4EA"))
            }
            .navigationBarBackButtonHidden(true)

        }else{
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
