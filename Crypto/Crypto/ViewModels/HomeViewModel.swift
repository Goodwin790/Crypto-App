//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Сергей Киров on 16.02.2023.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        dataService.$allCoins
            .sink {[weak self] returnedCoins in
                guard let self = self else { return }
                self.allCoins = returnedCoins
                self.portfolioCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
