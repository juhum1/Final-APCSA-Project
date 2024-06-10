//
//  HomeView.swift
//  Final Project
//
//  Created by Julie E. Hum on 5/30/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showImage = 0
    var body: some View {
        ZStack {
            VStack{
                if (showImage == 0) {
                    Text("The First Week of School")
                        .font(.title)
                    Button (action: { showImage = 1 })
                    {
                        Image("awkward")
                            .resizable()
                            .frame(width: 300, height: 300)
                    }
                }
            }
            if (showImage == 1) {
                ZStack {
                    Button (action: { showImage = 2 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 400, height: 400)
                    }
                }
            }
            if (showImage == 2) {
                ZStack {
                    Button (action: { showImage = 3 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 500, height: 500)
                    }
                }
            }
            if (showImage == 3) {
                ZStack {
                    Button (action: { showImage = 4 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 600, height: 600)
                    }
                }
            }
            if (showImage == 4) {
                ZStack {
                    Button (action: { showImage = 5 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 700, height: 700)
                    }
                }
            }
            if (showImage == 5) {
                ZStack {
                    Button (action: { showImage = 6 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 800, height: 800)
                    }
                }
            }
            if (showImage == 6) {
                ZStack {
                    Button (action: { showImage = 7 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 900, height: 900)
                    }
                }
            }
            if (showImage == 7) {
                ZStack {
                    Button (action: { showImage = 8 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 1000, height: 1000)
                    }
                }
            }
            if (showImage == 8) {
                ZStack {
                    Button (action: { showImage = 9 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 1100, height: 1100)
                    }
                }
            }
            if (showImage == 9) {
                ZStack {
                    Button (action: { showImage = 10 })
                     {
                        Image("awkward")
                            .resizable()
                            .frame(width: 1200, height: 1200)
                    }
                }
            }
            if (showImage == 10) {
                ZStack {
                    Button (action: { showImage = 11 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                }
            }
            if (showImage == 11) {
                ZStack {
                    Button (action: { showImage = 11 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                    Text("is awkward...")
                        .font(.title)
                }
            }
            if (showImage == 11) {
                ZStack {
                    Button (action: { showImage = 11 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                    Text("is awkward...")
                        .font(.title)
                }
            }
            if (showImage == 11) {
                ZStack {
                    Button (action: { showImage = 11 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                    Text("is awkward...")
                        .font(.title)
                }
            }
            if (showImage == 11) {
                ZStack {
                    Button (action: { showImage = 12 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                    Text("is awkward...")
                        .font(.title)
                }
            }
            if (showImage == 12) {
                ZStack {
                    Button (action: { showImage = 13 })
                     {
                         Rectangle()
                             .fill(.white)
                             .frame(width:800, height: 800)
                    }
                    VStack {
                        Text("going around the room")
                            .font(.title)
                        Text("and introducing yourself...")
                            .font(.title)
                    }
                        
                }
            }
            if (showImage == 13) {
                ZStack {
                    Button (action: { showImage = 14 })
                    {
                        Rectangle()
                            .fill(.white)
                            .frame(width:800, height: 800)
                    }
                    VStack {
                        Text("playing telephone...")
                            .font(.title)
                    }
                }
            }
            if (showImage == 14) {
                ZStack {
                    Button (action: { showImage = 15 })
                    {
                        Rectangle()
                            .fill(.white)
                            .frame(width:800, height: 800)
                    }
                    VStack {
                        Text("playing telephone...")
                            .font(.title)
                        Text("would you rather...")
                            .font(.title)
                        
                    }
                }
            }
            if (showImage == 15) {
                ZStack {
                    Button (action: { showImage = 16 })
                    {
                        Rectangle()
                            .fill(.white)
                            .frame(width:800, height: 800)
                    }
                    VStack {
                        Text("playing telephone...")
                            .font(.title)
                        Text("would you rather...")
                            .font(.title)
                        Text("two truths and a lie...")
                            .font(.title)
                    }
                }
            }
//            
//             Rectangle()
//                 .fill(.white)
//                 .frame(width:800, height: 800)
//            Text("playing telephone...")
//                    .font(.title)
            
            
                
        }
        
    }
    
}

#Preview {
    HomeView()
}
