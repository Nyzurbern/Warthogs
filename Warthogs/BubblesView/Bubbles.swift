//
//  Bubbles.swift
//  Warthogs
//
//  Created by T Krobot on 30/8/25.
//
import SwiftUI

struct Bubble: Identifiable {
    let id = UUID()
    let name: String
    let position: CGPoint
    let radius: CGFloat
    let damage: Int
    var imageName: String
    
    
    static func random() -> Bubble {
        let bubbleToBeMade = Int.random(in: 1...2)
        let position: CGPoint = CGPoint(x: .random(in: 50...300), y: .random(in: 50...300))
        let radius: CGFloat = .random(in: 10...50)
        let name: String
        let damage: Int
        
        switch bubbleToBeMade {
        case 1:
            name = "Skill"
            damage = 30
        case 2:
            name = "Ultimate"
            damage = 50
        default:
            name = "Skill"
            damage = 30
        }
        return Bubble(name: name, position: position, radius: radius, damage: damage, imageName: "bubble")
    }
}
