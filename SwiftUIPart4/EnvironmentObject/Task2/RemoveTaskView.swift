//
//  RemoveTaskView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct RemoveTaskView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var indexToRemove = ""
    
    var body: some View {
        HStack {
            TextField("Enter task index to remove", text: $indexToRemove)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            Button("🗑️") {
                if let index = Int(indexToRemove), index >= 0, index < taskManager.tasks.count {
                    taskManager.taskRemove(index)
                    indexToRemove = ""
                }
            }
            .buttonStyle(.bordered)
            .tint(.red)
        }
    }
}

struct RemoveTaskView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveTaskView()
            .environmentObject({
                let tm = TaskManager()
                tm.tasks = ["One", "Two", "Three"]
                return tm
            }())
    }
}
