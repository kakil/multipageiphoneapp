//
//  PageButtonView.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import SwiftUI

struct PageButtonView: View {
    
    @Binding var pageSelected: Int
    
    @AppStorage(wrappedValue: false, UserProgress.shownMultiplePages)
    private var shownMultiplePages
    
    private func changePage() {
        
        if (pageSelected == PageType.allCases.count - 1) {
            
            shownMultiplePages = true
            
            
        } else {
            pageSelected += 1
        }
       
        
    }
    
    var body: some View {
        Button(action: {
            
            changePage()
            
        }, label: {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Next")
                        .font(.system(size: 40))
                        .padding(50)
                        .foregroundColor(.white)
                }
            }
        })
    }
}

struct PageButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PageButtonView(pageSelected: .constant(0))
    }
}
