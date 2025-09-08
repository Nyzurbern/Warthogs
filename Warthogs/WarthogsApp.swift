//
//  WarthogsApp.swift
//  Warthogs
//
//  Created by T Krobot on 16/8/25.
//

import SwiftUI

@main
struct WarthogsApp: App {
    var body: some Scene {
        @State var health = HealthManager()
        WindowGroup {
            ContentView()
                .environment(SequenceManager(bubblestoSpawn: [Bubble.random()], player: Character.laoNainai , enemy: Character(name: "Enemy", imageProfile: "Subject 2", attributes: CharacterAttributes(skill: "Falcon Pawnch", ultimate: "Distraction Dance", backstory: "A criminal who went from robbing banks to infiltrating the airship to either taking down or joining the tophat organisation"), stateImages: AttackImages(normalStateImage: "Subject 2", skillStateImage: "Subject 2", ultimateStateImage: "Subject 2")), playerHealth: health , enemyHealth: health))
        }
    }
}
