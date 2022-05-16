//
//  ContentView.swift
//  FiftyCardsChallenge
//
//  Created by Mikaila Smith on 5/14/22.
//

import SwiftUI

struct ContentView: View {
    var cardColor : Color {
        let r = Double.random(in: 0..<1)
        let g = Double.random(in: 0..<1)
        let b = Double.random(in: 0..<1)
        
        return Color(red: r, green: g, blue: b)
    }
    
    var body: some View {
        TabView {
            ForEach(1..<51) { index in
                GeometryReader { geo in
                    ZStack {
                        Rectangle()
                            .cornerRadius(20)
                            .shadow(radius: 10)
                            .foregroundColor(cardColor)
                        
                        Image(systemName: "\(index).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .frame(height: max(geo.size.height - 50, 100))
                }
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
