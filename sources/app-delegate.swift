//
//  app-delegate.swift
//  youtube-macos-redux-demo
//
//  Created by Niki Khomitsevych on 6/6/25.
//

import AppKit
import SwiftUI
import UnidirectionalFlow

typealias AppStore = Store<AppState, AppAction>

@MainActor
final class AppDelegate: NSObject, NSApplicationDelegate {
    @State private var store = AppStore(
        initialState: .initial,
        reducer: AppReducer(),
        middlewares: []
    )
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        Task {
            await store.send(.applicationLifecycle(.finishLaunch))
        }
    }
}
