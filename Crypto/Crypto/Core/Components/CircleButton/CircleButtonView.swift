//
//  CircleButtonView.swift
//  Crypto
//
//  Created by Сергей Киров on 16.02.2023.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
      Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(.theme.accent)
            .frame(width: 50, height: 50)
            .background(
            Circle()
                .foregroundColor(.theme.background))
                .shadow(
                    color: .theme.accent.opacity(0.25),
                    radius: 10, x: 0, y: 0)
                .padding()
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            CircleButtonView(iconName: "plus")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
