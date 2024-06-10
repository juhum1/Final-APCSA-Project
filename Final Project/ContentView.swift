//
//  ContentView.swift
//  Final Project
//
//  Created by Julie E. Hum on 5/29/24.
//

import SwiftUI

struct IsHidden: ViewModifier {
    var hidden = false
    @Binding var wrongUsername: Int
    @Binding var wrongPassword: Int
    func body(content:Content) -> some View {
        if (wrongUsername == 1 || wrongPassword == 1)
        {
            content
        }
        else
        {
            content.hidden()
        }
    }
}
extension View {
    
    func isHidden(wrongUsername: Int, wrongPassword: Int) -> some View {
        modifier(
            IsHidden(wrongUsername: .constant(wrongUsername), wrongPassword: .constant(wrongPassword)))
    }
}











//login screen tutorial from Idently on Youtube https://www.youtube.com/watch?v=l7obVQObdRM&ab_channel=Indently
struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    @State var accountUsernames = [String]()
    @State var accountPasswords = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                TextField("Email", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongUsername))
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                NavigationLink(destination: NewToolBar().navigationBarBackButtonHidden(true),
                               label: {
                    Button("Login") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
                })
                .padding(.bottom)
                NavigationLink(destination: SignView(username: .constant("\(username)"), password: .constant(""), accountUsernames: .constant([""]), accountPasswords: .constant([""])),
                               label: {
                        Text("Sign Up")
                })
            }
            .navigationBarHidden(true)
        }
    }
    
    func contains(array: [String], ele: String) -> Int {
        return array.firstIndex(of: ele) ?? -1
    }
    
    func authenticateUser(username: String, password: String) {
        let index = contains(array: accountUsernames, ele: username.lowercased())
        if (index > 0)
        {
            if (accountPasswords[index - 1] == password) {
                wrongUsername = 0
                wrongPassword = 0
                showingLoginScreen = false
            } else {
                wrongPassword = 1
            }
        }
        else
        {
            wrongUsername = 1
        }
    }
}

#Preview {
    ContentView()
}

