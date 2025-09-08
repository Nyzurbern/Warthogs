//
//  WinningUI.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

import SwiftUI

struct WinningUIView: View {
    
    @State private var playerHealth = HealthManager()
    var health = HealthManager()
    
    var body: some View {
        Text("You Won!")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
        Text("Health left: \(health.currentHealth)")
    }
}

#Preview {
    WinningUIView()
}
