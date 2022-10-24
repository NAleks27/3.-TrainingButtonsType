//
//  ContentView.swift
//  Buttons
//
//  Created by Aleksey Nosik on 27.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button {
                print("Button was tapped!")
            } label: {
                Text("Tap me!")
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
            } .padding(.top, 50)
            
            
            Button {
                print("Button was tapped!")
            } label: {
                VStack {
                    Image(systemName: "pencil")
                        .renderingMode(.original) // если вдруг изображение заливается цветом само
                    Label("Edit", systemImage: "pencil")
                        .padding(.top, 20)
                }
            }
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
