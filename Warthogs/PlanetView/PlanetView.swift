//
//  PlanetView.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//
import SwiftUI

struct PlanetView: View {
    
    @State private var showingFullScreen = false
    @State var selectedPlanet: String = ""
    @State var character: Character
    
    let characters = Character.all
    
    var body: some View {
        
        Text("Pick your planet!")
        
            .font(.system(size: 50))
            .multilineTextAlignment(.leading)
            .padding(0.2)
        
        HStack {
            
            Button(action: {
                selectedPlanet = "Mars"
                showingFullScreen = true
            }) {
                VStack{
                    Image("mars")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 290, height: 250, alignment: .leading)
                        .padding()
                    Text("Mars")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
            }
            
            Button(action: {
                selectedPlanet = "Venus"
                showingFullScreen = true
            }){
                VStack {
                    Image("venus")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 290, height: 220, alignment: .leading)
                        .padding()
                    Text(".")
                        .font(.system(size: 15))
                    Text("Venus")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
            }
        }
            .background(.orange)
            .fullScreenCover(isPresented: $showingFullScreen) {
                CharacterInfoView(character: .tinySmalle, selectedPlanet: $selectedPlanet)
            }
        }
    }

        
#Preview {
    PlanetView(character: .tinySmalle)
}
