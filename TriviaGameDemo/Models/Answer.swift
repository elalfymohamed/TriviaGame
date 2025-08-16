//
//  Answer.swift
//  TriviaGameDemo
//
//  Created by Alfy on 15/08/2025.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var buttonText: AttributedString
    var isCorrect: Bool
}
