//
//  FormView.swift
//  TriviaGame
//
//  Created by Alfy on 17/08/2025.
//

import SwiftUI

struct FormView: View {
    @State var playerName: String = ""
    
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
                
                
               
                    PrimaryButton(text: "Go")
                

                
            }
            .customVStackStyle()
        }
    }
}

#Preview {
    FormView()
}
