//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Abdiraqiib Hassan on 06/09/2025.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""

    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                // Prancing poiny image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                // currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)

                // conversion section
                HStack {
                    // left conversion section
                    VStack {
                        //Currency
                        HStack {

                            // Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            // Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)

                        //Text field

                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)

                    }
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    // Right Conversion sign

                    VStack {
                        //Currency
                        HStack {

                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)

                            // Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)

                        //Text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)

                Spacer()

                // info button
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()

                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)

                }

            }

            //            .border(.blue)

        }
        .sheet(isPresented: $showExchangeInfo) {  // the sheet can be placed anywhere prefably top stack in this case Zstack
            ExchangeInfo()
        }
    }
}

#Preview {
    ContentView()
}
