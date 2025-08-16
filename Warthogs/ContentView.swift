//
//  ContentView.swift
//  Warthogs
//
//  Created by T Krobot on 16/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Warthogs")
                .font(.largeTitle)
        }
        .padding()
        .background(.red)
        .scaledToFill()
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
