//
//  PrimaryButton.swift
//  TriviaGameDemo
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var backgroud: Color = Color("AccentColor")
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(backgroud)
            .cornerRadius(30)
            .shadow(radius: 10)
            .font(.system(size: 17, weight: .bold))
            
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
