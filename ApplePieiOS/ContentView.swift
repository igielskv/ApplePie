//
//  ContentView.swift
//  ApplePieiOS
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameViewModel: GameViewModel
    
    var body: some View {
        VStack {
            TreeImageView(currentGame: gameViewModel.currentGame)
            KeyboardView(currentGame: $gameViewModel.currentGame)
            CorrectWordView(currentGame: gameViewModel.currentGame)
                .font(.system(size: 30))
            Text("Wins: \(gameViewModel.totalWins), Losses: \(gameViewModel.totalLosses)")
                .font(.system(size: 20))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gameViewModel: GameViewModel())
    }
}
