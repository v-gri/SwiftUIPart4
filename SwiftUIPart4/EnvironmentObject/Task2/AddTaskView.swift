//
//  AddTaskView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask = ""
    
    var body: some View {
        HStack {
            TextField("Enter new task", text: $newTask)
                .textFieldStyle(.roundedBorder)
            
            Button("➕") {
                if !newTask.isEmpty {
                    taskManager.taskAdd(newTask)
                    newTask = ""
                }
            }
            .buttonStyle(.bordered)
            .tint(.green)
        }
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(TaskManager())
    }
}
