// IGNORE THIS. JUST TEXT ON THEIR ATTRIBUTES.
//  CharacterAttributesView.swift
//  Warthogs
//
//  Created by T Krobot on 30/8/25.
//

import SwiftUI
struct  CharacterAttributesView: View {
    let character: Character
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Attributes for \(character.name)")
                .font(.title2)
                .padding(.bottom, 1)
            
            VStack(alignment: .leading, spacing:10) {
                Text("Skill💀")
                    .fontWeight(.bold)
                Text("\(character.attributes.skill)")
                Spacer()
                
                Text("Ultimate🤯")
                    .fontWeight(.bold)
                Text("\(character.attributes.ultimate)")
                Spacer()
                
                Divider()
                ScrollView {
                    Text("Backstory 🌧️")
                        .fontWeight(.bold)
                    Text(character.attributes.backstory)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxHeight: 200)
                .padding(.top)

            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding()
            
        }
        .padding()
        
    }

}
