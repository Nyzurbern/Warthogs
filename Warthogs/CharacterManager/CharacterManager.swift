//
//  CharacterManager.swift
//  Warthogs
//
//  Created by T Krobot on 8/9/25.
//

import Foundation
import Observation

struct CharacterAttributes {
    let skill: String
    let ultimate: String
    let backstory: String
}

struct AttackImages {
    let normalStateImage: String
    let skillStateImage: String
    let ultimateStateImage: String
}

struct Character: Identifiable {
    let id = UUID()
    let name: String
    let imageProfile: String
    let attributes: CharacterAttributes
    let stateImages: AttackImages
}

extension Character {
    static let tinySmalle = Character(name: "Tiny Smalle", imageProfile: "LittleSmalleProfile", attributes: CharacterAttributes(skill: "Flicks his cockroach antennae at the opponent.😎", ultimate: "Charges at the opponent like a cockroach🪳", backstory: "Having been cursed by a cockroach diety in his early years, he stopped growing, gained some cockroach powers but retained cockroach traits.🥶"), stateImages: AttackImages(normalStateImage: "tinySmalleNormal", skillStateImage: "tinySmalleSkill", ultimateStateImage: "tinySmalleUltimate"))
                                      
    static let laoNainai = Character(name: "Lao Nainai", imageProfile: "LaoNainaiProfile", attributes: CharacterAttributes(skill: "Punches the opponent with her amazing tai chi skills.😳", ultimate: "FLYING KICKS THE OPPONENT WITH HER GOOD LEG!", backstory: "She has sparred with Michelle Yeoh since they were toddlers. Practices Tai Chi at Jurong Sports Centre."), stateImages: AttackImages(normalStateImage: "laoNainaiNormal", skillStateImage: "laoNainaiSkill", ultimateStateImage: "laoNainaiUltimate"))
    
    static let all: [Character] = [tinySmalle, laoNainai]
}
