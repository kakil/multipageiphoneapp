//
//  MyPageView.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import SwiftUI

struct MyPageView: View {
    
    let pageType: PageType
    
    var body: some View {
        ZStack {
            
            pageType.color
                .ignoresSafeArea()
            VStack (spacing: 30){
                Text(pageType.title)
                    .font(.system(size: 100))
                Image(pageType.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text(pageType.description)
                    .font(.system(size: 30))
                    .padding()
            }
            .foregroundColor(.white)
        }
        
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
       
        ForEach(PageType.allCases, id: \.self) {
            currentType in MyPageView(pageType:currentType)
        }
    }
}
