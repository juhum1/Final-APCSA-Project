//
//  Profile.swift
//  Final Project
//
//  Created by Julie E. Hum on 6/10/24.
//

import SwiftUI

struct Profile: View {
    @Binding var username : String
    @Binding var accountUsernames: [String]
    var body: some View {
        Text("Hi julieh11@nycstudents.net")
        
    }
}

#Preview {
    Profile(username: .constant(""), accountUsernames: .constant([""]))
}
