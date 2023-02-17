//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Сергей Киров on 16.02.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(DeveloperPreview.instance.coin)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
