//
//  ContentView.swift
//  WarChallenge
//
//  Created by Mikaila Smith on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in:2...14)
                    let cpuRand = Int.random(in:2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }


                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)

                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.top, 10)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
