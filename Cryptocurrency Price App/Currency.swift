//
//  Currency.swift
//  Cryptocurrency Price App
//
//  Created by Adi Amoyal on 12/02/2023.
//

import Foundation

struct Currency: Decodable, Hashable {
    let id: String
    let name: String
    let symbol: String
    let price: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, symbol
        case price = "price_usd"
        case image = "nameid"
    }
}
