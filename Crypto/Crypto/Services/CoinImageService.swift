//
//  CoinImageService.swift
//  Crypto
//
//  Created by Сергей Киров on 21.02.2023.
//

import Combine
import Foundation
import SwiftUI

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinImage()
    }
    
    private func getCoinImage() {
        guard let url = URL(string: coin.image) else { return }
         
         imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
             .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self]  returnedImage in
                 self?.image = returnedImage
                 self?.imageSubscription?.cancel()
             })
    }
    
}