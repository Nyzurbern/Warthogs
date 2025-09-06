//
//  HealthBarView.swift
//  Warthogs
//
//  Created by T Krobot on 4/9/25.
//

import SwiftUI

struct HealthBarView: View {
    let healthBarGreen = Color(red: 0, green: 255, blue: 0)
    let healthBarRed = Color(red: 255, green: 0, blue: 0)
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 300, height: 10, alignment: .bottomLeading)
                .foregroundStyle(healthBarGreen)
            Rectangle()
                .frame(width: 300, height: 10, alignment: .bottomTrailing)
                .foregroundStyle(healthBarGreen)
        }
    }
}

#Preview {
    HealthBarView()
}
