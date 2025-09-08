//
//  SequenceManager.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

import Foundation
import Observation

@Observable
class SequenceManager {
    var bubblestoSpawn: [Bubble] = []
    let player: Character
    let enemy: Character
    
    var playerHealth: HealthManager
    var enemyHealth: HealthManager
    
    init(bubblestoSpawn: [Bubble], player: Character, enemy: Character, playerHealth: HealthManager, enemyHealth: HealthManager) {
        self.bubblestoSpawn = bubblestoSpawn
        self.player = player
        self.enemy = Character(name: "Enemy", imageProfile: "Subject 2", attributes: CharacterAttributes(skill: "Falcon Pawnch", ultimate: "Distraction Dance", backstory: "A criminal who went from robbing banks to infiltrating the airship to either taking down or joining the tophat organisation"), stateImages: AttackImages(normalStateImage: "Subject 2", skillStateImage: "Subject 2", ultimateStateImage: "Subject 2"))
        self.playerHealth = HealthManager()
        self.enemyHealth = HealthManager()
    }
    
    static let sampleBubble = Bubble(name: "Skill", position: CGPoint(x: 100, y: 200), radius: 50, damage: 30, imageName: "bubble")
    
    func spawnBubble() {
        let bubble = Bubble.random()
        bubblestoSpawn.append(bubble)
    }
    
    func attackEnemy(damage: Int) {
        enemyHealth.takeDamage(amount:damage)
        attackPlayer(damage: 20)
    }
    
    func attackPlayer(damage: Int) {
        playerHealth.takeDamage(amount:damage)
        spawnBubble()
    }
    
}
