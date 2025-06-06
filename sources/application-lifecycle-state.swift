//
//  application-lifecycle-state.swift
//  youtube-macos-redux-demo
//
//  Created by Niki Khomitsevych on 6/6/25.
//

import Foundation
import UnidirectionalFlow

enum ApplicationLifecycleState: String {
    case idle
    case finishLaunch = "finish launch"
    
    static let initial: Self = .idle
}

enum ApplicationLifecycleAction: Hashable {
    case idle
    case finishLaunch
}

struct ApplicationLifecycleReducer: Reducer {
    typealias State = ApplicationLifecycleState
    typealias Action = ApplicationLifecycleAction
    
    func reduce(
        oldState: ApplicationLifecycleState,
        with action: ApplicationLifecycleAction
    ) -> ApplicationLifecycleState {
        debugPrint(">>> old state is: \(oldState)")
        switch action {
        case .idle: return .idle
        case .finishLaunch: return .finishLaunch
        }
    }
    
}
