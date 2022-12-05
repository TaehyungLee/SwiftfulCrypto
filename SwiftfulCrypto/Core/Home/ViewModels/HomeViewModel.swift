//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/15.
//

import SwiftUI
import Combine

class HomeViewModel:ObservableObject {
    
    @Published var statistics:[StatisticModel] = []
    
    @Published var allCoins:[CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText:String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        
        /*
         Debounce는 이벤트 간에 지정된 시간이 경과된 후에만 요소를 게시합니다.
         주로 사용되는 출처는 API 검색을 할 때,
         TextField나 SearchBar에 있는 텍스트를 입력할 때마다 API 요청을 하는 것이 아니라
         사용자가 검색을 잠시 멈추는 경우에 API 요청을 하게 하기 위해 사용합니다.
         
         Throttle은 가장 최근 값 또는 첫 번째 값만을 publish하기 때문에
         첫 번째 값일 경우 -> 시간이 경과되기 전까지 첫 번째 이후에 업스트림으로 부터 publish 된 값들은 무시
         가장 최근 값일 경우  -> 시간이 경과되기 전 시점에서 마지막 요소 이전에 업스트림으로부터 publish 된 값들은 무시
         */
        // update all coins
        $searchText
            .combineLatest(coinDataService.$allCoins)
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .map(filterCoins)
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        // update market data
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink { [weak self] returnedStats in
                self?.statistics = returnedStats
            }
            .store(in: &cancellables)
        
    }
    
    private func mapGlobalMarketData(marketDataModel:MarketDataModel?) -> [StatisticModel] {
        var stats:[StatisticModel] = []
        guard let data = marketDataModel else {
            return stats
        }
        
        let marketCap = StatisticModel(title: "Market Cap", value: data.marketCap, percentageChange: data.marketCapChangePercentage24HUsd)
        let volume = StatisticModel(title: "24h Volume", value: data.volume)
        let btcDominance = StatisticModel(title: "BTC Dominance", value: data.btcDominance)
        let portFolio = StatisticModel(title: "Portfolio Value", value: "$0.00", percentageChange: 0)
        
        stats.append(contentsOf: [
            marketCap,
            volume,
            btcDominance,
            portFolio
        ])
        return stats
    }
    
    // text : searchtext, coins : coins
    private func filterCoins(text:String, coins:[CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowercasedText = text.lowercased()
        
        return coins.filter { coin -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
}
