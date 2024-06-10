//
//  SignView.swift
//  Final Project
//
//  Created by Julie E. Hum on 6/9/24.
//

import SwiftUI

struct SignView: View {
    @Binding var username: String 
    @Binding var password: String
    @Binding var accountUsernames: [String]
    @Binding var accountPasswords: [String]
    var body: some View {
        Text("Create An Account")
            .font(.title)
            .foregroundColor(.black)
            .bold()
            .padding()
        Text("Email")
            .padding(.trailing, 227)
        TextField("Email", text: $username)
            .padding()
            .frame(width: 300, height: 50)
        Text("Password")
            .padding(.trailing, 195)
        SecureField("Password", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .padding(.bottom, 10)
        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true),
                       label: {
            Button("Sign Up") {
                accountUsernames.append(username)
                accountPasswords.append(password)
            }
            .foregroundColor(.white)
            .frame(width: 270, height: 40)
            .background(Color.blue)
            .cornerRadius(10)
        })
        
    }
}


#Preview {
    SignView(username: .constant(""), password: .constant(""), accountUsernames: .constant([""]), accountPasswords: .constant([""]))
}
