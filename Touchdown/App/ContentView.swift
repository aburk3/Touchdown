//
//  ContentView.swift
//  Touchdown
//
//  Created by Austin Burke on 4/5/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack() {

                    FeaturedTabView()
                        .padding(.vertical)
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                    
                    CategoryGridView()
                        
                    FooterView()
                        .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLL
                
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    } //: BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
