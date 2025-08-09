//
//  ContentView.swift
//  TriviaGameDemo
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Traivia Game")
                    .customLilacTitle()
                    .monospaced(true)
                
                Text("Are you ready to test out your trivia skills?")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .foregroundColor(Color("AccentColor"))
                    .padding(.vertical, 0)
                    
                    

            }
            
            
            PrimaryButton(text: "Let's Go!")
        }
        .customVStackStyle()
      
    }
}

#Preview {
    ContentView()
}
