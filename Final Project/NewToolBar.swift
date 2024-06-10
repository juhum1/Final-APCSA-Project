//
//  NewToolBar.swift
//  Final Project
//
//  Created by Julie E. Hum on 6/10/24.
//

import SwiftUI

struct NewToolBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        
                }
              
            Sudoku()
                .tabItem {
                    Label("Games", systemImage: "gamecontroller.fill")
                }
            
            Profile(username: .constant(""), accountUsernames: .constant([""]))
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(.white)
        .frame(maxHeight:.infinity)
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = .systemBlue
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

#Preview {
    NewToolBar()
}
