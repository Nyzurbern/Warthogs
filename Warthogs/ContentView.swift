//
//  ContentView.swift
//  Warthogs
//
//  Created by T Krobot on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingFullScreen = false
    var body: some View {
        NavigationStack {
            VStack {
                Image("mercury")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 200, alignment: .top)
                
                Text("Warthogs")
                    .font(.largeTitle)
                Button(action: {
                    showingFullScreen = true
                }) {
                    VStack{
                        Image("playButton")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60, alignment: .top)
                    }
                    .fullScreenCover(isPresented: $showingFullScreen) {
                        GameView()
                    }
                }
            }
            .aspectRatio(contentMode: .fill)
            .offset(x:0, y: -75)
            .ignoresSafeArea()
        }
    }
}
#Preview {
        ContentView()
}
