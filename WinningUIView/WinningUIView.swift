//
//  WinningUI.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

import SwiftUI

struct WinningUIView: View {
    var body: some View {
        Text("You Won!")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
    }
}

#Preview {
    
    WinningUIView()
}
