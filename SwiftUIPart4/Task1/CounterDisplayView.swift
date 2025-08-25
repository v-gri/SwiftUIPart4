//
//  CounterView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct CounterDisplayView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Text("Counter value: \(counter.counterValue)")
            .font(.largeTitle)
    }
}

struct IncrementCounterView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.counterValue += 1
        }) {
            Text("+1")
                .font(.title)
                .padding()
        }.buttonStyle(.borderedProminent)
    }
}

struct DecrementCounterView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.counterValue -= 1
        }) {
            Text("-1")
                .font(.title)
                .padding()
        }.buttonStyle(.borderedProminent)
    }
}



#Preview {
    CounterDisplayView()
        .environmentObject(Counter())
}
