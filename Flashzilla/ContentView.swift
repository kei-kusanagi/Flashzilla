//
//  ContentView.swift
//  Flashzilla
//
//  Created by Juan Carlos Robledo Morales on 29/11/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var currentAmount = Angle.zero
//    @State private var finalAmount = Angle.zero
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    var body: some View {

                let dragGesture = DragGesture()
                    .onChanged { value in offset = value.translation }
                    .onEnded { _ in
                        withAnimation {
                            offset = .zero
                            isDragging = false
                        }
                    }

            
                let pressGesture = LongPressGesture()
                    .onEnded { value in
                        withAnimation {
                            isDragging = true
                        }
                    }

            
                let combined = pressGesture.sequenced(before: dragGesture)

                Circle()
                    .fill(.red)
                    .frame(width: 64, height: 64)
                    .scaleEffect(isDragging ? 1.5 : 1)
                    .offset(offset)
                    .gesture(combined)
            }
        
        
//        VStack{
//            Text("Hello, world!")
//                .onTapGesture {
//                    print("Text tapped")
//                }
//        }
////        .highPriorityGesture(
//        .simultaneousGesture(
//        TapGesture()
//            .onEnded {
//            print("Vstack tapped")
//        }
//        )
        
//            .scaleEffect(finalAmount + currentAmount)
//            .rotationEffect(currentAmount + finalAmount)
//            .gesture(
//                RotateGesture()
//                    .onChanged { value in
//                        currentAmount = value.rotation
//                        
//                    }
//                    .onEnded { value in
//                        finalAmount += currentAmount
//                        currentAmount = .zero
//                    }
//            )
//            .gesture(
//                MagnifyGesture()
//                    .onChanged{ value in
//                        currentAmount = value.magnification - 1
//                    }
//                    .onEnded{ value in
//                        finalAmount += currentAmount
//                        currentAmount = 0
//                    }
//                )
//            .onTapGesture (count: 2){
//                print("Double trapped")
//            }
        
        
//            .onLongPressGesture(minimumDuration: 0){
//                print("Long pressed")
//            } onPressingChanged: { inProgress in
//                print("In progress: \(inProgress)")
//            }
        
       
    
}

#Preview {
    ContentView()
}
