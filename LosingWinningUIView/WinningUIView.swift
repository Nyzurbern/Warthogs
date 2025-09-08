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
    @State private var textInput = ""
    
    var body: some View {
        ZStack {
            Image("mapJupiter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("You Won, \(textInput)!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.red)
                Text("Health left: \(health.playerHealth)")
                Text("Total damage delt:")
            }
            .background()
            
        }
    }
}

#Preview {
    
    WinningUIView()
}
