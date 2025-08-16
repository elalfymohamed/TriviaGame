//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Alfy on 15/08/2025.
//

import SwiftUI

struct AnswerRow: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var answer: Answer
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(hue: 0.71, saturation: 0.094, brightness: 0.1)

    @State private var isSelected = false
    
    
    func selectToggel() {
        if !triviaManager.answerSelected{
            isSelected = true
            triviaManager.selectAnswer(answer: answer)
        }
    }
    
    var body: some View {
        Button(action: selectToggel){
            HStack(spacing: 10) {
                       Image(systemName: "circle.fill")
                           .font(.caption)
                        Text(answer.buttonText)
                           .bold()
                           
                           
                            }
            Spacer()
            
            if isSelected {
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 45)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color("AccentColor"): .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray , radius: 5, x:0.5, y: 0.5)
        
        
    }
}

#Preview {
    AnswerRow(answer: Answer(buttonText: "text", isCorrect: false))
        .environmentObject(TriviaManager())
}
