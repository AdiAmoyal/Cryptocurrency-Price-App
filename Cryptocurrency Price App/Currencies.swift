//
//  Currencies.swift
//  Cryptocurrency Price App
//
//  Created by Adi Amoyal on 12/02/2023.
//

import Foundation
import SwiftUI

class Currencies: ObservableObject {
    @Published var currencies: [Currency]
    
    init () {
        currencies = []
        Task { await fetchData() }
    }
    
    func fetchData() async {
        do { self.currencies = try await CoinLoreAPI.fetchCurrenciesData() }
        catch {print(error)}
    }
}
