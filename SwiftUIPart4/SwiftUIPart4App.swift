//
//  SwiftUIPart4App.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

@main
struct SwiftUIPart4App: App {
    @StateObject private var counter = Counter()
    @StateObject private var tasks = TaskManager()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(counter)
                .environmentObject(tasks)
        }
    }
}
