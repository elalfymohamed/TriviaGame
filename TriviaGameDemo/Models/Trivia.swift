//
//  Trivia.swift
//  TriviaGameDemo
//
//  Created by Alfy on 15/08/2025.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID{
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Error setting formatted question \(error)")
                return ""
            }
        }
        
        var asnwers: [Answer]{
            
            do {
                let correct = [Answer(buttonText: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrct = try incorrectAnswers.map{
                    answer in Answer(buttonText: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswer = correct + incorrct
                
                return allAnswer.shuffled()
                
            } catch {
                print("Error stting answers \(error)")
                return []
            }
            
        }
        
    }
}
