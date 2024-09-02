//
//  HomeViewModel.swift
//  SwiftUICrypto
//
//  Created by itserviceimac on 02/09/24.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []
    
    init() {
        allCoins.append(Coin.example)
        allCoins.append(Coin.example)
        allCoins.append(Coin.example)
        allCoins.append(Coin.example)
        allCoins.append(Coin.example)
        allCoins.append(Coin.example)
        
        portfolioCoins.append(Coin.example)
        portfolioCoins.append(Coin.example)
    }
}
