//
//  PageType.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import Foundation
import SwiftUI


enum PageType: Int, CaseIterable {
    
    case contactPage
    case aboutPage
    case productsPage
    
    var title: String {
        
        switch self {
            
        case .aboutPage:
            return "About"
            
        case .productsPage:
            return "Products"
            
        case .contactPage:
            return "Contact"
        }
        
    }
    
    var description: String {
        
        switch self {
        case .aboutPage:
            return "Read about Mammoth Interactive here."
            
        case .productsPage:
            return "Check out all our products!"
            
        case .contactPage:
            return "Welcome to the contact page."
        }
    }
    
    var image: String {
        
        switch self {
            
        case .aboutPage:
            return "page1"
            
        case .productsPage:
            return "page2"
            
        case .contactPage:
            return "page3"
        }
    }
    
    var color: Color {
        
        switch self {
            
        case .aboutPage:
            return .blue
            
        case .contactPage:
            return .orange
            
        case .productsPage:
            return .black
            
        }
    }
    
}
