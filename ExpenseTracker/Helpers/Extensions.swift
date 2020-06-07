//
//  Extensions.swift
//  ExpenseTracker

import Foundation

extension Double {
    
    var formattedCurrencyText: String {
        return Utilities.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
    
}
