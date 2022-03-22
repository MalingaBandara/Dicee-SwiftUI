//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Malinga Bandara on 2022-03-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background") // add the background
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("diceeLogo") // dicee logo image
                
                // Dice images for game
                DiceView() // 1st dice image
                
            }
        }
    }
}

//dice images view for game
struct DiceView: View {
    var body: some View {
        
        Image("dice1")  // dice image for game
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
