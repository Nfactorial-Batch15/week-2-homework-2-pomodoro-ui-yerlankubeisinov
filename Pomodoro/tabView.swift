//
//  tabView.swift
//  Pomodoro
//
//  Created by Yerlan Kubeisinov on 09.12.2021.
//

import SwiftUI

struct tabViews: View {
//        @State private var selectedTab: Int = 1 // teaser of the week 3,
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {
        TabView() {
            firstTab()
                .tabItem {
                    Text("Main")
                    Image(systemName: "house.fill")
                        .renderingMode(.template)
                }
                .foregroundColor(Color.white)
                .tag(1)
            
            settingsTab()
                .tabItem {
                    Text("Settings")
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(Color.white)
                } .tag(2)
            
            historyTab()
                .tabItem {
                    Text("History")
                    Image(systemName: "doc.fill")
                        .foregroundColor(Color.white)
                    
                }
            
            
            
            
            
        } .foregroundColor(Color.white)
            .accentColor(.white)
    }
    
}

struct tabViews_Previews: PreviewProvider {
    static var previews: some View {
        tabViews()
    }
}
