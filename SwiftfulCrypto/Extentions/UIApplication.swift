//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/29.
//

import Foundation

import SwiftUI


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
