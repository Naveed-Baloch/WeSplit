//
//  ContentView.swift
//  WeSplit
//
//  Created by Naveed on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showError = ""
    var body: some View {
        NavigationStack{
            Form{
                
                Section {
                    Text("Email")
                    TextField("enter email here!", text: $email)
                    Text("Password")
                    TextField("enter password here!", text: $password)
                    
                    if(!showError.isEmpty){
                        Text(showError)
                    }
                }
                
                Button("Login") {
                    if(email.isEmpty){
                        showError = "Pleae Enter Email"
                    } else {
                        showError = ""
                    }
                
                }

            }
            .navigationTitle("User Login")
        
        }
    }
}

#Preview {
    ContentView()
}
