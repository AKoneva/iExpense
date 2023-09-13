//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Анна Перехрест  on 2023/09/13.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: ExpenseCategory
    let amount: Double
}

enum ExpenseCategory: String, Codable, CaseIterable {
    case personal
    case business
}
