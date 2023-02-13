//
//  CoinLoreAPI.swift
//  Cryptocurrency Price App
//
//  Created by Adi Amoyal on 12/02/2023.
//

import Foundation

struct CoinLoreAPI {
    static private let endpoint = URL(string: "https://api.coinlore.net/api/tickers/")
    
    static func fetchCurrenciesData() async throws -> [Currency] {
        var currencies: [Currency] = []
        var apiReq = URLRequest(url: self.endpoint!)
        apiReq.httpMethod = "GET"

        let (data, _) = try await URLSession.shared.data(for: apiReq)
        let currenciesData = try JSONDecoder().decode(CurrenciesData.self, from: data)
        currencies = currenciesData.data.map { currency in
            Currency(id: currency.id, name: currency.name, symbol: currency.symbol, price: currency.price, image: currency.image)
        }

        return currencies
    }
}
