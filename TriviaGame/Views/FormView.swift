//
//  FormView.swift
//  TriviaGame
//
//  Created by Alfy on 17/08/2025.
//

import SwiftUI

enum Route: Hashable {
    case startGame
}

struct FormView: View {
    @State var playerName: String = ""
    @State private var isGameStarted: Bool = false
    
    func storePlayerName(){
        UserDefaults.standard.set(playerName, forKey: "playerName")
    }
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 10){
                
                Text("First, Player Name 🔫")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color("AccentColor"))
                    
                
                TextFieldCustom(value: $playerName)
                
                
                NavigationLink(
                    destination: StartGameView(playerName: playerName),
                                   isActive: $isGameStarted
                               ) {
                                   EmptyView()
                               }

                
                Button{
                    guard !playerName.isEmpty else {return}
                    
                    storePlayerName()
                    isGameStarted = true
                    
                }label:{
                    PrimaryButton(text: "Submit",backgroud: !playerName.isEmpty ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.543, opacity: 0.327))
                }
                .disabled(playerName.isEmpty)
                .accessibilityLabel("Submit player name")
                
                    
            }
            .customVStackStyle()
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    FormView()
}
