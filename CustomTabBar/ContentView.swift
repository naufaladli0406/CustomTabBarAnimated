//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Naufal Adli on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    
    //State property for selected tab - keeps of what tab is selected
    
    @State private var selectedtab : Tab = .home
    
    init(){
        // when the view is inittialed we need to ensure the main tab view is hidden so only the custom one can be shown
        
        UITabBar.appearance().isHidden = true
        
    }
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            // main tab bar - the followign texts can be replaced with whatever view you would like
            // in this example i will include only texts for each of the views.
            
            TabView(selection: $selectedtab){
                Text("Home View")
                    .tabItem { Image(systemName: "house") }
                    .tag(Tab.home)
                
                Text("Search View")
                    .tabItem { Image(systemName: "house") }
                    .tag(Tab.search)
                
                Text("Cart View")
                    .tabItem { Image(systemName: "house") }
                    .tag(Tab.cart)
                
                Text("Profile View")
                    .tabItem { Image(systemName: "house") }
                    .tag(Tab.profile)
            }
            
            CustomTabBarView(selectedTab: $selectedtab)
        }
        
    }
}

#Preview {
    ContentView()
}
