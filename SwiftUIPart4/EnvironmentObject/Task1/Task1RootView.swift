//
//  Task1RootView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct Task1RootView: View {
    var body: some View {
        VStack(spacing: 20) {
            CounterDisplayView()
            HStack {
                IncrementCounterView()
                DecrementCounterView()
            }
        }
        .padding()
    }
}

#Preview {
    Task1RootView()
        .environmentObject(Counter())
}
