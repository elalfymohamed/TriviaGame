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
            VStack(spacing: 20) {
                VStack(spacing: 20) {
                    Text("Welcome to Trivia Game! 👋🏻")
                        .customLilacTitle(size: 27)
                }
                .padding()
                
                NavigationLink{
                    FormView()
                       
                }label:{
                    PrimaryButton(text: "Let's, Start")
                }
                
            }
            .customVStackStyle()
            
        }
        .navigationBarBackButtonHidden(true)
      
    }
}

#Preview {
    ContentView()
}


