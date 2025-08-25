//
//  ContentView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Task1RootView()
                .tabItem {
                    Label("Counter", systemImage: "square.stack.3d.up")
                }
            Task2RootView()
                .tabItem {
                    Label("Tasks", systemImage: "list.star")
                }

        }
    }
}

#Preview {
    HomeView()
}
