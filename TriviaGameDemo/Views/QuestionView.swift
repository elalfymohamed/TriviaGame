//
//  QuestionView.swift
//  TriviaGameDemo
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack{
                VStack(spacing: 40){
                    HStack{
                        Text("Trivia Game")
                            .customLilacTitle()
                            .monospaced(true)
                        
                        Spacer()
                        
                        Text("1 out of 10")
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.heavy)
                    }
                    
                    ProgressBar(progress: 10)
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Which od the following countries is within the Eurozone but outside os the Schengen Area?")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.gray)
                            
                    }
                }
                .padding()
                
            

        }
        .customVStackStyle()
    }
}

#Preview {
    QuestionView()
}
