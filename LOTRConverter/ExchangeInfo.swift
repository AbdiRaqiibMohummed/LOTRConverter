//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Abdiraqiib Hassan on 08/09/2025.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                    .padding(20)
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor quam id massa faucibus dignissim. Nullam eget metus id nisl malesuada condimentum. Nam viverra fringilla erat, ut fermentum nunc feugiat eu.Nullam eget metus id nisl malesuada condimentum. Nam viverra fringilla erat, ut fermentum nunc feugiat eu."
                )
                
                .font(.title3)
                .padding()

                HStack {
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }

                HStack {
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }

                HStack {
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }

                HStack {
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("1 Gold Piece = 4 Gold Pennies")
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)

                }
                
                Spacer()
                
                Button ("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
            
        }
        
    }
}

#Preview {
    ExchangeInfo()
}
