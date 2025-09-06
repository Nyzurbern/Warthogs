//
//  CharacterSelectionView.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//
import SwiftUI

struct CharacterSelectionView: View {
    
    let characters: [Character]
    @Binding var selectedCharacter: Character? 
    @Binding var showGrid: Bool
    
    var body: some View {
        
        //        let CharacterSelectionColour: Color = Color(red: 0.3961, green: 0.8588, blue: 0.8078)
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
            ForEach(characters, id: \.name) { character in Button(action: {
                selectedCharacter = character
                showGrid = false
            }) {
                
                VStack {
                    Image(character.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 130)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                        .shadow(radius: 5)
                    Text(character.name)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
                .buttonStyle(PlainButtonStyle())
                .frame(alignment: .center)
            }
            .buttonStyle(PlainButtonStyle())
            .frame(alignment: .center)
                
            }
        }
        
    }
    
}
