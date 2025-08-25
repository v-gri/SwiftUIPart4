//
//  TaskListView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var taskManager: TaskManager
    
    var body: some View {
        if taskManager.tasks.isEmpty {
            Text("Add a task")
                .foregroundColor(.gray)
                .padding()
        } else {
            List {
                ForEach(taskManager.tasks, id: \.self) { task in
                    Text(task)
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                if let index = taskManager.tasks.firstIndex(of: task) {
                                    taskManager.taskRemove(index)
                                }
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
            .listStyle(.plain)
            .frame(height: max(200, CGFloat(taskManager.tasks.count * 44)))
        }
    }
}

#Preview {
    TaskListView()
        .environmentObject({
            let tm = TaskManager()
            tm.tasks = ["Demo A", "Demo B", "Demo C"]
            return tm
        }())
}
