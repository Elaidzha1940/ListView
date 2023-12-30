//  /*
//
//  Project: ListView
//  File: ListView2.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.12.2023
//
//  */

import SwiftUI

struct ListView2: View {
    private var iOS = [
        "Objective-C",
        "Swift",
        "SwiftUI"
    ]
    
    var body: some View {
        
        NavigationStack {
            List(iOS, id: \.self) { iOS in
                Text(iOS)
                    .listRowBackground(Color.white.opacity(0.2))
            }
            .listRowBackground(Color.red)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .background(
                LinearGradient(stops: [
                    Gradient.Stop(color: .black.opacity(0.8), location: 1),
                    Gradient.Stop(color: .mint.opacity(0.7), location: 0),
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .scrollContentBackground(.hidden)
            .navigationTitle("Forest")
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ListView2()
}
