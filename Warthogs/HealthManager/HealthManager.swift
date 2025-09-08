//
//  HealthManager.swift
//  Warthogs
//
//  Created by T Krobot on 6/9/25.
//

import Foundation
import Observation
import SwiftUI

@Observable
class HealthManager {
    var currentHealth: Int
    let maxHealth: Int
    
    init (maxHealth: Int = 100) {
        self.maxHealth = maxHealth
        self.currentHealth = maxHealth
    }
    func takeDamage(amount: Int) {
        currentHealth = max(currentHealth - amount, 0)
        print(currentHealth)
    }
    
    var isAlive: Bool {
        currentHealth > 0
    }
}
