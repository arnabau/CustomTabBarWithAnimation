//
//  ContentView.swift
//  CustomTabBarWithAnimation
//
//  Created by Arnaldo Baumanis on 5/18/25.
//

import SwiftUI


struct ContentView: View {
    @State private var tabSelection = 1
    @Namespace private var animation
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("Content 1").tag(1)
            
            Text("Content 2").tag(2)
            
            Text("Content 3").tag(3)
            
            Text("Content 4").tag(4)
            
            Text("Content 5").tag(5)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(tabSelection: $tabSelection, animation: animation)
        }
        
    }
}

#Preview {
    ContentView()
}
