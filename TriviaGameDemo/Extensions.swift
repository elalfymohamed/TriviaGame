//
//  Extensions.swift
//  TriviaGameDemo
//
//  Created by Alfy on 09/08/2025.
//

import Foundation
import SwiftUI



extension Text {
    func customLilacTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
            .padding(.vertical, 0)

    }
    
  
}

extension VStack {
    func customVStackStyle() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.984313725490196, green: 0.9294117647068824, blue: 0.8470588235294118))
    }
}
