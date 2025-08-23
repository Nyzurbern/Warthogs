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
            
            TextField("Name", text: $textInput)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    print(textInput)
                }
            
        
        }
    }
}

#Preview {
    
    LoginView()
}
