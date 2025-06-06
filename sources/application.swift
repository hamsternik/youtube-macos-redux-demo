//
//  youtube_macos_redux_demoApp.swift
//  youtube-macos-redux-demo
//
//  Created by Niki Khomitsevych on 6/6/25.
//

import SwiftUI

@main
struct Application: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
