//
//  ContentView.swift
//  Dicee
//
//  Created by Ahmet Yusuf Basaran on 26.09.2020.
//

import SwiftUI

struct ContentView: View {
    
   @State  var leftDiceNumber: Int
   @State  var rightDiceNumber: Int
    
    var body: some View {
        ZStack {
        Image("background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n:leftDiceNumber)
                    DiceView(n:rightDiceNumber)
                }
                .padding()
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                })
                .background(Color.red)
            }
            
            
        }
    }
}


struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(leftDiceNumber: 3, rightDiceNumber: 5)
    }
}

