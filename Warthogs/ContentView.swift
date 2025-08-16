//
//  ContentView.swift
//  Warthogs
//
//  Created by T Krobot on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("mercury")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 200, alignment: .top)
            
            
            Text("Warthogs")
                .font(.largeTitle)
            Button {
                print("Yay")
            } label: {
                VStack{
                    Image("playButton")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60, alignment: .top)
                }
            }
        }
        .aspectRatio(contentMode: .fill)
        .frame(width: 1000, height: 80, alignment: .centerFirstTextBaseline)
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
