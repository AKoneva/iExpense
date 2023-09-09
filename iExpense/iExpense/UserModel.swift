//
//  UserModel.swift
//  iExpense
//
//  Created by Анна Перехрест  on 2023/09/09.
//

import Foundation

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}
