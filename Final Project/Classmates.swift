//
//  Classmates.swift
//  Final Project
//
//  Created by Julie E. Hum on 6/10/24.
//

import SwiftUI

struct Classmates: View {
    @Binding var accountUsernames: [String]
    var body: some View {
        
        Text(accountUsernames[1])
    }
}

#Preview {
    Classmates(accountUsernames: .constant([""]))
}
