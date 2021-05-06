//
//  Landmarks_codelabApp.swift
//  WatchLandmarks Extension
//
//  Created by Thais Aquino on 3/5/21.
//

import SwiftUI

@main
struct Landmarks_codelabApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
