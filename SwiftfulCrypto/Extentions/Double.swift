//
//  Double.swift
//  SwiftfulCrypto
//
//  Created by Taehyung Lee on 2022/11/14.
//

import Foundation

extension Double {
    
    /// converts a double into a currency with 2-6 decimal prices
    /// ...
    /// Convert 1234.56 to $1,234.56
    /// ...
    private var currencyFormatters:NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// converts a double into a currency as a String with 2 decimal prices
    /// ...
    /// Convert 1234.56 to $1,234.56
    /// ...
    func asCurrencyWithDecimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatters.string(from: number) ?? "$0.00"
    }
    
    /// converts a double into String representation
    /// ...
    /// Convert 12.3456 to "12.34"
    /// ...
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// converts a double into String representation with percent symbol
    /// ...
    /// Convert 12.3456 to "12.34"
    /// ...
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    /// converts a double into a currency with 2-6 decimal prices
    /// ...
    /// Convert 1234.56 to $1,234.56
    /// ...
    private var currencyFormatters2:NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// converts a double into a currency as a String with 2-6 decimal prices
    /// ...
    /// Convert 1234.56 to $1,234.56
    /// ...
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatters2.string(from: number) ?? "$0.00"
    }
}
