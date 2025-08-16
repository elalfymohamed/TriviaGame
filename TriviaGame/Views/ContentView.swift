//
//  ContentView.swift
//  TriviaGame
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Welcome to Trivia Game! 👋🏻")
                        .customLilacTitle()
                }
                
                NavigationLink{
                    StartGameView()
                       
                }label:{
                    PrimaryButton(text: "Next")
                }
                
            }
            .customVStackStyle()
        }
      
    }
}

#Preview {
    ContentView()
}


