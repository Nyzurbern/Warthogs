//
//  WinningUI.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

import SwiftUI

struct LosingUIView: View {

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
                Text("Do better next time, \(textInput)!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.red)
                Text("YOU LITERALLY DIED!!!")
                Text("Total damage dealt:")
            }
            .background()
            
        }
    }
}

#Preview {
    LosingUIView()
}
