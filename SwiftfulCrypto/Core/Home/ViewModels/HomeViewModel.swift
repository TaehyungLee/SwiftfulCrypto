//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/15.
//

import SwiftUI

class HomeViewModel:ObservableObject {
    @Published var allCoins:[CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
}
