//  CODED THE BACKSTORIES AND SKILLS OF THE CHARACTER

//  CharacterInfoView.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//

import SwiftUI

struct CharacterAttributes {
    let skill: String
    let ultimate: String
    let backstory: String
}

struct Character {
    let name: String
    let imageName: String
    let attributes: CharacterAttributes
}

struct CharacterInfoView: View {
    
    @State private var showGrid = false
    @State private var selectedCharacter: Character? = nil
    
    let characters = [
        Character(name: "Tiny Smalle", imageName: "LittleSmalleProfile", attributes: CharacterAttributes(skill: "Flicks his cockroach antennae at the opponent.😎", ultimate: "Charges at the opponent like a cockroach🪳", backstory: "Having been cursed by a cockroach diety in his early years, he stopped growing, gained some cockroach powers but retained cockroach traits.🥶")),
        
        Character(name: "Lao Nainai", imageName: "LaoNainaiProfile", attributes: CharacterAttributes(skill: "Punches the opponent with her amazing tai chi skills.😳", ultimate: "FLYING KICKS THE OPPONENT WITH HER GOOD LEG!", backstory: "She has sparred with Michelle Yeoh since they were toddlers. Practices Tai Chi at Jurong Sports Centre.")),
        ]
    
        var body: some View {
 
                HStack {
         
                    VStack {
                        
                        Button("Select your character"){
                            showGrid.toggle()
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
            
            if let character = selectedCharacter{
                CharacterAttributesView(character: character)
            }
        }
}
#Preview {
    CharacterInfoView()
}
