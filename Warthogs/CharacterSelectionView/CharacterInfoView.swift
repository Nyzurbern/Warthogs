//  CODED THE BACKSTORIES AND SKILLS OF THE CHARACTER

//  CharacterInfoView.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//

import SwiftUI

struct CharacterInfoView: View {
    
    @State private var showGrid = false
    @State private var selectedCharacter: Character? = nil
    @State var character: Character
    
    let characters = [
        Character.tinySmalle, Character.laoNainai
    ]
    
    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    
                    Button("Select your character"){
                        showGrid.toggle()
                        selectedCharacter = nil
                    }
                }
                .padding()
                .font(.system(size: 25))
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Image("devilLOL!!")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: .leading)
            }
            
            if showGrid{
                CharacterSelectionView(characters: characters, selectedCharacter: $selectedCharacter, showGrid: $showGrid)
            }
            
            	if let character = selectedCharacter {
                CharacterAttributesView(character: character, selectedCharacter: $selectedCharacter)}
            
         
            if let finalCharacter = selectedCharacter {
                Text("Character selected: \(finalCharacter.name)")
                    .font(.largeTitle)
                    .padding()
                
            }
        }
    }
}
#Preview {
    CharacterInfoView(character: .laoNainai)
}
