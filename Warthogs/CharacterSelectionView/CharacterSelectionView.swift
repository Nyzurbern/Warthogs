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
    @State private var showingFullScreen = false
    
    var body: some View {
        
        let CharacterSelectionColour: Color = Color(red: 0.3961, green: 0.8588, blue: 0.8078)
        
        Text("Select your character")
            .font(.headline)
            .padding()
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
            ForEach(characters, id: \.name, { character in Button(action: {
                selectedCharacter = character
                showGrid = false
            }) {
                VStack {
                    Image(character."LaoNainaiProfile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                        .shadow(radius: 5)
                    Text(character.name)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
            }
        }
                    
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
        }
