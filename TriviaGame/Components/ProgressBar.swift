//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by Alfy on 09/08/2025.
//

import SwiftUI

struct ProgressBar: View {
    var progress: Double
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 5)
                .foregroundColor(Color(hue:1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 5)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
                .animation(.easeInOut, value: progress)
               
        }
    }
}

#Preview {
    ProgressBar(progress: 10)
}
