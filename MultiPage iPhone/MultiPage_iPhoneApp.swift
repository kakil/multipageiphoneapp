//
//  MultiPage_iPhoneApp.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import SwiftUI

@main
struct MultiPage_iPhoneApp: App {
    
    @AppStorage(wrappedValue: false, UserProgress.shownMultiplePages)
    private var shownMultiplePages
    
    var body: some Scene {
        WindowGroup {
            
            if (!shownMultiplePages) {
                MyPageControllerView()
            } else {
                ContentView()
            }
            
        }
    }
}
