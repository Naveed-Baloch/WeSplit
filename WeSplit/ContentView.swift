//
//  ContentView.swift
//  WeSplit
//
//  Created by Naveed on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form{
                
                Text("Form Exmaple")
                
                Section{
                    Text("Naveed Form is here")
                    Text("Naveed Form is here")
                    Text("Naveed Form is here")
                }
            }
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
