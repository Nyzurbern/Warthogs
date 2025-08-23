//
//  CharacterSelectionView.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//
import SwiftUI

struct CharacterSelectionView: View {
    @State private var showingFullScreen = false
    var body: some View {
        
        let CharacterSelectionColour: Color = Color(red: 0.3961, green: 0.8588, blue: 0.8078)
        
        Text("Select your character")
            .font(.system(size: 40))
                    
        HStack {
            Text("🧍")
                .font(.system(size: 250))
            Button("Select your character") {
                
            }
            .font(.system(size: 25))
            .gridColumnAlignment(.leading)
            .padding()
            .foregroundStyle(.black)
            .background(CharacterSelectionColour)
            .border(.black)
            .offset(x: -90, y: -40)
            
            Text("🧍‍♀️")
                .font(.system(size: 250))
        }
    }
}
        #Preview {
            CharacterSelectionView()
        }
