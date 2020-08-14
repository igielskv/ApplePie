//
//  CorrectWordView.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct CorrectWordView: View {
    let currentGame: Game
    
    var body: some View {
        let letters = currentGame.formattedWord.map { String($0) }
        let wordWithSpacing = letters.joined(separator: " ")
        
        return Text(wordWithSpacing)
    }
}

struct CorrectWordView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectWordView(currentGame: GameViewModel().currentGame)
    }
}
