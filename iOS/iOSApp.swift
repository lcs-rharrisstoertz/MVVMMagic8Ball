//
//  iOSApp.swift
//  iOS
//
//  Created by Harris-Stoertz, Rowan on 2021-09-20.
//

import SwiftUI

@main
struct iOSApp: App {
    
    @StateObject var advisor = AdviceViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }
                
                NavigationView {
                    HistoryView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
            }
        }
    }
}
