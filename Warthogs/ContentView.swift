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
            
        }
        
        VStack {
            
            Text("Warthogs")
                .font(.largeTitle)
                .font(<#T##font: Font?##Font?#>)
            
            Image("playButton")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 80, alignment: .top)
            
        }
        
        
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
