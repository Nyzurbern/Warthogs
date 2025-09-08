//
//  WinningUI.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

<<<<<<< HEAD:WinningUIView/WinningUIView.swift
//import SwiftUI
//
//struct WinningUIView: View {
//    
//    @State private var playerHealth = HealthManager()
//    var health = HealthManager()
//    
//    var body: some View {
//        Text("You Won!")
//            .font(.largeTitle)
//            .fontWeight(.black)
//            .foregroundStyle(.red)
//        Text("Health left: \(health.playerHealth)")
//    }
//}
//
//#Preview {
//    WinningUIView()
//}
=======
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
>>>>>>> main:LosingWinningUIView/WinningUIView.swift
