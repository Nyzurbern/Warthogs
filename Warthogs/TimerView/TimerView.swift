//
//  TimerView.swift
//  Warthogs
//
//  Created by T Krobot on 30/8/25.
//

import SwiftUI

struct TimerView: View {
    @State private var EnemyScore: Int = 0
    @State private var PlayerScore: Int = 0
    var countdown: CountdownManager
    
    let timerColour: Color = Color(red: 0.9764 ,green: 0.8078, blue: 0.8078)
    let enemyScoreColour: Color = Color(red: 0.9764, green: 0, blue: 0)
    let playerScoreColour: Color = Color(red: 0.3961, green: 0.8588, blue: 0.8078)

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 600, height: 60, alignment: .top)
                .foregroundStyle(timerColour)
                .border(.black, width: 2)
            HStack{
                Text(String(PlayerScore))
                    .font(.largeTitle)
                    .foregroundStyle(playerScoreColour)
                    .offset(x: -225, y: 0)
                Text(String(countdown.formattedTime))
                    .font(.system(size: 26, weight: .bold, design: .monospaced))
                Text(String(EnemyScore))
                    .font(.largeTitle)
                    .foregroundStyle(enemyScoreColour)
                    .offset(x: 225, y: 0)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    @Previewable @State var Countdown = CountdownManager()
    TimerView(countdown: Countdown)
}
