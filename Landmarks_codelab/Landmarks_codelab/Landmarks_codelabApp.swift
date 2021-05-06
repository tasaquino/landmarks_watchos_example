//
//  Landmarks_codelabApp.swift
//  Landmarks_codelab
//
//  Created by Thais Aquino on 30/4/21.
//

import SwiftUI

@main
struct Landmarks_codelabApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
