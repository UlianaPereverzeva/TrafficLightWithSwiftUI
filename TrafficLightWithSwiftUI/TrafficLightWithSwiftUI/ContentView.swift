//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by ульяна on 13.02.23.
//

import SwiftUI

enum StatesOfLights {
    case red
    case redAndYellow
    case green
    case yellow
    
    var opacityRed: Double {
        switch self {
            
        case .red:
            return 1
        case .redAndYellow:
            return 1
        case .green:
            return 0.5
        case .yellow:
            return 0.5
        }
    }
    
    var opacityYellow: Double {
        switch self {
            
        case .red:
            return 0.5
        case .redAndYellow:
            return 1
        case .green:
            return 0.5
        case .yellow:
            return 1
        }
    }
    
    var opacityGreen: Double {
        switch self {
            
        case .red:
            return 0.5
        case .redAndYellow:
            return 0.5
        case .green:
            return 1
        case .yellow:
            return 0.5
        }
    }
}

struct ContentView: View {
    
//    @State private var opacityRed = 0.5
//    @State private var opacityYellow = 0.5
//    @State private var opacityGreen = 0.5
    @State private var color = StatesOfLights.red


    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack {
                
                Circle()
                    .foregroundColor(.red)
                    .opacity(color.opacityRed)
                    .frame(width: 150, height: 150)
                Circle()
                    .foregroundColor(.yellow)
                    .opacity(color.opacityYellow)
                    .frame(width: 150, height: 150)
                Circle()
                    .foregroundColor(.green)
                    .opacity(color.opacityGreen)
                    .frame(width: 150, height: 150)
                Spacer()
    
                Button("Tap here") {

                    switch color  {
                    case .red:
                        color = .redAndYellow
                    case .redAndYellow:
                        
                        color = .green
                    case .green:
                        color = .yellow
                    case .yellow:
                        color = .red
                    }                }.buttonStyle(.borderedProminent)
                    .padding()
                    .tint(.pink)
                    .padding()
                    
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
