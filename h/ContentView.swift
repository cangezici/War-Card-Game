//
//  ContentView.swift
//  h
//
//  Created by Hüseyin Gezici on 8.06.2023.
//

import SwiftUI
struct ContentView: View {
    
    @State var playerCard = "card6"
    @State var cpuCard = "card9"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-cloth").resizable().ignoresSafeArea()
             
        
        
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
                deal()
            } label: {
                Image("button")
            }

            
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player").font(.headline).padding(.bottom, 10.0)
                    
                    Text(String(playerScore)).font(.largeTitle).padding(.bottom, 10.0)
                    
                }
                Spacer()
                VStack {
                    Text("CPU").font(.headline).padding(.bottom, 10.0)
                    Text(String(cpuScore)).font(.largeTitle).padding(.bottom, 10.0)
                    
                }
                Spacer()
                   
            }
            .foregroundColor(.white)
            Spacer()
                }
            }
        }
    
    func deal() {
        //randomize the players cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //randomize the cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update the scores
        if playerCardValue > cpuCardValue {
           playerScore += 1
        
        }
        
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
            
        }
        
        
        
        }
    
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// var a = 4
// var b = 3
// if a > b {
//
//
//
//
