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
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
