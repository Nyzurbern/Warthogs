// IGNORE THIS. JUST TEXT ON THEIR ATTRIBUTES.
//  CharacterAttributesView.swift
//  Warthogs
//
//  Created by T Krobot on 30/8/25.
//

import SwiftUI
struct CharacterAttributesView: View {
    let character: Character
    @Binding var selectedCharacter: Character?
    @State private var showingFullScreen = false
    @State private var countdown = CountdownManager()
    @State private var health = HealthManager()
    @Binding var selectedPlanet: String
    @Environment(SequenceManager.self) var sequenceManager
    
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
                
                Text("Backstory 🌧️")
                    .fontWeight(.bold)
                Text(character.attributes.backstory)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)

                .frame(maxHeight: 180)

            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            VStack {
                Button("Select this character") {
                    selectedCharacter = character
                    countdown.startCountdown(from: 300)
                    showingFullScreen = true
                }
            }
            .padding()
            .font(.headline)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .fullScreenCover(isPresented: $showingFullScreen) {
                GameView(countdown: countdown, health: health, character: selectedCharacter!, bubble: sequenceManager.bubblestoSpawn, sequenceManager: sequenceManager, selectedPlanet: $selectedPlanet)
            }
            .padding()
            .scaledToFit()
        }
        .scaledToFit()
        .padding()
        
    }
}
