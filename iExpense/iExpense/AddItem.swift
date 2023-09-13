//
//  AddItem.swift
//  iExpense
//
//  Created by Анна Перехрест  on 2023/09/13.
//

import SwiftUI

struct AddItem: View {
    @ObservedObject var expenses: Expenses
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var selectedType = ExpenseCategory.personal
    @State private var amount = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $selectedType) {
                    ForEach(ExpenseCategory.allCases, id: \.self) {expenseType in
                        Text(expenseType.rawValue.capitalized)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? ("USD")))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: selectedType, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
    }
}

struct AddItem_Previews: PreviewProvider {
    static var previews: some View {
        AddItem(expenses: Expenses())
    }
}
