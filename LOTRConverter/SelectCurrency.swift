//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Abdiraqiib Hassan on 08/09/2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)

                //Currency Icons starting currency left currency
                IconGrid(currency: $topCurrency)

                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                //Currency Convert to right currency
                
                IconGrid(currency: $bottomCurrency)
                
            
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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny
    
    SelectCurrency(topCurrency: $topCurrency , bottomCurrency: $bottomCurrency)
}
