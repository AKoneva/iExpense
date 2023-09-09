//
//  ContentView.swift
//  iExpense
//
//  Created by Анна Перехрест  on 2023/09/09.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User()

        var body: some View {
            VStack {
                Text("Your name is \(user.firstName) \(user.lastName).")

                TextField("First name", text: $user.firstName)
                TextField("Last name", text: $user.lastName)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
