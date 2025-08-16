//
//  TriviaManager.swift
//  TriviaGameDemo
//
//  Created by Alfy on 16/08/2025.
//

import Foundation
import SwiftUI


class  TriviaManager: ObservableObject {
    
    private(set) var trivia: [Trivia.Result] = []
    @Published private(set) var length: Int16 = 0
    @Published private(set) var index: Int = 0
    @Published private(set) var reachedEnd: Bool = false
    @Published private(set) var answerSelected: Bool = false
    @Published private(set) var question: AttributedString = ""
    @Published private(set) var answerChoices: [Answer] = []
    @Published private(set) var progress: CGFloat = 0.00
    @Published private(set) var score: Int16 = 0
    
    
    init(){
        Task.init() {
                let apiService = APIService()
                do {
                    let (results, count) = try await apiService.fetchTrivia()
                    self.trivia = results
                    self.length = Int16(count)
                    self.setQuestion()
                } catch {
                    print("Failed to load trivia: \(error)")
                }
            }
    }
    
    
    func goToNextQuestion() {
        if index + 1 < length{
            index += 1
            setQuestion()
        }else{
            reachedEnd = true
        }
    }
    
    func setQuestion() {
        answerSelected = false
        progress =  CGFloat(Double(index + 1) / Double(length * 350))
        
        if index < length{
            let currentTriviaQuestion = trivia[index]
            question = currentTriviaQuestion.formattedQuestion
            answerChoices = currentTriviaQuestion.asnwers
            
        }
    }
    
    
    func selectAnswer(answer: Answer){
        answerSelected = true
        
        if answer.isCorrect{
            score += 1
        }
    }
    
}
