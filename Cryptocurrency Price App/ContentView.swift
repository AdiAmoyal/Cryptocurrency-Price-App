//
//  ContentView.swift
//  Cryptocurrency Price App
//
//  Created by Adi Amoyal on 12/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var currencies = Currencies()
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.969, green: 0.9607843137254902, blue: 0.9215686274509803)/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text("Cryptocurrencies")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color(red: 0.6274509803921569, green: 0.7647058823529411, blue: 0.8235294117647058))
                
                Spacer()
                
                HStack {
                    Text("Name")
                    Spacer()
                    Text("Symbol")
                    Spacer()
                    Text("Price (US$)")
                }
                .padding([.leading, .trailing, .top])
                .font(.callout)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200))]) {
                        ForEach(self.currencies.currencies, id: \.self) { currency in
                            CurrencyCardView(currency: currency)
                        }
                    }
                }
            }
            .padding([.leading, .trailing])
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
