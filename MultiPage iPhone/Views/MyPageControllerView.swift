//
//  PageControllerView.swift
//  MultiPage iPhone
//
//  Created by Kitwana Akil on 5/31/23.
//

import SwiftUI

struct MyPageControllerView: View {
    
    @State private var pageSelected : Int = 0
    
    
    var body: some View {
        ZStack {
            TabView(selection: $pageSelected, content: {
                
                ForEach(PageType.allCases.indices, id: \.self) {
                    pageIndex in MyPageView(pageType: PageType(rawValue: pageIndex)!)
                        .tag(pageIndex)
                }
            })
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            PageButtonView(pageSelected: $pageSelected)
                .foregroundColor( .white )
        }
    }
}

struct MyPageControllerView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageControllerView()
    }
}
