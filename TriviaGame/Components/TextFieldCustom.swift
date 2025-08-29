//
//  TextFieldCustom.swift
//  TriviaGame
//
//  Created by Alfy on 16/08/2025.
//

import SwiftUI

struct TextFieldCustom: View {
    @Binding var value: String
    
    var body: some View {
            VStack(spacing: 8){
               
                TextField("Player ...", text: $value,)
                .textInputAutocapitalization(.words)
                .padding(10)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("AccentColor"), lineWidth: 1)
                     )
                 .onChange(of: value) { newValue in
                    if newValue.count > 20 {
                        value = String(newValue.prefix(20))
                    }
                }
            }
            .padding()
        }
}

//#Preview {
//    TextFieldCustom()
//}
