//
//  ContentView.swift
//  SwiftUISlots
//
//  Created by Mikaila Smith on 4/30/22.
//

import SwiftUI

struct ContentView: View {
    var slotImgs = [0: "apple", 1: "cherry", 2:"star"]
    @State var credits = 1000
    @State var img1 = 0;
    @State var img2 = 0;
    @State var img3 = 0;
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("SwiftUI Slots!").font(.largeTitle)
            
            Spacer()
            
            Text("Credits: \(credits)")
            
            Spacer()
            
            HStack {
                Image(slotImgs[img1]!).resizable().aspectRatio(contentMode: .fit)
                Image(slotImgs[img2]!).resizable().aspectRatio(contentMode: .fit)
                Image(slotImgs[img3]!).resizable().aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button("Spin") {
                credits -= 5
                
                img1 = Int.random(in: 0...2)
                img2 = Int.random(in: 0...2)
                img3 = Int.random(in: 0...2)
                
                if img1 == img2 && img2 == img3 {
                    credits += 50
                }
            }.padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
