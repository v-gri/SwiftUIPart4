//
//  TaskManager.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import Foundation

class TaskManager: ObservableObject {
    @Published var tasks: [String] = []
    
    func taskAdd(_ title: String) {
        let t = title.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !t.isEmpty else { return }
        tasks.append(t)
    }
    
    func taskRemove(_ index: Int) {
        guard tasks.indices.contains(index) else { return }
        tasks.remove(at: index)
    }
}
