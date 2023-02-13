//
//  CurrencyCardView.swift
//  Cryptocurrency Price App
//
//  Created by Adi Amoyal on 13/02/2023.
//

import SwiftUI

struct CurrencyCardView: View {
    var currency: Currency
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: "https://www.coinlore.com/img/\(currency.image).webp"),
                content: { image in
                    image.resizable()
                    .scaledToFit()
                    .frame(maxWidth: 20, maxHeight: 20)
                },
                placeholder: { ProgressView() }
            )
            Text("\(currency.name)")
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("\(currency.symbol)")
                .fontWeight(.light)
            
            Spacer()
            
            Text("$\(currency.price)")
                .fontWeight(.semibold)
        }
        .font(.body)
        .padding()
        .background(Color(red: 0.9176470588235294, green: 0.8784313725490196, blue: 0.8549019607843137, opacity: 0.78))
        .cornerRadius(13)
    }
}

//struct CurrencyCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CurrencyCardView()
//    }
//}
