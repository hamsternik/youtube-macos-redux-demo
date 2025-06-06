//
//  app-state.swift
//  youtube-macos-redux-demo
//
//  Created by Niki Khomitsevych on 6/6/25.
//

import Foundation
import UnidirectionalFlow

struct AppState: Hashable {
    let applicationLifecycle: ApplicationLifecycleState
    
    static let initial: Self = .init(
        applicationLifecycle: .initial
    )
}

enum AppAction: Hashable {
    case applicationLifecycle(ApplicationLifecycleAction)
}

struct AppReducer: Reducer {
    typealias State = AppState
    typealias Action = AppAction
    
    func reduce(oldState: State, with action: Action) -> State {
        switch action {
        case .applicationLifecycle(let action):
            return .init(
                applicationLifecycle: ApplicationLifecycleReducer()
                    .reduce(oldState: oldState.applicationLifecycle, with: action)
            )
        }
    }
}
