//
//  MVVMMagic8BallApp.swift
//  watchOS WatchKit Extension
//
//  Created by Harris-Stoertz, Rowan on 2021-09-20.
//

import SwiftUI

@main
struct MVVMMagic8BallApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            
            TabView{
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }
                
                NavigationView{
                    HistoryView()
                }
                .tabItem{
                    Image(systemName: "clock.fill")
                    Text("History")
                }
            }
            
        }
    }
}
