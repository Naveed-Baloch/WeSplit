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
    
    let userTypes = ["Admin", "Guest User"]
    @State private var userType = ""
    
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
                
                Section {
                    Text("Select User Type")
                    Picker("User Type", selection: $userType){
                        ForEach(userTypes, id: \.self){ userType in
                            Text(userType)
                        }
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
