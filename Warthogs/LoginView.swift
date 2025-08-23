//
//  Untitled.swift
//  Warthogs
//
//  Created by T Krobot on 23/8/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var textInput = ""
    
    var body: some View {
        
        VStack {
            
            Text("Your name here")
                .font(.largeTitle)
            
            TextField("Name", text: $textInput)
                .onSubmit {
                    
                    print(textInput)
                }
            
        
        }
    }
}
