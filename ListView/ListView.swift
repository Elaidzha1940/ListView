//  /*
//
//  Project: ListView
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.12.2023
//
//  */

import SwiftUI

struct ListView: View {
    private var iOS = [
        "Objective-C",
        "Swift",
        "SwiftUI"
    ]
    
    var body: some View {
        
        NavigationStack {
            List(iOS, id: \.self) { iOS in
                Text(iOS)
                    .listRowBackground(Color.black.opacity(0.4))
            }
            .listRowBackground(Color.red)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .background(
                Image("BgImage")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .scrollContentBackground(.hidden)
            .navigationTitle("Forest")
            .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ListView()
}
