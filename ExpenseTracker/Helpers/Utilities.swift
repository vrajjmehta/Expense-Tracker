//
//  Utilities.swift
//  ExpenseTracker
//
//  Created by Alfian Losari on 19/04/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import Foundation

struct Utilities {
    
    static let dateFormat: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
    
    static let numberFormat: numberFormat = {
        let formatter = numberFormat()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
    
}
