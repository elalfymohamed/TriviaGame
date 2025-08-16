//
//  TriviaView.swift
//  TriviaGameDemo
//
//  Created by Alfy on 16/08/2025.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .customLilacTitle()
                
                Text("Congratulations, you completed the game! ")
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                
//                Button{
//
//                }label:{
//                    PrimaryButton(text: "Play again")
//                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647068824, blue: 0.8470588235294118))
            .navigationBarHidden(true)

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
