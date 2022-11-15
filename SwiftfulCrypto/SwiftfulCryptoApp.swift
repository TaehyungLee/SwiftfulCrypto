//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/10/26.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
