//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Abdiraqiib Hassan on 08/09/2025.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(text)

            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece , text: "1 Silver piece = 4 Silver Pennies", rightImage: .silverpenny)
}

