//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Troy Parsons on 2024-04-30.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    // Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    // Extracting Color Value from tintColor String
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
}

// Sample Transaction for UI Build
var sampleTransactions: [Transaction] = [
    .init(title: "Keyboard", remarks: "Razer Product", amount: 239, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Spotify", remarks: "Spotiofy Subscription", amount: 13.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Mouse", remarks: "Razer Product", amount: 68.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Salary", remarks: "Microsoft Inc.", amount: 7400, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
]
