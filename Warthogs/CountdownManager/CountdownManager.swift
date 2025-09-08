//
//  CountdownManager.swift
//  Warthogs
//
//  Created by T Krobot on 4/9/25.
//

import Foundation
import Observation

@Observable
class CountdownManager {
    var timeRemaining: Int = 300

    private var task: Task<Void, Never>?
    
    func startCountdown(from seconds: Int) {
        timeRemaining = seconds
        task = Task {
            for i in stride(from: seconds, through: 0, by: -1) {
                await MainActor.run {
                    timeRemaining = i
                }
                try? await Task.sleep(nanoseconds: 1_000_000_000)
            }
        }
    }
    var formattedTime: String {
        let minutes = timeRemaining / 60
        let seconds = timeRemaining % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
