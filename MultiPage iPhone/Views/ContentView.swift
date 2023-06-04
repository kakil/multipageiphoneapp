//
//  ContentView.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage(wrappedValue: false, UserProgress.shownMultiplePages)
    private var shownMultiplePages
    
    var fontSize = CGFloat(100)
    
    var body: some View {
        VStack {
            Text("Home")
                .padding()
            .font(.system(size: fontSize))
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Start")
                    .font(.system(size: fontSize))
            })
        }
        
    }
    
    private func buttonPressed() {
        
        shownMultiplePages = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
