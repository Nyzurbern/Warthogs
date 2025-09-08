//
//  HealthManager.swift
//  Warthogs
//
//  Created by T Krobot on 6/9/25.
//

import Foundation
import Observation

@Observable
class HealthManager {
    var enemyHealth = 100
    var playerHealth = 100
    
    func decreaseEnemyHealth(bubble: Bubble){
        enemyHealth -= bubble.damage
        print(enemyHealth)
    }
}
