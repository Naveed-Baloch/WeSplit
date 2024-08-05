//
//  ContentView.swift
//  WeSplit
//
//  Created by Naveed on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
            Button("Tap \(count)"){
                count += 1
            }
    }
}

#Preview {
    ContentView()
}
