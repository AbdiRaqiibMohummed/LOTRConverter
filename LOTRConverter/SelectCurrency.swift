//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Abdiraqiib Hassan on 08/09/2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    let currencyImages: [ImageResource] = [
        .copperpenny,
        .silverpenny,
        .goldpenny,
        .goldpiece,
        .silverpiece,
        
    ]

    let currencyNames = [
        "Copper Penny", "Silver Penny", "Gold Penny", "Gold Piece", "Silver Piece",
    ]

    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)

                //Currency Icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<currencyImages.count, id: \.self) { index in
                        CurrencyIcon(
                            currencyImage: currencyImages[index],
                            currencyName: currencyNames[index]
                        )
                    }
                }

                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)

                // Done Button

                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()

            }
            .padding()
            .multilineTextAlignment(.center)  // this basically centers the text in the whole vstack
        }
    }
}

#Preview {
    SelectCurrency()
}
