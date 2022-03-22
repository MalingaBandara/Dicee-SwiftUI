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
                Spacer() // add automatic space
                

                // MARK: Dice images for game
                HStack {
                    DiceView(n: 1)// 1st dice image
                    DiceView(n: 1)// 2nd dice image
                }
                .padding(.horizontal)
                Spacer() // add automatic space

                
                
                // MARK: Button and it's action
                Button(action: {}){
                    
                    Text("Roll") // button text
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red) // Button color
                Spacer() // add automatic space
            }
        }
    }
}


// MARK: Dice images view for game
struct DiceView: View {
    
    let n: Int// dice image number
    
    var body: some View {
        Image("dice\(n)")  // dice image for game
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding() // add pading to give some space amoung the contains
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
