//
//  ContentView.swift
//  NextTrack
//
//  Created by Inna Chystiakova on 06/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isHidden: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isHidden.toggle()
                withAnimation {
                    isHidden.toggle()
                }
            } label: {
                HStack(spacing: 0) {
                    if !isHidden {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .transition(.scale)
                            .symbolEffect(.bounce, value: 1)
                    }
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    if isHidden {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .transition(.scale)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
