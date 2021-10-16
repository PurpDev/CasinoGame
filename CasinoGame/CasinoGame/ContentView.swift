//
//  ContentView.swift
//  CasinoGame
//
//  Created by Augustin Diabira on 16/10/2021.
//

import SwiftUI

struct ContentView: View {
    
   @State  var coins = 1000
   @State  var img1 = "casino"
    @State var img2 = "casino"
    @State var img3 = "casino"
    
    var body: some View {
        VStack {
            Text("Casino Game").bold()
                .font(.largeTitle)
            Spacer()
            
            Spacer()
            Spacer()
            Text("Coins: " + String(coins))
                .padding(.bottom, 174.0)
                .font(.headline)
            Spacer()
            HStack(spacing: 121.0){
                Image(img1).frame(width: 17, height: 7)
                Image(img2).frame(width: 17, height: 7)
                Image(img3).frame(width: 17, height: 7)
            }
            .padding(.bottom, 334.0)
            Spacer()
            
            Button(action: {
                // Générer des numéros entre 1 et 3
                let casino1Rand = Int.random(in: 1...3)
                let casino2Rand = Int.random(in: 1...3)
                let casino3Rand = Int.random(in: 1...3)
                
                // Afficher des nouvelles images à chaque "Spin"
                img1 = "casino" + String(casino1Rand)
                img2 = "casino" + String(casino2Rand)
                img3 = "casino" + String(casino3Rand)
                
                // Mettre à jour le nombre de coins
                if casino1Rand == casino2Rand && casino2Rand == casino3Rand {
                    coins += 150
                } else {
                    coins -= 25
                }

            }, label: {
                Text("Spin").font(.largeTitle)
                    .padding(.horizontal, 98.0)
                    .foregroundColor(Color.white)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                    
            })
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
