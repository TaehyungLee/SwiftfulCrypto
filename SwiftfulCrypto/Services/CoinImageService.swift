//
//  CoinImageService.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/28.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    @Published var image:UIImage? = nil
    
    private let fileManager = LocalFileManager.instance
    private var imageSubscription:AnyCancellable?
    private let coin:CoinModel
    
    private let folderName = "coin_image"
    private let imageName:String
    
    init(coin:CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName) {
            image = savedImage
        }else{
            downloadCoinImage()
        }
    }
    
    private func downloadCoinImage() {
        guard let url = URL(string: self.coin.image) else {
            return
        }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedImage in
                guard let self = self, let downloadImage = returnedImage else { return }
                self.image = returnedImage
                self.imageSubscription?.cancel()
                
                self.fileManager.saveImage(image: downloadImage, imageName: self.imageName, folderName: self.folderName)
            })
    }
}
