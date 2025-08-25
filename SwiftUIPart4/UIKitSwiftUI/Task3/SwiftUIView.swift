//
//  SwiftUIView.swift
//  SwiftUIPart4
//
//  Created by Vika on 24.08.25.
//

import SwiftUI

struct SwiftUIView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Hello from SwiftUI!")
                .font(.title)
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
