//
//  ContentView.swift
//  Flashzilla
//
//  Created by Juan Carlos Robledo Morales on 29/11/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!")
        }
//        ZStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped!")
//                }
//            
//            Circle()
//                .fill(.red)
//                .frame(width: 300, height: 300)
//                .contentShape(.rect)
//                .onTapGesture {
//                    print("Circle tapped!")
//                }
//                .allowsHitTesting(false)
//        }
    }
}

#Preview {
    ContentView()
}
