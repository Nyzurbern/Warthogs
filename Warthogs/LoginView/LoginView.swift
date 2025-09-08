//
//  Untitled.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//

import SwiftUI

struct LoginView: View {
    @State private var showingFullScreen = false
    @State private var textInput = ""
    
    var body: some View {
        HStack {
            Text("🧍")
                .font(.system(size: 300))
            
            VStack {
                Text("What's your name?")
                    .font(.system(size: 40))
                TextField("Name", text: $textInput)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        print(textInput)
                    }
                
                
                    Button("START FIGHTING NOW!!", action: {
                        showingFullScreen = true
                    })
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                
                .fullScreenCover(isPresented: $showingFullScreen) {
                    PlanetView(character: .tinySmalle)
                }

            }
            
        }
        
    }
        
    
    
}
    
    #Preview {
        LoginView()
    }

