//
//  WinningUIView.swift
//  Warthogs
//
//  Created by T Krobot on 9/9/25.
//

import SwiftUI

struct WinningUIView: View {

    @State private var currentHealth = HealthManager()
    var health = HealthManager()

    var body: some View {
        Text("You Won!")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundStyle(.red)
        Text("Health left: \(currentHealth)")
    }
}

#Preview {
    WinningUIView()
}
