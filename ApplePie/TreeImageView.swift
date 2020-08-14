//
//  TreeImageView.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct TreeImageView: View {
    let currentGame: Game
    
    var body: some View {
        Image("Tree \(currentGame.incorrectMovesRemaining)")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct TreeImageView_Previews: PreviewProvider {
    static var previews: some View {
        TreeImageView(currentGame: GameViewModel().currentGame)
    }
}
