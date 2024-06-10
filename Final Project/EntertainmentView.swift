//
//  EntertainmentView.swift
//  Final Project
//
//  Created by Julie E. Hum on 5/30/24.
//

import SwiftUI

struct EntertainmentView: View {
    var body: some View {
        NavigationLink(destination: Sudoku()) {
            Button(" hey") {
                
            }
        }
        
        
        VStack {
            Text("Games")
            NavigationLink(destination: Sudoku(),
                           label: {
                Button("Login") {

                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top)
                })

            }
            .padding()
            VStack{
                Text("Games")
                ScrollView(.horizontal)
                {
                    HStack {

                    }
                }
            }
            .padding()
            VStack{
                Text("Games")
                ScrollView(.horizontal)
                {
                    HStack {

                    }
                }
            }
            .padding()
    }
            
        
    
}

#Preview {
    EntertainmentView()
}
