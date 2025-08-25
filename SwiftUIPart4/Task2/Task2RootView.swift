//
//  Task2RootView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct Task2RootView: View {
    @StateObject var taskManager = TaskManager()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    AddTaskView()
                    RemoveTaskView()
                    TaskListView()
                }
                .padding(.horizontal)
                .padding(.top, 10)
            }
            .navigationTitle("Task Manager")
            .environmentObject(taskManager)
        }
    }
}

#Preview {
    Task2RootView()
        .environmentObject(TaskManager())
}
