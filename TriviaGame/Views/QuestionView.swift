//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
            VStack{
                VStack(spacing: 40){
                    HStack{
                        Text("Trivia Game")
                            .customLilacTitle(size: 20)
                            .monospaced(true)
                        
                        Spacer()
                        
                        Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.heavy)
                    }
                    
                    ProgressBar(progress: triviaManager.progress)
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text(triviaManager.question)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.gray)
                        
                        ForEach(triviaManager.answerChoices, id: \.id){
                            answer in
                            AnswerRow(answer: answer)
                                .environmentObject(triviaManager)
                        }
                        
                    }
                    
                    Button{
                        triviaManager.goToNextQuestion()
                    } label: {
                        PrimaryButton(text: "Next", backgroud: triviaManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.543, opacity: 0.327))
                    }
                    .disabled(!triviaManager.answerSelected)
                    
                    Spacer()
                }
                .padding()
                .padding(.vertical, 40)
                
            }
            .customVStackStyle()
            .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
