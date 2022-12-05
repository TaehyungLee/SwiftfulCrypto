//
//  MarketDataService.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/12/05.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData:MarketDataModel? = nil
//    var cancellables = Set<AnyCancellable>()
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else {
            return
        }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedGlobalData in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
            
//            .store(in: &cancellables)

    }
}
